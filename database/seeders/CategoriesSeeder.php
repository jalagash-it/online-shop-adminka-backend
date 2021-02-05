<?php

namespace Database\Seeders;

use DB;
use Illuminate\Database\Seeder;

class CategoriesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('categories')->insert([
            'name' => 'Главное',
        ]);
        DB::table('categories')->insert([
            'name' => 'Второстепенное',
            'parent_id' => 1,
        ]);

    }
}
