Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DBA75C7115A
	for <linux-phy@archiver.kernel.org>; Mon, 16 Jun 2025 10:25:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wckc2jsQntE6M0zzDjnll9QfKFug6xBRlDYpLRlxebs=; b=U+WYy8Z+kIQx9e
	Zs0cRw3wAt5ntv9wg5QpsSS3ozolcDj62YB2NtcYVBZiLSfPNcQbSBy1doy9kM2e+kEtkRcGWrQtl
	hLHsfWdhZWi8runnHi88dhU2LUUnElURfU29Kde96+fWvBVRrKGRsbvtCRenaZnt63t7Tcj10ajR2
	8PJbjKPU+cEdZlQjtS0zPnDn+xerEtpPauZ8aLQ0Gt/xkXQE5if5NHOgtLyz3BNK6p5N68CWNk3+1
	DXM0d0RftBfuHJp+4dcs3Ur+ZYak40t+jRVu2T/NZLZFMhle9TorUTzfnStYyNBnUVXNRzMpUXWzb
	/IbjptsqUI+igEjIHksw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uR726-000000043zH-244h;
	Mon, 16 Jun 2025 10:25:42 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uR6Pg-00000003xHS-1gXV
	for linux-phy@lists.infradead.org;
	Mon, 16 Jun 2025 09:46:01 +0000
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-adb5cb6d8f1so779270566b.3
        for <linux-phy@lists.infradead.org>; Mon, 16 Jun 2025 02:46:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1750067159; x=1750671959; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fypXrdQ7WoRwh8UJszw0sll00HUPmzGyG59Nh8kl2GM=;
        b=wUxRYp4/3qwLXnTdKiEwIxNFaZkvf7eTdkkxKFgu2s3S1be7f+ec4gTYkXjgCe9c8Y
         tprBzem75DphzVbTcZTejvhKi0LapvtvJx3JULx2NGZNDfC5NGFStWoyq6PgNKpIS0x7
         dwv6VlDp6Cs/eeUzyRMipgIkEjE0X/hPMPGRnLNPYpq45S9C93jmw4nolihtiKIuQNyr
         lOgU1bYywnmmBgvMEN3UY/ktoCAUhKaS3t6zenm+Te8hs3Rpf2L1gwXd/Z/Mg7N3IQ89
         sq5rurmGQylOw2cMdHEva0xnFFn5FDHWxDJHU9ougKWw22VyrapE6IQoanE20Gsc0eTD
         TeGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750067159; x=1750671959;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fypXrdQ7WoRwh8UJszw0sll00HUPmzGyG59Nh8kl2GM=;
        b=mJ4+6DI4AteRLNVgF3qWM0VXY+V1g41VWaUFdQbPX60YvyrDZ0Eq2QSvK2a7CEjj9c
         jOo+Zg6UgRDUPGX2HnUGCBiaUei+2NflU55d9tTvvBFwh+8nYO1W+4MxSJGg23U27cB+
         uRC95VNnTSPzk8wdrxDC6EBFXUJi2UKIStb33Co7HnSRXohgZuf8BQtCHUHMZsv4A78g
         nLECm5ouxoByLKTJzdPbFXjaTYYtvnvdEV6LgKoFn9pNtBYbmJNVBpsN/RLKOJTJ7sby
         55jl3aJTo6Z1hwmZCL3zwBFLvAd5EnXmpS6OeCtNLPsrsZF3wEhAA3sI6MURWUGPYIBK
         5mjg==
X-Forwarded-Encrypted: i=1; AJvYcCU7YC7oXfmROrCc1do7tGpy+vuqPdJMRuAslpJE3q1cqd8YqR7yajv3uBmRMORAnR50WY0ow8m1Rp8=@lists.infradead.org
X-Gm-Message-State: AOJu0YxfX87NtNydwLvPib3vlHRnMzOyESjHYQ+x52Fwoclk4/qcWKPf
	CtfveMLuhi8Vm7EmIK4VtdeoHSdRNKUbyz+9HMcu6iEvjIcUGeLnuusJEJ8Xe45faERuh9qVAvv
	CHBoqgUA=
