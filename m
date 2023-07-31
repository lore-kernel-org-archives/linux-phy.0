Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10663C001DC
	for <linux-phy@archiver.kernel.org>; Mon, 31 Jul 2023 10:58:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PVWSCn+trIZTHgz42ld6hwtHssRDpC+il22P/8NWeVM=; b=yuH+cdTXequIZg
	0lZEeey6ENpSF9f7ZzWQKGUpxzJ9le+o9WpputfsuufMIMkhUDy/C1VLZJsWLis1NW3oYP0dZ+CK3
	LKB2BoLQ8hiTcS+IhTBNafrcszZbI5va8XrhhrF2BJY+mLSzqScbkCPf4fOwfJGlD5z5bRbYpXJpw
	pyYmv/nRUAOWjsAGCNdu2XAB+IxMX1P8BjxYVvugsAcXNxEYKeMnuCI6/cFqidwrwi2+yenqNtzSn
	PKv1bLXvWmOiOwKWWZzkMNx67Xh3b5vAptse+WHKpCRU0zW2rxJ7aEcvw/5FULtT7XuW5toYkQaXB
	LQe48uxJWeC7au4BKKIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qQQbJ-00FCWg-2V;
	Mon, 31 Jul 2023 10:58:09 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qQQbE-00FCTb-38
	for linux-phy@lists.infradead.org;
	Mon, 31 Jul 2023 10:58:08 +0000
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-4fe0e23a4b1so6794190e87.3
        for <linux-phy@lists.infradead.org>; Mon, 31 Jul 2023 03:58:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690801082; x=1691405882;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2iOzgGH2Z8B6I/zlnJpsF/Ou/VJRzfCddX4sPCDSEWE=;
        b=ujilhpKWcyfFX27YDhIWeA8BkI9+uTFgbO2fPAHSKLFE/KsQ0EDCsD25ZaW//LAau3
         qkJOhFXJ8w35925tAG7pGIlZ4T+n2BuTqRWXDOsJZHDi88ufhL0ldOt0ZkVWg1YTj3Yl
         gAbsAhX6E5ZH9tNhmzi8ZHe1bF+YWJ5YRSUlxzjnvERhV/zvn2QyOxsEN59G9vnMtwlQ
         MMgoIroSwVfo4ZCZ+lCtTY8n6Pwe3hDlgrsnpfb0SHti/Oes8QlUd/kodrX7zf7hxQWC
         RHt2sxqlBiJ7c+VEv2+diZMpwl69nfNh77AlOYdIdn2ozKYR8/IMvDZPjxwoRg+rFTLA
         bClw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690801082; x=1691405882;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2iOzgGH2Z8B6I/zlnJpsF/Ou/VJRzfCddX4sPCDSEWE=;
        b=KGz41ybBjpfY/bfqRUZGhQ2aNruiJNheA1We5Hs3u7X1JrsSv9G7gXKXy9lq389qB+
         9aP3VF4Sek+iJEBtpSBPH5+xX/IRQZeDitlRwSkb10jDOmIBJCzcDM87WEP3PldB4Sj6
         Al79idUlDHS7kI74fL1/0PXFwrxtJcq52wDiYOIMtzQdeZE6lMfcosbl90yNLbnLMKSG
         jzLpXnr4awPd5Ks8GpTAWRXTQx07uJO8gVnGewDG7o5d9CnPQMrpXzF9iM2poEtLEW9i
         ZNKZaFioDcp3oCsNdBjf5cURzlZKA6L3IvANZiliCqA4TML+GczKAeYzpkk3bYEqpzvS
         5iGg==
X-Gm-Message-State: ABy/qLbMlp/g/Ddmg3vPrF7JPSNa2EkGvGjhis/MZoCs/hXoNApJYvZR
	v2A3UyqC1FzlKGz04BYM1uYf9eBGjHLkioNqoPg=
