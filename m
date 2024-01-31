Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C34E4C47258
	for <linux-phy@archiver.kernel.org>; Wed, 31 Jan 2024 07:08:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uEROC3UcViD4yDS/n1ekumG6t1Z2DgjJ5cykq1Y7pZQ=; b=345XoylX5+jSmm
	ne/50TB1IQJXObOgUMiKtTcdEDDjMxvNe1onIYfkuWKNV/dItCQQrFRwI7BLGsK9cbjecFkAHNCIB
	jp5ltpNelT9SUJrdK4FHbW+U4sIk0+OA5+nd39qAnAJFyXo9lEHpFIl5N0NCimO+tYHYs8W4T07t9
	ltMvtiup2rn+xscbjSw91GFQJZ+LFHR04aqV4ah/V9Na8U0/j7jeYom5TCBF6d1t/QS2YUNu4s+e4
	a+fDRDe8a8lHcvOz97QbyhDWYzL5sFq5Iy0gEgPobQ+57vk4UC6zukGMT1ZNP8l/N3jmBausL8cCo
	l5FcOLrmM4bHKc55t/jw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rV4hu-00000001jBG-1p2D;
	Wed, 31 Jan 2024 07:08:26 +0000
Received: from mail-pg1-x534.google.com ([2607:f8b0:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rV4hr-00000001j9l-3XSH
	for linux-phy@lists.infradead.org;
	Wed, 31 Jan 2024 07:08:25 +0000
Received: by mail-pg1-x534.google.com with SMTP id 41be03b00d2f7-5d835c7956bso2815071a12.2
        for <linux-phy@lists.infradead.org>; Tue, 30 Jan 2024 23:08:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706684901; x=1707289701; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vrBz94BuTNSt9P0cmQ/JtUYmmdiGOZDnkuKPdCIy/0E=;
        b=r2hvGtYeu2ZNu436GRXFbyNacLSKcUpe45r6BA6RuVV+e/Y5rm/O4iIw4j4tjNa8k/
         N4JI9pL2qXUE8BcCFwyg0xvkoYcfJlwH7cKGpE+hi87Gh8wldbdQvHp/kXxBvzYPwTFw
         6cgL7s3TugTpInKukNsg8RsTmzIb+WW1B4PZo38uVv5yKLgxp97ULLHJ1Gj6RkBt459r
         +NbFO/WsjFjGyeC3AG+sGoC8V5yC8FoBLqZ9nXVGCzIpAa+80YIGvO6YmN5BlxTdoai2
         RXkMf2791XiUmLtBoW5A7Sd5mZN7vAsAbbNdmu3CX5UKiIoM0Xh3QWDh7C/uIOvvkeL3
         SxKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706684901; x=1707289701;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vrBz94BuTNSt9P0cmQ/JtUYmmdiGOZDnkuKPdCIy/0E=;
        b=C/Jc7LtsCLOIX8m3mzvIjvZAs4BQj9bw+Wm7AWA2rlEUgGjqYicD9KAHUMwsnvZ6qv
         ttBJjupPnJR+V/HoIrZgdVf7DHfX5wspd6OTSvOsHzS/qp1aSrvBARVmHRuOeP4t1KN0
         mdP6HWq3XvbuYsJCejJgp+euCjh5qupWQHcb9QopvwX2L5eOJqU2mVfRwF0aTwMqp8ph
         naY/MqjCbB43l8ifTT6xNd86z/d/c7LWtbswAjGp9NelFfYP4PmdFmARoqpR1WVn6wTP
         Zon464JmyoDMRElJb4YFhn82CQbi4liQi7rizMelD3sICSUK6ZRfnIVK3IZoXZLSDFan
         Rnrw==
X-Gm-Message-State: AOJu0YzGabNOuerLrZHYkxWJP9XfXzvoi98VPoz2Aj6KA+Qf2hXIVQYH
	km+i+PcjaQLiBNuVM0nX565ZLwKV+S+VOqUUkj38J8oOPn3FgzvHL7W1mM1uQQ==
X-Google-Smtp-Source: AGHT+IHG7CeD4yMbLmw5DP00Z2QDMS2iDb6DjukZj7eqvdYSSca+KNDl5G8GOiiM5rUOeKcIp3RneA==
X-Received: by 2002:a05:6a21:99a7:b0:19c:9e0c:1d2b with SMTP id ve39-20020a056a2199a700b0019c9e0c1d2bmr834833pzb.52.1706684901216;
        Tue, 30 Jan 2024 23:08:21 -0800 (PST)
Received: from [127.0.1.1] ([103.28.246.26])
        by smtp.gmail.com with ESMTPSA id lp17-20020a056a003d5100b006ddd182bf1csm9087956pfb.46.2024.01.30.23.08.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jan 2024 23:08:20 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Date: Wed, 31 Jan 2024 12:37:27 +0530
Subject: [PATCH v3 04/17] clk: qcom: gcc-sc8180x: Add missing UFS QREF
 clocks
MIME-Version: 1.0
Message-Id: <20240131-ufs-phy-clock-v3-4-58a49d2f4605@linaro.org>
References: <20240131-ufs-phy-clock-v3-0-58a49d2f4605@linaro.org>
In-Reply-To: <20240131-ufs-phy-clock-v3-0-58a49d2f4605@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-clk@vger.kernel.org, quic_cang@quicinc.com, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=2717;
 i=manivannan.sadhasivam@linaro.org; h=from:subject:message-id;
 bh=SCBsO7RXjcmYj56UQGsgo+pKrcUyAXNxRNanEY60oIA=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBlufG77R/Xh7qMt7D8A82y+Z7ovm1A/k0BpEfN7
 WMRXpednByJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCZbnxuwAKCRBVnxHm/pHO
 9Wp9B/4sITOPxh34rYcFxhTohk0p2usKarDdGVg8nQuZ9W3Ljqt+kv9LCpkbpgUcdMsot2rjdw9
 8PdFkJQL3sBCkWo6aOo7ZURtGRGDdUGbnmFF7i+VKbVoiswNNDvbNBSUedfudrebnw3Yhi4XSrx
 YKZIK1X6s/FxR7Aalf4NFDn3XZzp45UKyvly60YhZaZnGxxHRtk8Tnc22QfEFWYT0kkekXTJpz2
 87N3jquVNJT/mTc4vWvs/E+aqI7oROIEL1oUnXyOpjSaFLsd9AX071QWChbKmZoA1lGGHY2CC0r
 1v5+UhAyynSVtx0Bd9DsGEdrMsbb/l79qsJ5IFK5MDYNUoF2
X-Developer-Key: i=manivannan.sadhasivam@linaro.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240130_230823_917312_EFBBB916 
X-CRM114-Status: GOOD (  10.14  )
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
Acked-by: Konrad Dybcio <konrad.dybcio@linaro.org>
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
