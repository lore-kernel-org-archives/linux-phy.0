Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BBFEFC4332F
	for <linux-phy@archiver.kernel.org>; Thu, 14 Dec 2023 09:11:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=chuoXiZzmrJRTMSHTrmjp76jwU4DeCxEBs9PCWHXKZo=; b=nr04Q7NxBtT1qO
	EBfpHx4aTfjKyzas8UmnrYvaYjrDTwUqCOW+/u/dYtunrsikQKBndgV636VbThGsFfrW1pV8kSPn9
	y3zP/Bgxxzs2IJBMX+DNnukR8OsjcZoU2RjptBz1LPyWJ6Bx3+vZk7AtJrbyExO6Rqd04Z51KdzPm
	7Woc1tWbOFCWfHOSNyqtnrz81U+OSE0CcOrCeLtAi9JfsiAX+Cy4gZIDlyAdMbleDTzakVr5+Z73T
	YHgs7+txtslkv32pqQQT7fvgkAr4sE2IwNDNo0Q5MeSWwsY1C48dY5UZAO19+S8uaWyahFH7yWfZe
	d2fafazpbciZfKdspldg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDhkw-00HJav-1b;
	Thu, 14 Dec 2023 09:11:46 +0000
Received: from mail-qk1-x733.google.com ([2607:f8b0:4864:20::733])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDhkt-00HJaJ-2C
	for linux-phy@lists.infradead.org;
	Thu, 14 Dec 2023 09:11:45 +0000
Received: by mail-qk1-x733.google.com with SMTP id af79cd13be357-77f56750defso343323185a.1
        for <linux-phy@lists.infradead.org>; Thu, 14 Dec 2023 01:11:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702545101; x=1703149901; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1DxFXPJYgIG7bY+rEjLLq6eWKt7yGgrHuHLxSAUgD04=;
        b=mbk1TMWTHtiTGhxT+hOjOh7V9tEBsOMt51T4A6YPLjVY5DvWAbH5Cv0YiLGAz35Ssw
         YX3py1AIg9nrDzKKttLwdcCFKHU665AKSew87ua/rocB9vt7mCyRG6MJW2CvyACouMgn
         rOgOUGaQs1RN5S8nCJkoBha3FBY7gD/lg+ajuWw9/V9BD+9EG6xoMtBpVcE1V+2Scuc6
         s2LzA5wz/dipeIahss4xkSK3MVgVcenWTcsLnX1clEB5ur/zNDTgkyC7S/hBZEmNv3th
         BrVfp6nPdIQ7s0r0xruanxoufE8f35mg9rceBo9ueGi3GN8MTVR3JtSZTLZ0FZ/ejM3x
         42ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702545101; x=1703149901;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1DxFXPJYgIG7bY+rEjLLq6eWKt7yGgrHuHLxSAUgD04=;
        b=VjAjQVLgOZcqzWcZumrgvEDyIM1asSf60QKwnEiQu0Fiz1NeZ4UD06Lkqabu1NAyEM
         eEbxU7JfJCcgzt5PfrHHmbQiE0gl7zNGXjVxZmmG5hahvMpGMgucLzzsRmPTmQfwuPhH
         TlwmkGIkBTGM6f5L9mwZSC7m6PljgahnY/VG/c6GO7vSa1i0HPDaSv8Y3RYM0v4J/idu
         L6kmeBhe1lc4w5xaGw4rQuabYWBnnRzm4qHkxcs4DPHsd6EIZQ69MAugb64cXRUb76x+
         mAMMQea6wZBxVfyH31QY/uRREAX0Q5+pfB7UBFof4HCHc7b7U3T2x4V6DXcCYgZNQ08+
         3Xew==
X-Gm-Message-State: AOJu0YzewV6CZCntHoaDOpc8o6mkDX/12EVPPgNpRQhNZvoC5Jpf1xD2
	T2AwFVkp41Lbh76YE0OULkMa
X-Google-Smtp-Source: AGHT+IFGeYRRHFMd5RKI2JUYh2LUqufJuMqCc51bmtyQWkYRShHZtBSfcVSJiI4Tsb3u+TyDOkV2ug==
X-Received: by 2002:a05:620a:cef:b0:77e:fba3:4f0e with SMTP id c15-20020a05620a0cef00b0077efba34f0emr9799895qkj.100.1702545101407;
        Thu, 14 Dec 2023 01:11:41 -0800 (PST)
