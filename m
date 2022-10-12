Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46F85C433FE
	for <linux-phy@archiver.kernel.org>; Wed, 12 Oct 2022 08:50:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1W/7EVYQpLxFT3l8EVPe/1Z+Jzw16xsZr7hJgiFT85g=; b=b1GgCf1dbfRvpZ
	o9hajAwolzRHDjcBMtTSyvpkGb/FVdOzxIvCLjFcOOfa8L3jTdzibWMPX5f05/zoN97ilupw1FaVG
	OlaJFf/ABvglXi9Bx/HooU8z6BBulKbMkjw7NfqgCn5D/4VAADklqjv97VjVfUuPYUd0g9s2nMF5q
	LFkn0J4mtj/zfVeJBoyuG3FfU7XoOaIk75+c+z2aQ7pGjbJlACA/8IRoESXoT5/k6UlNYFSAjH8Zh
	d8VeDA6LJiI3VtK6jlhSKW1fvIvv3yfoXJdXP3F/xMJMe9hba9ij8ANHKBTYMuibWbsCtTlcFvLTf
	XSKKNj6UNezc4u0aENuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiXS4-007QBb-ID; Wed, 12 Oct 2022 08:50:56 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiXRq-007Q1p-DU
	for linux-phy@lists.infradead.org; Wed, 12 Oct 2022 08:50:45 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id F0FADB819D9;
	Wed, 12 Oct 2022 08:50:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 837CEC4315F;
	Wed, 12 Oct 2022 08:50:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665564639;
	bh=PkPpmJlbzzePgAJd7xaEU7S7y+UeiNQHSr6eP5x16M4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=tw/x2pjd3BAql9fpOPa3YFT7w4MLTgXBt0R0NLu3+JX+XcYmwbQ9GzUIZ7sxeJ96s
	 rHEY7X/haw79OQ2zB4tlZWfk289qAsS1VAqzqSjRzCwNWOVR8zv3ZNcoVpM/sksxxr
	 PwIYojYBBWz7RQeredqjaT3Pfcf/uaBPmg90SI3tzccRLIzXzYeR2PM82aVWv14pgC
	 xrtVmGlCd+fTCGLbW8kgXfyfaLkjQ3Z+ARVoOJWLIv0w5gnIx4qSAKqVhc7wBP5x+D
	 ut/Oa/RtN5MEwtHDl9cP5Fa2wyon8HoONXNUuUvrTE6HBMmEfpA9hwfGzLmLfrcoBK
	 xiYW2t407MyKA==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oiXRf-0006I5-6L; Wed, 12 Oct 2022 10:50:31 +0200
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
Subject: [PATCH 13/20] phy: qcom-qmp-usb: clean up status polling
Date: Wed, 12 Oct 2022 10:49:55 +0200
Message-Id: <20221012085002.24099-13-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221012085002.24099-1-johan+linaro@kernel.org>
References: <20221012084846.24003-1-johan+linaro@kernel.org>
 <20221012085002.24099-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221012_015042_846574_0D95400C 
X-CRM114-Status: GOOD (  13.10  )
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

