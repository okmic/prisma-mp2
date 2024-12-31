/*
  Warnings:

  - You are about to drop the `SocialMedia` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE `SocialMedia` DROP FOREIGN KEY `SocialMedia_contentId_fkey`;

-- DropTable
DROP TABLE `SocialMedia`;

-- CreateTable
CREATE TABLE `ContentSocialMedia` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `contentId` INTEGER NOT NULL,
    `title` VARCHAR(191) NOT NULL DEFAULT 'MicoPage',
    `linkToSM` VARCHAR(191) NOT NULL DEFAULT 'https://github.com/okmic',
    `imgUrl` VARCHAR(191) NOT NULL DEFAULT '/media/icons/whatsapp.png',

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `ContentSocialMedia` ADD CONSTRAINT `ContentSocialMedia_contentId_fkey` FOREIGN KEY (`contentId`) REFERENCES `Content`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
