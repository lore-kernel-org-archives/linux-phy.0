Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 076FFCA0EE0
	for <linux-phy@archiver.kernel.org>; Wed, 13 Aug 2025 15:41:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qXb8SO2IjERuLnmIoOykzBQcJIy3UqCRcVEnS9uTNBk=; b=oHA8YcuvFkbvV4
	MyKMVJ33vYt5D/Trh0fRWCIXQzZwq6LlKGV/WuA6TIHoxDXUN5lhpvcBa7bc7e/kARJ3+ra3InFT+
	1AsCmuIj6P1WT5NzXVL5QhulSeib3czNfomUMVBVLgQIa+O8S1Ec193spc1//lVU2Wu+SejnoUKi7
	y2hakRyZrANct19v3gdcJcQK44XKmEBsew6LBaMy4oCcHupFuBj0My2wj9Xzuz6m6hu8AUslHyvCy
	ntK7XEvvmBLTHEwqwyNMcDd0y5Rp7l86x1uNNIUYwzyZ1Dx8dN41OMMqfy7yEejlsZdoskhjFDNVo
	3mkXc3uwLeUnXGv4adYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umDbL-0000000EDpj-2jFf;
	Wed, 13 Aug 2025 15:41:19 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umCz5-0000000E75T-39FU
	for linux-phy@lists.infradead.org;
	Wed, 13 Aug 2025 15:01:48 +0000
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-3b78315ff04so5665816f8f.0
        for <linux-phy@lists.infradead.org>; Wed, 13 Aug 2025 08:01:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755097306; x=1755702106; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RUnS6lFW/OouGAuKaDZ/jOVoVg2OpPkl5Y2+4hJYcHY=;
        b=unBHMnebTUlSTW/LAoKWkyWnUy6VxyT/gwexD74QPlTcqkj8ARHTquh6AxjBFghRpY
         Az82LfQ7HiehmUUAKFBstong5ats75UBG2S90yLNn0xSJA1ed53IVzoEhMAQuZ9oON1Z
         EqRQVfdddo1sYHu6in0lDCiAWjylWkO//c9CFDUnfEG+xw2qAsnSBDyEIz2U4Jz0LIKb
         zufbOI3nAoedpsv0t5vdfYCogPwtM19Xakplt1IaEtpYpeV/PjzoGfEaWIDxT8J5qQwK
         8iRH0sFPlkP10S/3Axt8/74pz+B9dktPKV17O5Jdhz2YUOdlH+dsBeS4Cn/myoJc6v83
         fOdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755097306; x=1755702106;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RUnS6lFW/OouGAuKaDZ/jOVoVg2OpPkl5Y2+4hJYcHY=;
        b=ZPdO+6TD5QJ2oqGToQOfw3gH4GGWtBeKzSXVRTejOirzDBjd48dBqm2y9fmfxAmWJy
         ymZt0Ixze+yKtWIM49pDtPcOIiGRWFdb7xRaukLbPwKhdFz0F+I29YDh4eugskaEBupl
         JH7bw2UMh8LrrMz2qzP8fisHeiYi//k0+4gl891FlzpFodw+PtVFFuyds9yfo7J5wWCQ
         bhdY4SN+TQqk985tMjztdrRdLBmxWFh8624sozOyM+mnaXJUSa1PK7BvlSseksqQdNzb
         RnbjIresPkJ+1gC2g6m+aXa76QBQbDsIwcb7ty1M5yDNla07fL6zTiwpHep8OfqpY0jk
         2yQg==
X-Gm-Message-State: AOJu0YzepHl+sXCDsQO1FLF2k3s1bMHCxa/Y2nH+c8mwDRsvY5hSf+ZB
	U4TnLBY/JJJS+f88U99S3Jv4AwXAmH50NepF9XWep1yXOcdkPoASC7NWkRpdh/MBDvI=
X-Gm-Gg: ASbGncuMW/eNErvX6fbmvssDM8Ch1QANwcqYPykuVWDhHpW2n8dF6NT2/3vRPEcyBsL
	oz94ED9t0VR+E6znQzOzy86yGMLMwZVBIWWahDtQ4Np1s9opOhlebuW2QUjRg1DbnI15656UkjK
	j2o+ccw1r7KF2ABIXpqJ5B6WiQrLWIDRpEYoFZUTJefJtyNkwOw+PDAkOlfpHN3XrfE6d+HHJx4
	aYfeBKf1UXm5z96p5jQz2wzyeYP5A1GSDQFkMtuiG9U6Xs4LHZLqUjREhwlHKmqHBej8G3gqYVT
	2hmDoZIXLyzDD7xOv1mhIwkjcJ6wmmPcGHP8P9PEn/A/BeVARdKSWLTew/FFH90gdg7tbXU2D0T
	LAaBH8EyrM9VouNg8CWgm2dff7WRVQXwFkwKtH7ebaRTh4qmCHAS7
