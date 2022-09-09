Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD7C0C6FA92
	for <linux-phy@archiver.kernel.org>; Fri,  9 Sep 2022 09:14:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=toF3tscs+Pas/042/NuQ97ICWGRTTcPp0Xa91FSscx0=; b=fESSYXIsWHbzh1
	HxvC+YfhsPal1eqLeX2gBoj6jLLSaIrJSWVwLAKONFC9lDkMJ/t0urSGUl6ElmEsSHU6Jc5MHvBpL
	szPzlz5aiLkqmPP3T3jdmbR9oWj9uVrPUgX8Q3xqjezJYN0SU3pb1KwPH6PdJVZ2cPPO22s9PbBiB
	y9HqlwwrjYHsDdzTyOdW6lnx66FdP9hF9rYU9AYJ1nvE1qatX8BhKz9PqIBRR+m/EBMpP0nH9gY4V
	meRMlzx2fSIUiXmvhAMEFZcStvumA0Lcm6YkLMbNwpIfiI53hM3nD7M/ihonc6Y2zlKHE2sebBXSw
	TA9KwmJ1c04K9V7bl+Kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWa64-00Exg3-BY; Fri, 09 Sep 2022 09:14:48 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWa5z-00ExZS-Lz
	for linux-phy@lists.infradead.org; Fri, 09 Sep 2022 09:14:46 +0000
Received: by mail-lj1-x22d.google.com with SMTP id by6so1056848ljb.11
        for <linux-phy@lists.infradead.org>; Fri, 09 Sep 2022 02:14:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=HU2fqxeSVcRcvbRyBLFrKxTAT+0TWkjgqZ5eADgSGgk=;
        b=We02NjLi51MFUWy5j1PR8dUf3JOzbFBji89SbW0N7UHRaMvU9ck3wtDBMKOr6ehWlv
         X3LMeztDf03ajQKIDHby2nMLUKvO5NURFs/c2mpdvGfKq3Z6qroVZ/xOpiyMbaCVxySR
         rMoKbGSv2zX8RbxTgBAnI7MEq5X4P0pA7somHl2KjGMsONaQ7QVQD4LIXuVPBFVuUtQh
         CJrw007ZrePCg/xSFhMKjSzJ2VyXac8RnNc3hkuuZBdXAtCQNgKwctNnVfIG1ijeH/gb
         PQzYJyh0UliLlDYFISOnNJgFRg6iuEd6zKoR93/f1lLV9oTH8BmTqWAVzFI+r93qO06j
         3x4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=HU2fqxeSVcRcvbRyBLFrKxTAT+0TWkjgqZ5eADgSGgk=;
        b=11JvQrD9qjBWc5ibbalJub1MnsAf+3otHcjB1EKyBj6NRQ8oAguIRZHOhvXUtRzsio
         FxcKZ4D1ss+b2KkJMWj8mm0tC5h6bN3h3tZxAgYgBzn3uXJ3CqGsglFiKSaDOEKCRZhC
         s6KhGg/pmiOlVa8OL+pYtZCI2pQwc5PI87gebxHh9NFQgqiKk+LenaI5qqAGREObfD5g
         oNeLMPsHKbm7zBOotMtjc7yyN57JpyU1GQMVDvCp3XboaZEjMAJsO2bPXjBlIgBEyIXN
         +av3VWNTBhXYHd++ZRpddVKu8nAZYCFxppUrjs/RsaPK2ni1hsM4Hk+DSoqWTMTy2xCf
         vWpg==
X-Gm-Message-State: ACgBeo0BTYm9m/NwKyHb8o33mgqd+fiwNiuAytbP3NN1aFxivjVnp2Aw
	C7hkwL8bFbJs9zEQXg1J+4g8gg==