X-Gm-Gg: ASbGncuBHvXJR1CkpafYBGMDht2ZIiO+AXR2z0MvqBev0fN1eKLcTttArBZovaAliRa
	0INKaTDXxqDSyWdBsGCJzDiH4FTZSZySHUyyJ5bwrlT83spK9t7rvtqjvmyYRJtBSU4fXVyDC0u
	zb5Vu0FW54klcdt/0WDaDgh3FzNTibbsd0XtuSfiWHqrddhdZvAR5W2/q8yC281aGfUPHJ6QBG4
	kUgJMd5JbTN/MiLmeGTveY93AMynK+9bbjdLYJt3Whde3miTn6FpTmWLfNbqoKdGM8vtf3bOBvQ
	AscdIwZnWATbwm8AgKMMDnLDP2IsF20Kh7Z9P96MkCvpXQQz38ntKa5f8JtWuQmF5DFfO+5ERVC
	LS8JH+CtSNzwRcoNIZTct07xOaLWle2HU
X-Google-Smtp-Source: AGHT+IH9yV+hi/QlJGsqmSHikLojP9cUsj2hSbxVbBPox1DLoeCzVp+CeeeJmxb2GiJh3vMM1AVqZA==
X-Received: by 2002:a17:907:3f87:b0:ad8:9f50:d8c1 with SMTP id a640c23a62f3a-adfad416340mr869336566b.31.1750067158741;
        Mon, 16 Jun 2025 02:45:58 -0700 (PDT)
