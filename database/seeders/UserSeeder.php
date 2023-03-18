<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;
use Faker\Factory as Faker;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        $faker = Faker::create();
        for ($i = 0; $i < 10; $i++) {
            DB::table('seeds')->insert([
                'store_id' => $faker->randomDigitNotNull,
                'role' => $faker->randomElement(['admin', 'user']),
                'name' => $faker->name,
                'phone' => $faker->phoneNumber,
                'email' => $faker->unique()->safeEmail,
                'email_verified_at' => now(),
                'provider_id' => $faker->randomDigitNotNull,
                'provider' => $faker->randomElement(['google', 'facebook']),
                'password' => bcrypt('password'),
                'remember_token' => bcrypt('password'),
                'ikey' => $faker->randomDigitNotNull,
                'created_at' => now(),
                'updated_at' => now(),
                'subscription_till' => now()

            ]);
        }
    }
}