X-Google-Smtp-Source: AA6agR5lcebEObTLYz0gr98T0UKvJvrLyaTqdW8FhnL3PFen7y0ov8oPxNjx1i1523hBzHR2rn0ygg==
X-Received: by 2002:a05:651c:12ca:b0:261:df67:b76f with SMTP id 10-20020a05651c12ca00b00261df67b76fmr3384572lje.421.1662714879840;
        Fri, 09 Sep 2022 02:14:39 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id z26-20020a2e4c1a000000b0026acbb6ed1asm201615lja.66.2022.09.09.02.14.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Sep 2022 02:14:39 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>,
	Jingoo Han <jingoohan1@gmail.com>,
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	Johan Hovold <johan@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v3 5/9] phy: qcom-qmp-pcie: turn secondary programming table into a pointer
Date: Fri,  9 Sep 2022 12:14:29 +0300
Message-Id: <20220909091433.3715981-6-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220909091433.3715981-1-dmitry.baryshkov@linaro.org>
References: <20220909091433.3715981-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_021443_764157_FDE6D834 
X-CRM114-Status: GOOD (  12.84  )
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

Having a complete struct qmp_phy_cfg_tables as a secondary field in the
struct qmp_phy_cfg wastes memory, since most of the PHY configuration
tables do not have the secondary table. Change it to be a pointer to
lower the amount of wasted memory.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 5250c3f06c89..d115f7ef3901 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -1372,7 +1372,7 @@ struct qmp_phy_cfg {
 	 * Additional init sequence for PHY blocks, providing additional
 	 * register programming. Unless required it can be left omitted.
 	 */
-	struct qmp_phy_cfg_tables secondary;
+	struct qmp_phy_cfg_tables *secondary;
 
 	/* clock ids to be requested */
 	const char * const *clk_list;
@@ -1687,7 +1687,7 @@ static const struct qmp_phy_cfg sm8250_qmp_gen3x1_pciephy_cfg = {
 	.pcs_misc_tbl		= sm8250_qmp_pcie_pcs_misc_tbl,
 	.pcs_misc_tbl_num	= ARRAY_SIZE(sm8250_qmp_pcie_pcs_misc_tbl),
 	},
-	.secondary = {
+	.secondary = &(struct qmp_phy_cfg_tables) {
 	.serdes_tbl		= sm8250_qmp_gen3x1_pcie_serdes_tbl,
 	.serdes_tbl_num		= ARRAY_SIZE(sm8250_qmp_gen3x1_pcie_serdes_tbl),
 	.rx_tbl			= sm8250_qmp_gen3x1_pcie_rx_tbl,
@@ -1730,7 +1730,7 @@ static const struct qmp_phy_cfg sm8250_qmp_gen3x2_pciephy_cfg = {
 	.pcs_misc_tbl		= sm8250_qmp_pcie_pcs_misc_tbl,
 	.pcs_misc_tbl_num	= ARRAY_SIZE(sm8250_qmp_pcie_pcs_misc_tbl),
 	},
-	.secondary = {
+	.secondary = &(struct qmp_phy_cfg_tables) {
 	.tx_tbl			= sm8250_qmp_gen3x2_pcie_tx_tbl,
 	.tx_tbl_num		= ARRAY_SIZE(sm8250_qmp_gen3x2_pcie_tx_tbl),
 	.rx_tbl			= sm8250_qmp_gen3x2_pcie_rx_tbl,
@@ -2086,7 +2086,7 @@ static int qcom_qmp_phy_pcie_power_on(struct phy *phy)
 	int ret;
 
 	qcom_qmp_phy_pcie_serdes_init(qphy, &cfg->main);
-	qcom_qmp_phy_pcie_serdes_init(qphy, &cfg->secondary);
+	qcom_qmp_phy_pcie_serdes_init(qphy, cfg->secondary);
 
 	ret = clk_prepare_enable(qphy->pipe_clk);
 	if (ret) {
@@ -2096,10 +2096,10 @@ static int qcom_qmp_phy_pcie_power_on(struct phy *phy)
 
 	/* Tx, Rx, and PCS configurations */
 	qcom_qmp_phy_pcie_lanes_init(qphy, &cfg->main);
-	qcom_qmp_phy_pcie_lanes_init(qphy, &cfg->secondary);
+	qcom_qmp_phy_pcie_lanes_init(qphy, cfg->secondary);
 
 	qcom_qmp_phy_pcie_pcs_init(qphy, &cfg->main);
-	qcom_qmp_phy_pcie_pcs_init(qphy, &cfg->secondary);
+	qcom_qmp_phy_pcie_pcs_init(qphy, cfg->secondary);
 
 	/*
 	 * Pull out PHY from POWER DOWN state.
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