X-Google-Smtp-Source: AGHT+IHZf4R4qw8eeL2FWMX6E8ZtRfYmJiDx05re8iiNDmAHE0O5lU+KTt0U3hhJsJjVNN/RPYez2A==
X-Received: by 2002:a05:6000:1aca:b0:3b8:d082:41e with SMTP id ffacd0b85a97d-3b917edec2bmr2870312f8f.57.1755097306293;
        Wed, 13 Aug 2025 08:01:46 -0700 (PDT)
Received: from gpeter-l.roam.corp.google.com ([145.224.66.191])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b79c4533f1sm48402964f8f.42.2025.08.13.08.01.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Aug 2025 08:01:45 -0700 (PDT)
From: Peter Griffin <peter.griffin@linaro.org>
Date: Wed, 13 Aug 2025 16:00:47 +0100
Subject: [PATCH v3 2/2] phy: samsung: gs101-ufs: Add .notify_phystate() &
 hibern8 enter/exit values
MIME-Version: 1.0
Message-Id: <20250813-phy-notify-pmstate-v3-2-3bda59055dd3@linaro.org>
References: <20250813-phy-notify-pmstate-v3-0-3bda59055dd3@linaro.org>
In-Reply-To: <20250813-phy-notify-pmstate-v3-0-3bda59055dd3@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Krzysztof Kozlowski <krzk@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 kernel-team@android.com, William Mcvicker <willmcvicker@google.com>, 
 Manivannan Sadhasivam <mani@kernel.org>, neil.armstrong@linaro.org, 
 Peter Griffin <peter.griffin@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=5773;
 i=peter.griffin@linaro.org; h=from:subject:message-id;
 bh=e96e2uriLNE/91D1xcujNN0wWodE6fkJhlYuU4bmmm4=;
 b=owEBbQKS/ZANAwAKAc7ouNYCNHK6AcsmYgBonKjU3CQtLVFx27U59LnCkpBH9YabXSmsjLPrN
 KW1+UIG8c2JAjMEAAEKAB0WIQQO/I5vVXh1DVa1SfzO6LjWAjRyugUCaJyo1AAKCRDO6LjWAjRy
 ugP9D/9Zn4QpP77Upl4GTzZubiAEAWj7Qfp3gZqZq+elDTLue08D6g8EEvGmP5Rq2Ty0HHM4fw9
 XU4aNfHCfG72rtzgO4ORaSiPg/DLRRM8maAYqwXFImgMEfmq1hmHBDPmo+kJ7KWU81Xxd0+YKmR
 FbVQQscwmZ16PqYXfQBTxVRqOBuHH4CAqKuv9c4owuCsX6oQN1NcnIDMJzOZx7VkQeOJmZJo42X
 qvdux3cl+SZNDivkmQs36gRu2fNKwyHJqoI8+Sis0bl4eIqoRL9EDNw+B7vfQTfsasLGM/9AKuJ
 /XiyoRQW51eXBF32fnfHDfW6DpLJOEE8ZXjAT3J0L3hCCcaKp9m/ZKsFz5Gc2CXMoOQP0Mq9jrr
 zaSELrGgVFtPn8CZSU7HzhQi6TWoj7efg+cAOvvR4+cw2KtEmox5h2SdaSRPA+P+WtQi77u9NLw
 k8IrNLH/oE3Wul/VujbBsdYbHE8blT/v4gKpAsABTWslhMOTMP3igPVvXTf3PWAFK6oiz54ogA3
 7DBxvH6mhG0sXZ96FXsUh1seX1JyetLR+qWsYTPD73qu7pMuTDdJSH3de9eYAWQIMu5gKxDW3b+
 oJA7/QwxPGrsPv6x00YVmOzqSWaeQS+EjbfpIN1R5+XfukR80gxocZgGP2smhleUecGpXbzEoIZ
 yUMnyKRfWubBZhA==
X-Developer-Key: i=peter.griffin@linaro.org; a=openpgp;
 fpr=0EFC8E6F5578750D56B549FCCEE8B8D6023472BA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250813_080147_823522_4A1799C3 
X-CRM114-Status: GOOD (  15.31  )
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

