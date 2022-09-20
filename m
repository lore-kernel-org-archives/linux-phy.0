Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 191DCC54EE9
	for <linux-phy@archiver.kernel.org>; Tue, 20 Sep 2022 07:39:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JVDrUbyEx4NujGmlc7oyohwCRwbU+Kzd7wwyh5qKSv0=; b=C26oTuejQ0E9bc
	87j2ECSXAwlVZOHzhkYBgw1dsAoWSRHuIsEgudC8OPjCQ02qITRdvvAHzMwRnM/VNuNYcbr+FdLQK
	H+juXCT1EZxk7d73hr8fAjZxtn4bdr4ulCZnKAc1/9lc8ucZIufcSOEqiOFuqLVVz0ve7MXj902uh
	j/XiqZWzoXEZiGPbAIm+AEZvBWg3tiVTrkoR6TbgKMxtbqak5VNJ2pBT5m2lm0+d0gVR2BkwGITyQ
	N3viDGiMo+BoDu6vOBuGSIIR6ti4hJBxcEF95c03YEfE8xSVJFRkbUEXtu3RcF55deOe6MwmdQ6ai
	OAFHDygR6dTrxrRMfFcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaXqY-001Qg5-Am; Tue, 20 Sep 2022 07:39:10 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaXqQ-001QTu-BO
	for linux-phy@lists.infradead.org; Tue, 20 Sep 2022 07:39:06 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 0D1C3B8255E;
	Tue, 20 Sep 2022 07:39:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1E79EC43470;
	Tue, 20 Sep 2022 07:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663659539;
	bh=n72F8o2KwLcj1vOM/W+l4qLOjRSW0ZN4tYLuk89/RhE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=f6wvWUNyYmNeiWcQ3UN3a0JAWOyO1OXSUM09pd3k+1/3pB3hBSc29jIN5VJ2xxNfW
	 mxMxqWLGENPbjIqY4c/px/hx86FfecmXsES0lt+p7MU1jvBcNveR8AqTaoncxrd51R
	 SuX41rDFNKi8+yaUu2i3T9KOHJH0KhA2zUliA82QfXuOAHq5DIa72mjfUORTEpOSsF
	 bfdlZ7+hLpTgd22U6cnpGWsDHqJChdDbFMAqlUYfSZyXld4Ii6n4d8gSmq0NK8B/dk
	 TmckJJFJno1rgYIP6vvwxV9d7NDON3oX/PJujLGU2zu8qNkJkAhwQu5otyCHOPKur5
	 RHZxV/F6n5WNw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oaXqP-0005Qk-Jr; Tue, 20 Sep 2022 09:39:01 +0200
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
Subject: [PATCH 04/17] phy: qcom-qmp-usb: drop unused type from config
Date: Tue, 20 Sep 2022 09:38:13 +0200
Message-Id: <20220920073826.20811-5-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220920073826.20811-1-johan+linaro@kernel.org>
References: <20220920073826.20811-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_003902_825185_4C8E34CC 
X-CRM114-Status: GOOD (  13.44  )
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

