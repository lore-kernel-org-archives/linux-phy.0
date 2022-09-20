Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 994AFC6FA94
	for <linux-phy@archiver.kernel.org>; Tue, 20 Sep 2022 07:39:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nSfmYt2Ii+5LM7sx8lzlS0/aUm1SUvxEKYZ7wyTXLiw=; b=beewKRjA4eyvlI
	YUDsTVqqaRFuweM0F2SZPlmZuHtwKrz7w9J/ruQjiq6Nqh8iRFU4J5ghhnrAmc3bORJwsq4fFsAzG
	kKBZbX9B4zQ5cB6KODLN3uNqJz4+EB/71mESA8upvO5GbQGr/3VqE26LuD/DlrUyimCZl+HPdT/kd
	1ACBr7gHBS0/YVT5uARozyWCNVnZ7wPHhLdDGduKNcwR2cMaAWgloVktp7SZpUrxrH2nTIdMaZ9UT
	L0Z7aTQ28MLmgTa4t2OJkV9Qc6MhSVdw1U5g/aum0e2/NbPA1lCKtD+9kHt8/SYeZMI9hJASUW4Qd
	EmzwEIqtH+PlaAEhFgMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaXqc-001Qj5-Vq; Tue, 20 Sep 2022 07:39:14 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaXqR-001QTh-8w
	for linux-phy@lists.infradead.org; Tue, 20 Sep 2022 07:39:07 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id E91F16246C;
	Tue, 20 Sep 2022 07:39:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 20A80C4347C;
	Tue, 20 Sep 2022 07:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663659539;
	bh=0WpKIrtzSvxKkXOUcVo1f8LRvOiN+BejO8qNmQISNBA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=j4IEvIkh4aCyXSdKBw3seimUVuF4xGK+A33aXd443yDuSkAUPO4cbGpBtyGQGH1vE
	 xkYnI8iW2eAAQBUYLGtzP4LMBW9zLo7plqWm5ZihDpn7dLIGbAtLWnctZu1GRqmgUj
	 wsE1x1cDLLmCIwlScm7LMlsBKpFWUO0rhXmzlChJaZcMzBWDCJwhRt8Izgg79Nhwd8
	 MnC4+SDeNdZ/8zYkFKdPB/hx8hw48XfzLnwDvvuglHqxzwsUIgcEcnP56Vmlvd0aVZ
	 YFMB9FZtCQEEpPQxt8vqcrkcVBHfDPfEhnL9d9zBOEUu5xBfFlpBnaKRqP1PZg8X+n
	 cszKR6tXgctEw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oaXqP-0005Qe-BB; Tue, 20 Sep 2022 09:39:01 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 01/17] phy: qcom-qmp-pcie: drop unused type from config
Date: Tue, 20 Sep 2022 09:38:10 +0200
Message-Id: <20220920073826.20811-2-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220920073826.20811-1-johan+linaro@kernel.org>
References: <20220920073826.20811-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_003903_448599_949010A1 
X-CRM114-Status: GOOD (  11.19  )
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

