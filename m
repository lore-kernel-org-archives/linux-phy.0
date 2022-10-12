Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73A48C38A2C
	for <linux-phy@archiver.kernel.org>; Wed, 12 Oct 2022 08:50:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HGFfuNjQ7Pp9yxmZVCjcdgy/G7V6eHyKr3/K7cq5Xvc=; b=Yn2LTkANIfS9ca
	s0uAWIg6mvabqf2DJZnbCe0LN36b+Bc267UeNvMaYLBmkWHZuQbymWfZejiJR33C/eK/azlg9YpNp
	h5yRsq1tyx5s/MOZSgE5d7et20cajdR2BVT1jOcQ768k93+UTIzCASbUCtcMd/98fvVbq4L6eQ3yx
	PVqpokzSvxM+5dqX9Dmhe4qhLygw0AGTM6nQwED3AcDIBKlUGD4T4KnGT/Dy67D8E+lpRBGAm0g2L
	KecIAv6NEhVzYrtR4i3bqk66vcueP+Z7QA/2aOKH8lqKP7fEWYuMDmEbpRFyDtpXLSUIVfueoincc
	5tSk03j/j1w5TIvhIAnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiXS6-007QDM-QB; Wed, 12 Oct 2022 08:50:58 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiXRr-007Q21-Fw
	for linux-phy@lists.infradead.org; Wed, 12 Oct 2022 08:50:48 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 6A11D614A1;
	Wed, 12 Oct 2022 08:50:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 13F17C43470;
	Wed, 12 Oct 2022 08:50:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665564640;
	bh=CJiFugk3JutIkty+xFhq8GQC1jyF4iuWYXZTcn07R9k=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=FiuzhvkpiHfa8Lr42xyWiO1n93cgG3nFavCcCImi19FeQ0ts6aSs8OKhk3ZcgOpQA
	 Tjf35WjTJVSyMCzBrZaQ5IvvKr9Om2DjTkQ9PXtwxBfXXweJ8CLL3f/0IEYKoGC+FU
	 UPWv0y+c/cFRbehz7LWkYRrmGX/jtILLvT1CjDSuBUxhLYwNxwnR9I0Hhph4UduDrE
	 munrACS0IASkPDqn91x3dGT/Z7oStFU365EaUzTpvtoskjlxcL4exN5W9YLMq38EOf
	 Oz4IwEiPHz/Orb8dENe4UWPruYIJ8ewmRhUh0k0eSV8GqDiPL5JrgkEL9rIeKR3ZzL
	 OFNsXAUqwgeIg==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oiXRf-0006IQ-PW; Wed, 12 Oct 2022 10:50:31 +0200
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
Subject: [PATCH 20/20] phy: qcom-qmp-usb: drop start and pwrdn-ctrl abstraction
Date: Wed, 12 Oct 2022 10:50:02 +0200
Message-Id: <20221012085002.24099-20-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221012085002.24099-1-johan+linaro@kernel.org>
References: <20221012084846.24003-1-johan+linaro@kernel.org>
 <20221012085002.24099-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221012_015043_682331_2F76E33C 
X-CRM114-Status: GOOD (  13.29  )
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