Implement the .notify_phystate() callback and provide the gs101 specific
phy values that need to be programmed when entering and exiting the hibern8
state.

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
 drivers/phy/samsung/phy-gs101-ufs.c   | 28 ++++++++++++++++++++++++++
 drivers/phy/samsung/phy-samsung-ufs.c | 38 +++++++++++++++++++++++++++++++++++
 drivers/phy/samsung/phy-samsung-ufs.h |  7 +++++++
 3 files changed, 73 insertions(+)

diff --git a/drivers/phy/samsung/phy-gs101-ufs.c b/drivers/phy/samsung/phy-gs101-ufs.c
index 17b798da5b5761f8e367599517d2d97bf0bb6b74..a15e1f453f7f3cecd6d3aa75217633ac4b6085d0 100644
--- a/drivers/phy/samsung/phy-gs101-ufs.c
+++ b/drivers/phy/samsung/phy-gs101-ufs.c
@@ -108,12 +108,39 @@ static const struct samsung_ufs_phy_cfg tensor_gs101_post_pwr_hs_config[] = {
 	END_UFS_PHY_CFG,
 };
 
+static const struct samsung_ufs_phy_cfg tensor_gs101_post_h8_enter[] = {
+	PHY_TRSV_REG_CFG_GS101(0x262, 0x08, PWR_MODE_ANY),
+	PHY_TRSV_REG_CFG_GS101(0x265, 0x0A, PWR_MODE_ANY),
+	PHY_COMN_REG_CFG(0x1, 0x8,  PWR_MODE_ANY),
+	PHY_COMN_REG_CFG(0x0, 0x86,  PWR_MODE_ANY),
+	PHY_COMN_REG_CFG(0x8, 0x60,  PWR_MODE_HS_ANY),
+	PHY_TRSV_REG_CFG_GS101(0x222, 0x08, PWR_MODE_HS_ANY),
+	PHY_TRSV_REG_CFG_GS101(0x246, 0x01, PWR_MODE_HS_ANY),
+	END_UFS_PHY_CFG,
+};
+
+static const struct samsung_ufs_phy_cfg tensor_gs101_pre_h8_exit[] = {
+	PHY_COMN_REG_CFG(0x0, 0xC6,  PWR_MODE_ANY),
+	PHY_COMN_REG_CFG(0x1, 0x0C,  PWR_MODE_ANY),
+	PHY_TRSV_REG_CFG_GS101(0x262, 0x00, PWR_MODE_ANY),
+	PHY_TRSV_REG_CFG_GS101(0x265, 0x00, PWR_MODE_ANY),
+	PHY_COMN_REG_CFG(0x8, 0xE0,  PWR_MODE_HS_ANY),
+	PHY_TRSV_REG_CFG_GS101(0x246, 0x03, PWR_MODE_HS_ANY),
+	PHY_TRSV_REG_CFG_GS101(0x222, 0x18, PWR_MODE_HS_ANY),
+	END_UFS_PHY_CFG,
+};
+
 static const struct samsung_ufs_phy_cfg *tensor_gs101_ufs_phy_cfgs[CFG_TAG_MAX] = {
 	[CFG_PRE_INIT]		= tensor_gs101_pre_init_cfg,
 	[CFG_PRE_PWR_HS]	= tensor_gs101_pre_pwr_hs_config,
 	[CFG_POST_PWR_HS]	= tensor_gs101_post_pwr_hs_config,
 };
 
+static const struct samsung_ufs_phy_cfg *tensor_gs101_hibern8_cfgs[] = {
+	[CFG_POST_HIBERN8_ENTER]	= tensor_gs101_post_h8_enter,
+	[CFG_PRE_HIBERN8_EXIT]		= tensor_gs101_pre_h8_exit,
+};
+
 static const char * const tensor_gs101_ufs_phy_clks[] = {
 	"ref_clk",
 };
