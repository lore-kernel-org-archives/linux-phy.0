Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6EA06C4707B
	for <linux-phy@archiver.kernel.org>; Sat, 13 Jan 2024 20:56:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=npaWlQYXVE+5uOY6wdlBTsDfAeMSKDrKwE+icC2/ALw=; b=Sd35PEGSfgOS1U
	SxZMLacVrqjf7NfVuNhSsHhUL5bCO7G1mOwFMZ/cQQnbm9e7BVzDdWBj3fJr1ZnqbkRFYoaxXOwBN
	AsSzF3fi9Ej7t4wHV9/HJoeMbejcqv6b1fOeGnXw+m0A80WCEA0SNKWQ8SVZgriZzPSB1hIPLxYqY
	HGP9x57fX922Ed11iD6gIGQErpDv2Ry8m5yFOibuGbKSVpf29h6I51+3Wthzmm2TI8gLdM+oeR0Bj
	2qtnJO4YtId9EHxKay1NR0uesO1u8bnQnh7MAYxsgpPBnYRgHr9mxVpi4779m4rpD028SgjQhfgDX
	RK9dbVauIfkLXTqJWPaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rOl33-005gnG-0E;
	Sat, 13 Jan 2024 20:56:09 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rOl2y-005gia-2P
	for linux-phy@lists.infradead.org;
	Sat, 13 Jan 2024 20:56:07 +0000
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-50eabfac2b7so8752893e87.0
        for <linux-phy@lists.infradead.org>; Sat, 13 Jan 2024 12:56:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705179362; x=1705784162; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ocqUmmZ/X296NwFA4flyjkRbWukD7GvTg3YxA6yGitg=;
        b=VLb9y16t6nZ4zNkAUY/6XPpETCnJVH8tJV5T/LZAXB0/GbsfjgyoPTYrTSrbyQZmA0
         x+9wwYc2IMfT8SSLIpojILxEGUxmy4RKu9L0K7jnpop/g6CMIQURIIsIURmSYSE/Meqb
         7wYf9oODoocGNxXjL0yVsmSxXWA1NmTsgyynI6qiW+enlYotf9GFILs0aBd+X0GzNE+/
         oSKp0jtFxO/5TgOQqxPT+XLv5JAFCmD96a2tCCA7DGvyeiFoPAyr2B/HACeKhEKqiEt1
         O5XDJzvX2L/bX2o/pBXSHo6IOG8mZ5cMhG3+MnwfABonXs/1V05IjxkH9Cz1TB9IK8PU
         Ss4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705179362; x=1705784162;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ocqUmmZ/X296NwFA4flyjkRbWukD7GvTg3YxA6yGitg=;
        b=c+1KDF/niJVRUVwkW72UwlMdD0J55eXqaKBp3vL9EWdInPALH/ekraT6QxNbOB0GFr
         nq6iRytDDmePcCrbSFFy3JP999TdOVnxLk2MBBXSFRK+m3Mi8wb0UQDPmIEUrojGHVL0
         Wv3ysScgOOWZfid2SFuXbujTWszL1L+z6ZifeIRYpcOx0jJjcYSX2cJZ5qg85k1caQ+C
         mDg+RatguVYfURco92iM1o1zNFdUij+Af2oZZ4eK4GLi1TdUGPEosoYJiYKdiv8SSetB
         LIbZjtFIYTigANzaOm8bpn56j0DXZiTMPl9LYLcwfePCyyUuVaOEzA1xkPlod1jeweYj
         nAkA==
X-Gm-Message-State: AOJu0Yw+bGAj5ouGWlc8qqsRSbdn9xzG+RWcVZVuv8j6M8DoHGr2GQ63
	IIAj2l9X3mGiK2rp/ohRm3773X5XsiRN0A==
