Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B3CAD3C92A
	for <linux-phy@archiver.kernel.org>; Sun, 20 Oct 2024 16:51:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nik7lO6V4H4uGYxza97luxINcSFgXoM0X2hdtvH6zEw=; b=iUE09ZeFAHeIp1
	1WoquLnMrKOwcg72EJbncKhiP54xG4V8wzfiKAlScbv2wAcbG9spX1eS/6GnsgItDiyOdyaYXYyzA
	XmkIlekyqg4vgix51poVyWluXSFS7ga7nOm6oIoyXnRmvSzcQwV6MU+eCxopZJncTJE+/CoFlXOn7
	YW9i1oGYIfr2jOJvU0z08+3vGu1jafSahtXmS3jKJdClKWdOYy5byPSGc//kw+2jyZkbfk+8f0O0s
	u/SMQTnWzGhlBjMyHBiJv08sN8eABjkMNab7Qd5hg8Bf1GgHp51CfH8hYV3IQLhKkQSsHkpKsr2Xg
	u60SxuJ2FzUPYtvkZ/Zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2Z9E-000000059Hl-3VQb;
	Sun, 20 Oct 2024 16:51:20 +0000
Received: from mail-il1-x129.google.com ([2607:f8b0:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2Z9C-000000059GY-1e0f
	for linux-phy@lists.infradead.org;
	Sun, 20 Oct 2024 16:51:19 +0000
Received: by mail-il1-x129.google.com with SMTP id e9e14a558f8ab-3a39f73a2c7so15283985ab.0
        for <linux-phy@lists.infradead.org>; Sun, 20 Oct 2024 09:51:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729443076; x=1730047876; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=A4PED3h42QBV+YaBIauxPbyLrEm2xxjav8Dffh6+wwU=;
        b=KAZxDuLmrCMgY8ubSnHv1CWVduCVmmcoEH809q+f6ZcNTRNd5OGaGcGsMX6Wu934Xb
         B36wSDCTNPGcsZbyR/fX+0ft5KJ41WKbssliKsu4LcCbuXz+i7rGSj1Eye0eQOv1yBiJ
         1j5K2+l/V04nlgvdlnOsw+oXHlicpHHUFElI9BjKw/I2PjyArLlLV8eZa9z75EKzIqUT
         1uCQzFfT1YUP9EFthg46E6Hb+qUrGLvqed2RxmAo0lWNSJMb8sr+IcW/WZrutB+MWzYV
         gRJFmDHEg1UIWsmXNdQDGE/V3WCdmUBLSanAMDCJ52XlmlB3AizVrDiOfS/SoeUF7XHI
         Itjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729443076; x=1730047876;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=A4PED3h42QBV+YaBIauxPbyLrEm2xxjav8Dffh6+wwU=;
        b=Qx+zhVuZQFk8AIrvYfuYMlrze97JlKRfM89KU1GiY72EFliYw8Rv0D5tusAgx7iKGK
         DAFoFNXc9Fwl/f+ESmByBlmgN4or1zJBHNbVu1yUXr7201XHGcNrweD2AUakmNgp0nid
         ODoB2XAVAqEOR6QvWdl5acRBKLWnoHRarvM5TZaQfp2YDn8QFNYzyvwlLiTxYGA5esbV
         nuRd5PKsX7nXcXB4mcziw3BRIrxXUV9tBteKf+lrG7QYaLuU0fRa3MmV7+Lme09XST40
         UMMEXr6U48CiB3tUV4eC5YRc5RvIn/6awoevr3qjj0J3vuFBNb4aIjBYzIJnLR7Zqa02
         z5lg==
X-Gm-Message-State: AOJu0YwmG/sn+oxLMVgm05bwqKNlwogEh4ZxJ/MmpwNwkT+0+avuiQmC
	rzTCzAfG5BwLO/fW/QTnSkfy1xOm4UhgOb83YT8GRSHF72Ynhhl1wftacA==
X-Google-Smtp-Source: AGHT+IHH2y8nl7UH4g5w15MP7jiZ7UfDxgkm0T52N9hzFqOm27QrT3RjtYmQFfua2l0RZFUrcEYtHg==
X-Received: by 2002:a92:cd83:0:b0:3a3:96c4:29bc with SMTP id e9e14a558f8ab-3a3f406fe98mr81856035ab.11.1729443076248;
        Sun, 20 Oct 2024 09:51:16 -0700 (PDT)
Received: from aford-System-Version.. (c-75-72-162-184.hsd1.mn.comcast.net. [75.72.162.184])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-4dc2a52fab3sm533821173.35.2024.10.20.09.51.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Oct 2024 09:51:15 -0700 (PDT)
From: Adam Ford <aford173@gmail.com>
To: linux-phy@lists.infradead.org
Cc: aford@beaconembedded.com,
	sandor.yu@nxp.com,
	Adam Ford <aford173@gmail.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Frieder Schrempf <frieder.schrempf@kontron.de>,
	Dominique Martinet <dominique.martinet@atmark-techno.com>,
	Marco Felsch <m.felsch@pengutronix.de>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>,
	Lucas Stach <l.stach@pengutronix.de>,
	linux-kernel@vger.kernel.org
Subject: [PATCH 3/3] phy: freescale: fsl-samsung-hdmi: Clean up fld_tg_code calculation
Date: Sun, 20 Oct 2024 11:50:47 -0500
Message-ID: <20241020165102.340838-3-aford173@gmail.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241020165102.340838-1-aford173@gmail.com>
References: <20241020165102.340838-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241020_095118_453076_9D876CE6 
X-CRM114-Status: GOOD (  13.05  )
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
---
 drivers/phy/freescale/phy-fsl-samsung-hdmi.c | 32 +++++++-------------
 1 file changed, 11 insertions(+), 21 deletions(-)

diff --git a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
index 719f8972cb5a..0bfe0c0907a0 100644
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