Received: from localhost.localdomain ([117.213.102.12])
        by smtp.gmail.com with ESMTPSA id qt13-20020a05620a8a0d00b0077d75164ef9sm5144119qkn.124.2023.12.14.01.11.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Dec 2023 01:11:41 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: andersson@kernel.org,
	konrad.dybcio@linaro.org,
	vkoul@kernel.org,
	sboyd@kernel.org,
	mturquette@baylibre.com,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH 04/16] clk: qcom: gcc-sc8180x: Add missing UFS QREF clocks
Date: Thu, 14 Dec 2023 14:40:49 +0530
Message-Id: <20231214091101.45713-5-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231214091101.45713-1-manivannan.sadhasivam@linaro.org>
References: <20231214091101.45713-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231214_011143_719512_15E11550 
X-CRM114-Status: UNSURE (   9.16  )
X-CRM114-Notice: Please train this message.
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

Add missing QREF clocks for UFS MEM and UFS CARD controllers.

Fixes: 4433594bbe5d ("clk: qcom: gcc: Add global clock controller driver for SC8180x")
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/clk/qcom/gcc-sc8180x.c | 28 ++++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/drivers/clk/qcom/gcc-sc8180x.c b/drivers/clk/qcom/gcc-sc8180x.c
index ae2147381559..544567db45f1 100644
--- a/drivers/clk/qcom/gcc-sc8180x.c
+++ b/drivers/clk/qcom/gcc-sc8180x.c
@@ -3347,6 +3347,19 @@ static struct clk_branch gcc_ufs_card_2_unipro_core_clk = {
 	},
 };
 
+static struct clk_branch gcc_ufs_card_clkref_en = {
+	.halt_reg = 0x8c004,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x8c004,
+		.enable_mask = BIT(0),
+		.hw.init = &(const struct clk_init_data) {
+			.name = "gcc_ufs_card_clkref_en",
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
 static struct clk_branch gcc_ufs_card_ahb_clk = {
 	.halt_reg = 0x75014,
 	.halt_check = BRANCH_HALT,
@@ -3561,6 +3574,19 @@ static struct clk_branch gcc_ufs_card_unipro_core_hw_ctl_clk = {
 	},
 };
 
+static struct clk_branch gcc_ufs_mem_clkref_en = {
+	.halt_reg = 0x8c000,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x8c000,
+		.enable_mask = BIT(0),
+		.hw.init = &(const struct clk_init_data) {
+			.name = "gcc_ufs_mem_clkref_en",
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
 static struct clk_branch gcc_ufs_phy_ahb_clk = {
 	.halt_reg = 0x77014,
 	.halt_check = BRANCH_HALT,
@@ -4413,6 +4439,7 @@ static struct clk_regmap *gcc_sc8180x_clocks[] = {
 	[GCC_UFS_CARD_2_TX_SYMBOL_0_CLK] = &gcc_ufs_card_2_tx_symbol_0_clk.clkr,
 	[GCC_UFS_CARD_2_UNIPRO_CORE_CLK] = &gcc_ufs_card_2_unipro_core_clk.clkr,
 	[GCC_UFS_CARD_2_UNIPRO_CORE_CLK_SRC] = &gcc_ufs_card_2_unipro_core_clk_src.clkr,
+	[GCC_UFS_CARD_CLKREF_EN] = &gcc_ufs_card_clkref_en.clkr,
 	[GCC_UFS_CARD_AHB_CLK] = &gcc_ufs_card_ahb_clk.clkr,
 	[GCC_UFS_CARD_AXI_CLK] = &gcc_ufs_card_axi_clk.clkr,
 	[GCC_UFS_CARD_AXI_CLK_SRC] = &gcc_ufs_card_axi_clk_src.clkr,
@@ -4429,6 +4456,7 @@ static struct clk_regmap *gcc_sc8180x_clocks[] = {
 	[GCC_UFS_CARD_UNIPRO_CORE_CLK] = &gcc_ufs_card_unipro_core_clk.clkr,
 	[GCC_UFS_CARD_UNIPRO_CORE_CLK_SRC] = &gcc_ufs_card_unipro_core_clk_src.clkr,
 	[GCC_UFS_CARD_UNIPRO_CORE_HW_CTL_CLK] = &gcc_ufs_card_unipro_core_hw_ctl_clk.clkr,
+	[GCC_UFS_MEM_CLKREF_EN] = &gcc_ufs_mem_clkref_en.clkr,
 	[GCC_UFS_PHY_AHB_CLK] = &gcc_ufs_phy_ahb_clk.clkr,
 	[GCC_UFS_PHY_AXI_CLK] = &gcc_ufs_phy_axi_clk.clkr,
 	[GCC_UFS_PHY_AXI_CLK_SRC] = &gcc_ufs_phy_axi_clk_src.clkr,
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
