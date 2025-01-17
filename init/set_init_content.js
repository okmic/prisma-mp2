const { PrismaClient } = require('@prisma/client');
require('dotenv').config();

const prisma = new PrismaClient();

const saveContent = async () => {

    const newContent = await prisma.content.create({
        data: {
            userId: 1,
            address: "Адрес",
            phone: "+7 999 999 99 99",
            email: "Почта",
            services: {
                create: [
                    {
                        title: "Заголовок",
                        items: {
                            create: [
                                { text: "Подзаголовок1" },
                                { text: "Подзаголовок2" },
                                { text: "Подзаголовок3" }
                            ],
                        },
                    },
                    {
                        title: "Заголовок2",
                        items: {
                            create: [
                                { text: "Подзаголовок1" },
                                { text: "Подзаголовок2" },
                                { text: "Подзаголовок3" }
                            ],
                        },
                    },
                    {
                        title: "Заголовок3",
                        items: {
                            create: [
                                { text: "Подзаголовок1" },
                                { text: "Подзаголовок2" },
                                { text: "Подзаголовок3" }
                            ],
                        },
                    },
                    {
                        title: "Заголовок4",
                        items: {
                            create: [
                                { text: "Подзаголовок1" },
                                { text: "Подзаголовок2" },
                                { text: "Подзаголовок3" }
                            ],
                        },
                    },
                    {
                        title: "Заголовок5",
                        items: {
                            create: [
                                { text: "Подзаголовок1" },
                                { text: "Подзаголовок2" },
                                { text: "Подзаголовок3" }
                            ],
                        },
                    },
                    {
                        title: "Заголовок6",
                        items: {
                            create: [
                                { text: "Подзаголовок1" },
                                { text: "Подзаголовок2" },
                                { text: "Подзаголовок3" }
                            ],
                        },
                    },
                ],
            },
            works: {
                create
                : [
                    {
                        title: "Большой заголовок7"
                    },
                    {
                        title: "Большой заголовок8"
                    },
                ],
            },
            socialMedia: {
                create: {
                    title: "MicoPage 1"
                },
                create: {
                    title: "MicoPage 2"
                },
                create: {
                    title: "MicoPage 3"
                },
            },
            products: {
                createMany: {
                    data: [
                        {title: "Product", price: 3000, description: "some description"},
                        {title: "Product", price: 3000, description: "some description"},
                        {title: "Product", price: 3000, description: "some description"},
                        {title: "Product", price: 3000, description: "some description"},
                        {title: "Product", price: 3000, description: "some description"},
                        {title: "Product", price: 3000, description: "some description"},
                        {title: "Product", price: 3000, description: "some description"},
                        {title: "Product", price: 3000, description: "some description"},
                        {title: "Product", price: 3000, description: "some description"},
                        {title: "Product", price: 3000, description: "some description"},
                    ]
                }
            }
        },
    });

    console.log('Данные успешно инициализированы:', newContent);
};

saveContent()
.catch(e => {
        console.error('Ошибка при инициализации данных:', e);
})
.finally(async () => {
    await prisma.$disconnect();
});
