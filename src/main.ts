import { NestFactory } from '@nestjs/core';
import { AppModule } from '@src/app.module';
import { config } from 'dotenv';

async function bootstrap() {
  const app = await NestFactory.create(AppModule, { cors: true });
  app.enableCors({
    origin: `http://${process.env.FRONTEND_HOST}:${process.env.FRONTEND_PORT}`,
    credentials: true,
  });

  config();

  await app.listen(3000);
}
bootstrap();
