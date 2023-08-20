Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3B8FEE49AA
	for <linux-phy@archiver.kernel.org>; Sun, 20 Aug 2023 14:21:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7Uxx9yg8W9iUIBZYdu7TRlcxYw7UTc5Mxr/0CYkFBlA=; b=VFIEsrcsKaycVl
	YsBCKTidaqXwDYSw8jGCRJBo3yxGUkdksJGbYnpoHm3uWTtCXWIGifU3vrWIIZoIC9uHLRQqkC4pW
	LfcK1gjw3CO3KTaczegcDe1gVgeOSdmlw5sprpp2lTuOgKqy1x3zdgYspQkfBEuwdDmDHxTZwtuQo
	cLov3+/QF7mOZ4GX5Cd/qbhmbIh63gFs85BSnAH7GBCTv60bzRvnlVeW7pjZfOlosPzenrJitZbXF
	8ASqwDj+eLKrqFi5ePxVYOKPojhhV10a4ZNpPIfbGq4IU8g2cbvdRkqUTeXZlK/fxXOBl6Mux9r49
	qjEDdZHVcAZvSR0F7Y/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qXjIs-00C1Im-1c;
	Sun, 20 Aug 2023 14:21:18 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qXjIq-00C1I1-36
	for linux-phy@bombadil.infradead.org;
	Sun, 20 Aug 2023 14:21:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=iH/0FFtB9wZ6ktqETIlIvZvxc0OREUtOFqocdPLXPpM=; b=WrcNsKHGOQLfEq8BQNU4ir7yd/
	vXA2jw1T8YMFw19+F42v61UM4QRpwskLVsWPWjE5tXzWWI7iYTwDpyX4rZjtw4V8VwN9ePcOV4lGd
	GN8akm/yTw6xGBi5VV+DGgFiMT+18KDzNA4HafX9NfiS8kL/1MYgfNmzJnSMCKoUZgAb8hywVZXVb
	H+7suj9+8KefLyERywuaaH2V04w/Fq+5GnzlYme5KbNYOlI+iDFbWKmWAfky5E+NsRNbb5CJF16Hh
	+ZCQBxEjjIcGSDinJC0drAUR6296uQMXzOKAbx9geiOVwQYwAHb+x68/SwUWl3hnp2KkiGrmkGKgb
	jL8IQpTg==;
Received: from mail-lj1-x22c.google.com ([2a00:1450:4864:20::22c])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qXjIJ-000XrE-1A
	for linux-phy@lists.infradead.org;
	Sun, 20 Aug 2023 14:21:15 +0000
Received: by mail-lj1-x22c.google.com with SMTP id 38308e7fff4ca-2b9db1de50cso38404121fa.3
        for <linux-phy@lists.infradead.org>; Sun, 20 Aug 2023 07:20:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692541241; x=1693146041;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iH/0FFtB9wZ6ktqETIlIvZvxc0OREUtOFqocdPLXPpM=;
        b=O2/3YJ0N9NZKIF+Ge3aSaKjdeTlTpBwMEXBCUC3TKkRoWeL0HGNCUIfLT9GNDz+V3b
         xuufl7qt6lggYp1q/jHk89nAKi7/wgBCWyikoEFQEvZkVFrcfd4GREHxK3HZdtMPMNrQ
         5IlaTZrDLtJ0pS7YBAVe8ed4V0ArzXV4Kt/xvfLzbm8BOLjPO0IfFoQI2OP6moDBc08C
         xrBdvHMsso0goqik50G1ULQjheMfXt/znZWAeAnhEvKj9vEOXmVYvfagWEe/c1SwY3Bq
         rSOhwTjSKSv8MWuERy8wBBgi40Yf4fwLhgy8rdY5BPIVWxLNECHxswYvdKwQysTp3Ito
         c+lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692541241; x=1693146041;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iH/0FFtB9wZ6ktqETIlIvZvxc0OREUtOFqocdPLXPpM=;
        b=YbBGSqvDqTj3BfIgxoeu98Rz0tB3jTfL0RMnGJYLky+t02ACQpNqcK2JFhuxALiI7A
         MdIEdO2Frqp/h0D/TwgZF1H+90P4TkCwQY+LtVfHD0txYxRAejJDCvwqsuq7aFD67Xkg
         p9ZZmc+JUn34tWjNEcx91ETlYfgKC0RlLn5WZQvP2AyMr+GHfNzhX97YC6K1FmWnchR5
         dEAmunPXkr0UhxXATGDJKvYPqA22NTktYyYOW4P0CmMr06J1n5+obxdwqqTHPmCYGmkm
         EppSd71jPMGlZ+NZMy6o/27Peg1RhLscSUhALvUWXyU2YqHEZw3q6hAiJdCVAloF31d9
         ITrw==
