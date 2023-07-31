Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE5AEC001E0
	for <linux-phy@archiver.kernel.org>; Mon, 31 Jul 2023 10:58:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hljLGTjkm+Ne2VmJsN0aSVS9E+8neWktKIlA9amVgpw=; b=mTTXTFjMjIBWKb
	3sMrJw6OGRCDfyP0osjnFdkvEcSbbX+4r4noOLGkKoeaKTMwXw4PMsdNd1lYhe5QPZ4XbnPh4P829
	3GwhEy38PzuNrY00VRvFkY6iQMAIuiUbMvyO+yj6KwrwpDSP6o3m7/v2XHsuo0W06T5kitt4hZGBe
	jl8HfQGBqDrbRcMeoLdS4rA+ApA9qonmZ6YreUGJADuRAxnhecBIOJP7ASUvGzCbT7H3JU7tcUSim
	JHwMSU2uxa6CDsp6uR7/NinfYBv2YTem30tx81sonni3lGYHOrM8MruGx6f5l6T0erUDZ42dzmMzE
	BkKZjyCP/UnZsq1nXtBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qQQbI-00FCVm-18;
	Mon, 31 Jul 2023 10:58:08 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qQQbE-00FCTi-38
	for linux-phy@lists.infradead.org;
	Mon, 31 Jul 2023 10:58:06 +0000
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-4fe0c566788so6988967e87.0
        for <linux-phy@lists.infradead.org>; Mon, 31 Jul 2023 03:58:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690801083; x=1691405883;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rRDB6y7BOiVI1Vr/oVyT96U0NLtYbPnf2p0lWekO/No=;
        b=WIP4m6bb5gPcLIV0aCyq10N3LTVSdgiJ7o/MjomfbI/RxdiIxVRqJ2SsQ5LfAOD7vx
         h+6mbWi4X6jh8VwqycEy+Ajl4Re/WQ0SwRpzL3oX6+ZuB9NuqbqzLEt37+AW3pj8ItfX
         tILuVzewAXEsosRuyY5LKdVKi9PRihf9sr2CBj1hKWwxVVeRNoxxzzcFjattI0bQEgdC
         hy3NALm3hAj0UFKktgjcVEH5UcjhJ35p4Gmuz2lLnbIkDNlSdRKf1UelQ862Ua3yLEdd
         FLLdT1jH4uz26qN2TF29GrmBYMhzZPIBEsv0or50cd4Rq3LUic2o/URN/IMkoHCutAve
         vU+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690801083; x=1691405883;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rRDB6y7BOiVI1Vr/oVyT96U0NLtYbPnf2p0lWekO/No=;
        b=Yuf7GLfv2TrNB+MwLFr8eb8FlUUcM5FVGt+iUjfCn/PnMxDotdC5VRqXYRzpWARbIC
         YI/aS629u/3RGxHazZCHob5TvfclKpzFvbVolpqzpVnyEpU/N8N2RdATuVbSBDJSvNJA
         RPmH5ied0LtyEBRn9raEKm1bT0mPCsMI4sqfRr3NHa79YJBCDEcMgBn2w3bzFGsVm1dp
         1KlLHMBzX8C3jUe2NKsADp1aRQUYbAKIcl3AYQEBe/28ljgEHIypDobFe4ZKrCl8rRH0
         7ijcgqb2VA8vfg+jV7Y5Bol8LL71xRUkGau9olXoqeDhGbLMoA6mHzFN2eOGnBqSa0bX
         mfkQ==
X-Gm-Message-State: ABy/qLbLTy+Q4TLHmZJsVC+n3X/MepyBRGfeSi9LV/P/TwaK561R9LQp
	X/TGeSUjLI2u187OT1IX0HEPng==
X-Google-Smtp-Source: APBJJlHbSIL4cwbiyzPPcCK0HAhip6BS1jeEFTN/e9eMy7sLisNPLEbn3snuYLVwtogM9VUf2Nolfg==
X-Received: by 2002:ac2:5b1d:0:b0:4fd:d1df:9bda with SMTP id v29-20020ac25b1d000000b004fdd1df9bdamr5309658lfn.42.1690801083340;
        Mon, 31 Jul 2023 03:58:03 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id c19-20020ac24153000000b004fb9fe34c27sm2025497lfi.92.2023.07.31.03.58.02
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
Subject: [PATCH v2 03/13] phy: qcom-qmp-pcie: populate offsets configuration
Date: Mon, 31 Jul 2023 13:57:49 +0300
Message-Id: <20230731105759.3997549-4-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230731105759.3997549-1-dmitry.baryshkov@linaro.org>
References: <20230731105759.3997549-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230731_035805_082294_96AF250F 
X-CRM114-Status: GOOD (  10.62  )
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

