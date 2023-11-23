<?php

namespace App\Console\Commands;

use App\Models\BounceRecord;
use App\Models\ClickEventsRecord;
use App\Models\OpenRecord;
use App\Models\SentStatistic;
use App\Services\PostmarkServiceLoader;
use DateTime;
use Exception;
use Illuminate\Console\Command;

class SyncServer extends Command
{

    private PostmarkServiceLoader $loader;

    public  function __construct()
    {
        parent::__construct();
        $this->loader = new PostmarkServiceLoader();
    }
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'sync:server';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Sync Server Data from Postmark Server to Database';

    /**
     * Execute the console command.
     * @throws Exception
     */
    public function handle(): void
    {
        $this->info('Sync Server Data');
        $this->syncBouncedRecord();
        $this->syncOpenRecord();
        $this->syncClickEmailsRecord();
        $this->syncOverviewRecord();
    }

    /**
     * Syncs bounced email records.
     *
     * @throws Exception
     */
    public function syncBouncedRecord(): void
    {
        // Load bounced emails
        $data = $this->loader->bouncedEmails();

        // If no records found, return
        if ($data['totalCount'] === 0) {
            $this->info('No Record Found: Bounced Emails');
            return;
        }

        // Process each bounced email
        foreach ($data['bounces'] as $bounce) {
            // Prepare bounced data
            $bouncedData = self::bouncedData($bounce);

            // Update or create bounce record
            $saved = BounceRecord::updateOrCreate(
                ['bouncedID' => $bouncedData['bouncedID']],
                $bouncedData
            );
        }

        // Check if any records were saved
        if ($saved ?? null) {
            $this->info('Bounced Data Synced Successfully');
        } else {
            $this->info('Bounced Data Synced Failed');
        }
    }

    /**
     * @throws Exception
     */
    private static function bouncedData($data): array
    {
        $date = new DateTime($data['BouncedAt']);
        $bouncedAt = $date->format('Y-m-d H:i:s');
        return [
            "bouncedID" => $data['id'],
            "Type" => $data['type'],
            "TypeCode" => $data['TypeCode'],
            "MessageID" => $data['MessageID'],
            "Description" => $data['description'],
            "Details" => $data['details'],
            "Email" => $data['email'],
            "From" => $data['from'],
            "BouncedAt" => $bouncedAt,
        ];
    }

    /**
     * Synchronizes open email records.
     *
     * @throws Exception
     */
    public function syncOpenRecord(): void
    {
        // Load open email data
        $data = $this->loader->openEmails();

        // Check if there are no records
        if ($data['totalCount'] === 0) {
            $this->info('No Record Found: Open Emails');
            return;
        }

        // Process each open email record
        foreach ($data['opens'] as $open) {
            $openData = self::openedData($open);

            // Update or create the open record
            $saved = OpenRecord::updateOrCreate(
                ['MessageID' => $openData['MessageID']],
                $openData
            );
        }

        // Check if sync was successful
        if ($saved ?? null) {
            $this->info('Open Email Data Synced Successfully');
        } else {
            $this->info('Open Email Data Synced Failed');
        }
    }

    /**
     * @throws Exception
     */
    private static function openedData($data): array
    {
        $date = new DateTime($data['ReceivedAt']);
        $receivedAt = $date->format('Y-m-d H:i:s');
        return [
            "RecordType" => $data['RecordType'],
            "MessageID" => $data['MessageID'],
            "Recipient" => $data['Recipient'],
            "ReceivedAt" => $receivedAt,
        ];
    }

    /**
     * @throws Exception
     */
    public function syncClickEmailsRecord(): void
    {
        $data = $this->loader->clickEmails();

        if($data['totalCount'] === 0){
            $this->info('No Record Found: Click Emails');
            return;
        }

        foreach ($data['clicks'] as $click) {
            $clickEmailsData = self::clickEmailsData($click);

            $saved = ClickEventsRecord::updateOrCreate(
                [ 'MessageID' => $clickEmailsData['MessageID'] ],
                $clickEmailsData
            );
        }

        if($saved ?? null){
            $this->info('Click Emails Data Synced Successfully');
        }else{
            $this->info('Click Emails Data Synced Failed');
        }
    }

    /**
     * @throws Exception
     */
    private static function clickEmailsData($data): array
    {
        $date = new DateTime($data['ReceivedAt']);
        $receivedAt = $date->format('Y-m-d H:i:s');
        return [
            "ClickLocation" => $data['ClickLocation'],
            "OriginalLink" => $data['OriginalLink'],
            "Platform" => $data['Platform'],
            "MessageID" => $data['MessageID'],
            "ReceivedAt" => $receivedAt,
        ];
    }

    /**
     * @throws Exception
     */
    public function syncOverviewRecord(): void
    {
        $data = $this->loader->emailOverviews();

        if(!isset($data['sent'])){
            $this->info('No Record Found: Overview Statistic');
            return;
        }

        $overViewData = self::overviewData($data);

        $saved = SentStatistic::updateOrCreate(
            [ 'id' => 1 ],
            $overViewData
        );

        if($saved ?? null){
            $this->info('Overview Statistic Data Synced Successfully');
        }else{
            $this->info('Overview Statistic Data Synced Failed');
        }
    }

    /**
     * @throws Exception
     */
    private static function overviewData($data): array
    {
        return [
            "sent" => $data['sent'],
            "bounced" => $data['bounced'],
            "smtpapierrors" => $data['smtpapierrors'],
            "bouncerate" => $data['bouncerate'],
            "spamcomplaints" => $data['spamcomplaints'],
            "spamcomplaintsrate" => $data['spamcomplaintsrate'],
            "tracked" => $data['tracked'],
            "opens" => $data['opens'],
            "uniqueopens" => $data['uniqueopens'],
            "totalclicks" => $data['totalclicks'],
            "uniquelinksclicked" => $data['uniquelinksclicked'],
            "withclientrecorded" => $data['withclientrecorded'],
            "withplatformrecorded" => $data['withplatformrecorded'],
            "withreadtimerecorded" => $data['withreadtimerecorded'],
            "withlinktracking" => $data['withlinktracking'],
            "withopentracking" => $data['withopentracking'],
            "totaltrackedlinkssent" => $data['totaltrackedlinkssent'],
        ];
    }
}
