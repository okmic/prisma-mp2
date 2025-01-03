-- AlterTable
ALTER TABLE `Content` ADD COLUMN `mainBlockDescription` VARCHAR(191) NOT NULL DEFAULT 'Choose a template and make a website',
    ADD COLUMN `mainBlockImgUrl` VARCHAR(191) NOT NULL DEFAULT '/media/icons/default.png',
    ADD COLUMN `mainBlockTitle` VARCHAR(191) NOT NULL DEFAULT 'Mico Page 👋';

-- CreateTable
CREATE TABLE `Products` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(191) NOT NULL DEFAULT 'MicoPage',
    `imgUrl` VARCHAR(191) NOT NULL DEFAULT '/media/icons/whatsapp.png',
    `description` LONGTEXT NOT NULL,
    `price` VARCHAR(191) NOT NULL,
    `contentId` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `Products` ADD CONSTRAINT `Products_contentId_fkey` FOREIGN KEY (`contentId`) REFERENCES `Content`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
