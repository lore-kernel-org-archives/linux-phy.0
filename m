Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 662ACD10BF9
	for <linux-phy@archiver.kernel.org>; Sat, 26 Oct 2024 13:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=137jr5EJbBnJfAQPl8vvF/VZtrVNpR2Ga9MDybro10w=; b=niuXD4xNYG2vZw
	U7B98wcm035+Ip4OYegoLx/KjlU+gSWOXNAWt9JkWuRPSA5EMX2GgjFtINpyASUC/D7L5Nqje/F1H
	WGP355XBMDLTFuL41DEc30J8wARI5TcuwKFdliO8hkdJUaoslykzErtTnT9ndCprlkq0HBjsYags6
	EKqeTVildocddBjGpenmnqyf8zLztfPwAcZAUPRxWmANnHMQTV6Ex+HCn2BPHSQBxxuTPE3Rk7MGO
	pylGwe9y4P1FdLBfUjJb9vKKPDfA5sawGjnFtV1ukS0KFyL8jgNYYk5X5D+p5AS0tAMMPVW70sPA/
	/UbcFYVMg+tFV12BEcUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t4giq-00000006gXF-0aqC;
	Sat, 26 Oct 2024 13:20:52 +0000
Received: from mail-qt1-x829.google.com ([2607:f8b0:4864:20::829])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t4gio-00000006gVu-0uCo
	for linux-phy@lists.infradead.org;
	Sat, 26 Oct 2024 13:20:51 +0000
Received: by mail-qt1-x829.google.com with SMTP id d75a77b69052e-460c1ba306bso18725351cf.2
        for <linux-phy@lists.infradead.org>; Sat, 26 Oct 2024 06:20:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729948848; x=1730553648; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6SEXUwNq69Lxz2+rJU+Fb+Wv+ryIv6HHBu9+ALfzWIM=;
        b=eXty0qW9tZnDLAxHIhAr/HYPZaCjuqK91Ilyya4pxy0d5XqX7YU8ngDGpUcodXb4u8
         4cIPC8qBzLbtymkGapoApeP73KQ/ex8y3U4lwZJSusxSmQ+UuuZiUgZ6yGXlhXpprqpO
         NCj2r2EXV3LKWFHSExbvmX+ESsAopDpqtGUtZdv949NDXjOndiECnDmfatkSfn3AkcGQ
         bYCQumaT0fmot2ESzMSQfqMQ4ptrjeAam2zHegOhgbcJxEaCRoO8zpHS+rfWqSUfpVyD
         N6S3Aj1JHPXm9UvqLgu2W6Zz1UIJYTeRGdpdXfD9kZaF80qJfhVACosqmxLSsD5JJvT0
         Ia0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729948848; x=1730553648;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6SEXUwNq69Lxz2+rJU+Fb+Wv+ryIv6HHBu9+ALfzWIM=;
        b=dyqrlVw0q9I2s4A9bSbau+eEFJdY9P5+cnaj9SpyjbNqQESXnid6AsVo0lJwc9PRnm
         uaOer1bolI2WmnWvfbIFrDKpZ2uQBKzQ0V170pVyyC2jlk3UzrpEUoQ/fBaQqE54ZXBw
         RNFzXeVNxyBK5t/F/BNSvltXB3WX3AO4h99c5qwO73t0qpI8NpVi1dsA4yztdaqpk3lS
         gTWUADbDSgFNQHPbdTHuzKcVFGKr5v/JFk/WJ/FBe/NPPvI0eagVvDCYwWdn9DypojuP
         TTJOTLXaxygNoAi549q5t+O+s9MEaToz+hdLIPHyaB47vkUV2g6bVRYuGtKfMpYmIVMy
         dl+Q==
X-Gm-Message-State: AOJu0YzPeF4mEV3LxeubYyy8VMhpBW1FRGOTU5BXE66FS1EZ2ty0+uM8
	P2Q+xk//Z9mPGA0xYxwPTdvx38fe39cy3KBjIgQ+rC0ke2SsuwYKGwrxPg==
X-Google-Smtp-Source: AGHT+IH46XosSRPTVvmPfs9D+20b96VP9CGzbRxqUxFucRtXiWXaKWZjWuE5wDGB97MeNbRY2AFijQ==
X-Received: by 2002:ac8:5946:0:b0:461:141b:47a4 with SMTP id d75a77b69052e-4613c083788mr40894821cf.36.1729948848129;
        Sat, 26 Oct 2024 06:20:48 -0700 (PDT)
