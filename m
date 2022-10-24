Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8FF89FA3749
	for <linux-phy@archiver.kernel.org>; Mon, 24 Oct 2022 09:01:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QxFr0Hoq6lYP5rzOs8yPOBMmdFtWu5eVgwe1lmvVEOA=; b=sXW8Xa85+YLbXy
	PVb4JQLKhrsWpwhA4XQGQEtTbr20GrLFKdrCg4DSD1JQY8Tr+7Wf92ilVleI4qVy+w54hcVCp0xCL
	548WAgkHc6YUwK/GhSvphFqw2CLPtFceOz5zz47Zu7eHaB0lu8mz1bvZ3WAr3EbUbqlP1g5D+4PvR
	X7aQw1qKg8TlcQ0v/wFmASwjNEClLEER53vJx81qxOyIuH2fVgPqicP+XjFtazj+ylwPahQe6eQ1l
	TRtd3pgtNqgWeYZwFwktzmZ+P273cjksKpK4O/wH71L8DFdGeogvSaDo+3Gntq4OY2x1e6pk6a82i
	myaEKxKkXqd9UwK2guNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omtL7-000GiP-UV; Mon, 24 Oct 2022 09:01:45 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omtL4-000Ge3-4Q
	for linux-phy@lists.infradead.org; Mon, 24 Oct 2022 09:01:44 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id CF557B80EF2;
	Mon, 24 Oct 2022 09:01:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C4EF7C43140;
	Mon, 24 Oct 2022 09:01:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666602097;
	bh=Tmh6pbvKpEc0/eNCkRs724u74bdzB1yjPkgJEJk9y9c=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=NHEk0KKMkMiHpQe3w3rT7WYhnEGnTXW+mVHEo9TmKYvbOrw+cHSBW1Wmw3dhrXHTv
	 6yxYd+9WRqENiFr7/6oYDQzY+b/SbmLh36Chk3tv4CalCCwk/ib7zOo7BSwD8dokQr
	 cwtUrZjJqWgjXAGMeUZUs4JEzpViRa4KGcC9fzlg8e2+vAOENgYp9i5k5kcTniCZ0Z
	 e+74HtyeXhkstvDz1O9beziqkyjGi69C4TVUAViBNZMa9otuHqrYxydAKyunqZ6jWn
	 kgPWda7XE106CABlC8tLmVRSg8iCLXuujN6Zoy+0I8fxkaEa6j5Da80ENNLow3OQNL
	 aMdlABSt5cD6w==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1omtKj-00056X-E1; Mon, 24 Oct 2022 11:01:21 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 05/10] phy: qcom-qmp-ufs: rename PHY ops structure
Date: Mon, 24 Oct 2022 11:00:36 +0200
Message-Id: <20221024090041.19574-6-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221024090041.19574-1-johan+linaro@kernel.org>
References: <20221024090041.19574-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221024_020142_336892_DBE6B0CE 
X-CRM114-Status: GOOD (  11.61  )
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

Rename the PHY operation structure so that it has a "phy_ops" suffix and
move it next to the implementation.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index 057f9a3fdd6d..90583b87efd1 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -945,6 +945,12 @@ static int qmp_ufs_disable(struct phy *phy)
 	return qmp_ufs_exit(phy);
 }
 
+static const struct phy_ops qcom_qmp_ufs_phy_ops = {
+	.power_on	= qmp_ufs_enable,
+	.power_off	= qmp_ufs_disable,
+	.owner		= THIS_MODULE,
+};
+
 static int qmp_ufs_vreg_init(struct qmp_ufs *qmp)
 {
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
@@ -979,12 +985,6 @@ static int qmp_ufs_clk_init(struct qmp_ufs *qmp)
 	return devm_clk_bulk_get(dev, num, qmp->clks);
 }
 
-static const struct phy_ops qcom_qmp_ufs_ops = {
-	.power_on	= qmp_ufs_enable,
-	.power_off	= qmp_ufs_disable,
-	.owner		= THIS_MODULE,
-};
-
 static int qmp_ufs_create(struct qmp_ufs *qmp, struct device_node *np)
 {
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
@@ -1027,7 +1027,7 @@ static int qmp_ufs_create(struct qmp_ufs *qmp, struct device_node *np)
 	if (IS_ERR(qmp->pcs_misc))
 		dev_vdbg(dev, "PHY pcs_misc-reg not used\n");
 
-	generic_phy = devm_phy_create(dev, np, &qcom_qmp_ufs_ops);
+	generic_phy = devm_phy_create(dev, np, &qcom_qmp_ufs_phy_ops);
 	if (IS_ERR(generic_phy)) {
 		ret = PTR_ERR(generic_phy);
 		dev_err(dev, "failed to create PHY: %d\n", ret);
-- 
2.37.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