Clean up the PHY status polling by dropping the configuration mask which
is no longer needed since the QMP driver split.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 25 ++-----------------------
 1 file changed, 2 insertions(+), 23 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index 751f628710eb..840b67167581 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -1445,8 +1445,6 @@ struct qmp_phy_cfg {
 
 	unsigned int start_ctrl;
 	unsigned int pwrdn_ctrl;
-	/* bit offset of PHYSTATUS in QPHY_PCS_STATUS register */
-	unsigned int phy_status;
 
 	/* true, if PHY needs delay after POWER_DOWN */
 	bool has_pwrdn_delay;
@@ -1604,7 +1602,6 @@ static const struct qmp_phy_cfg ipq8074_usb3phy_cfg = {
 
 	.start_ctrl		= SERDES_START | PCS_START,
 	.pwrdn_ctrl		= SW_PWRDN,
-	.phy_status		= PHYSTATUS,
 };
 
 static const struct qmp_phy_cfg msm8996_usb3phy_cfg = {
@@ -1628,7 +1625,6 @@ static const struct qmp_phy_cfg msm8996_usb3phy_cfg = {
 
 	.start_ctrl		= SERDES_START | PCS_START,
 	.pwrdn_ctrl		= SW_PWRDN,
-	.phy_status		= PHYSTATUS,
 };
 
 static const struct qmp_phy_cfg qmp_v3_usb3phy_cfg = {
@@ -1652,7 +1648,6 @@ static const struct qmp_phy_cfg qmp_v3_usb3phy_cfg = {
 
 	.start_ctrl		= SERDES_START | PCS_START,
 	.pwrdn_ctrl		= SW_PWRDN,
-	.phy_status		= PHYSTATUS,
 
 	.has_pwrdn_delay	= true,
 	.has_phy_dp_com_ctrl	= true,
@@ -1679,7 +1674,6 @@ static const struct qmp_phy_cfg sc7180_usb3phy_cfg = {
 
 	.start_ctrl		= SERDES_START | PCS_START,
 	.pwrdn_ctrl		= SW_PWRDN,
-	.phy_status		= PHYSTATUS,
 
 	.has_pwrdn_delay	= true,
 	.has_phy_dp_com_ctrl	= true,
@@ -1706,7 +1700,6 @@ static const struct qmp_phy_cfg sc8280xp_usb3_uniphy_cfg = {
 
 	.start_ctrl		= SERDES_START | PCS_START,
 	.pwrdn_ctrl		= SW_PWRDN,
-	.phy_status		= PHYSTATUS,
 };
 
 static const struct qmp_phy_cfg qmp_v3_usb3_uniphy_cfg = {
@@ -1730,7 +1723,6 @@ static const struct qmp_phy_cfg qmp_v3_usb3_uniphy_cfg = {
 
 	.start_ctrl		= SERDES_START | PCS_START,
 	.pwrdn_ctrl		= SW_PWRDN,
-	.phy_status		= PHYSTATUS,
 
 	.has_pwrdn_delay	= true,
 };
@@ -1756,7 +1748,6 @@ static const struct qmp_phy_cfg msm8998_usb3phy_cfg = {
 
 	.start_ctrl             = SERDES_START | PCS_START,
 	.pwrdn_ctrl             = SW_PWRDN,
-	.phy_status		= PHYSTATUS,
 };
 
 static const struct qmp_phy_cfg sm8150_usb3phy_cfg = {
@@ -1783,7 +1774,6 @@ static const struct qmp_phy_cfg sm8150_usb3phy_cfg = {
 
 	.start_ctrl		= SERDES_START | PCS_START,
 	.pwrdn_ctrl		= SW_PWRDN,
-	.phy_status		= PHYSTATUS,
 
 	.has_pwrdn_delay	= true,
 	.has_phy_dp_com_ctrl	= true,
@@ -1813,7 +1803,6 @@ static const struct qmp_phy_cfg sm8150_usb3_uniphy_cfg = {
 
 	.start_ctrl		= SERDES_START | PCS_START,
 	.pwrdn_ctrl		= SW_PWRDN,
-	.phy_status		= PHYSTATUS,
 
 	.has_pwrdn_delay	= true,
 };
@@ -1842,7 +1831,6 @@ static const struct qmp_phy_cfg sm8250_usb3phy_cfg = {
 
 	.start_ctrl		= SERDES_START | PCS_START,
 	.pwrdn_ctrl		= SW_PWRDN,
-	.phy_status		= PHYSTATUS,
 
 	.has_pwrdn_delay	= true,
 	.has_phy_dp_com_ctrl	= true,
@@ -1872,7 +1860,6 @@ static const struct qmp_phy_cfg sm8250_usb3_uniphy_cfg = {
 
 	.start_ctrl		= SERDES_START | PCS_START,
 	.pwrdn_ctrl		= SW_PWRDN,
-	.phy_status		= PHYSTATUS,
 
 	.has_pwrdn_delay	= true,
 };
@@ -1901,7 +1888,6 @@ static const struct qmp_phy_cfg sdx55_usb3_uniphy_cfg = {
 
 	.start_ctrl		= SERDES_START | PCS_START,
 	.pwrdn_ctrl		= SW_PWRDN,
-	.phy_status		= PHYSTATUS,
 
 	.has_pwrdn_delay	= true,
 };
@@ -1930,7 +1916,6 @@ static const struct qmp_phy_cfg sdx65_usb3_uniphy_cfg = {
 
 	.start_ctrl		= SERDES_START | PCS_START,
 	.pwrdn_ctrl		= SW_PWRDN,
-	.phy_status		= PHYSTATUS,
 
 	.has_pwrdn_delay	= true,
 };
@@ -1959,7 +1944,6 @@ static const struct qmp_phy_cfg sm8350_usb3phy_cfg = {
 
 	.start_ctrl		= SERDES_START | PCS_START,
 	.pwrdn_ctrl		= SW_PWRDN,
-	.phy_status		= PHYSTATUS,
 
 	.has_pwrdn_delay	= true,
 	.has_phy_dp_com_ctrl	= true,
@@ -1989,7 +1973,6 @@ static const struct qmp_phy_cfg sm8350_usb3_uniphy_cfg = {
 
 	.start_ctrl		= SERDES_START | PCS_START,
 	.pwrdn_ctrl		= SW_PWRDN,
-	.phy_status		= PHYSTATUS,
 
 	.has_pwrdn_delay	= true,
 };
@@ -2015,7 +1998,6 @@ static const struct qmp_phy_cfg qcm2290_usb3phy_cfg = {
 
 	.start_ctrl		= SERDES_START | PCS_START,
 	.pwrdn_ctrl		= SW_PWRDN,
-	.phy_status		= PHYSTATUS,
 };
 
 static void qmp_usb_configure_lane(void __iomem *base,
@@ -2147,7 +2129,7 @@ static int qmp_usb_power_on(struct phy *phy)
 	void __iomem *rx = qphy->rx;
 	void __iomem *pcs = qphy->pcs;
 	void __iomem *status;
-	unsigned int mask, val, ready;
+	unsigned int val;
 	int ret;
 
 	qmp_usb_serdes_init(qphy);
@@ -2181,10 +2163,7 @@ static int qmp_usb_power_on(struct phy *phy)
 	qphy_setbits(pcs, cfg->regs[QPHY_START_CTRL], cfg->start_ctrl);
 
 	status = pcs + cfg->regs[QPHY_PCS_STATUS];
-	mask = cfg->phy_status;
-	ready = 0;
-
-	ret = readl_poll_timeout(status, val, (val & mask) == ready, 10,
+	ret = readl_poll_timeout(status, val, !(val & PHYSTATUS), 10,
 				 PHY_INIT_COMPLETE_TIMEOUT);
 	if (ret) {
 		dev_err(qmp->dev, "phy initialization timed-out\n");
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
