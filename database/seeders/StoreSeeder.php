<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Store;
use Faker\Factory as Faker;

class StoreSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $faker = Faker::create();

        foreach (range(1, 20) as $index) {
            Store::create([
                'uuid' => $faker->uuid,
                'storename' => $faker->company,
                'address_1' => $faker->streetAddress,
                'address_2' => $faker->secondaryAddress,
                'city' => $faker->city,
                'state' => $faker->state,
                'country' => $faker->country,
                'zipcode' => $faker->postcode,
                'phone' => $faker->phoneNumber,
                'email' => $faker->unique()->safeEmail,
                'parent_company' => $faker->numberBetween(1, 10),
                'parent_manager' => $faker->numberBetween(11, 20),
            ]);
        }
    }
}