Populate offsets configuration for the rest of UFS PHYs to make it
possible to switch them to the new (single-node) bindings style.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 84 ++++++++++++++++++++++++
 1 file changed, 84 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index f3717cb4a0e1..f304a2c4a5c2 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -2294,6 +2294,56 @@ static const char * const sdm845_pciephy_reset_l[] = {
 	"phy",
 };
 
+static const struct qmp_pcie_offsets qmp_pcie_offsets_qhp = {
+	.serdes		= 0,
+	.pcs		= 0x1800,
+	.tx		= 0x0800,
+	/* no .rx for QHP */
+};
+
+static const struct qmp_pcie_offsets qmp_pcie_offsets_v2 = {
+	.serdes		= 0,
+	.pcs		= 0x0800,
+	.tx		= 0x0200,
+	.rx		= 0x0400,
+};
+
+static const struct qmp_pcie_offsets qmp_pcie_offsets_v3 = {
+	.serdes		= 0,
+	.pcs		= 0x0800,
+	.pcs_misc	= 0x0600,
+	.tx		= 0x0200,
+	.rx		= 0x0400,
+};
+
+static const struct qmp_pcie_offsets qmp_pcie_offsets_v4x1 = {
+	.serdes		= 0,
+	.pcs		= 0x0800,
+	.pcs_misc	= 0x0c00,
+	.tx		= 0x0200,
+	.rx		= 0x0400,
+};
+
+static const struct qmp_pcie_offsets qmp_pcie_offsets_v4x2 = {
+	.serdes		= 0,
+	.pcs		= 0x0a00,
+	.pcs_misc	= 0x0e00,
+	.tx		= 0x0200,
+	.rx		= 0x0400,
+	.tx2		= 0x0600,
+	.rx2		= 0x0800,
+};
+
+static const struct qmp_pcie_offsets qmp_pcie_offsets_v4_20 = {
+	.serdes		= 0x1000,
+	.pcs		= 0x1200,
+	.pcs_misc	= 0x1600,
+	.tx		= 0x0000,
+	.rx		= 0x0200,
+	.tx2		= 0x0800,
+	.rx2		= 0x0a00,
+};
+
 static const struct qmp_pcie_offsets qmp_pcie_offsets_v5 = {
 	.serdes		= 0,
 	.pcs		= 0x0200,
@@ -2304,6 +2354,16 @@ static const struct qmp_pcie_offsets qmp_pcie_offsets_v5 = {
 	.rx2		= 0x1800,
 };
 
+static const struct qmp_pcie_offsets qmp_pcie_offsets_v5_20 = {
+	.serdes		= 0x1000,
+	.pcs		= 0x1200,
+	.pcs_misc	= 0x1400,
+	.tx		= 0x0000,
+	.rx		= 0x0200,
+	.tx2		= 0x0800,
+	.rx2		= 0x0a00,
+};
+
 static const struct qmp_pcie_offsets qmp_pcie_offsets_v6_20 = {
 	.serdes		= 0x1000,
 	.pcs		= 0x1200,
@@ -2339,6 +2399,8 @@ static const struct qmp_pcie_offsets qmp_pcie_offsets_v5_30 = {
 static const struct qmp_phy_cfg ipq8074_pciephy_cfg = {
 	.lanes			= 1,
 
+	.offsets		= &qmp_pcie_offsets_v2,
+
 	.tbls = {
 		.serdes		= ipq8074_pcie_serdes_tbl,
 		.serdes_num	= ARRAY_SIZE(ipq8074_pcie_serdes_tbl),
@@ -2362,6 +2424,8 @@ static const struct qmp_phy_cfg ipq8074_pciephy_cfg = {
 static const struct qmp_phy_cfg ipq8074_pciephy_gen3_cfg = {
 	.lanes			= 1,
 
+	.offsets		= &qmp_pcie_offsets_v4x1,
+
 	.tbls = {
 		.serdes		= ipq8074_pcie_gen3_serdes_tbl,
 		.serdes_num	= ARRAY_SIZE(ipq8074_pcie_gen3_serdes_tbl),
@@ -2389,6 +2453,8 @@ static const struct qmp_phy_cfg ipq8074_pciephy_gen3_cfg = {
 static const struct qmp_phy_cfg ipq6018_pciephy_cfg = {
 	.lanes			= 1,
 
+	.offsets		= &qmp_pcie_offsets_v4x1,
+
 	.tbls = {
 		.serdes		= ipq6018_pcie_serdes_tbl,
 		.serdes_num	= ARRAY_SIZE(ipq6018_pcie_serdes_tbl),
@@ -2414,6 +2480,8 @@ static const struct qmp_phy_cfg ipq6018_pciephy_cfg = {
 static const struct qmp_phy_cfg sdm845_qmp_pciephy_cfg = {
 	.lanes			= 1,
 
+	.offsets		= &qmp_pcie_offsets_v3,
+
 	.tbls = {
 		.serdes		= sdm845_qmp_pcie_serdes_tbl,
 		.serdes_num	= ARRAY_SIZE(sdm845_qmp_pcie_serdes_tbl),
@@ -2439,6 +2507,8 @@ static const struct qmp_phy_cfg sdm845_qmp_pciephy_cfg = {
 static const struct qmp_phy_cfg sdm845_qhp_pciephy_cfg = {
 	.lanes			= 1,
 
+	.offsets		= &qmp_pcie_offsets_qhp,
+
 	.tbls = {
 		.serdes		= sdm845_qhp_pcie_serdes_tbl,
 		.serdes_num	= ARRAY_SIZE(sdm845_qhp_pcie_serdes_tbl),
@@ -2460,6 +2530,8 @@ static const struct qmp_phy_cfg sdm845_qhp_pciephy_cfg = {
 static const struct qmp_phy_cfg sm8250_qmp_gen3x1_pciephy_cfg = {
 	.lanes			= 1,
 
+	.offsets		= &qmp_pcie_offsets_v4x1,
+
 	.tbls = {
 		.serdes		= sm8250_qmp_pcie_serdes_tbl,
 		.serdes_num	= ARRAY_SIZE(sm8250_qmp_pcie_serdes_tbl),
@@ -2495,6 +2567,8 @@ static const struct qmp_phy_cfg sm8250_qmp_gen3x1_pciephy_cfg = {
 static const struct qmp_phy_cfg sm8250_qmp_gen3x2_pciephy_cfg = {
 	.lanes			= 2,
 
+	.offsets		= &qmp_pcie_offsets_v4x2,
+
 	.tbls = {
 		.serdes		= sm8250_qmp_pcie_serdes_tbl,
 		.serdes_num	= ARRAY_SIZE(sm8250_qmp_pcie_serdes_tbl),
@@ -2530,6 +2604,8 @@ static const struct qmp_phy_cfg sm8250_qmp_gen3x2_pciephy_cfg = {
 static const struct qmp_phy_cfg msm8998_pciephy_cfg = {
 	.lanes			= 1,
 
+	.offsets		= &qmp_pcie_offsets_v3,
+
 	.tbls = {
 		.serdes		= msm8998_pcie_serdes_tbl,
 		.serdes_num	= ARRAY_SIZE(msm8998_pcie_serdes_tbl),
@@ -2555,6 +2631,8 @@ static const struct qmp_phy_cfg msm8998_pciephy_cfg = {
 static const struct qmp_phy_cfg sc8180x_pciephy_cfg = {
 	.lanes			= 2,
 
+	.offsets		= &qmp_pcie_offsets_v4x2,
+
 	.tbls = {
 		.serdes		= sc8180x_qmp_pcie_serdes_tbl,
 		.serdes_num	= ARRAY_SIZE(sc8180x_qmp_pcie_serdes_tbl),
@@ -2682,6 +2760,8 @@ static const struct qmp_phy_cfg sc8280xp_qmp_gen3x4_pciephy_cfg = {
 static const struct qmp_phy_cfg sdx55_qmp_pciephy_cfg = {
 	.lanes			= 2,
 
+	.offsets		= &qmp_pcie_offsets_v4_20,
+
 	.tbls = {
 		.serdes		= sdx55_qmp_pcie_serdes_tbl,
 		.serdes_num	= ARRAY_SIZE(sdx55_qmp_pcie_serdes_tbl),
@@ -2819,6 +2899,8 @@ static const struct qmp_phy_cfg sdx65_qmp_pciephy_cfg = {
 static const struct qmp_phy_cfg sm8450_qmp_gen3x1_pciephy_cfg = {
 	.lanes			= 1,
 
+	.offsets		= &qmp_pcie_offsets_v5,
+
 	.tbls = {
 		.serdes		= sm8450_qmp_gen3_pcie_serdes_tbl,
 		.serdes_num	= ARRAY_SIZE(sm8450_qmp_gen3_pcie_serdes_tbl),
@@ -2852,6 +2934,8 @@ static const struct qmp_phy_cfg sm8450_qmp_gen3x1_pciephy_cfg = {
 static const struct qmp_phy_cfg sm8450_qmp_gen4x2_pciephy_cfg = {
 	.lanes			= 2,
 
+	.offsets		= &qmp_pcie_offsets_v5_20,
+
 	.tbls = {
 		.serdes		= sm8450_qmp_gen4x2_pcie_serdes_tbl,
 		.serdes_num	= ARRAY_SIZE(sm8450_qmp_gen4x2_pcie_serdes_tbl),
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
