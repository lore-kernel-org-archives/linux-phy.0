Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0E740C6FA92
	for <linux-phy@archiver.kernel.org>; Tue, 20 Sep 2022 07:39:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fIFSaq0kUtbuOsEx1dVmqITQehixL4gSadgtc2pUTKA=; b=tX9MWRMBNi7deA
	7BQAhUXfmXHv+bW1iJekzH04+Kg42YqZoguCgXWFKYA06SaCdPak7JQlF9CUX+FaoxURVFrdEwcUC
	KC9gxXlbJuiGSp9U1VnB/4kyqc66K7M+jmm9gJZ5JjdcC5ACkO8qt40porBhUSKzv+IThK8GURT4V
	e7x4lwtukPbK1/9DREWSUulYn72P3FCIig7iADP5nINgkjB+pLeGxTz129EygNw3laGEoP4/AASs+
	7Q6iDdRO1Eo8kEdpz3wGiGx0JKq7egcaHZSb1x7q8yzz51zc5GzKb8GmOeI51iCB7TPsU+haX4o6m
	m1RmKNDtsxM1cZptW9lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaXqT-001QZQ-AT; Tue, 20 Sep 2022 07:39:05 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaXqP-001QTr-Lo
	for linux-phy@lists.infradead.org; Tue, 20 Sep 2022 07:39:02 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 4488E624EF;
	Tue, 20 Sep 2022 07:39:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 24FBCC43140;
	Tue, 20 Sep 2022 07:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663659539;
	bh=K+BfnWQLrlylNxKUw3danjgFngQqMpiDXDbH2n7HI14=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=P83L7sSyk+N0JOLm1dy5fRTWp0p/0WLNFLKfb9s80ND0u963zWz+MqL0BqeM+xPVi
	 8tW6FAZnagHNJbwx64nTxkch3UP0NLZOiY7SBMWeGCGNSZ6qQlUHkz/X+yzPCOKbZr
	 z1fb5roj+SKerD45Zt3GY4jGjyzPANPod4boJailrgRiyUL4AIjXAPOPIMAWtYdf3a
	 05M6QLFkX5vCUQABI8lgAunAktIWAvr2bjYaRmUki7jwICuFvFx+tioJNahrpbJQiQ
	 4Ws+NH6HLJGQoG+dY5Sob3yldZMJ3agVbSS/2lUB9FjLYFdKmKKTtpbtfktftb+QLD
	 W3Urp2Y/fPIXQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oaXqP-0005Qm-N8; Tue, 20 Sep 2022 09:39:01 +0200
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
Subject: [PATCH 05/17] phy: qcom-qmp-pcie: drop init and exit wrappers
Date: Tue, 20 Sep 2022 09:38:14 +0200
Message-Id: <20220920073826.20811-6-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220920073826.20811-1-johan+linaro@kernel.org>
References: <20220920073826.20811-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_003901_766678_FC7510CB 
X-CRM114-Status: GOOD (  11.38  )
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

Drop the unnecessary PHY init and exit callback wrappers.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 29 ++++--------------------
 1 file changed, 4 insertions(+), 25 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index d25f9215b86f..525097e3b041 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -1877,8 +1877,9 @@ static int qmp_pcie_serdes_init(struct qmp_phy *qphy)
 	return 0;
 }
 
-static int qmp_pcie_com_init(struct qmp_phy *qphy)
+static int qmp_pcie_init(struct phy *phy)
 {
+	struct qmp_phy *qphy = phy_get_drvdata(phy);
 	struct qcom_qmp *qmp = qphy->qmp;
 	const struct qmp_phy_cfg *cfg = qphy->cfg;
 	void __iomem *pcs = qphy->pcs;
@@ -1925,8 +1926,9 @@ static int qmp_pcie_com_init(struct qmp_phy *qphy)
 	return ret;
 }
 
-static int qmp_pcie_com_exit(struct qmp_phy *qphy)
+static int qmp_pcie_exit(struct phy *phy)
 {
+	struct qmp_phy *qphy = phy_get_drvdata(phy);
 	struct qcom_qmp *qmp = qphy->qmp;
 	const struct qmp_phy_cfg *cfg = qphy->cfg;
 
@@ -1939,20 +1941,6 @@ static int qmp_pcie_com_exit(struct qmp_phy *qphy)
 	return 0;
 }
 
-static int qmp_pcie_init(struct phy *phy)
-{
-	struct qmp_phy *qphy = phy_get_drvdata(phy);
-	struct qcom_qmp *qmp = qphy->qmp;
-	int ret;
-	dev_vdbg(qmp->dev, "Initializing QMP phy\n");
-
-	ret = qmp_pcie_com_init(qphy);
-	if (ret)
-		return ret;
-
-	return 0;
-}
-
 static int qmp_pcie_power_on(struct phy *phy)
 {
 	struct qmp_phy *qphy = phy_get_drvdata(phy);
@@ -2060,15 +2048,6 @@ static int qmp_pcie_power_off(struct phy *phy)
 	return 0;
 }
 
-static int qmp_pcie_exit(struct phy *phy)
-{
-	struct qmp_phy *qphy = phy_get_drvdata(phy);
-
-	qmp_pcie_com_exit(qphy);
-
-	return 0;
-}
-
 static int qmp_pcie_enable(struct phy *phy)
 {
 	int ret;
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