Received: from aford-System-Version.. (c-75-72-162-184.hsd1.mn.comcast.net. [75.72.162.184])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4613211a1b2sm16372741cf.12.2024.10.26.06.20.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 26 Oct 2024 06:20:47 -0700 (PDT)
From: Adam Ford <aford173@gmail.com>
To: linux-phy@lists.infradead.org
Cc: aford@beaconembedded.com,
	sandor.yu@nxp.com,
	Adam Ford <aford173@gmail.com>,
	Frieder Schrempf <frieder.schrempf@kontron.de>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Dominique Martinet <dominique.martinet@atmark-techno.com>,
	Marco Felsch <m.felsch@pengutronix.de>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>,
	Lucas Stach <l.stach@pengutronix.de>,
	linux-kernel@vger.kernel.org
Subject: [PATCH V2 3/3] phy: freescale: fsl-samsung-hdmi: Clean up fld_tg_code calculation
Date: Sat, 26 Oct 2024 08:19:59 -0500
Message-ID: <20241026132014.73050-3-aford173@gmail.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241026132014.73050-1-aford173@gmail.com>
References: <20241026132014.73050-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241026_062050_276479_F9C2E029 
X-CRM114-Status: GOOD (  11.20  )
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

Currently, the calcuation for fld_tg_code is based on a lookup table,
but there are gaps in the lookup table, and frequencies in these
gaps may not properly use the correct divider.  Based on the description
of FLD_CK_DIV, the internal PLL frequency should be less than 50 MHz,
so directly calcuate the value of FLD_CK_DIV from pixclk.
This allow for proper calcuation of any pixel clock and eliminates a
few gaps in the LUT.

Since the value of the int_pllclk is in Hz, do the fixed-point
math in Hz to achieve a more accurate value and reduces the complexity
of the caluation to 24MHz * (256 / int_pllclk).

Fixes: 6ad082bee902 ("phy: freescale: add Samsung HDMI PHY")
Signed-off-by: Adam Ford <aford173@gmail.com>
Reviewed-by: Frieder Schrempf <frieder.schrempf@kontron.de>
---
V2:  No change

diff --git a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
index 121f67455cec..5eac70a1e858 100644
--- a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
+++ b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
@@ -331,25 +331,17 @@ fsl_samsung_hdmi_phy_configure_pll_lock_det(struct fsl_samsung_hdmi_phy *phy,
 {
 	u32 pclk = cfg->pixclk;
 	u32 fld_tg_code;
-	u32 pclk_khz;
-	u8 div = 1;
-
-	switch (cfg->pixclk) {
-	case  22250000 ...  47500000:
-		div = 1;
-		break;
-	case  50349650 ...  99000000:
-		div = 2;
-		break;
-	case 100699300 ... 198000000:
-		div = 4;
-		break;
-	case 205000000 ... 297000000:
-		div = 8;
-		break;
+	u32 int_pllclk;
+	u8 div;
+
+	/* Find int_pllclk speed */
+	for (div = 0; div < 4; div++) {
+		int_pllclk = pclk / (1 << div);
+		if (int_pllclk < (50 * MHZ))
+			break;
 	}
 
-	writeb(FIELD_PREP(REG12_CK_DIV_MASK, ilog2(div)), phy->regs + PHY_REG(12));
+	writeb(FIELD_PREP(REG12_CK_DIV_MASK, div), phy->regs + PHY_REG(12));
 
 	/*
 	 * Calculation for the frequency lock detector target code (fld_tg_code)
@@ -362,10 +354,8 @@ fsl_samsung_hdmi_phy_configure_pll_lock_det(struct fsl_samsung_hdmi_phy *phy,
 	 *        settings rounding up always too. TODO: Check if that is
 	 *        correct.
 	 */
-	pclk /= div;
-	pclk_khz = pclk / 1000;
-	fld_tg_code = 256 * 1000 * 1000 / pclk_khz * 24;
-	fld_tg_code = DIV_ROUND_UP(fld_tg_code, 1000);
+
+	fld_tg_code =  DIV_ROUND_UP(24 * MHZ * 256, int_pllclk);
 
 	/* FLD_TOL and FLD_RP_CODE taken from downstream driver */
 	writeb(FIELD_PREP(REG13_TG_CODE_LOW_MASK, fld_tg_code),
-- 
2.45.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
