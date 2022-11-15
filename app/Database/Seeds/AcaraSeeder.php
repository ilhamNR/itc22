<?php

namespace App\Database\Seeds;

use CodeIgniter\Database\Seeder;

class AcaraSeeder extends Seeder
{
    public function run()
    {
        $faker = \Faker\Factory::create('id');
 
		for ($i = 0; $i < 100; $i++) {
			$data = [
				'name' => $faker->name,
				'email' => $faker->email,
                'idEvents' => 1
			];
			$this->db->table('dataevents')->insert($data);
		}
    }
}