X-Google-Smtp-Source: APBJJlHU26elipNbu+i4WdQLIJf04pbhm5j1rywqt4FjdiU9OFzfLzmNPcHI6wbBFCBVcE24qjqfRA==
X-Received: by 2002:ac2:5b05:0:b0:4fb:79b5:5512 with SMTP id v5-20020ac25b05000000b004fb79b55512mr5363038lfn.66.1690801082563;
        Mon, 31 Jul 2023 03:58:02 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id c19-20020ac24153000000b004fb9fe34c27sm2025497lfi.92.2023.07.31.03.58.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 03:58:02 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	Johan Hovold <johan@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 02/13] phy: qcom-qmp-pcie: simplify clock handling
Date: Mon, 31 Jul 2023 13:57:48 +0300
Message-Id: <20230731105759.3997549-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230731105759.3997549-1-dmitry.baryshkov@linaro.org>
References: <20230731105759.3997549-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230731_035805_084403_DA790D27 
X-CRM114-Status: GOOD (  14.10  )
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

For some of existing PHYs for new binding we are going to change refgen
to more correct "rchng". Rather than introducing additional code
to handle legacy vs current bindings (and clock names), use
devm_clk_bulk_get_optional().

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 78 +++---------------------
 1 file changed, 7 insertions(+), 71 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index e15ea113b2db..f3717cb4a0e1 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -2194,9 +2194,6 @@ struct qmp_phy_cfg {
 	const struct qmp_phy_init_tbl *serdes_4ln_tbl;
 	int serdes_4ln_num;
 
-	/* clock ids to be requested */
-	const char * const *clk_list;
-	int num_clks;
 	/* resets to be requested */
 	const char * const *reset_list;
 	int num_resets;
@@ -2275,24 +2272,8 @@ static inline void qphy_clrbits(void __iomem *base, u32 offset, u32 val)
 }
 
 /* list of clocks required by phy */
