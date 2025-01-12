/*
  Warnings:

  - A unique constraint covering the columns `[adminTgChatId]` on the table `User` will be added. If there are existing duplicate values, this will fail.

*/
-- AlterTable
ALTER TABLE `Content` MODIFY `mainBlockTitle` VARCHAR(191) NOT NULL DEFAULT 'Mico Page 👋';

-- CreateIndex
CREATE UNIQUE INDEX `User_adminTgChatId_key` ON `User`(`adminTgChatId`);