The configuration PHY type is no longer needed since the QMP driver
split so drop it from the configuration and suspend callbacks.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 26 -------------------------
 1 file changed, 26 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index 93994f1a46e2..03481b6f1c35 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -1431,8 +1431,6 @@ struct qmp_phy;
 
 /* struct qmp_phy_cfg - per-PHY initialization config */
 struct qmp_phy_cfg {
-	/* phy-type - PCIE/UFS/USB */
-	unsigned int type;
 	/* number of lanes provided by phy */
 	int nlanes;
 
@@ -1609,7 +1607,6 @@ static const char * const qmp_phy_vreg_l[] = {
 };
 
 static const struct qmp_phy_cfg ipq8074_usb3phy_cfg = {
-	.type			= PHY_TYPE_USB3,
 	.nlanes			= 1,
 
 	.serdes_tbl		= ipq8074_usb3_serdes_tbl,
@@ -1634,7 +1631,6 @@ static const struct qmp_phy_cfg ipq8074_usb3phy_cfg = {
 };
 
 static const struct qmp_phy_cfg msm8996_usb3phy_cfg = {
-	.type			= PHY_TYPE_USB3,
 	.nlanes			= 1,
 
 	.serdes_tbl		= msm8996_usb3_serdes_tbl,
@@ -1659,7 +1655,6 @@ static const struct qmp_phy_cfg msm8996_usb3phy_cfg = {
 };
 
 static const struct qmp_phy_cfg qmp_v3_usb3phy_cfg = {
-	.type			= PHY_TYPE_USB3,
 	.nlanes			= 1,
 
 	.serdes_tbl		= qmp_v3_usb3_serdes_tbl,
@@ -1691,7 +1686,6 @@ static const struct qmp_phy_cfg qmp_v3_usb3phy_cfg = {
 };
 
 static const struct qmp_phy_cfg sc7180_usb3phy_cfg = {
-	.type			= PHY_TYPE_USB3,
 	.nlanes			= 1,
 
 	.serdes_tbl		= qmp_v3_usb3_serdes_tbl,
@@ -1723,7 +1717,6 @@ static const struct qmp_phy_cfg sc7180_usb3phy_cfg = {
 };
 
 static const struct qmp_phy_cfg sc8280xp_usb3_uniphy_cfg = {
-	.type			= PHY_TYPE_USB3,
 	.nlanes			= 1,
 
 	.serdes_tbl		= sc8280xp_usb3_uniphy_serdes_tbl,
@@ -1752,7 +1745,6 @@ static const struct qmp_phy_cfg sc8280xp_usb3_uniphy_cfg = {
 };
 
 static const struct qmp_phy_cfg qmp_v3_usb3_uniphy_cfg = {
-	.type			= PHY_TYPE_USB3,
 	.nlanes			= 1,
 
 	.serdes_tbl		= qmp_v3_usb3_uniphy_serdes_tbl,
@@ -1781,7 +1773,6 @@ static const struct qmp_phy_cfg qmp_v3_usb3_uniphy_cfg = {
 };
 
 static const struct qmp_phy_cfg msm8998_usb3phy_cfg = {
-	.type                   = PHY_TYPE_USB3,
 	.nlanes                 = 1,
 
 	.serdes_tbl             = msm8998_usb3_serdes_tbl,
@@ -1808,7 +1799,6 @@ static const struct qmp_phy_cfg msm8998_usb3phy_cfg = {
 };
 
 static const struct qmp_phy_cfg sm8150_usb3phy_cfg = {
-	.type			= PHY_TYPE_USB3,
 	.nlanes			= 1,
 
 	.serdes_tbl		= sm8150_usb3_serdes_tbl,
@@ -1844,7 +1834,6 @@ static const struct qmp_phy_cfg sm8150_usb3phy_cfg = {
 };
 
 static const struct qmp_phy_cfg sm8150_usb3_uniphy_cfg = {
-	.type			= PHY_TYPE_USB3,
 	.nlanes			= 1,
 
 	.serdes_tbl		= sm8150_usb3_uniphy_serdes_tbl,
@@ -1876,7 +1865,6 @@ static const struct qmp_phy_cfg sm8150_usb3_uniphy_cfg = {
 };
 
 static const struct qmp_phy_cfg sm8250_usb3phy_cfg = {
-	.type			= PHY_TYPE_USB3,
 	.nlanes			= 1,
 
 	.serdes_tbl		= sm8150_usb3_serdes_tbl,
@@ -1911,7 +1899,6 @@ static const struct qmp_phy_cfg sm8250_usb3phy_cfg = {
 };
 
 static const struct qmp_phy_cfg sm8250_usb3_uniphy_cfg = {
-	.type			= PHY_TYPE_USB3,
 	.nlanes			= 1,
 
 	.serdes_tbl		= sm8150_usb3_uniphy_serdes_tbl,
@@ -1943,7 +1930,6 @@ static const struct qmp_phy_cfg sm8250_usb3_uniphy_cfg = {
 };
 
 static const struct qmp_phy_cfg sdx55_usb3_uniphy_cfg = {
-	.type			= PHY_TYPE_USB3,
 	.nlanes			= 1,
 
 	.serdes_tbl		= sm8150_usb3_uniphy_serdes_tbl,
@@ -1975,7 +1961,6 @@ static const struct qmp_phy_cfg sdx55_usb3_uniphy_cfg = {
 };
 
 static const struct qmp_phy_cfg sdx65_usb3_uniphy_cfg = {
-	.type			= PHY_TYPE_USB3,
 	.nlanes			= 1,
 
 	.serdes_tbl		= sm8150_usb3_uniphy_serdes_tbl,
@@ -2007,7 +1992,6 @@ static const struct qmp_phy_cfg sdx65_usb3_uniphy_cfg = {
 };
 
 static const struct qmp_phy_cfg sm8350_usb3phy_cfg = {
-	.type			= PHY_TYPE_USB3,
 	.nlanes			= 1,
 
 	.serdes_tbl		= sm8150_usb3_serdes_tbl,
@@ -2042,7 +2026,6 @@ static const struct qmp_phy_cfg sm8350_usb3phy_cfg = {
 };
 
 static const struct qmp_phy_cfg sm8350_usb3_uniphy_cfg = {
-	.type			= PHY_TYPE_USB3,
 	.nlanes			= 1,
 
 	.serdes_tbl		= sm8150_usb3_uniphy_serdes_tbl,
@@ -2074,7 +2057,6 @@ static const struct qmp_phy_cfg sm8350_usb3_uniphy_cfg = {
 };
 
 static const struct qmp_phy_cfg qcm2290_usb3phy_cfg = {
-	.type			= PHY_TYPE_USB3,
 	.nlanes			= 1,
 
 	.serdes_tbl		= qcm2290_usb3_serdes_tbl,
@@ -2432,10 +2414,6 @@ static int __maybe_unused qmp_usb_runtime_suspend(struct device *dev)
 
 	dev_vdbg(dev, "Suspending QMP phy, mode:%d\n", qphy->mode);
 
-	/* Supported only for USB3 PHY and luckily USB3 is the first phy */
-	if (cfg->type != PHY_TYPE_USB3)
-		return 0;
-
 	if (!qphy->phy->init_count) {
 		dev_vdbg(dev, "PHY not initialized, bailing out\n");
 		return 0;
@@ -2458,10 +2436,6 @@ static int __maybe_unused qmp_usb_runtime_resume(struct device *dev)
 
 	dev_vdbg(dev, "Resuming QMP phy, mode:%d\n", qphy->mode);
 
-	/* Supported only for USB3 PHY and luckily USB3 is the first phy */
-	if (cfg->type != PHY_TYPE_USB3)
-		return 0;
-
 	if (!qphy->phy->init_count) {
 		dev_vdbg(dev, "PHY not initialized, bailing out\n");
 		return 0;
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
