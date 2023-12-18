Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9455AC35274
	for <linux-phy@archiver.kernel.org>; Mon, 18 Dec 2023 12:07:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=chuoXiZzmrJRTMSHTrmjp76jwU4DeCxEBs9PCWHXKZo=; b=g5yi4TKh156rmq
	mYjO3XbS1kt9kr5LmRnDyr1rskSv8uqBFHiR2t/QuZWJJD8T3S1je9gGdJ8MX9r6kkACoM6b2XC9c
	Baz0xdvS7wu4YwxHyQchjaF6ctQmdQKjf1tN0XiIHzoMuzSgE42bHtXiogS6pm1iw5MEDwzGnjYi3
	BYjfYDSU1DrVDzNDwHErqE46g2vzNbfqXwX8sncv6evWDUJ36zvzMlQrcs3GDLdTkqQW8+pbE2s8W
	ud+ynqK5tEBvvnwGTPj032UzIasJ7piJbw7QA22+Q6lAKTNTOYqeAp3MIUOgKfs+Clrs83wmcwdzN
	GIS5ZQQGd5Uo4ZMH/ECw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFCPY-00AYL5-18;
	Mon, 18 Dec 2023 12:07:52 +0000
Received: from mail-pl1-x62e.google.com ([2607:f8b0:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFCPV-00AYK5-2k
	for linux-phy@lists.infradead.org;
	Mon, 18 Dec 2023 12:07:51 +0000
Received: by mail-pl1-x62e.google.com with SMTP id d9443c01a7336-1d3ce28ac3cso1377765ad.0
        for <linux-phy@lists.infradead.org>; Mon, 18 Dec 2023 04:07:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702901269; x=1703506069; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1DxFXPJYgIG7bY+rEjLLq6eWKt7yGgrHuHLxSAUgD04=;
        b=WCkyt7FTAV4wwqMr/j3QjRNz5KBs964kwJ6povNRpnIbI3kI6MDwdYcX99Fcsf0Y9o
         PWEYVMwt5itVWt/ZBR9SEtkpI2WlXRlbe693wy6MXtrRJc4ZP3PaCkvftLZRgxIkmf0N
         0v7TctiFNY73YtqorxnGXUZiBB/kstOCfPXf6UYZhFjCYOKTTZOMQJbHcU8nubgkF7ie
         o0dQh5uWysypxHaxcqWmldu2zo2nnPEf215pci5kOe8xJjnzyi8yU2oxn9wO3SOh5p1O
         8iHvovlQJ8BJ8YfZP6IFX13Lw8PNwS7fqgsTyYSfNpNYLpAZFQPUnzPE3kNyOxqyQeao
         mv2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702901269; x=1703506069;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1DxFXPJYgIG7bY+rEjLLq6eWKt7yGgrHuHLxSAUgD04=;
        b=bAs96i7TxAPimxoYMXnVO3iFVVxEKQbgiViwy5kDLK5iTLI13r1Q4g6E94EDne6sql
         nZ7yz4WOa/sQGot00LZ52EH7WRH6Hdp/FqI6RZX7RETsTEDUIJH5omt9wYdNc1dImAXU
         BLdXfvMNfT6ZpwFgH/RKpZc8u8ziFFu1ILAnhYvSEjbAKKiezmAkywWEOboTOKgiOHIb
         Y8Qno2zeVbZS6sDOP7CRSwzrKU2IRhj974kkrwc/6MyK3WqRH6k5A0tEXSkIs4e/oUeb
         TfEwUGMsLroDIESjyGZeRau98AFH2vo3zDg/abl7Ml91vXMZti8xdkbz7kKdJ1lbqf71
         pP3Q==
X-Gm-Message-State: AOJu0Yy6En3RSOx218/zmq324Ksfi5tfEFEYLlcG+aMAJ8rGTJntwD7k
	5+XkM2BxQUmmZ+yLSiQJNTFB
X-Google-Smtp-Source: AGHT+IEK1evDaORIVdgFmQY6oqeCQ/c/a7zO1rPGBojethcXGGLrT6jJIMMz7NCm2ipjlMCXMK2xiA==
X-Received: by 2002:a17:903:110e:b0:1d3:1773:8555 with SMTP id n14-20020a170903110e00b001d317738555mr5851554plh.115.1702901269314;
        Mon, 18 Dec 2023 04:07:49 -0800 (PST)
Received: from localhost.localdomain ([117.207.27.21])
        by smtp.gmail.com with ESMTPSA id j18-20020a170902c3d200b001d368c778dasm1285709plj.235.2023.12.18.04.07.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Dec 2023 04:07:48 -0800 (PST)
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
	quic_cang@quicinc.com,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v2 04/16] clk: qcom: gcc-sc8180x: Add missing UFS QREF clocks
Date: Mon, 18 Dec 2023 17:37:00 +0530
Message-Id: <20231218120712.16438-5-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231218120712.16438-1-manivannan.sadhasivam@linaro.org>
References: <20231218120712.16438-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231218_040749_889254_F79D48B6 
X-CRM114-Status: UNSURE (   9.54  )
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
