Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21272C7EE2D
	for <linux-phy@archiver.kernel.org>; Mon,  1 May 2023 19:55:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5UA51xiwTHzrhMJYC/SH9NXdIIUJTUYeXSluAAZet2A=; b=l4yXQGDlfgrK0U
	JpVdpBMngs1JsPO0HiSCVmoUgVz9h/nF3iNgLhe5GqGv1rFMw0+AlqV3UX2/975Vn+W9PWl47K5BJ
	OziWtkt+1KkALGr6F8x5fljaWmBndcx/hAdXTcz7E3SeY+xv8jLijPe1xTtTQ1KwTPcsF6T/uLrIR
	LmB08qyICZJ/71Re+PuA7AhpxU1mcLSGbQgXJyjHywhMfb+2wzYcWAKnZZCHb43sreEgNp57umj/I
	4R3UVDMUxH40peI9SercstdSsjDHdi7IagfQThCs6kcNDrJ5IrdZw8VzzQqdy1D9NjV5an83BYERh
	LYu9fD9fxdy4pCrRdLDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptZcp-00GoUe-1L;
	Mon, 01 May 2023 19:55:55 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptZcg-00GoKf-2Z;
	Mon, 01 May 2023 19:55:48 +0000
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-94f6c285d92so581737266b.3;
        Mon, 01 May 2023 12:55:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682970945; x=1685562945;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4ZF9V8MP6FMsrIXcptSFMR5OUYRqz1S+wnIjX1bjUvo=;
        b=HaOmIqvmk1JHA/KItZj3I55JN+ZBTUXiADiAmo6feTqkUk6J7XUJrXbeu8Gfq+GcTF
         z9BVKGIe9337gLP0hBF/KU3cMJ4jTkeKl7lXTngVTG2FbKId5KXo76Jpm9XIDW2u+vNP
         a9SXdnNOp1VT2VTr8XVoU0VeHTGaiZsaktaO8p4givJ2qe1xEwviZZmap6qLbXeS7B41
         lqOu2cXoVrk9RVPGtpxh9x6yGMiUYOW6sPoBX0LCnrClCq+o8uSeiki5RdY1BR/1/i8r
         ogzmy9eUjQO+qB3AIu3tMpuOwZtzn/OA+ejlvJ967tLUTXmoE2QyjKcMoqad8iG1c5t0
         YMBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682970945; x=1685562945;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4ZF9V8MP6FMsrIXcptSFMR5OUYRqz1S+wnIjX1bjUvo=;
        b=S/+JkV0Djpum4170fKXkDlHXEfQe0PoVVyr41C15Iv0gVwpaTC1VlX4GA1h71bn1cK
         tqWv7W7Gr5t+fKPFoeQyFs7qwfwdReqYr44yxuiMRQC24wVQiixO40Pgkov9Tfi13EM0
         7CWkj9DQbcsEJwYD9tFCMD3yT9sC+57CWIwOXA+2IeMpMPo0BqC4NrpgFjEGIRERB11p
         oJrKRI2icgXVLP9mGAn/q2fIcFr35OE5CQb4xMXLF/7D2CX7cvg0SLfVSLG8QesSKWst
         u+wUmCkCz2hEjFP9kpqmxgUTZgn0mTD3JPmoFJhCpu25a5KxSj1dr9hrXkCriWoHrax0
         UXfA==
X-Gm-Message-State: AC+VfDwxw3Tgkz6XRww39trrRs31iA9zU4YxwqBKTomSuw9LVYhRbaLJ
	+NZhJH6m2cmQjaEV1a38T/A=
X-Google-Smtp-Source: ACHHUZ6+S0BN/oZ+tDA58xehKEFG9fQFSkwXItwRKWNM24ayj85NNvyjS0h6IsMI7XCGkixpp/NRNA==
X-Received: by 2002:a17:906:5d0b:b0:94e:4523:b0d8 with SMTP id g11-20020a1709065d0b00b0094e4523b0d8mr13675831ejt.73.1682970945314;
        Mon, 01 May 2023 12:55:45 -0700 (PDT)
Received: from localhost.my.domain (83.8.115.30.ipv4.supernova.orange.pl. [83.8.115.30])
        by smtp.gmail.com with ESMTPSA id og36-20020a1709071de400b009600ce4fb53sm6333650ejc.37.2023.05.01.12.55.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 May 2023 12:55:44 -0700 (PDT)
