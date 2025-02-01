/*
  Warnings:

  - You are about to drop the column `userId` on the `Content` table. All the data in the column will be lost.
  - Added the required column `siteId` to the `Content` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE `Content` DROP FOREIGN KEY `Content_userId_fkey`;

-- DropIndex
DROP INDEX `Content_userId_idx` ON `Content`;

-- AlterTable
ALTER TABLE `Content` DROP COLUMN `userId`,
    ADD COLUMN `siteId` INTEGER NOT NULL,
    MODIFY `mainBlockTitle` VARCHAR(191) NOT NULL DEFAULT 'Mico Page 👋';

-- CreateTable
CREATE TABLE `Site` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `siteHash` VARCHAR(191) NOT NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `name` VARCHAR(191) NOT NULL DEFAULT 'Mico Page',
    `Type` ENUM('EJS') NOT NULL DEFAULT 'EJS',
    `pegesStringArray` JSON NOT NULL,
    `userId` INTEGER NOT NULL,
    `contentId` INTEGER NOT NULL,

    UNIQUE INDEX `Site_id_key`(`id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateIndex
CREATE INDEX `Content_siteId_idx` ON `Content`(`siteId`);

-- AddForeignKey
ALTER TABLE `Site` ADD CONSTRAINT `Site_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `User`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Content` ADD CONSTRAINT `Content_siteId_fkey` FOREIGN KEY (`siteId`) REFERENCES `Site`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