X-Gm-Message-State: AOJu0Yyw3H+m3a3lK4troi63/eWZd+bemoD+MZ0Y1gIGk1rH+AZRzU9t
	/TSU2IdA9HQssqFoPtEmBi8P484haS0XUS+Gj+Q=
X-Google-Smtp-Source: AGHT+IGCHL5u6SoUy76FczKvT+fkaXwCFWtNLmV3pQIZgLxxJKdOKDzOU5k4BW8mZhSNek55xpE/Cw==
X-Received: by 2002:a2e:3a06:0:b0:2bb:afad:ffdb with SMTP id h6-20020a2e3a06000000b002bbafadffdbmr3230031lja.28.1692541241594;
        Sun, 20 Aug 2023 07:20:41 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id n9-20020a2e7209000000b002b9e501a6acsm1706222ljc.3.2023.08.20.07.20.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Aug 2023 07:20:41 -0700 (PDT)
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
Subject: [PATCH v3 05/18] phy: qcom-qmp-pcie: simplify clock handling
Date: Sun, 20 Aug 2023 17:20:22 +0300
Message-Id: <20230820142035.89903-6-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230820142035.89903-1-dmitry.baryshkov@linaro.org>
References: <20230820142035.89903-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230820_152044_284467_98E3A680 
X-CRM114-Status: GOOD (  13.56  )
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

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 78 +++---------------------
 1 file changed, 7 insertions(+), 71 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index cdee109c398d..84a14bffc891 100644
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
@@ -2367,8 +2348,6 @@ static const struct qmp_phy_cfg ipq8074_pciephy_cfg = {
 		.pcs		= ipq8074_pcie_pcs_tbl,
 		.pcs_num	= ARRAY_SIZE(ipq8074_pcie_pcs_tbl),
 	},
-	.clk_list		= ipq8074_pciephy_clk_l,
-	.num_clks		= ARRAY_SIZE(ipq8074_pciephy_clk_l),
 	.reset_list		= ipq8074_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(ipq8074_pciephy_reset_l),
 	.vreg_list		= NULL,
@@ -2394,8 +2373,6 @@ static const struct qmp_phy_cfg ipq8074_pciephy_gen3_cfg = {
 		.pcs_misc	= ipq8074_pcie_gen3_pcs_misc_tbl,
 		.pcs_misc_num	= ARRAY_SIZE(ipq8074_pcie_gen3_pcs_misc_tbl),
 	},
-	.clk_list		= ipq8074_pciephy_clk_l,
-	.num_clks		= ARRAY_SIZE(ipq8074_pciephy_clk_l),
 	.reset_list		= ipq8074_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(ipq8074_pciephy_reset_l),
 	.vreg_list		= NULL,
@@ -2423,8 +2400,6 @@ static const struct qmp_phy_cfg ipq6018_pciephy_cfg = {
 		.pcs_misc	= ipq6018_pcie_pcs_misc_tbl,
 		.pcs_misc_num	= ARRAY_SIZE(ipq6018_pcie_pcs_misc_tbl),
 	},
-	.clk_list		= ipq8074_pciephy_clk_l,
-	.num_clks		= ARRAY_SIZE(ipq8074_pciephy_clk_l),
 	.reset_list		= ipq8074_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(ipq8074_pciephy_reset_l),
 	.vreg_list		= NULL,
