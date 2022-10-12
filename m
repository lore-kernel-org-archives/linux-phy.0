Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57E9BC43219
	for <linux-phy@archiver.kernel.org>; Wed, 12 Oct 2022 08:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uqTfQsgbS6NBOXscnR9U+3YuFFCmbg3yIRko/p2eeRo=; b=gR+qnoWBPNkALx
	ceYbFtHua9eh24kZTVepbMASA5duv2USjWEDVnWy6sqLNs/QHFPsVTTAB/igZkt8g+O2NA+lzW2hn
	icVNi4MlEikfwL0kr3SI76PgO7aEAk8UhxMnQUnzXQ1X0xfTTydLbNbeON6gTs0DyxeuxWyrJG+NU
	V0/orV3P57GqIZO21oeLSA7heWTF6eN0sw9xbxp71YVRJ1yNJQTfl0SNj02FkxqblzqGNaXU4YA2T
	fOmo++uifMQ/q9eLhzZeKcF7s1E4rkL1BexLFeVuXBQ4btgiD6n3x6V8FC1UDGJRNzPxHqh9zWxgW
	2MioK+9wwKDUfyodYgWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiXRw-007Q8R-Ob; Wed, 12 Oct 2022 08:50:50 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiXRo-007Q18-T5
	for linux-phy@lists.infradead.org; Wed, 12 Oct 2022 08:50:43 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 4D2FA61489;
	Wed, 12 Oct 2022 08:50:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0F1B3C43152;
	Wed, 12 Oct 2022 08:50:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665564639;
	bh=xh/48riPxxrksVO8sUXV43vCkvfHT7+7zX2NHhbvI8w=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Je0iX9yBUJYvYHTEbNPZTk6Y80QUCBqqAn6Zp4phvFg4cWnmqMwCFIxH0YOvv5Ji7
	 xJ94esdyqpbbYSxx17ykr5TCDeqtuEm/qOJXOCkFnLQ/De9AjP5bIzfehXsSuKksYq
	 wytVN+mganwX4O3fxXJ+G6rr6vvlbf7At9Nhy4JqlniLJqZGhZb0UZWPf2pzil5EPp
	 DKjTJy9dHS9PCXuvhF5WkZC+wWciBZFPWoQVf9Ir4yAoQMhIIHVOW0Yb8VfZO9+pKq
	 EuqzaqupV8wTwNdwjqd7MWjwFfT1D2UizVsls4y1kFzQP7oHY/gUovGL9IH9LH5PFm
	 TpLVF42rQA9rA==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oiXRe-0006Hp-O8; Wed, 12 Oct 2022 10:50:30 +0200
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
Subject: [PATCH 08/20] phy: qcom-qmp-combo: clean up status polling
Date: Wed, 12 Oct 2022 10:49:50 +0200
Message-Id: <20221012085002.24099-8-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221012085002.24099-1-johan+linaro@kernel.org>
References: <20221012084846.24003-1-johan+linaro@kernel.org>
 <20221012085002.24099-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221012_015041_031109_6A01F52A 
X-CRM114-Status: GOOD (  12.99  )
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
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 14 ++------------
 1 file changed, 2 insertions(+), 12 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 82055d3a3536..e312cad6d9c2 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -853,8 +853,6 @@ struct qmp_phy_cfg {
 
 	unsigned int start_ctrl;
 	unsigned int pwrdn_ctrl;
-	/* bit offset of PHYSTATUS in QPHY_PCS_STATUS register */
-	unsigned int phy_status;
 
 	/* true, if PHY needs delay after POWER_DOWN */
 	bool has_pwrdn_delay;
@@ -1023,7 +1021,6 @@ static const struct qmp_phy_cfg sc7180_usb3phy_cfg = {
 
 	.start_ctrl		= SERDES_START | PCS_START,
 	.pwrdn_ctrl		= SW_PWRDN,
-	.phy_status		= PHYSTATUS,
 
 	.has_pwrdn_delay	= true,
 };
@@ -1092,7 +1089,6 @@ static const struct qmp_phy_cfg sdm845_usb3phy_cfg = {
 
 	.start_ctrl		= SERDES_START | PCS_START,
 	.pwrdn_ctrl		= SW_PWRDN,
-	.phy_status		= PHYSTATUS,
 
 	.has_pwrdn_delay	= true,
 };
@@ -1127,7 +1123,6 @@ static const struct qmp_phy_cfg sm8150_usb3phy_cfg = {
 
 	.start_ctrl		= SERDES_START | PCS_START,
 	.pwrdn_ctrl		= SW_PWRDN,
-	.phy_status		= PHYSTATUS,
 
 	.has_pwrdn_delay	= true,
 };
@@ -1197,7 +1192,6 @@ static const struct qmp_phy_cfg sc8280xp_usb43dp_usb_cfg = {
 
 	.start_ctrl		= SERDES_START | PCS_START,
 	.pwrdn_ctrl		= SW_PWRDN,
-	.phy_status		= PHYSTATUS,
 };
 
 static const struct qmp_phy_cfg sc8280xp_usb43dp_dp_cfg = {
@@ -1267,7 +1261,6 @@ static const struct qmp_phy_cfg sm8250_usb3phy_cfg = {
 
 	.start_ctrl		= SERDES_START | PCS_START,
 	.pwrdn_ctrl		= SW_PWRDN,
-	.phy_status		= PHYSTATUS,
 
 	.has_pwrdn_delay	= true,
 };
@@ -2017,7 +2010,7 @@ static int qmp_combo_power_on(struct phy *phy)
 	void __iomem *rx = qphy->rx;
 	void __iomem *pcs = qphy->pcs;
 	void __iomem *status;
-	unsigned int mask, val, ready;
+	unsigned int val;
 	int ret;
 
 	qmp_combo_serdes_init(qphy);
@@ -2059,10 +2052,7 @@ static int qmp_combo_power_on(struct phy *phy)
 		qphy_setbits(pcs, cfg->regs[QPHY_START_CTRL], cfg->start_ctrl);
 
 		status = pcs + cfg->regs[QPHY_PCS_STATUS];
-		mask = cfg->phy_status;
-		ready = 0;
-
-		ret = readl_poll_timeout(status, val, (val & mask) == ready, 10,
+		ret = readl_poll_timeout(status, val, !(val & PHYSTATUS), 10,
 					 PHY_INIT_COMPLETE_TIMEOUT);
 		if (ret) {
 			dev_err(qmp->dev, "phy initialization timed-out\n");
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
