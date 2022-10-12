Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76687C4167B
	for <linux-phy@archiver.kernel.org>; Wed, 12 Oct 2022 08:16:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rKZMBM59ALMXo9MLgDMjbvMloUnzNdLniMVfBCMGVpM=; b=yGDsL5ZKFru1t9
	45MEBkMZef7fBHo3CTgFBtHbGg4d3s7O2qkGBzuCEUkHmluVHnOK8u5JIj1DU5xZbj05aQD31J7J6
	yEr6ZnCz9MNogPRB699Y8gI8F9R2eneqOYk53Yo7A9kZjouHW3iLe62Iwx9ECkh15qFy8ohiiBTTE
	SBTut4gIpiHlnAieukDyoqN/nrcMhqhp1/RWzNBm/HQ39fCnNKhFx0kREB6oR7AIBZlWlLiKWGNWn
	djqoMplq36MtRJhLJuWytcMUCzCYugGWRnzqPUPolv1Uz/gnVUP2NLKu60vgtlhMWeDAVnPYLVXMM
	+utgYmGi1IAa3jvptl9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiWuL-007IXd-Nh; Wed, 12 Oct 2022 08:16:05 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiWuH-007ITX-TP
	for linux-phy@lists.infradead.org; Wed, 12 Oct 2022 08:16:03 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 8A1D06146F;
	Wed, 12 Oct 2022 08:15:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 61EFAC43166;
	Wed, 12 Oct 2022 08:15:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665562555;
	bh=B6Y8geYh7KWwxOGiDhINCWSgJCk5R5cG/Om7WKbybd4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=YuZY7R1+h6oV3CELnigCjSD4xScflSfN2FTOfaUQTbFAvGUpoLz6XUPDpatGbnNhT
	 e0Jogd/RDpZVPC1GmPXJFMgllgGbD1ZO4XXx6pHy3CiOA4Sji9QbdDCmveF3fklonY
	 DSvkkKGC6rcFr5REUu3sTncN3RfjCrdcNJ8GccmPF6Ysb5M8nTOVC0YMvf7/fy5lZV
	 5thnYcNmVEy5NOoenY6Jwv8vgflbtj6mv+hXYG75LDcPm/3JXfhMp8zeweFDrpRmZp
	 k5gOkDRx+OI3VjNoCdifcZJvqDjRkTX7UFS0nctVpDfa17DP3dovbaDD7zN/ExWoeH
	 DI+PZkJ9oeFgQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oiWu3-0004om-0z; Wed, 12 Oct 2022 10:15:47 +0200
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
Subject: [PATCH v2 10/14] phy: qcom-qmp-pcie-msm8996: drop power-down delay config
Date: Wed, 12 Oct 2022 10:12:37 +0200
Message-Id: <20221012081241.18273-11-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221012081241.18273-1-johan+linaro@kernel.org>
References: <20221012081241.18273-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221012_011602_289729_8F84ED2E 
X-CRM114-Status: GOOD (  14.68  )
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

The power-down delay was included in the first version of the QMP driver
for MSM8996 as an optional delay after powering on the PHY (using
POWER_DOWN_CONTROL) and just before starting it. Later changes modified
this sequence by powering on before initialising the PHY, but the
optional delay stayed where it was (i.e. before starting the PHY).

The vendor driver does not use a delay before starting the PHY and this
is likely not needed on any platform unless there is a corresponding
delay in the vendor kernel init sequence tables (i.e. in devicetree).

Let's keep the delay for now, but drop the redundant configuration
options while increasing the unnecessarily low timer slack somewhat.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c | 15 ++-------------
 1 file changed, 2 insertions(+), 13 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
index 31ac405d3785..899be7bd4d92 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
@@ -41,7 +41,7 @@
 
 #define PHY_INIT_COMPLETE_TIMEOUT		10000
 #define POWER_DOWN_DELAY_US_MIN			10
-#define POWER_DOWN_DELAY_US_MAX			11
+#define POWER_DOWN_DELAY_US_MAX			20
 
 struct qmp_phy_init_tbl {
 	unsigned int offset;
@@ -203,12 +203,6 @@ struct qmp_phy_cfg {
 	unsigned int mask_com_pcs_ready;
 	/* bit offset of PHYSTATUS in QPHY_PCS_STATUS register */
 	unsigned int phy_status;
-
-	/* true, if PHY needs delay after POWER_DOWN */
-	bool has_pwrdn_delay;
-	/* power_down delay in usec */
-	int pwrdn_delay_min;
-	int pwrdn_delay_max;
 };
 
 /**
@@ -326,10 +320,6 @@ static const struct qmp_phy_cfg msm8996_pciephy_cfg = {
 	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
 	.mask_com_pcs_ready	= PCS_READY,
 	.phy_status		= PHYSTATUS,
-
-	.has_pwrdn_delay	= true,
-	.pwrdn_delay_min	= POWER_DOWN_DELAY_US_MIN,
-	.pwrdn_delay_max	= POWER_DOWN_DELAY_US_MAX,
 };
 
 static void qmp_pcie_msm8996_configure_lane(void __iomem *base,
@@ -523,8 +513,7 @@ static int qmp_pcie_msm8996_power_on(struct phy *phy)
 	 */
 	qphy_setbits(pcs, QPHY_V2_PCS_POWER_DOWN_CONTROL, cfg->pwrdn_ctrl);
 
-	if (cfg->has_pwrdn_delay)
-		usleep_range(cfg->pwrdn_delay_min, cfg->pwrdn_delay_max);
+	usleep_range(POWER_DOWN_DELAY_US_MIN, POWER_DOWN_DELAY_US_MAX);
 
 	/* Pull PHY out of reset state */
 	qphy_clrbits(pcs, cfg->regs[QPHY_SW_RESET], SW_RESET);
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