Received: from otso.local (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-adec81c0421sm613375666b.46.2025.06.16.02.45.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Jun 2025 02:45:58 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Mon, 16 Jun 2025 11:45:12 +0200
Subject: [PATCH 2/2] phy: qualcomm: phy-qcom-eusb2-repeater: Don't zero-out
 registers
MIME-Version: 1.0
Message-Id: <20250616-eusb2-repeater-tuning-v1-2-9457ff0fbf75@fairphone.com>
References: <20250616-eusb2-repeater-tuning-v1-0-9457ff0fbf75@fairphone.com>
In-Reply-To: <20250616-eusb2-repeater-tuning-v1-0-9457ff0fbf75@fairphone.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1750067155; l=4908;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=6T1KeQBp4rmWNlU1Qma86j+ASrbxg9OQGXA7EMGSZJk=;
 b=rSPmTAxMUHhEb664e4u0Vys8cvPW4tmbyb/rV6Zv+yEfeN+6fhIgjJlGo3IOUtIJSOPFY43+M
 9wib0mmb16hCx5gSBR+CP/KR5UxeDUTgSInZD0AujDEsaLY7hZnJydV
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250616_024600_455454_C50A25A9 
X-CRM114-Status: GOOD (  13.57  )
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

Zeroing out registers does not happen in the downstream kernel, and will
"tune" the repeater in surely unexpected ways since most registers don't
have a reset value of 0x0.

Stop doing that and instead just set the registers that are in the init
sequence (though long term I don't think there's actually PMIC-specific
init sequences, there's board specific tuning, but that's a story for
another day).

Fixes: 99a517a582fc ("phy: qualcomm: phy-qcom-eusb2-repeater: Zero out untouched tuning regs")
Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c | 63 +++++++++++++-------------
 1 file changed, 32 insertions(+), 31 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
index 6bd1b3c75c779d2db2744703262e132cc439f76e..a246c897fedb2edfd376ac5fdc0423607f8c562b 100644
--- a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
+++ b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
@@ -61,8 +61,13 @@ enum eusb2_reg_layout {
 	LAYOUT_SIZE,
 };
 
+struct eusb2_repeater_init_tbl_reg {
+	u8 reg;
+	u8 value;
+};
+
 struct eusb2_repeater_cfg {
-	const u32 *init_tbl;
+	const struct eusb2_repeater_init_tbl_reg *init_tbl;
 	int init_tbl_num;
 	const char * const *vreg_list;
 	int num_vregs;
@@ -82,16 +87,16 @@ static const char * const pm8550b_vreg_l[] = {
 	"vdd18", "vdd3",
 };
 
-static const u32 pm8550b_init_tbl[NUM_TUNE_FIELDS] = {
-	[TUNE_IUSB2] = 0x8,
-	[TUNE_SQUELCH_U] = 0x3,
-	[TUNE_USB2_PREEM] = 0x5,
+static const struct eusb2_repeater_init_tbl_reg pm8550b_init_tbl[] = {
+	{ TUNE_IUSB2, 0x8 },
+	{ TUNE_SQUELCH_U, 0x3 },
+	{ TUNE_USB2_PREEM, 0x5 },
 };
 
-static const u32 smb2360_init_tbl[NUM_TUNE_FIELDS] = {
-	[TUNE_IUSB2] = 0x5,
-	[TUNE_SQUELCH_U] = 0x3,
-	[TUNE_USB2_PREEM] = 0x2,
+static const struct eusb2_repeater_init_tbl_reg smb2360_init_tbl[] = {
+	{ TUNE_IUSB2, 0x5 },
+	{ TUNE_SQUELCH_U, 0x3 },
+	{ TUNE_USB2_PREEM, 0x2 },
 };
 
 static const struct eusb2_repeater_cfg pm8550b_eusb2_cfg = {
@@ -129,17 +134,10 @@ static int eusb2_repeater_init(struct phy *phy)
 	struct eusb2_repeater *rptr = phy_get_drvdata(phy);
 	struct device_node *np = rptr->dev->of_node;
 	struct regmap *regmap = rptr->regmap;
-	const u32 *init_tbl = rptr->cfg->init_tbl;
-	u8 tune_usb2_preem = init_tbl[TUNE_USB2_PREEM];
-	u8 tune_hsdisc = init_tbl[TUNE_HSDISC];
-	u8 tune_iusb2 = init_tbl[TUNE_IUSB2];
 	u32 base = rptr->base;
-	u32 val;
+	u32 poll_val;
 	int ret;
-
-	of_property_read_u8(np, "qcom,tune-usb2-amplitude", &tune_iusb2);
-	of_property_read_u8(np, "qcom,tune-usb2-disc-thres", &tune_hsdisc);
-	of_property_read_u8(np, "qcom,tune-usb2-preem", &tune_usb2_preem);
+	u8 val;
 
 	ret = regulator_bulk_enable(rptr->cfg->num_vregs, rptr->vregs);
 	if (ret)
@@ -147,21 +145,24 @@ static int eusb2_repeater_init(struct phy *phy)
 
 	regmap_write(regmap, base + EUSB2_EN_CTL1, EUSB2_RPTR_EN);
 
-	regmap_write(regmap, base + EUSB2_TUNE_EUSB_HS_COMP_CUR, init_tbl[TUNE_EUSB_HS_COMP_CUR]);
-	regmap_write(regmap, base + EUSB2_TUNE_EUSB_EQU, init_tbl[TUNE_EUSB_EQU]);
-	regmap_write(regmap, base + EUSB2_TUNE_EUSB_SLEW, init_tbl[TUNE_EUSB_SLEW]);
-	regmap_write(regmap, base + EUSB2_TUNE_USB2_HS_COMP_CUR, init_tbl[TUNE_USB2_HS_COMP_CUR]);
-	regmap_write(regmap, base + EUSB2_TUNE_USB2_EQU, init_tbl[TUNE_USB2_EQU]);
-	regmap_write(regmap, base + EUSB2_TUNE_USB2_SLEW, init_tbl[TUNE_USB2_SLEW]);
-	regmap_write(regmap, base + EUSB2_TUNE_SQUELCH_U, init_tbl[TUNE_SQUELCH_U]);
-	regmap_write(regmap, base + EUSB2_TUNE_RES_FSDIF, init_tbl[TUNE_RES_FSDIF]);
-	regmap_write(regmap, base + EUSB2_TUNE_USB2_CROSSOVER, init_tbl[TUNE_USB2_CROSSOVER]);
+	/* Write registers from init table */
+	for (int i = 0; i < rptr->cfg->init_tbl_num; i++)
+		regmap_write(regmap, base + rptr->cfg->init_tbl[i].reg,
+			     rptr->cfg->init_tbl[i].value);
 
-	regmap_write(regmap, base + EUSB2_TUNE_USB2_PREEM, tune_usb2_preem);
-	regmap_write(regmap, base + EUSB2_TUNE_HSDISC, tune_hsdisc);
-	regmap_write(regmap, base + EUSB2_TUNE_IUSB2, tune_iusb2);
+	/* Override registers from devicetree values */
+	if (!of_property_read_u8(np, "qcom,tune-usb2-amplitude", &val))
+		regmap_write(regmap, base + EUSB2_TUNE_USB2_PREEM, val);
 
-	ret = regmap_read_poll_timeout(regmap, base + EUSB2_RPTR_STATUS, val, val & RPTR_OK, 10, 5);
+	if (!of_property_read_u8(np, "qcom,tune-usb2-disc-thres", &val))
+		regmap_write(regmap, base + EUSB2_TUNE_HSDISC, val);
+
+	if (!of_property_read_u8(np, "qcom,tune-usb2-preem", &val))
+		regmap_write(regmap, base + EUSB2_TUNE_IUSB2, val);
+
+	/* Wait for status OK */
+	ret = regmap_read_poll_timeout(regmap, base + EUSB2_RPTR_STATUS, poll_val,
+				       poll_val & RPTR_OK, 10, 5);
 	if (ret)
 		dev_err(rptr->dev, "initialization timed-out\n");
 

-- 
2.49.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
