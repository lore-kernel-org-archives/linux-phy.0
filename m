Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34648C47DAC
	for <linux-phy@archiver.kernel.org>; Sat, 13 Jan 2024 05:42:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1ne5XoZeV7P47aHpoB2LVeYMRbW56jq2cRfcbYNY6LY=; b=gLd2rveKj22uyH
	jxRYM/VDbubNa0TGtbMIW00VFFvUZEcSkjB+Y7gRwFacNmbgLiEPFMC1ebKkr7Z5rB0qYnoc52/1F
	+H3a/Mh4oxasmTFuSf21Nh42e1w/sf8wDEYgVC8g2tLfWMmL4cXrUSKK8506jcMVyNUE8sGdiDJZS
	9kKjMVKAVvdSt2eSJgVLyniMksoeHH042CdZitWWWQwg+BaNjxA8l22RZfeSiMDaQLb3kVFd6+/MN
	KDhIGbE0xJzJuU8G7smYqO3tufgtq+qkmvwDPOv31Pl/rvYVFHPuPlA3VfYiEJF6EimCUcovQmG/B
	mIJnMFVm/2M7TMvc7ajw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rOWnI-004ZjR-2W;
	Sat, 13 Jan 2024 05:42:56 +0000
Received: from mail-lj1-x22c.google.com ([2a00:1450:4864:20::22c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rOWnF-004ZfN-1j
	for linux-phy@lists.infradead.org;
	Sat, 13 Jan 2024 05:42:55 +0000
Received: by mail-lj1-x22c.google.com with SMTP id 38308e7fff4ca-2cd1ca52f31so82956201fa.3
        for <linux-phy@lists.infradead.org>; Fri, 12 Jan 2024 21:42:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705124569; x=1705729369; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=d12MD9AC8SeyHkBIK/5KAVEftigfYpJ4k/r4ZiuaTXE=;
        b=GKnkTeGQ3jSupXyXidyUpRqju85GyTM/nWKhd7GzAJ4GDTc6rfUB+RtA9ehbYW8S5K
         BiluroQAzh3XglrEkP9+BuYERCSqaRSKaOPRROUPPA+aSlZAA0v7tZF1UU5OrSasrIbb
         iMkHMzEyeoboxrQtDAgDzbKCGegZ7Bv5Nb/mnec7hEz7zQWa6oid9ut9fRquKuai2BZH
         trmUnC2zSHDugrZmfPuQiiHa+Fj3rJ2oWSDqfY1yE5WuXgrAqLsETasT7y5K4Xnd87ks
         Bmez6Uqte7TAehLK+KXQaN+QfZMZ+DYmGXbR5P5RiHSQageih1R+rEDxmw6vX/5dGOTF
         bJdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705124569; x=1705729369;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=d12MD9AC8SeyHkBIK/5KAVEftigfYpJ4k/r4ZiuaTXE=;
        b=IbHpT+5wh9SNPMcixyaEcKnoYDCPU9FrH1rRv0y3ZtfJLeJgNlpo5TbPOGlSMhJRPS
         tC0olblaD/z8uKdTj15bGO0ANIYguo4VgqyxR8xQTmLZwdZNAbivctWGnIAH9L66Tp1y
         MK9QDkORjl2HJOfwmcc9nPszeGP6blPGpRL+TN1HBQz8nm7BJh3hj4wL9XyAtsxz+wvM
         hJgCt9IKjGQSwrpRqQukvuig83SVU00/kYyksaRL8Ru9rE0RuJYrvrPrQYrsA6a9qPAv
         k4qSwmPdMKHLSG6XdbREQRX4g/gXfZEyyDW8JehURsFu1W9F1hWqgoBnSddkQmucDcIL
         b4+w==
X-Gm-Message-State: AOJu0Yyu3V6/8YDg4IiUTJOcLSESqBBg/BLk7aRngyBftzzUXu4evC8J
	IZ08SUskn5x74fq58noS8XeX2C2uFFAzjQ==
X-Google-Smtp-Source: AGHT+IE1XZUSX5Dg4+qeBwr+Xjedb52wdaLlYG+984QN1Q0lme9Azl0zD3oJFwvPOE3Dq9XMTYLPbw==
X-Received: by 2002:a2e:5c44:0:b0:2cd:1d6e:74c9 with SMTP id q65-20020a2e5c44000000b002cd1d6e74c9mr1058842ljb.48.1705124569123;
        Fri, 12 Jan 2024 21:42:49 -0800 (PST)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id r22-20020a2eb616000000b002cc71e9168csm677719ljn.129.2024.01.12.21.42.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jan 2024 21:42:48 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 13 Jan 2024 07:42:45 +0200
Subject: [PATCH 08/13] phy: qcom: qmp-usb: drop dual-lane handling
MIME-Version: 1.0
Message-Id: <20240113-pmi632-typec-v1-8-de7dfd459353@linaro.org>
References: <20240113-pmi632-typec-v1-0-de7dfd459353@linaro.org>
In-Reply-To: <20240113-pmi632-typec-v1-0-de7dfd459353@linaro.org>
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
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Bhupesh Sharma <bhupesh.sharma@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-usb@vger.kernel.org, linux-phy@lists.infradead.org
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=6405;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=b1GPB44WxYBgE/14iuMK/IlDCV3YUd+x1mI0t2kqyLU=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBloiLRFa0yDt5028ieyjf7t4ftPcBN4IXYyd65I
 5+TzuPaxPaJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZaIi0QAKCRCLPIo+Aiko
 1RYVB/wL0dfUw7xObMyvXwJCB2TcGZfkdqwHAheAySYsY5gLHdmQKDkHzfszqK+JUqn59qV5BhM
 9eYm3OZbn2OR/4K7U3SrFe1ztahbz42/Cj9/0UybxxRfhQNQMiQAbBxWcIyidk3BfVUgMypT73T
 JWg1ppibivVWS9wT8mV74oYo41w2/XFPefQ8g3mET28Dgs6PBzu/g0S6MHM6co0MrnyQxjqMMOI
 WFGiM2wzoSuoIE5QTaoKQ28bI5VsBwRip6ITdy7iW8hjtnhADDY/qXwQcSUhlcpLBE8JoPcs4/R
 fs5sHSLk2WKZi2JMr1vFRjpBySG76Mz+XTdBStZHeN1YrhgJ
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240112_214253_582560_08995B94 
X-CRM114-Status: GOOD (  14.28  )
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