@@ -170,6 +197,7 @@ static int gs101_phy_wait_for_cdr_lock(struct phy *phy, u8 lane)
 
 const struct samsung_ufs_phy_drvdata tensor_gs101_ufs_phy = {
 	.cfgs = tensor_gs101_ufs_phy_cfgs,
+	.cfgs_hibern8 = tensor_gs101_hibern8_cfgs,
 	.isol = {
 		.offset = TENSOR_GS101_PHY_CTRL,
 		.mask = TENSOR_GS101_PHY_CTRL_MASK,
diff --git a/drivers/phy/samsung/phy-samsung-ufs.c b/drivers/phy/samsung/phy-samsung-ufs.c
index f3cbe6b17b235bb181b3fae628d75822f0c9183a..192ea408f787bb31912a2c7dd90cc1b61c4237c4 100644
--- a/drivers/phy/samsung/phy-samsung-ufs.c
+++ b/drivers/phy/samsung/phy-samsung-ufs.c
@@ -217,6 +217,42 @@ static int samsung_ufs_phy_set_mode(struct phy *generic_phy,
 	return 0;
 }
 
+static int samsung_ufs_phy_notify_state(struct phy *phy,
+					union phy_notify state)
+{
+	struct samsung_ufs_phy *ufs_phy = get_samsung_ufs_phy(phy);
+	const struct samsung_ufs_phy_cfg *cfg;
+	int i, err;
+
+	if (!ufs_phy->cfgs_hibern8)
+		return 0;
+
+	if (state.ufs_state == PHY_UFS_HIBERN8_ENTER)
+		cfg = ufs_phy->cfgs_hibern8[CFG_POST_HIBERN8_ENTER];
+	else if (state.ufs_state == PHY_UFS_HIBERN8_EXIT)
+		cfg = ufs_phy->cfgs_hibern8[CFG_PRE_HIBERN8_EXIT];
+
+	for_each_phy_cfg(cfg) {
+		for_each_phy_lane(ufs_phy, i) {
+			samsung_ufs_phy_config(ufs_phy, cfg, i);
+		}
+	}
+
+	if (state.ufs_state == PHY_UFS_HIBERN8_EXIT) {
+		for_each_phy_lane(ufs_phy, i) {
+			if (ufs_phy->drvdata->wait_for_cdr) {
+				err = ufs_phy->drvdata->wait_for_cdr(phy, i);
+				if (err)
+					goto err_out;
+			}
+		}
+	}
+
+	return 0;
+err_out:
+	return err;
+}
+
 static int samsung_ufs_phy_exit(struct phy *phy)
 {
 	struct samsung_ufs_phy *ss_phy = get_samsung_ufs_phy(phy);
@@ -233,6 +269,7 @@ static const struct phy_ops samsung_ufs_phy_ops = {
 	.power_off	= samsung_ufs_phy_power_off,
 	.calibrate	= samsung_ufs_phy_calibrate,
 	.set_mode	= samsung_ufs_phy_set_mode,
+	.notify_phystate = samsung_ufs_phy_notify_state,
 	.owner          = THIS_MODULE,
 };
 
@@ -287,6 +324,7 @@ static int samsung_ufs_phy_probe(struct platform_device *pdev)
 	phy->dev = dev;
 	phy->drvdata = drvdata;
 	phy->cfgs = drvdata->cfgs;
+	phy->cfgs_hibern8 = drvdata->cfgs_hibern8;
 	memcpy(&phy->isol, &drvdata->isol, sizeof(phy->isol));
 
 	if (!of_property_read_u32_index(dev->of_node, "samsung,pmu-syscon", 1,
diff --git a/drivers/phy/samsung/phy-samsung-ufs.h b/drivers/phy/samsung/phy-samsung-ufs.h
index a28f148081d168344b47f2798b00cb098f0a8574..f2c2e744e5bae87c9cfcaa17f4a09456f134966a 100644
--- a/drivers/phy/samsung/phy-samsung-ufs.h
+++ b/drivers/phy/samsung/phy-samsung-ufs.h
@@ -92,6 +92,11 @@ enum {
 	CFG_TAG_MAX,
 };
 
+enum {
+	CFG_POST_HIBERN8_ENTER,
+	CFG_PRE_HIBERN8_EXIT,
+};
+
 struct samsung_ufs_phy_cfg {
 	u32 off_0;
 	u32 off_1;
@@ -108,6 +113,7 @@ struct samsung_ufs_phy_pmu_isol {
 
 struct samsung_ufs_phy_drvdata {
 	const struct samsung_ufs_phy_cfg **cfgs;
+	const struct samsung_ufs_phy_cfg **cfgs_hibern8;
 	struct samsung_ufs_phy_pmu_isol isol;
 	const char * const *clk_list;
 	int num_clks;
@@ -124,6 +130,7 @@ struct samsung_ufs_phy {
 	struct clk_bulk_data *clks;
 	const struct samsung_ufs_phy_drvdata *drvdata;
 	const struct samsung_ufs_phy_cfg * const *cfgs;
+	const struct samsung_ufs_phy_cfg * const *cfgs_hibern8;
 	struct samsung_ufs_phy_pmu_isol isol;
 	u8 lane_cnt;
 	int ufs_phy_state;

-- 
2.51.0.rc0.205.g4a044479a3-goog


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
