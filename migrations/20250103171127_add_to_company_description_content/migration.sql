-- AlterTable
ALTER TABLE `Content` ADD COLUMN `companyDescription` VARCHAR(191) NOT NULL DEFAULT 'Mico Page - мы занимается предоставлением высококачественных услуг в области... Мы стремимся к инновациям и качеству',
    MODIFY `mainBlockTitle` VARCHAR(191) NOT NULL DEFAULT 'Mico Page 👋';
