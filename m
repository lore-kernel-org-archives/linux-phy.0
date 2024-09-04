Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D9C5CD4F4C
	for <linux-phy@archiver.kernel.org>; Wed,  4 Sep 2024 23:57:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7ifRYbqX2v53w2p7s0ZP1AJxqoP/5Zzh43vCGL1SWZE=; b=gfPpCAI4zBZOoh
	/9RSN8AedhUGTzFjwS4HAk4o7AtZEdWbg7vTQetIYABQT1sToBsH3p/AGOEa7267ZwD/2bQRLx9af
	ksnSCC1WNBqSKPrd94i7hNqEb5RpoDGzBT/Unz7j9IJm1rvobf17rvlqora8c0WHI3cr/WTgHFitR
	+iyFwxH4cdqe1TBDdZjP5YbigD7+RGE/vA89ykrNAqKHJzVmIX6i9dYiMmcIpzIhZbEBh0fLrqYs+
	GJCZQ5B9UQZfzzJh8UxSTt+BliJlIujxANWk6ztlhGxHSLx8/LlXJmXhThCTI/4lM2nflYIyLJBjB
	1DNzLex68O+i8tXsguSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slzs7-00000006QQp-3Y3X;
	Wed, 04 Sep 2024 23:57:11 +0000
Received: from mail-il1-x12b.google.com ([2607:f8b0:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slzs4-00000006QQK-3xOM
	for linux-phy@lists.infradead.org;
	Wed, 04 Sep 2024 23:57:10 +0000
Received: by mail-il1-x12b.google.com with SMTP id e9e14a558f8ab-39f540795afso916145ab.0
        for <linux-phy@lists.infradead.org>; Wed, 04 Sep 2024 16:57:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725494228; x=1726099028; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9NjPR2hQD35/3AIuE5+yw6t/hdjCoYTds+XXaneI61c=;
        b=Pn2uG1RAnl4cA8gkwvvSclMwYHGlu6D+E++W7ZHklzcYvrUUQNTadcp3IQDUqSCf2d
         7I3hCzg1eSBaQ2hR5mlJKx11lrF7SrPoubJc4GrN4a1F2Cb3cpNYuWOpht78yxjkMJKc
         khXoLVZaQ4eK0PnxgHBf6XFQdibUA+OOdfetZ5Xdy0L2MfG3QY5zw7A2eBF+n2HyU7o0
         YzBEjMob1KFgXCXArcjgxxZJVMOOQn6cN524CEyFBAZsJqCx0Vmv/cQO4GvyDaujmF5S
         UCcTz+V6KQ45tu85QS0CCGwLZgjognCjGppQDLLa3zcDujzGlwES4LX3J6QNGAe7y+S+
         q0kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725494228; x=1726099028;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9NjPR2hQD35/3AIuE5+yw6t/hdjCoYTds+XXaneI61c=;
        b=RM/iqlRtP5F/T/cWzIZCQegnKG/EvjIvJmYdK/B6FRafOikHUs/vNd39Nc6otV8Mkc
         0Ugf8m641mcZmYZWOgV+PXh3NmpLbsaMKe13FpNCiOdjSvdMDAmeWvrjJ6lE91rNtu/M
         PMg2cAr4VVkwXotj8cPvNZcjnpCdAb5t+dyqTp8Qeb2RqqDVbKCZl6Dl3LT3T9laezgt
         Xvw6bg2jaq2EK8OICj6CavBh6ieY9Y/UjRyPfcoOnjM+T5IX9t3UDFHNkbEpqa7G1/wi
         xxnj5rjh5diILzG/FgQ2i9RBohqrikaBzGjeyxJ/jCQMGVopHZG7d2ejRAOYuyoU7YXn
         OX1w==
X-Gm-Message-State: AOJu0YzjjtsfhC4GszFZOZcnCiu0oRhMHboKihBb4+xFXj7oL5j3J/Uh
	FzRZ0a9SigI3VpF8htH4KAL0QLke9qX8368Hq0ZxuNqSKBWNmLJvc45RHw==
X-Google-Smtp-Source: AGHT+IHukNW3yw9QAPGbdR5QO+x/EQTA8zrGAKtVocWAatigqCD+mlzKcdc2Cy7dF262UbSh6llT9A==
X-Received: by 2002:a05:6e02:1fcf:b0:375:a5de:5d46 with SMTP id e9e14a558f8ab-39f4f516a96mr185216455ab.5.1725494227539;
        Wed, 04 Sep 2024 16:57:07 -0700 (PDT)
Received: from aford-System-Version.lan (c-75-72-166-104.hsd1.mn.comcast.net. [75.72.166.104])
        by smtp.gmail.com with ESMTPSA id e9e14a558f8ab-39f3afc594csm39396735ab.43.2024.09.04.16.57.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Sep 2024 16:57:06 -0700 (PDT)
From: Adam Ford <aford173@gmail.com>
To: linux-phy@lists.infradead.org
Cc: dominique.martinet@atmark-techno.com,
	linux-imx@nxp.com,
	festevam@gmail.com,
	frieder.schrempf@kontron.de,
	aford@beaconembedded.com,
	Sandor.yu@nxp.com,
	Adam Ford <aford173@gmail.com>,
	Marco Felsch <m.felsch@pengutronix.de>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
	Lucas Stach <l.stach@pengutronix.de>,
	linux-kernel@vger.kernel.org
Subject: [PATCH V6 1/5] phy: freescale: fsl-samsung-hdmi: Replace register defines with macro
Date: Wed,  4 Sep 2024 18:30:29 -0500
Message-ID: <20240904233100.114611-2-aford173@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240904233100.114611-1-aford173@gmail.com>
References: <20240904233100.114611-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240904_165709_007987_59D785BE 
X-CRM114-Status: GOOD (  16.39  )
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

There are 47 registers defined as PHY_REG_xx were xx goes from 00 to
47.  Simplify this by replacing them all with a macro which is passed
the register number to return the proper register offset.

Signed-off-by: Adam Ford <aford173@gmail.com>
Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>
Reviewed-by: Frieder Schrempf <frieder.schrempf@kontron.de>
Tested-by: Frieder Schrempf <frieder.schrempf@kontron.de>
---
V6:  No Change

V5:  Restore comment about REG33.
     Add spacing between the REG entries to easier readability
---
 drivers/phy/freescale/phy-fsl-samsung-hdmi.c | 133 ++++++-------------
 1 file changed, 43 insertions(+), 90 deletions(-)

diff --git a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
index 9048cdc760c2..acea7008aefc 100644
--- a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
+++ b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
@@ -14,76 +14,29 @@
 #include <linux/platform_device.h>
 #include <linux/pm_runtime.h>
 
-#define PHY_REG_00		0x00
-#define PHY_REG_01		0x04
-#define PHY_REG_02		0x08
-#define PHY_REG_08		0x20
-#define PHY_REG_09		0x24
-#define PHY_REG_10		0x28
-#define PHY_REG_11		0x2c
-
-#define PHY_REG_12		0x30
-#define  REG12_CK_DIV_MASK	GENMASK(5, 4)
-
-#define PHY_REG_13		0x34
-#define  REG13_TG_CODE_LOW_MASK	GENMASK(7, 0)
-
-#define PHY_REG_14		0x38
-#define  REG14_TOL_MASK		GENMASK(7, 4)
-#define  REG14_RP_CODE_MASK	GENMASK(3, 1)
-#define  REG14_TG_CODE_HIGH_MASK	GENMASK(0, 0)
-
-#define PHY_REG_15		0x3c
-#define PHY_REG_16		0x40
-#define PHY_REG_17		0x44
-#define PHY_REG_18		0x48
-#define PHY_REG_19		0x4c
-#define PHY_REG_20		0x50
-
-#define PHY_REG_21		0x54
-#define  REG21_SEL_TX_CK_INV	BIT(7)
-#define  REG21_PMS_S_MASK	GENMASK(3, 0)
-
-#define PHY_REG_22		0x58
-#define PHY_REG_23		0x5c
-#define PHY_REG_24		0x60
-#define PHY_REG_25		0x64
-#define PHY_REG_26		0x68
-#define PHY_REG_27		0x6c
-#define PHY_REG_28		0x70
-#define PHY_REG_29		0x74
-#define PHY_REG_30		0x78
-#define PHY_REG_31		0x7c
-#define PHY_REG_32		0x80
+#define PHY_REG(reg)		(reg * 4)
 
+#define REG12_CK_DIV_MASK	GENMASK(5, 4)
+
+#define REG13_TG_CODE_LOW_MASK	GENMASK(7, 0)
+
+#define REG14_TOL_MASK		GENMASK(7, 4)
+#define REG14_RP_CODE_MASK	GENMASK(3, 1)
+#define REG14_TG_CODE_HIGH_MASK	GENMASK(0, 0)
+
+#define REG21_SEL_TX_CK_INV	BIT(7)
+#define REG21_PMS_S_MASK	GENMASK(3, 0)
 /*
  * REG33 does not match the ref manual. According to Sandor Yu from NXP,
  * "There is a doc issue on the i.MX8MP latest RM"
  * REG33 is being used per guidance from Sandor
  */
+#define REG33_MODE_SET_DONE	BIT(7)
+#define REG33_FIX_DA		BIT(1)
 
-#define PHY_REG_33		0x84
-#define  REG33_MODE_SET_DONE	BIT(7)
-#define  REG33_FIX_DA		BIT(1)
-
-#define PHY_REG_34		0x88
-#define  REG34_PHY_READY	BIT(7)
-#define  REG34_PLL_LOCK		BIT(6)
-#define  REG34_PHY_CLK_READY	BIT(5)
-
-#define PHY_REG_35		0x8c
-#define PHY_REG_36		0x90
-#define PHY_REG_37		0x94
-#define PHY_REG_38		0x98
-#define PHY_REG_39		0x9c
-#define PHY_REG_40		0xa0
-#define PHY_REG_41		0xa4
-#define PHY_REG_42		0xa8
-#define PHY_REG_43		0xac
-#define PHY_REG_44		0xb0
-#define PHY_REG_45		0xb4
-#define PHY_REG_46		0xb8
-#define PHY_REG_47		0xbc
+#define REG34_PHY_READY	BIT(7)
+#define REG34_PLL_LOCK		BIT(6)
+#define REG34_PHY_CLK_READY	BIT(5)
 
 #define PHY_PLL_DIV_REGS_NUM 6
 
@@ -369,29 +322,29 @@ struct reg_settings {
 };
 
 static const struct reg_settings common_phy_cfg[] = {
-	{ PHY_REG_00, 0x00 }, { PHY_REG_01, 0xd1 },
-	{ PHY_REG_08, 0x4f }, { PHY_REG_09, 0x30 },
-	{ PHY_REG_10, 0x33 }, { PHY_REG_11, 0x65 },
+	{ PHY_REG(0), 0x00 }, { PHY_REG(1), 0xd1 },
+	{ PHY_REG(8), 0x4f }, { PHY_REG(9), 0x30 },
+	{ PHY_REG(10), 0x33 }, { PHY_REG(11), 0x65 },
 	/* REG12 pixclk specific */
 	/* REG13 pixclk specific */
 	/* REG14 pixclk specific */
-	{ PHY_REG_15, 0x80 }, { PHY_REG_16, 0x6c },
-	{ PHY_REG_17, 0xf2 }, { PHY_REG_18, 0x67 },
-	{ PHY_REG_19, 0x00 }, { PHY_REG_20, 0x10 },
+	{ PHY_REG(15), 0x80 }, { PHY_REG(16), 0x6c },
+	{ PHY_REG(17), 0xf2 }, { PHY_REG(18), 0x67 },
+	{ PHY_REG(19), 0x00 }, { PHY_REG(20), 0x10 },
 	/* REG21 pixclk specific */
-	{ PHY_REG_22, 0x30 }, { PHY_REG_23, 0x32 },
-	{ PHY_REG_24, 0x60 }, { PHY_REG_25, 0x8f },
-	{ PHY_REG_26, 0x00 }, { PHY_REG_27, 0x00 },
-	{ PHY_REG_28, 0x08 }, { PHY_REG_29, 0x00 },
-	{ PHY_REG_30, 0x00 }, { PHY_REG_31, 0x00 },
-	{ PHY_REG_32, 0x00 }, { PHY_REG_33, 0x80 },
-	{ PHY_REG_34, 0x00 }, { PHY_REG_35, 0x00 },
-	{ PHY_REG_36, 0x00 }, { PHY_REG_37, 0x00 },
-	{ PHY_REG_38, 0x00 }, { PHY_REG_39, 0x00 },
-	{ PHY_REG_40, 0x00 }, { PHY_REG_41, 0xe0 },
-	{ PHY_REG_42, 0x83 }, { PHY_REG_43, 0x0f },
-	{ PHY_REG_44, 0x3E }, { PHY_REG_45, 0xf8 },
-	{ PHY_REG_46, 0x00 }, { PHY_REG_47, 0x00 }
+	{ PHY_REG(22), 0x30 }, { PHY_REG(23), 0x32 },
+	{ PHY_REG(24), 0x60 }, { PHY_REG(25), 0x8f },
+	{ PHY_REG(26), 0x00 }, { PHY_REG(27), 0x00 },
+	{ PHY_REG(28), 0x08 }, { PHY_REG(29), 0x00 },
+	{ PHY_REG(30), 0x00 }, { PHY_REG(31), 0x00 },
+	{ PHY_REG(32), 0x00 }, { PHY_REG(33), 0x80 },
+	{ PHY_REG(34), 0x00 }, { PHY_REG(35), 0x00 },
+	{ PHY_REG(36), 0x00 }, { PHY_REG(37), 0x00 },
+	{ PHY_REG(38), 0x00 }, { PHY_REG(39), 0x00 },
+	{ PHY_REG(40), 0x00 }, { PHY_REG(41), 0xe0 },
+	{ PHY_REG(42), 0x83 }, { PHY_REG(43), 0x0f },
+	{ PHY_REG(44), 0x3E }, { PHY_REG(45), 0xf8 },
+	{ PHY_REG(46), 0x00 }, { PHY_REG(47), 0x00 }
 };
 
 struct fsl_samsung_hdmi_phy {
@@ -442,7 +395,7 @@ fsl_samsung_hdmi_phy_configure_pixclk(struct fsl_samsung_hdmi_phy *phy,
 	}
 
 	writeb(REG21_SEL_TX_CK_INV | FIELD_PREP(REG21_PMS_S_MASK, div),
-	       phy->regs + PHY_REG_21);
+	       phy->regs + PHY_REG(21));
 }
 
 static void
@@ -469,7 +422,7 @@ fsl_samsung_hdmi_phy_configure_pll_lock_det(struct fsl_samsung_hdmi_phy *phy,
 		break;
 	}
 
-	writeb(FIELD_PREP(REG12_CK_DIV_MASK, ilog2(div)), phy->regs + PHY_REG_12);
+	writeb(FIELD_PREP(REG12_CK_DIV_MASK, ilog2(div)), phy->regs + PHY_REG(12));
 
 	/*
 	 * Calculation for the frequency lock detector target code (fld_tg_code)
@@ -489,11 +442,11 @@ fsl_samsung_hdmi_phy_configure_pll_lock_det(struct fsl_samsung_hdmi_phy *phy,
 
 	/* FLD_TOL and FLD_RP_CODE taken from downstream driver */
 	writeb(FIELD_PREP(REG13_TG_CODE_LOW_MASK, fld_tg_code),
-	       phy->regs + PHY_REG_13);
+	       phy->regs + PHY_REG(13));
 	writeb(FIELD_PREP(REG14_TOL_MASK, 2) |
 	       FIELD_PREP(REG14_RP_CODE_MASK, 2) |
 	       FIELD_PREP(REG14_TG_CODE_HIGH_MASK, fld_tg_code >> 8),
-	       phy->regs + PHY_REG_14);
+	       phy->regs + PHY_REG(14));
 }
 
 static int fsl_samsung_hdmi_phy_configure(struct fsl_samsung_hdmi_phy *phy,
@@ -503,7 +456,7 @@ static int fsl_samsung_hdmi_phy_configure(struct fsl_samsung_hdmi_phy *phy,
 	u8 val;
 
 	/* HDMI PHY init */
-	writeb(REG33_FIX_DA, phy->regs + PHY_REG_33);
+	writeb(REG33_FIX_DA, phy->regs + PHY_REG(33));
 
 	/* common PHY registers */
 	for (i = 0; i < ARRAY_SIZE(common_phy_cfg); i++)
@@ -511,14 +464,14 @@ static int fsl_samsung_hdmi_phy_configure(struct fsl_samsung_hdmi_phy *phy,
 
 	/* set individual PLL registers PHY_REG2 ... PHY_REG7 */
 	for (i = 0; i < PHY_PLL_DIV_REGS_NUM; i++)
-		writeb(cfg->pll_div_regs[i], phy->regs + PHY_REG_02 + i * 4);
+		writeb(cfg->pll_div_regs[i], phy->regs + PHY_REG(2) + i * 4);
 
 	fsl_samsung_hdmi_phy_configure_pixclk(phy, cfg);
 	fsl_samsung_hdmi_phy_configure_pll_lock_det(phy, cfg);
 
-	writeb(REG33_FIX_DA | REG33_MODE_SET_DONE, phy->regs + PHY_REG_33);
+	writeb(REG33_FIX_DA | REG33_MODE_SET_DONE, phy->regs + PHY_REG(33));
 
-	ret = readb_poll_timeout(phy->regs + PHY_REG_34, val,
+	ret = readb_poll_timeout(phy->regs + PHY_REG(34), val,
 				 val & REG34_PLL_LOCK, 50, 20000);
 	if (ret)
 		dev_err(phy->dev, "PLL failed to lock\n");
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