@@ -2450,8 +2425,6 @@ static const struct qmp_phy_cfg sdm845_qmp_pciephy_cfg = {
 		.pcs_misc	= sdm845_qmp_pcie_pcs_misc_tbl,
 		.pcs_misc_num	= ARRAY_SIZE(sdm845_qmp_pcie_pcs_misc_tbl),
 	},
-	.clk_list		= sdm845_pciephy_clk_l,
-	.num_clks		= ARRAY_SIZE(sdm845_pciephy_clk_l),
 	.reset_list		= sdm845_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -2473,8 +2446,6 @@ static const struct qmp_phy_cfg sdm845_qhp_pciephy_cfg = {
 		.pcs		= sdm845_qhp_pcie_pcs_tbl,
 		.pcs_num	= ARRAY_SIZE(sdm845_qhp_pcie_pcs_tbl),
 	},
-	.clk_list		= sdm845_pciephy_clk_l,
-	.num_clks		= ARRAY_SIZE(sdm845_pciephy_clk_l),
 	.reset_list		= sdm845_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -2510,8 +2481,6 @@ static const struct qmp_phy_cfg sm8250_qmp_gen3x1_pciephy_cfg = {
 		.pcs_misc	= sm8250_qmp_gen3x1_pcie_pcs_misc_tbl,
 		.pcs_misc_num	= ARRAY_SIZE(sm8250_qmp_gen3x1_pcie_pcs_misc_tbl),
 	},
-	.clk_list		= sdm845_pciephy_clk_l,
-	.num_clks		= ARRAY_SIZE(sdm845_pciephy_clk_l),
 	.reset_list		= sdm845_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -2547,8 +2516,6 @@ static const struct qmp_phy_cfg sm8250_qmp_gen3x2_pciephy_cfg = {
 		.pcs_misc	= sm8250_qmp_gen3x2_pcie_pcs_misc_tbl,
 		.pcs_misc_num	= ARRAY_SIZE(sm8250_qmp_gen3x2_pcie_pcs_misc_tbl),
 	},
-	.clk_list		= sdm845_pciephy_clk_l,
-	.num_clks		= ARRAY_SIZE(sdm845_pciephy_clk_l),
 	.reset_list		= sdm845_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -2572,8 +2539,6 @@ static const struct qmp_phy_cfg msm8998_pciephy_cfg = {
 		.pcs		= msm8998_pcie_pcs_tbl,
 		.pcs_num	= ARRAY_SIZE(msm8998_pcie_pcs_tbl),
 	},
