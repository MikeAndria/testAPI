<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('teddies_models', function (Blueprint $table) {
            $table->id();
            $table->string('_id');
            $table->string('name');
            $table->text('description');
            $table->decimal('price', 8, 2);
            $table->string('color');
            $table->string('imageURL');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('teddies_models');
    }
};