X-Google-Smtp-Source: AGHT+IFq5oyAxNyvZqsebgXqK9XeuFvoy7sczjjQk42iU+4SXCyPiqkCuX4XXzNEeVFM3pzj9qSVAQ==
X-Received: by 2002:a19:4317:0:b0:50e:cbf9:682f with SMTP id q23-20020a194317000000b0050ecbf9682fmr1333728lfa.89.1705179362378;
        Sat, 13 Jan 2024 12:56:02 -0800 (PST)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id p14-20020a056512328e00b0050e9355d7eesm919802lfe.103.2024.01.13.12.56.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Jan 2024 12:56:02 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 13 Jan 2024 22:55:54 +0200
Subject: [PATCH v2 11/15] phy: qcom: qmp-usb: drop dual-lane handling
MIME-Version: 1.0
Message-Id: <20240113-pmi632-typec-v2-11-182d9aa0a5b3@linaro.org>
References: <20240113-pmi632-typec-v2-0-182d9aa0a5b3@linaro.org>
In-Reply-To: <20240113-pmi632-typec-v2-0-182d9aa0a5b3@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Guenter Roeck <linux@roeck-us.net>, 
 Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-usb@vger.kernel.org, linux-phy@lists.infradead.org
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=6460;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=8Dls26g2bshLZ1TTPkRX3m67fZ2HP79XYN3bxXtlmvY=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBlovjXoLHSPe5bguIF7nWwQTULJ0mFKEIWGZ9uH
 ssM6WbKDu+JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZaL41wAKCRCLPIo+Aiko
 1TBcB/4tjZdrNuWkAPNFXEmUdlxAvzKC4QXcW7OQDxsDYCnfU/tlD3s/EYbBgouQ8iiJDa41VxG
 NNQO04oEQHhK4PhxapxxAZgPjKRhXzladm8pFBKdJ3Vi0lRF5LVi57z77maJz1WYuSw7lrEYFFA
 KksvNvJh7rWKveQ+WhOP0R6sBbkR5tuUrRTG7cowz1DKOl4mnwsxqFnsSAU2FSeTogtVMKII+j5
 5Poege+FQcF9opKheZQ6wBbpVlj6kqIDLHb2puznXZw5PV9FSBuguytF5Bc/s0mh+T/7Lx0nfZi
 U+nTpYg9yveN40oaQSAq2faTGcrTEnmi1RWo/D+ZWlbLm9lq
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240113_125604_804851_7C873518 
X-CRM114-Status: GOOD (  14.41  )
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