-static const char * const ipq8074_pciephy_clk_l[] = {
-	"aux", "cfg_ahb",
-};
-
-static const char * const msm8996_phy_clk_l[] = {
-	"aux", "cfg_ahb", "ref",
-};
-
-static const char * const sc8280xp_pciephy_clk_l[] = {
-	"aux", "cfg_ahb", "ref", "rchng",
-};
-
-static const char * const sdm845_pciephy_clk_l[] = {
-	"aux", "cfg_ahb", "ref", "refgen",
-};
-
-static const char * const sa8775p_pciephy_clk_l[] = {
-	"aux", "cfg_ahb", "ref", "rchng", "phy_aux",
+static const char * const qmp_pciephy_clk_l[] = {
+	"aux", "cfg_ahb", "ref", "refgen", "rchng", "phy_aux",
 };
 
 /* list of regulators */
@@ -2368,8 +2349,6 @@ static const struct qmp_phy_cfg ipq8074_pciephy_cfg = {
 		.pcs		= ipq8074_pcie_pcs_tbl,
 		.pcs_num	= ARRAY_SIZE(ipq8074_pcie_pcs_tbl),
 	},
-	.clk_list		= ipq8074_pciephy_clk_l,
-	.num_clks		= ARRAY_SIZE(ipq8074_pciephy_clk_l),
 	.reset_list		= ipq8074_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(ipq8074_pciephy_reset_l),
 	.vreg_list		= NULL,
@@ -2395,8 +2374,6 @@ static const struct qmp_phy_cfg ipq8074_pciephy_gen3_cfg = {
 		.pcs_misc	= ipq8074_pcie_gen3_pcs_misc_tbl,
 		.pcs_misc_num	= ARRAY_SIZE(ipq8074_pcie_gen3_pcs_misc_tbl),
 	},
-	.clk_list		= ipq8074_pciephy_clk_l,
-	.num_clks		= ARRAY_SIZE(ipq8074_pciephy_clk_l),
 	.reset_list		= ipq8074_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(ipq8074_pciephy_reset_l),
 	.vreg_list		= NULL,
@@ -2424,8 +2401,6 @@ static const struct qmp_phy_cfg ipq6018_pciephy_cfg = {
 		.pcs_misc	= ipq6018_pcie_pcs_misc_tbl,
 		.pcs_misc_num	= ARRAY_SIZE(ipq6018_pcie_pcs_misc_tbl),
 	},
-	.clk_list		= ipq8074_pciephy_clk_l,
-	.num_clks		= ARRAY_SIZE(ipq8074_pciephy_clk_l),
 	.reset_list		= ipq8074_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(ipq8074_pciephy_reset_l),
 	.vreg_list		= NULL,
@@ -2451,8 +2426,6 @@ static const struct qmp_phy_cfg sdm845_qmp_pciephy_cfg = {
 		.pcs_misc	= sdm845_qmp_pcie_pcs_misc_tbl,
 		.pcs_misc_num	= ARRAY_SIZE(sdm845_qmp_pcie_pcs_misc_tbl),
 	},
-	.clk_list		= sdm845_pciephy_clk_l,
-	.num_clks		= ARRAY_SIZE(sdm845_pciephy_clk_l),
 	.reset_list		= sdm845_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -2474,8 +2447,6 @@ static const struct qmp_phy_cfg sdm845_qhp_pciephy_cfg = {
 		.pcs		= sdm845_qhp_pcie_pcs_tbl,
 		.pcs_num	= ARRAY_SIZE(sdm845_qhp_pcie_pcs_tbl),
 	},
-	.clk_list		= sdm845_pciephy_clk_l,
-	.num_clks		= ARRAY_SIZE(sdm845_pciephy_clk_l),
 	.reset_list		= sdm845_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -2511,8 +2482,6 @@ static const struct qmp_phy_cfg sm8250_qmp_gen3x1_pciephy_cfg = {
 		.pcs_misc	= sm8250_qmp_gen3x1_pcie_pcs_misc_tbl,
 		.pcs_misc_num	= ARRAY_SIZE(sm8250_qmp_gen3x1_pcie_pcs_misc_tbl),
 	},
-	.clk_list		= sdm845_pciephy_clk_l,
-	.num_clks		= ARRAY_SIZE(sdm845_pciephy_clk_l),
 	.reset_list		= sdm845_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -2548,8 +2517,6 @@ static const struct qmp_phy_cfg sm8250_qmp_gen3x2_pciephy_cfg = {
 		.pcs_misc	= sm8250_qmp_gen3x2_pcie_pcs_misc_tbl,
 		.pcs_misc_num	= ARRAY_SIZE(sm8250_qmp_gen3x2_pcie_pcs_misc_tbl),
 	},
-	.clk_list		= sdm845_pciephy_clk_l,
-	.num_clks		= ARRAY_SIZE(sdm845_pciephy_clk_l),
 	.reset_list		= sdm845_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -2573,8 +2540,6 @@ static const struct qmp_phy_cfg msm8998_pciephy_cfg = {
 		.pcs		= msm8998_pcie_pcs_tbl,
 		.pcs_num	= ARRAY_SIZE(msm8998_pcie_pcs_tbl),
 	},
-	.clk_list		= msm8996_phy_clk_l,
-	.num_clks		= ARRAY_SIZE(msm8996_phy_clk_l),
 	.reset_list		= ipq8074_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(ipq8074_pciephy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -2602,8 +2567,6 @@ static const struct qmp_phy_cfg sc8180x_pciephy_cfg = {
 		.pcs_misc	= sc8180x_qmp_pcie_pcs_misc_tbl,
 		.pcs_misc_num	= ARRAY_SIZE(sc8180x_qmp_pcie_pcs_misc_tbl),
 	},
-	.clk_list		= sdm845_pciephy_clk_l,
-	.num_clks		= ARRAY_SIZE(sdm845_pciephy_clk_l),
 	.reset_list		= sdm845_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -2637,8 +2600,6 @@ static const struct qmp_phy_cfg sc8280xp_qmp_gen3x1_pciephy_cfg = {
 		.serdes_num	= ARRAY_SIZE(sc8280xp_qmp_gen3x1_pcie_rc_serdes_tbl),
 	},
 
-	.clk_list		= sc8280xp_pciephy_clk_l,
-	.num_clks		= ARRAY_SIZE(sc8280xp_pciephy_clk_l),
 	.reset_list		= sdm845_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -2672,8 +2633,6 @@ static const struct qmp_phy_cfg sc8280xp_qmp_gen3x2_pciephy_cfg = {
 		.serdes_num	= ARRAY_SIZE(sc8280xp_qmp_gen3x2_pcie_rc_serdes_tbl),
 	},
 
-	.clk_list		= sc8280xp_pciephy_clk_l,
-	.num_clks		= ARRAY_SIZE(sc8280xp_pciephy_clk_l),
 	.reset_list		= sdm845_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -2710,8 +2669,6 @@ static const struct qmp_phy_cfg sc8280xp_qmp_gen3x4_pciephy_cfg = {
 	.serdes_4ln_tbl		= sc8280xp_qmp_gen3x4_pcie_serdes_4ln_tbl,
 	.serdes_4ln_num		= ARRAY_SIZE(sc8280xp_qmp_gen3x4_pcie_serdes_4ln_tbl),
 
-	.clk_list		= sc8280xp_pciephy_clk_l,
-	.num_clks		= ARRAY_SIZE(sc8280xp_pciephy_clk_l),
 	.reset_list		= sdm845_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -2752,8 +2709,6 @@ static const struct qmp_phy_cfg sdx55_qmp_pciephy_cfg = {
 		.pcs_misc_num	= ARRAY_SIZE(sdx55_qmp_pcie_ep_pcs_misc_tbl),
 	},
 
-	.clk_list		= sdm845_pciephy_clk_l,
-	.num_clks		= ARRAY_SIZE(sdm845_pciephy_clk_l),
 	.reset_list		= sdm845_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -2789,8 +2744,6 @@ static const struct qmp_phy_cfg sm8350_qmp_gen3x1_pciephy_cfg = {
 		.rx_num		= ARRAY_SIZE(sm8350_qmp_gen3x1_pcie_rc_rx_tbl),
 	},
 
-	.clk_list		= sc8280xp_pciephy_clk_l,
-	.num_clks		= ARRAY_SIZE(sc8280xp_pciephy_clk_l),
 	.reset_list		= sdm845_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -2826,8 +2779,6 @@ static const struct qmp_phy_cfg sm8350_qmp_gen3x2_pciephy_cfg = {
 		.pcs_num	= ARRAY_SIZE(sm8350_qmp_gen3x2_pcie_rc_pcs_tbl),
 	},
 
-	.clk_list		= sc8280xp_pciephy_clk_l,
-	.num_clks		= ARRAY_SIZE(sc8280xp_pciephy_clk_l),
 	.reset_list		= sdm845_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -2855,8 +2806,6 @@ static const struct qmp_phy_cfg sdx65_qmp_pciephy_cfg = {
 			.pcs_misc       = sdx65_qmp_pcie_pcs_misc_tbl,
 			.pcs_misc_num   = ARRAY_SIZE(sdx65_qmp_pcie_pcs_misc_tbl),
 		},
-	.clk_list               = sdm845_pciephy_clk_l,
-	.num_clks               = ARRAY_SIZE(sdm845_pciephy_clk_l),
 	.reset_list             = sdm845_pciephy_reset_l,
 	.num_resets             = ARRAY_SIZE(sdm845_pciephy_reset_l),
 	.vreg_list              = qmp_phy_vreg_l,
@@ -2890,8 +2839,6 @@ static const struct qmp_phy_cfg sm8450_qmp_gen3x1_pciephy_cfg = {
 		.rx_num		= ARRAY_SIZE(sm8450_qmp_gen3x1_pcie_rc_rx_tbl),
 	},
 
-	.clk_list		= sdm845_pciephy_clk_l,
-	.num_clks		= ARRAY_SIZE(sdm845_pciephy_clk_l),
 	.reset_list		= sdm845_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -2932,8 +2879,6 @@ static const struct qmp_phy_cfg sm8450_qmp_gen4x2_pciephy_cfg = {
 		.pcs_misc_num	= ARRAY_SIZE(sm8450_qmp_gen4x2_pcie_ep_pcs_misc_tbl),
 	},
 
-	.clk_list		= sdm845_pciephy_clk_l,
-	.num_clks		= ARRAY_SIZE(sdm845_pciephy_clk_l),
 	.reset_list		= sdm845_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -2961,8 +2906,6 @@ static const struct qmp_phy_cfg sm8550_qmp_gen3x2_pciephy_cfg = {
 		.pcs_misc	= sm8550_qmp_gen3x2_pcie_pcs_misc_tbl,
 		.pcs_misc_num	= ARRAY_SIZE(sm8550_qmp_gen3x2_pcie_pcs_misc_tbl),
 	},
-	.clk_list		= sc8280xp_pciephy_clk_l,
-	.num_clks		= ARRAY_SIZE(sc8280xp_pciephy_clk_l),
 	.reset_list		= sdm845_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -2992,8 +2935,6 @@ static const struct qmp_phy_cfg sm8550_qmp_gen4x2_pciephy_cfg = {
 		.ln_shrd		= sm8550_qmp_gen4x2_pcie_ln_shrd_tbl,
 		.ln_shrd_num		= ARRAY_SIZE(sm8550_qmp_gen4x2_pcie_ln_shrd_tbl),
 	},
-	.clk_list		= sc8280xp_pciephy_clk_l,
-	.num_clks		= ARRAY_SIZE(sc8280xp_pciephy_clk_l),
 	.reset_list		= sdm845_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
 	.vreg_list		= sm8550_qmp_phy_vreg_l,
@@ -3029,8 +2970,6 @@ static const struct qmp_phy_cfg sa8775p_qmp_gen4x2_pciephy_cfg = {
 		.pcs_misc_num	= ARRAY_SIZE(sa8775p_qmp_gen4_pcie_rc_pcs_misc_tbl),
 	},
 
-	.clk_list		= sa8775p_pciephy_clk_l,
-	.num_clks		= ARRAY_SIZE(sa8775p_pciephy_clk_l),
 	.reset_list		= sdm845_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -3065,8 +3004,6 @@ static const struct qmp_phy_cfg sa8775p_qmp_gen4x4_pciephy_cfg = {
 		.pcs_misc_num	= ARRAY_SIZE(sa8775p_qmp_gen4_pcie_rc_pcs_misc_tbl),
 	},
 
-	.clk_list		= sa8775p_pciephy_clk_l,
-	.num_clks		= ARRAY_SIZE(sa8775p_pciephy_clk_l),
 	.reset_list		= sdm845_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -3189,7 +3126,7 @@ static int qmp_pcie_init(struct phy *phy)
 		goto err_assert_reset;
 	}
 
-	ret = clk_bulk_prepare_enable(cfg->num_clks, qmp->clks);
+	ret = clk_bulk_prepare_enable(ARRAY_SIZE(qmp_pciephy_clk_l), qmp->clks);
 	if (ret)
 		goto err_assert_reset;
 
@@ -3210,7 +3147,7 @@ static int qmp_pcie_exit(struct phy *phy)
 
 	reset_control_bulk_assert(cfg->num_resets, qmp->resets);
 
-	clk_bulk_disable_unprepare(cfg->num_clks, qmp->clks);
+	clk_bulk_disable_unprepare(ARRAY_SIZE(qmp_pciephy_clk_l), qmp->clks);
 
 	regulator_bulk_disable(cfg->num_vregs, qmp->vregs);
 
@@ -3393,9 +3330,8 @@ static int qmp_pcie_reset_init(struct qmp_pcie *qmp)
 
 static int qmp_pcie_clk_init(struct qmp_pcie *qmp)
 {
-	const struct qmp_phy_cfg *cfg = qmp->cfg;
 	struct device *dev = qmp->dev;
-	int num = cfg->num_clks;
+	int num = ARRAY_SIZE(qmp_pciephy_clk_l);
 	int i;
 
 	qmp->clks = devm_kcalloc(dev, num, sizeof(*qmp->clks), GFP_KERNEL);
@@ -3403,9 +3339,9 @@ static int qmp_pcie_clk_init(struct qmp_pcie *qmp)
 		return -ENOMEM;
 
 	for (i = 0; i < num; i++)
-		qmp->clks[i].id = cfg->clk_list[i];
+		qmp->clks[i].id = qmp_pciephy_clk_l[i];
 
-	return devm_clk_bulk_get(dev, num, qmp->clks);
+	return devm_clk_bulk_get_optional(dev, num, qmp->clks);
 }
 
 static void phy_clk_release_provider(void *res)
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
