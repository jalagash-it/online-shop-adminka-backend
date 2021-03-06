<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AlterProductsRemoveColumns extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('products', function (Blueprint $table) {
            $table->dropColumn('covering');
            $table->dropColumn('depth');
            $table->dropColumn('width');
            $table->dropColumn('height');
            $table->dropColumn('wave_width');
            $table->dropColumn('wave_height');
            $table->dropColumn('guarantee');

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('products', function (Blueprint $table) {
            $table->string('covering')->nullable();
            $table->double('depth')->nullable();
            $table->double('width')->nullable();
            $table->double('height')->nullable();
            $table->double('wave_width')->nullable();
            $table->double('wave_height')->nullable();
            $table->double('guarantee')->nullable();
        });
    }
}
