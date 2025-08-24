-- CreateTable
CREATE TABLE "public"."Project" (
    "id" TEXT NOT NULL,
    "title" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "image" TEXT NOT NULL,
    "tags" TEXT[],
    "links" JSONB,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "Project_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "public"."VisitEvent" (
    "id" TEXT NOT NULL,
    "path" TEXT NOT NULL,
    "country" TEXT,
    "ipHash" TEXT,
    "ua" TEXT,
    "sessionId" TEXT,
    "ref" TEXT,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "VisitEvent_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE INDEX "VisitEvent_createdAt_idx" ON "public"."VisitEvent"("createdAt");