Drop the start and pwrdn-ctrl abstractions which are no longer needed
since the QMP driver split.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 61 ++-----------------------
 1 file changed, 5 insertions(+), 56 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index 0bd9291e6a7b..d0c433197080 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -1443,9 +1443,6 @@ struct qmp_phy_cfg {
 	/* array of registers with different offsets */
 	const unsigned int *regs;
 
-	unsigned int start_ctrl;
-	unsigned int pwrdn_ctrl;
-
 	/* true, if PHY needs delay after POWER_DOWN */
 	bool has_pwrdn_delay;
 
@@ -1599,9 +1596,6 @@ static const struct qmp_phy_cfg ipq8074_usb3phy_cfg = {
 	.vreg_list		= qmp_phy_vreg_l,
 	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
 	.regs			= usb3phy_regs_layout,
-
-	.start_ctrl		= SERDES_START | PCS_START,
-	.pwrdn_ctrl		= SW_PWRDN,
 };
 
 static const struct qmp_phy_cfg msm8996_usb3phy_cfg = {
@@ -1622,9 +1616,6 @@ static const struct qmp_phy_cfg msm8996_usb3phy_cfg = {
 	.vreg_list		= qmp_phy_vreg_l,
 	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
 	.regs			= usb3phy_regs_layout,
-
-	.start_ctrl		= SERDES_START | PCS_START,
-	.pwrdn_ctrl		= SW_PWRDN,
 };
 
 static const struct qmp_phy_cfg qmp_v3_usb3phy_cfg = {
@@ -1646,9 +1637,6 @@ static const struct qmp_phy_cfg qmp_v3_usb3phy_cfg = {
 	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
 	.regs			= qmp_v3_usb3phy_regs_layout,
 
-	.start_ctrl		= SERDES_START | PCS_START,
-	.pwrdn_ctrl		= SW_PWRDN,
-
 	.has_pwrdn_delay	= true,
 	.has_phy_dp_com_ctrl	= true,
 };
@@ -1672,9 +1660,6 @@ static const struct qmp_phy_cfg sc7180_usb3phy_cfg = {
 	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
 	.regs			= qmp_v3_usb3phy_regs_layout,
 
-	.start_ctrl		= SERDES_START | PCS_START,
-	.pwrdn_ctrl		= SW_PWRDN,
-
 	.has_pwrdn_delay	= true,
 	.has_phy_dp_com_ctrl	= true,
 };
@@ -1697,9 +1682,6 @@ static const struct qmp_phy_cfg sc8280xp_usb3_uniphy_cfg = {
 	.vreg_list		= qmp_phy_vreg_l,
 	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
 	.regs			= qmp_v4_usb3phy_regs_layout,
-
-	.start_ctrl		= SERDES_START | PCS_START,
-	.pwrdn_ctrl		= SW_PWRDN,
 };
 
 static const struct qmp_phy_cfg qmp_v3_usb3_uniphy_cfg = {
@@ -1721,9 +1703,6 @@ static const struct qmp_phy_cfg qmp_v3_usb3_uniphy_cfg = {
 	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
 	.regs			= qmp_v3_usb3phy_regs_layout,
 
-	.start_ctrl		= SERDES_START | PCS_START,
-	.pwrdn_ctrl		= SW_PWRDN,
-
 	.has_pwrdn_delay	= true,
 };
 
@@ -1745,9 +1724,6 @@ static const struct qmp_phy_cfg msm8998_usb3phy_cfg = {
 	.vreg_list              = qmp_phy_vreg_l,
 	.num_vregs              = ARRAY_SIZE(qmp_phy_vreg_l),
 	.regs                   = qmp_v3_usb3phy_regs_layout,
-
-	.start_ctrl             = SERDES_START | PCS_START,
-	.pwrdn_ctrl             = SW_PWRDN,
 };
 
 static const struct qmp_phy_cfg sm8150_usb3phy_cfg = {
@@ -1772,9 +1748,6 @@ static const struct qmp_phy_cfg sm8150_usb3phy_cfg = {
 	.regs			= qmp_v4_usb3phy_regs_layout,
 	.pcs_usb_offset		= 0x300,
 
-	.start_ctrl		= SERDES_START | PCS_START,
-	.pwrdn_ctrl		= SW_PWRDN,
-
 	.has_pwrdn_delay	= true,
 	.has_phy_dp_com_ctrl	= true,
 };
@@ -1801,9 +1774,6 @@ static const struct qmp_phy_cfg sm8150_usb3_uniphy_cfg = {
 	.regs			= qmp_v4_usb3phy_regs_layout,
 	.pcs_usb_offset		= 0x600,
 
-	.start_ctrl		= SERDES_START | PCS_START,
-	.pwrdn_ctrl		= SW_PWRDN,
-
 	.has_pwrdn_delay	= true,
 };
 
@@ -1829,9 +1799,6 @@ static const struct qmp_phy_cfg sm8250_usb3phy_cfg = {
 	.regs			= qmp_v4_usb3phy_regs_layout,
 	.pcs_usb_offset		= 0x300,
 
-	.start_ctrl		= SERDES_START | PCS_START,
-	.pwrdn_ctrl		= SW_PWRDN,
-
 	.has_pwrdn_delay	= true,
 	.has_phy_dp_com_ctrl	= true,
 };
@@ -1858,9 +1825,6 @@ static const struct qmp_phy_cfg sm8250_usb3_uniphy_cfg = {
 	.regs			= qmp_v4_usb3phy_regs_layout,
 	.pcs_usb_offset		= 0x600,
 
-	.start_ctrl		= SERDES_START | PCS_START,
-	.pwrdn_ctrl		= SW_PWRDN,
-
 	.has_pwrdn_delay	= true,
 };
 
@@ -1886,9 +1850,6 @@ static const struct qmp_phy_cfg sdx55_usb3_uniphy_cfg = {
 	.regs			= qmp_v4_usb3phy_regs_layout,
 	.pcs_usb_offset		= 0x600,
 
-	.start_ctrl		= SERDES_START | PCS_START,
-	.pwrdn_ctrl		= SW_PWRDN,
-
 	.has_pwrdn_delay	= true,
 };
 
@@ -1914,9 +1875,6 @@ static const struct qmp_phy_cfg sdx65_usb3_uniphy_cfg = {
 	.regs			= qmp_v4_usb3phy_regs_layout,
 	.pcs_usb_offset		= 0x1000,
 
-	.start_ctrl		= SERDES_START | PCS_START,
-	.pwrdn_ctrl		= SW_PWRDN,
-
 	.has_pwrdn_delay	= true,
 };
 
@@ -1942,9 +1900,6 @@ static const struct qmp_phy_cfg sm8350_usb3phy_cfg = {
 	.regs			= qmp_v4_usb3phy_regs_layout,
 	.pcs_usb_offset		= 0x300,
 
-	.start_ctrl		= SERDES_START | PCS_START,
-	.pwrdn_ctrl		= SW_PWRDN,
-
 	.has_pwrdn_delay	= true,
 	.has_phy_dp_com_ctrl	= true,
 };
@@ -1971,9 +1926,6 @@ static const struct qmp_phy_cfg sm8350_usb3_uniphy_cfg = {
 	.regs			= qmp_v4_usb3phy_regs_layout,
 	.pcs_usb_offset		= 0x1000,
 
-	.start_ctrl		= SERDES_START | PCS_START,
-	.pwrdn_ctrl		= SW_PWRDN,
-
 	.has_pwrdn_delay	= true,
 };
 
@@ -1995,9 +1947,6 @@ static const struct qmp_phy_cfg qcm2290_usb3phy_cfg = {
 	.vreg_list		= qmp_phy_vreg_l,
 	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
 	.regs			= qcm2290_usb3phy_regs_layout,
-
-	.start_ctrl		= SERDES_START | PCS_START,
-	.pwrdn_ctrl		= SW_PWRDN,
 };
 
 static void qmp_usb_configure_lane(void __iomem *base,
@@ -2092,8 +2041,7 @@ static int qmp_usb_init(struct phy *phy)
 		qphy_clrbits(dp_com, QPHY_V3_DP_COM_SW_RESET, SW_RESET);
 	}
 
-	qphy_setbits(pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
-			cfg->pwrdn_ctrl);
+	qphy_setbits(pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL], SW_PWRDN);
 
 	return 0;
 
@@ -2160,7 +2108,7 @@ static int qmp_usb_power_on(struct phy *phy)
 	qphy_clrbits(pcs, cfg->regs[QPHY_SW_RESET], SW_RESET);
 
 	/* start SerDes and Phy-Coding-Sublayer */
-	qphy_setbits(pcs, cfg->regs[QPHY_START_CTRL], cfg->start_ctrl);
+	qphy_setbits(pcs, cfg->regs[QPHY_START_CTRL], SERDES_START | PCS_START);
 
 	status = pcs + cfg->regs[QPHY_PCS_STATUS];
 	ret = readl_poll_timeout(status, val, !(val & PHYSTATUS), 200,
@@ -2189,11 +2137,12 @@ static int qmp_usb_power_off(struct phy *phy)
 	qphy_setbits(qphy->pcs, cfg->regs[QPHY_SW_RESET], SW_RESET);
 
 	/* stop SerDes and Phy-Coding-Sublayer */
-	qphy_clrbits(qphy->pcs, cfg->regs[QPHY_START_CTRL], cfg->start_ctrl);
+	qphy_clrbits(qphy->pcs, cfg->regs[QPHY_START_CTRL],
+			SERDES_START | PCS_START);
 
 	/* Put PHY into POWER DOWN state: active low */
 	qphy_clrbits(qphy->pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
-			cfg->pwrdn_ctrl);
+			SW_PWRDN);
 
 	return 0;
 }
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
