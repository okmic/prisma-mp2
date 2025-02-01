-- DropForeignKey
ALTER TABLE `Content` DROP FOREIGN KEY `Content_siteId_fkey`;

-- AlterTable
ALTER TABLE `Content` MODIFY `mainBlockTitle` VARCHAR(191) NOT NULL DEFAULT 'Mico Page 👋';

-- AddForeignKey
ALTER TABLE `Content` ADD CONSTRAINT `Content_siteId_fkey` FOREIGN KEY (`siteId`) REFERENCES `Site`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