-	.clk_list		= msm8996_phy_clk_l,
-	.num_clks		= ARRAY_SIZE(msm8996_phy_clk_l),
 	.reset_list		= ipq8074_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(ipq8074_pciephy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -2601,8 +2566,6 @@ static const struct qmp_phy_cfg sc8180x_pciephy_cfg = {
 		.pcs_misc	= sc8180x_qmp_pcie_pcs_misc_tbl,
 		.pcs_misc_num	= ARRAY_SIZE(sc8180x_qmp_pcie_pcs_misc_tbl),
 	},
-	.clk_list		= sdm845_pciephy_clk_l,
-	.num_clks		= ARRAY_SIZE(sdm845_pciephy_clk_l),
 	.reset_list		= sdm845_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -2636,8 +2599,6 @@ static const struct qmp_phy_cfg sc8280xp_qmp_gen3x1_pciephy_cfg = {
 		.serdes_num	= ARRAY_SIZE(sc8280xp_qmp_gen3x1_pcie_rc_serdes_tbl),
 	},
 
-	.clk_list		= sc8280xp_pciephy_clk_l,
-	.num_clks		= ARRAY_SIZE(sc8280xp_pciephy_clk_l),
 	.reset_list		= sdm845_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -2671,8 +2632,6 @@ static const struct qmp_phy_cfg sc8280xp_qmp_gen3x2_pciephy_cfg = {
 		.serdes_num	= ARRAY_SIZE(sc8280xp_qmp_gen3x2_pcie_rc_serdes_tbl),
 	},
 
-	.clk_list		= sc8280xp_pciephy_clk_l,
-	.num_clks		= ARRAY_SIZE(sc8280xp_pciephy_clk_l),
 	.reset_list		= sdm845_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -2709,8 +2668,6 @@ static const struct qmp_phy_cfg sc8280xp_qmp_gen3x4_pciephy_cfg = {
 	.serdes_4ln_tbl		= sc8280xp_qmp_gen3x4_pcie_serdes_4ln_tbl,
 	.serdes_4ln_num		= ARRAY_SIZE(sc8280xp_qmp_gen3x4_pcie_serdes_4ln_tbl),
 
-	.clk_list		= sc8280xp_pciephy_clk_l,
-	.num_clks		= ARRAY_SIZE(sc8280xp_pciephy_clk_l),
 	.reset_list		= sdm845_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -2751,8 +2708,6 @@ static const struct qmp_phy_cfg sdx55_qmp_pciephy_cfg = {
 		.pcs_misc_num	= ARRAY_SIZE(sdx55_qmp_pcie_ep_pcs_misc_tbl),
 	},
 
-	.clk_list		= sdm845_pciephy_clk_l,
-	.num_clks		= ARRAY_SIZE(sdm845_pciephy_clk_l),
 	.reset_list		= sdm845_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -2788,8 +2743,6 @@ static const struct qmp_phy_cfg sm8350_qmp_gen3x1_pciephy_cfg = {
 		.rx_num		= ARRAY_SIZE(sm8350_qmp_gen3x1_pcie_rc_rx_tbl),
 	},
 
-	.clk_list		= sc8280xp_pciephy_clk_l,
-	.num_clks		= ARRAY_SIZE(sc8280xp_pciephy_clk_l),
 	.reset_list		= sdm845_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -2825,8 +2778,6 @@ static const struct qmp_phy_cfg sm8350_qmp_gen3x2_pciephy_cfg = {
 		.pcs_num	= ARRAY_SIZE(sm8350_qmp_gen3x2_pcie_rc_pcs_tbl),
 	},
 
-	.clk_list		= sc8280xp_pciephy_clk_l,
-	.num_clks		= ARRAY_SIZE(sc8280xp_pciephy_clk_l),
 	.reset_list		= sdm845_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -2854,8 +2805,6 @@ static const struct qmp_phy_cfg sdx65_qmp_pciephy_cfg = {
 			.pcs_misc       = sdx65_qmp_pcie_pcs_misc_tbl,
 			.pcs_misc_num   = ARRAY_SIZE(sdx65_qmp_pcie_pcs_misc_tbl),
 		},
-	.clk_list               = sdm845_pciephy_clk_l,
-	.num_clks               = ARRAY_SIZE(sdm845_pciephy_clk_l),
 	.reset_list             = sdm845_pciephy_reset_l,
 	.num_resets             = ARRAY_SIZE(sdm845_pciephy_reset_l),
 	.vreg_list              = qmp_phy_vreg_l,
@@ -2889,8 +2838,6 @@ static const struct qmp_phy_cfg sm8450_qmp_gen3x1_pciephy_cfg = {
 		.rx_num		= ARRAY_SIZE(sm8450_qmp_gen3x1_pcie_rc_rx_tbl),
 	},
 
-	.clk_list		= sdm845_pciephy_clk_l,
-	.num_clks		= ARRAY_SIZE(sdm845_pciephy_clk_l),
 	.reset_list		= sdm845_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -2931,8 +2878,6 @@ static const struct qmp_phy_cfg sm8450_qmp_gen4x2_pciephy_cfg = {
 		.pcs_misc_num	= ARRAY_SIZE(sm8450_qmp_gen4x2_pcie_ep_pcs_misc_tbl),
 	},
 
-	.clk_list		= sdm845_pciephy_clk_l,
-	.num_clks		= ARRAY_SIZE(sdm845_pciephy_clk_l),
 	.reset_list		= sdm845_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -2960,8 +2905,6 @@ static const struct qmp_phy_cfg sm8550_qmp_gen3x2_pciephy_cfg = {
 		.pcs_misc	= sm8550_qmp_gen3x2_pcie_pcs_misc_tbl,
 		.pcs_misc_num	= ARRAY_SIZE(sm8550_qmp_gen3x2_pcie_pcs_misc_tbl),
 	},
-	.clk_list		= sc8280xp_pciephy_clk_l,
-	.num_clks		= ARRAY_SIZE(sc8280xp_pciephy_clk_l),
 	.reset_list		= sdm845_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -2991,8 +2934,6 @@ static const struct qmp_phy_cfg sm8550_qmp_gen4x2_pciephy_cfg = {
 		.ln_shrd		= sm8550_qmp_gen4x2_pcie_ln_shrd_tbl,
 		.ln_shrd_num		= ARRAY_SIZE(sm8550_qmp_gen4x2_pcie_ln_shrd_tbl),
 	},
-	.clk_list		= sc8280xp_pciephy_clk_l,
-	.num_clks		= ARRAY_SIZE(sc8280xp_pciephy_clk_l),
 	.reset_list		= sdm845_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
 	.vreg_list		= sm8550_qmp_phy_vreg_l,
@@ -3028,8 +2969,6 @@ static const struct qmp_phy_cfg sa8775p_qmp_gen4x2_pciephy_cfg = {
 		.pcs_misc_num	= ARRAY_SIZE(sa8775p_qmp_gen4_pcie_rc_pcs_misc_tbl),
 	},
 
-	.clk_list		= sa8775p_pciephy_clk_l,
-	.num_clks		= ARRAY_SIZE(sa8775p_pciephy_clk_l),
 	.reset_list		= sdm845_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -3064,8 +3003,6 @@ static const struct qmp_phy_cfg sa8775p_qmp_gen4x4_pciephy_cfg = {
 		.pcs_misc_num	= ARRAY_SIZE(sa8775p_qmp_gen4_pcie_rc_pcs_misc_tbl),
 	},
 
-	.clk_list		= sa8775p_pciephy_clk_l,
-	.num_clks		= ARRAY_SIZE(sa8775p_pciephy_clk_l),
 	.reset_list		= sdm845_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -3188,7 +3125,7 @@ static int qmp_pcie_init(struct phy *phy)
 		goto err_assert_reset;
 	}
 
-	ret = clk_bulk_prepare_enable(cfg->num_clks, qmp->clks);
+	ret = clk_bulk_prepare_enable(ARRAY_SIZE(qmp_pciephy_clk_l), qmp->clks);
 	if (ret)
 		goto err_assert_reset;
 
@@ -3209,7 +3146,7 @@ static int qmp_pcie_exit(struct phy *phy)
 
 	reset_control_bulk_assert(cfg->num_resets, qmp->resets);
 
-	clk_bulk_disable_unprepare(cfg->num_clks, qmp->clks);
+	clk_bulk_disable_unprepare(ARRAY_SIZE(qmp_pciephy_clk_l), qmp->clks);
 
 	regulator_bulk_disable(cfg->num_vregs, qmp->vregs);
 
@@ -3392,9 +3329,8 @@ static int qmp_pcie_reset_init(struct qmp_pcie *qmp)
 
 static int qmp_pcie_clk_init(struct qmp_pcie *qmp)
 {
-	const struct qmp_phy_cfg *cfg = qmp->cfg;
 	struct device *dev = qmp->dev;
-	int num = cfg->num_clks;
+	int num = ARRAY_SIZE(qmp_pciephy_clk_l);
 	int i;
 
 	qmp->clks = devm_kcalloc(dev, num, sizeof(*qmp->clks), GFP_KERNEL);
@@ -3402,9 +3338,9 @@ static int qmp_pcie_clk_init(struct qmp_pcie *qmp)
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