Now as all dual-lane PHYs have been migrated to a new driver, drop
support for dual lanes configuration. If the PHY uses two lanes for USB,
it is symthom that it should use either a combo USB+DP or a USB-C PHY
driver.

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 57 +--------------------------------
 1 file changed, 1 insertion(+), 56 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index c7698369d3dc..e62539ce99a6 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -1237,15 +1237,10 @@ struct qmp_usb_offsets {
 	u16 pcs_usb;
 	u16 tx;
 	u16 rx;
-	/* for PHYs with >= 2 lanes */
-	u16 tx2;
-	u16 rx2;
 };
 
 /* struct qmp_phy_cfg - per-PHY initialization config */
 struct qmp_phy_cfg {
-	int lanes;
-
 	const struct qmp_usb_offsets *offsets;
 
 	/* Init sequence for PHY blocks - serdes, tx, rx, pcs */
@@ -1285,8 +1280,6 @@ struct qmp_usb {
 	void __iomem *pcs_usb;
 	void __iomem *tx;
 	void __iomem *rx;
-	void __iomem *tx2;
-	void __iomem *rx2;
 
 	struct clk *pipe_clk;
 	struct clk_bulk_data *clks;
@@ -1393,8 +1386,6 @@ static const struct qmp_usb_offsets qmp_usb_offsets_v7 = {
 };
 
 static const struct qmp_phy_cfg ipq8074_usb3phy_cfg = {
-	.lanes			= 1,
-
 	.offsets		= &qmp_usb_offsets_v3,
 
 	.serdes_tbl		= ipq8074_usb3_serdes_tbl,
@@ -1411,8 +1402,6 @@ static const struct qmp_phy_cfg ipq8074_usb3phy_cfg = {
 };
 
 static const struct qmp_phy_cfg ipq9574_usb3phy_cfg = {
-	.lanes			= 1,
-
 	.offsets		= &qmp_usb_offsets_ipq9574,
 
 	.serdes_tbl		= ipq9574_usb3_serdes_tbl,
@@ -1429,8 +1418,6 @@ static const struct qmp_phy_cfg ipq9574_usb3phy_cfg = {
 };
 
 static const struct qmp_phy_cfg msm8996_usb3phy_cfg = {
-	.lanes			= 1,
-
 	.offsets		= &qmp_usb_offsets_v3,
 
 	.serdes_tbl		= msm8996_usb3_serdes_tbl,
@@ -1447,8 +1434,6 @@ static const struct qmp_phy_cfg msm8996_usb3phy_cfg = {
 };
 
 static const struct qmp_phy_cfg sa8775p_usb3_uniphy_cfg = {
-	.lanes			= 1,
-
 	.offsets		= &qmp_usb_offsets_v5,
 
 	.serdes_tbl		= sc8280xp_usb3_uniphy_serdes_tbl,
@@ -1467,8 +1452,6 @@ static const struct qmp_phy_cfg sa8775p_usb3_uniphy_cfg = {
 };
 
 static const struct qmp_phy_cfg sc8280xp_usb3_uniphy_cfg = {
-	.lanes			= 1,
-
 	.offsets		= &qmp_usb_offsets_v5,
 
 	.serdes_tbl		= sc8280xp_usb3_uniphy_serdes_tbl,
@@ -1487,8 +1470,6 @@ static const struct qmp_phy_cfg sc8280xp_usb3_uniphy_cfg = {
 };
 
 static const struct qmp_phy_cfg qmp_v3_usb3_uniphy_cfg = {
-	.lanes			= 1,
-
 	.offsets		= &qmp_usb_offsets_v3,
 
 	.serdes_tbl		= qmp_v3_usb3_uniphy_serdes_tbl,
@@ -1507,8 +1488,6 @@ static const struct qmp_phy_cfg qmp_v3_usb3_uniphy_cfg = {
 };
 
 static const struct qmp_phy_cfg sm8150_usb3_uniphy_cfg = {
-	.lanes			= 1,
-
 	.offsets		= &qmp_usb_offsets_v4,
 
 	.serdes_tbl		= sm8150_usb3_uniphy_serdes_tbl,
@@ -1530,8 +1509,6 @@ static const struct qmp_phy_cfg sm8150_usb3_uniphy_cfg = {
 };
 
 static const struct qmp_phy_cfg sm8250_usb3_uniphy_cfg = {
-	.lanes			= 1,
-
 	.offsets		= &qmp_usb_offsets_v4,
 
 	.serdes_tbl		= sm8150_usb3_uniphy_serdes_tbl,
@@ -1553,8 +1530,6 @@ static const struct qmp_phy_cfg sm8250_usb3_uniphy_cfg = {
 };
 
 static const struct qmp_phy_cfg sdx55_usb3_uniphy_cfg = {
-	.lanes			= 1,
-
 	.offsets		= &qmp_usb_offsets_v4,
 
 	.serdes_tbl		= sm8150_usb3_uniphy_serdes_tbl,
@@ -1576,8 +1551,6 @@ static const struct qmp_phy_cfg sdx55_usb3_uniphy_cfg = {
 };
 
 static const struct qmp_phy_cfg sdx65_usb3_uniphy_cfg = {
-	.lanes			= 1,
-
 	.offsets		= &qmp_usb_offsets_v5,
 
 	.serdes_tbl		= sm8150_usb3_uniphy_serdes_tbl,
@@ -1599,7 +1572,6 @@ static const struct qmp_phy_cfg sdx65_usb3_uniphy_cfg = {
 };
 
 static const struct qmp_phy_cfg sdx75_usb3_uniphy_cfg = {
-	.lanes			= 1,
 	.offsets		= &qmp_usb_offsets_v6,
 
 	.serdes_tbl		= sdx75_usb3_uniphy_serdes_tbl,
@@ -1621,8 +1593,6 @@ static const struct qmp_phy_cfg sdx75_usb3_uniphy_cfg = {
 };
 
 static const struct qmp_phy_cfg sm8350_usb3_uniphy_cfg = {
-	.lanes			= 1,
-
 	.offsets		= &qmp_usb_offsets_v5,
 
 	.serdes_tbl		= sm8150_usb3_uniphy_serdes_tbl,
@@ -1644,8 +1614,6 @@ static const struct qmp_phy_cfg sm8350_usb3_uniphy_cfg = {
 };
 
 static const struct qmp_phy_cfg x1e80100_usb3_uniphy_cfg = {
-	.lanes			= 1,
-
 	.offsets		= &qmp_usb_offsets_v7,
 
 	.serdes_tbl		= x1e80100_usb3_uniphy_serdes_tbl,
@@ -1780,11 +1748,6 @@ static int qmp_usb_power_on(struct phy *phy)
 	qmp_usb_configure_lane(tx, cfg->tx_tbl, cfg->tx_tbl_num, 1);
 	qmp_usb_configure_lane(rx, cfg->rx_tbl, cfg->rx_tbl_num, 1);
 
-	if (cfg->lanes >= 2) {
-		qmp_usb_configure_lane(qmp->tx2, cfg->tx_tbl, cfg->tx_tbl_num, 2);
-		qmp_usb_configure_lane(qmp->rx2, cfg->rx_tbl, cfg->rx_tbl_num, 2);
-	}
-
 	qmp_usb_configure(pcs, cfg->pcs_tbl, cfg->pcs_tbl_num);
 
 	if (pcs_usb)
@@ -2131,7 +2094,6 @@ static int qmp_usb_parse_dt_legacy(struct qmp_usb *qmp, struct device_node *np)
 	/*
 	 * Get memory resources for the PHY:
 	 * Resources are indexed as: tx -> 0; rx -> 1; pcs -> 2.
-	 * For dual lane PHYs: tx2 -> 3, rx2 -> 4, pcs_misc (optional) -> 5
 	 * For single lane PHYs: pcs_misc (optional) -> 3.
 	 */
 	qmp->tx = devm_of_iomap(dev, np, 0, NULL);
@@ -2149,19 +2111,7 @@ static int qmp_usb_parse_dt_legacy(struct qmp_usb *qmp, struct device_node *np)
 	if (cfg->pcs_usb_offset)
 		qmp->pcs_usb = qmp->pcs + cfg->pcs_usb_offset;
 
-	if (cfg->lanes >= 2) {
-		qmp->tx2 = devm_of_iomap(dev, np, 3, NULL);
-		if (IS_ERR(qmp->tx2))
-			return PTR_ERR(qmp->tx2);
-
-		qmp->rx2 = devm_of_iomap(dev, np, 4, NULL);
-		if (IS_ERR(qmp->rx2))
-			return PTR_ERR(qmp->rx2);
-
-		qmp->pcs_misc = devm_of_iomap(dev, np, 5, NULL);
-	} else {
-		qmp->pcs_misc = devm_of_iomap(dev, np, 3, NULL);
-	}
+	qmp->pcs_misc = devm_of_iomap(dev, np, 3, NULL);
 
 	if (IS_ERR(qmp->pcs_misc)) {
 		dev_vdbg(dev, "PHY pcs_misc-reg not used\n");
@@ -2213,11 +2163,6 @@ static int qmp_usb_parse_dt(struct qmp_usb *qmp)
 	qmp->tx = base + offs->tx;
 	qmp->rx = base + offs->rx;
 
-	if (cfg->lanes >= 2) {
-		qmp->tx2 = base + offs->tx2;
-		qmp->rx2 = base + offs->rx2;
-	}
-
 	ret = qmp_usb_clk_init(qmp);
 	if (ret)
 		return ret;

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