The configuration PHY type is no longer used since the QMP driver split
so drop it from the configurations.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 14 --------------
 1 file changed, 14 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 4939edcd8cb1..d25f9215b86f 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -1304,8 +1304,6 @@ struct qmp_phy;
 
 /* struct qmp_phy_cfg - per-PHY initialization config */
 struct qmp_phy_cfg {
-	/* phy-type - PCIE/UFS/USB */
-	unsigned int type;
 	/* number of lanes provided by phy */
 	int nlanes;
 
@@ -1470,7 +1468,6 @@ static const char * const sdm845_pciephy_reset_l[] = {
 };
 
 static const struct qmp_phy_cfg ipq8074_pciephy_cfg = {
-	.type			= PHY_TYPE_PCIE,
 	.nlanes			= 1,
 
 	.serdes_tbl		= ipq8074_pcie_serdes_tbl,
@@ -1499,7 +1496,6 @@ static const struct qmp_phy_cfg ipq8074_pciephy_cfg = {
 };
 
 static const struct qmp_phy_cfg ipq8074_pciephy_gen3_cfg = {
-	.type			= PHY_TYPE_PCIE,
 	.nlanes			= 1,
 
 	.serdes_tbl		= ipq8074_pcie_gen3_serdes_tbl,
@@ -1529,7 +1525,6 @@ static const struct qmp_phy_cfg ipq8074_pciephy_gen3_cfg = {
 };
 
 static const struct qmp_phy_cfg ipq6018_pciephy_cfg = {
-	.type			= PHY_TYPE_PCIE,
 	.nlanes			= 1,
 
 	.serdes_tbl		= ipq6018_pcie_serdes_tbl,
@@ -1559,7 +1554,6 @@ static const struct qmp_phy_cfg ipq6018_pciephy_cfg = {
 };
 
 static const struct qmp_phy_cfg sdm845_qmp_pciephy_cfg = {
-	.type = PHY_TYPE_PCIE,
 	.nlanes = 1,
 
 	.serdes_tbl		= sdm845_qmp_pcie_serdes_tbl,
@@ -1590,7 +1584,6 @@ static const struct qmp_phy_cfg sdm845_qmp_pciephy_cfg = {
 };
 
 static const struct qmp_phy_cfg sdm845_qhp_pciephy_cfg = {
-	.type = PHY_TYPE_PCIE,
 	.nlanes = 1,
 
 	.serdes_tbl		= sdm845_qhp_pcie_serdes_tbl,
@@ -1619,7 +1612,6 @@ static const struct qmp_phy_cfg sdm845_qhp_pciephy_cfg = {
 };
 
 static const struct qmp_phy_cfg sm8250_qmp_gen3x1_pciephy_cfg = {
-	.type = PHY_TYPE_PCIE,
 	.nlanes = 1,
 
 	.serdes_tbl		= sm8250_qmp_pcie_serdes_tbl,
@@ -1658,7 +1650,6 @@ static const struct qmp_phy_cfg sm8250_qmp_gen3x1_pciephy_cfg = {
 };
 
 static const struct qmp_phy_cfg sm8250_qmp_gen3x2_pciephy_cfg = {
-	.type = PHY_TYPE_PCIE,
 	.nlanes = 2,
 
 	.serdes_tbl		= sm8250_qmp_pcie_serdes_tbl,
@@ -1698,7 +1689,6 @@ static const struct qmp_phy_cfg sm8250_qmp_gen3x2_pciephy_cfg = {
 };
 
 static const struct qmp_phy_cfg msm8998_pciephy_cfg = {
-	.type			= PHY_TYPE_PCIE,
 	.nlanes			= 1,
 
 	.serdes_tbl		= msm8998_pcie_serdes_tbl,
@@ -1723,7 +1713,6 @@ static const struct qmp_phy_cfg msm8998_pciephy_cfg = {
 };
 
 static const struct qmp_phy_cfg sc8180x_pciephy_cfg = {
-	.type = PHY_TYPE_PCIE,
 	.nlanes = 1,
 
 	.serdes_tbl		= sc8180x_qmp_pcie_serdes_tbl,
@@ -1753,7 +1742,6 @@ static const struct qmp_phy_cfg sc8180x_pciephy_cfg = {
 };
 
 static const struct qmp_phy_cfg sdx55_qmp_pciephy_cfg = {
-	.type = PHY_TYPE_PCIE,
 	.nlanes = 2,
 
 	.serdes_tbl		= sdx55_qmp_pcie_serdes_tbl,
@@ -1785,7 +1773,6 @@ static const struct qmp_phy_cfg sdx55_qmp_pciephy_cfg = {
 };
 
 static const struct qmp_phy_cfg sm8450_qmp_gen3x1_pciephy_cfg = {
-	.type = PHY_TYPE_PCIE,
 	.nlanes = 1,
 
 	.serdes_tbl		= sm8450_qmp_gen3x1_pcie_serdes_tbl,
@@ -1816,7 +1803,6 @@ static const struct qmp_phy_cfg sm8450_qmp_gen3x1_pciephy_cfg = {
 };
 
 static const struct qmp_phy_cfg sm8450_qmp_gen4x2_pciephy_cfg = {
-	.type = PHY_TYPE_PCIE,
 	.nlanes = 2,
 
 	.serdes_tbl		= sm8450_qmp_gen4x2_pcie_serdes_tbl,
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