From: Artur Weber <aweber.kernel@gmail.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Alim Akhtar <alim.akhtar@samsung.com>,
	Rob Herring <robh+dt@kernel.org>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Tomasz Figa <tomasz.figa@gmail.com>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Olof Johansson <olof@lixom.net>,
	soc@kernel.org,
	Russell King <linux@armlinux.org.uk>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Kukjin Kim <kgene@kernel.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-pm@vger.kernel.org,
	linux-media@vger.kernel.org,
	linux-phy@lists.infradead.org,
	~postmarketos/upstreaming@lists.sr.ht,
	Artur Weber <aweber.kernel@gmail.com>
Subject: [PATCH v3 07/13] Revert "media: exynos4-is: Remove dependency on obsolete SoC support"
Date: Mon,  1 May 2023 21:55:19 +0200
Message-Id: <20230501195525.6268-8-aweber.kernel@gmail.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230501195525.6268-1-aweber.kernel@gmail.com>
References: <20230501195525.6268-1-aweber.kernel@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230501_125546_834886_C416213A 
X-CRM114-Status: GOOD (  16.10  )
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Support for the Exynos4212 SoC was originally dropped as there were
no boards using it. We will be adding a device that uses it, so add
it back.

This reverts commit 2d41a0c9ae51ac363d107f2510022106e7234b33.

Signed-off-by: Artur Weber <aweber.kernel@gmail.com>
---
 drivers/media/platform/samsung/exynos4-is/Kconfig     | 2 +-
 drivers/media/platform/samsung/exynos4-is/fimc-core.c | 2 +-
 drivers/media/platform/samsung/exynos4-is/fimc-lite.c | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/media/platform/samsung/exynos4-is/Kconfig b/drivers/media/platform/samsung/exynos4-is/Kconfig
index da33faa7132e..7f9ba053dd8e 100644
--- a/drivers/media/platform/samsung/exynos4-is/Kconfig
+++ b/drivers/media/platform/samsung/exynos4-is/Kconfig
@@ -47,7 +47,7 @@ config VIDEO_S5P_MIPI_CSIS
 config VIDEO_EXYNOS_FIMC_LITE
 	tristate "EXYNOS FIMC-LITE camera interface driver"
 	depends on I2C
-	depends on SOC_EXYNOS4412 || SOC_EXYNOS5250 || COMPILE_TEST
+	depends on SOC_EXYNOS4212 || SOC_EXYNOS4412 || SOC_EXYNOS5250 || COMPILE_TEST
 	depends on HAS_DMA
 	select VIDEOBUF2_DMA_CONTIG
 	select VIDEO_EXYNOS4_IS_COMMON
diff --git a/drivers/media/platform/samsung/exynos4-is/fimc-core.c b/drivers/media/platform/samsung/exynos4-is/fimc-core.c
index 1791100b6935..e2f394e60dee 100644
--- a/drivers/media/platform/samsung/exynos4-is/fimc-core.c
+++ b/drivers/media/platform/samsung/exynos4-is/fimc-core.c
@@ -1129,7 +1129,7 @@ static const struct fimc_drvdata fimc_drvdata_exynos4210 = {
 	.out_buf_count	= 32,
 };
 
-/* EXYNOS4412 */
+/* EXYNOS4212, EXYNOS4412 */
 static const struct fimc_drvdata fimc_drvdata_exynos4x12 = {
 	.num_entities	= 4,
 	.lclk_frequency	= 166000000UL,
diff --git a/drivers/media/platform/samsung/exynos4-is/fimc-lite.c b/drivers/media/platform/samsung/exynos4-is/fimc-lite.c
index e185a40305a8..f80047095f30 100644
--- a/drivers/media/platform/samsung/exynos4-is/fimc-lite.c
+++ b/drivers/media/platform/samsung/exynos4-is/fimc-lite.c
@@ -1619,7 +1619,7 @@ static const struct dev_pm_ops fimc_lite_pm_ops = {
 			   NULL)
 };
 
-/* EXYNOS4412 */
+/* EXYNOS4212, EXYNOS4412 */
 static struct flite_drvdata fimc_lite_drvdata_exynos4 = {
 	.max_width		= 8192,
 	.max_height		= 8192,
-- 
2.40.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
