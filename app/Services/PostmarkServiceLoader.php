<?php

namespace App\Services;

use Postmark\Models\DynamicResponseModel;
use Postmark\PostmarkClient;

class PostmarkServiceLoader
{
    private PostmarkClient $client;

    /**
     */
    public function __construct()
    {
        // Create a new Postmark client with the token from the server data
        $this->client = new PostmarkClient(config('services.postmark.token'));
    }

    /**
     * Retrieves the PostmarkClient instance associated with this class.
     *
     * @return PostmarkClient The PostmarkClient instance.
     */
    public function getClient(): PostmarkClient
    {
        // Return the PostmarkClient instance if you need to access it elsewhere
        return $this->client;
    }

    public function bouncedEmails(): DynamicResponseModel
    {
        return $this->client->getBounces();
    }

    public function openEmails(): DynamicResponseModel
    {
        return $this->client->getOpenStatistics();
    }

    public function clickEmails(): DynamicResponseModel
    {
        return $this->client->getClickStatistics();
    }

    public function emailOverviews(): DynamicResponseModel
    {
        return $this->client->getOutboundOverviewStatistics();
    }

}
