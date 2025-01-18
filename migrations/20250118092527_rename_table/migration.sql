/*
  Warnings:

  - You are about to drop the `FtpServers` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE `FtpServers` DROP FOREIGN KEY `FtpServers_userId_fkey`;

-- AlterTable
ALTER TABLE `Content` MODIFY `mainBlockTitle` VARCHAR(191) NOT NULL DEFAULT 'Mico Page 👋';

-- DropTable
DROP TABLE `FtpServers`;

-- CreateTable
CREATE TABLE `FtpServer` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `ftpHost` VARCHAR(191) NOT NULL,
    `ftpUser` VARCHAR(191) NOT NULL,
    `ftpPassword` VARCHAR(191) NOT NULL,
    `isSecureFtp` BOOLEAN NOT NULL DEFAULT false,
    `userId` INTEGER NOT NULL,
    `contentId` INTEGER NOT NULL,

    UNIQUE INDEX `FtpServer_id_key`(`id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `FtpServer` ADD CONSTRAINT `FtpServer_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `User`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
