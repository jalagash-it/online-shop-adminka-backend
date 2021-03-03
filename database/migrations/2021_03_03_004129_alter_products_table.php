<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AlterProductsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('products', function (Blueprint $table) {
            $table->string('covering')->nullable();
            $table->double('depth')->nullable();
            $table->double('width')->nullable();
            $table->double('height')->nullable();
            $table->double('wave_width')->nullable();
            $table->double('wave_height')->nullable();
            $table->double('guarantee')->nullable();
            $table->unsignedBigInteger('category_id')->nullable();

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        //
    }
}
