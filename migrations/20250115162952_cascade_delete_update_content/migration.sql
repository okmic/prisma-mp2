-- DropForeignKey
ALTER TABLE `ContentItem` DROP FOREIGN KEY `ContentItem_serviceId_fkey`;

-- DropForeignKey
ALTER TABLE `ContentService` DROP FOREIGN KEY `ContentService_contentId_fkey`;

-- DropForeignKey
ALTER TABLE `ContentSocialMedia` DROP FOREIGN KEY `ContentSocialMedia_contentId_fkey`;

-- DropForeignKey
ALTER TABLE `ContentWork` DROP FOREIGN KEY `ContentWork_contentId_fkey`;

-- DropForeignKey
ALTER TABLE `SiteProducts` DROP FOREIGN KEY `SiteProducts_contentId_fkey`;

-- DropIndex
DROP INDEX `ContentItem_serviceId_fkey` ON `ContentItem`;

-- DropIndex
DROP INDEX `ContentService_contentId_fkey` ON `ContentService`;

-- DropIndex
DROP INDEX `ContentSocialMedia_contentId_fkey` ON `ContentSocialMedia`;

-- DropIndex
DROP INDEX `ContentWork_contentId_fkey` ON `ContentWork`;

-- DropIndex
DROP INDEX `SiteProducts_contentId_fkey` ON `SiteProducts`;

-- AlterTable
ALTER TABLE `Content` MODIFY `mainBlockTitle` VARCHAR(191) NOT NULL DEFAULT 'Mico Page 👋';

-- AddForeignKey
ALTER TABLE `ContentService` ADD CONSTRAINT `ContentService_contentId_fkey` FOREIGN KEY (`contentId`) REFERENCES `Content`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `ContentWork` ADD CONSTRAINT `ContentWork_contentId_fkey` FOREIGN KEY (`contentId`) REFERENCES `Content`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `ContentItem` ADD CONSTRAINT `ContentItem_serviceId_fkey` FOREIGN KEY (`serviceId`) REFERENCES `ContentService`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `ContentSocialMedia` ADD CONSTRAINT `ContentSocialMedia_contentId_fkey` FOREIGN KEY (`contentId`) REFERENCES `Content`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `SiteProducts` ADD CONSTRAINT `SiteProducts_contentId_fkey` FOREIGN KEY (`contentId`) REFERENCES `Content`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
