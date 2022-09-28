Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5742C54EE9
	for <linux-phy@archiver.kernel.org>; Wed, 28 Sep 2022 15:28:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u0PrsviSZckEdL0dd1GSMqsGhTLsq8frASJKmALBJLg=; b=bmJdh0TxSEKPkN
	EU6BLpCqv9xuYmdlbJQ+Y2azcJeD/irsvVu/0sOShz8jL5duG63552O+iQtToVwVkfZfkn/BF2oPE
	2iY6pAD4WMGRn7Y8TM15lGBAWM52IWVQtKNQATTRj3lVCPs5ktX0vN+b0FHDLthqSLCXPlDN82KEr
	yWqW0SsdDGR0Wx8SighivZTnAvnAvM6Vh9xpqdMRH7oayGMsUPeQ42Q9UTjyiAQLlUxTsD2o6XTVg
	fRMR9TlhBHspqw3lsIo9OLuzZKtT2LV6kRJgABF3xjlJrBj/HBqqhqoMasOJzKDWq22SXpehTtXgm
	c/FiO3Y4/fwq66T4+5RA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odYzL-00Gtx8-5I; Wed, 28 Sep 2022 15:28:43 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odYzF-00Gtrh-BA
	for linux-phy@lists.infradead.org; Wed, 28 Sep 2022 15:28:40 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 44D1461EFD;
	Wed, 28 Sep 2022 15:28:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E77D0C43140;
	Wed, 28 Sep 2022 15:28:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664378916;
	bh=eQzKq/JPEfw2X1Sdx9ak4sUQJdquDr6vcVCbsZTFJ9g=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=rtJTvgev4jgCkemzBTZrtmCD3kjIODHSGH35FGUHHntNizfguReY0BVRqY40Co/TL
	 Zcr0Z+nqL/xHvcAZRaqAImJOMiQ4pqZo7e6rwd0A07iX9SqU5adI/s9/mehbsflYr2
	 dawC7NVcZhVd25n+joVRS3le9q6aZbv0DHyLwZLSXXWSNVzesLnbHYgyw4h+Ry8MJq
	 ZWCSI0EQ6/RJO6njrm1SuVkU1nXAT2Og4ySSjKtrtgodQPNgghIUFbSIsaDDq84It8
	 GP8F/gmYaJRwgiaGUTaRMja+Fz6L7fkID7xiFkCNIVObiqywDiC/XZEetz8IkZZCos
	 Qm2r83DWypu/Q==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1odYzK-0007zt-Ty; Wed, 28 Sep 2022 17:28:42 +0200
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
Subject: [PATCH 08/13] phy: qcom-qmp-pcie: move power-down update
Date: Wed, 28 Sep 2022 17:28:17 +0200
Message-Id: <20220928152822.30687-9-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220928152822.30687-1-johan+linaro@kernel.org>
References: <20220928152822.30687-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220928_082837_474325_4E688695 
X-CRM114-Status: GOOD (  12.22  )
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

Move the power-down-control register update that powers on the PHY to
the power-on handler so that it matches the power-off handler.

Note that the power-on handler is currently always called directly
after init.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 47cdb9ed80cd..150dc58147ce 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -1848,7 +1848,6 @@ static int qmp_pcie_init(struct phy *phy)
 	struct qmp_phy *qphy = phy_get_drvdata(phy);
 	struct qcom_qmp *qmp = qphy->qmp;
 	const struct qmp_phy_cfg *cfg = qphy->cfg;
-	void __iomem *pcs = qphy->pcs;
 	int ret;
 
 	/* turn on regulator supplies */
@@ -1874,9 +1873,6 @@ static int qmp_pcie_init(struct phy *phy)
 	if (ret)
 		goto err_assert_reset;
 
-	qphy_setbits(pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
-			cfg->pwrdn_ctrl);
-
 	return 0;
 
 err_assert_reset:
@@ -1915,6 +1911,9 @@ static int qmp_pcie_power_on(struct phy *phy)
 	unsigned int mask, val, ready;
 	int ret;
 
+	qphy_setbits(pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
+			cfg->pwrdn_ctrl);
+
 	qmp_pcie_serdes_init(qphy);
 
 	ret = clk_prepare_enable(qphy->pipe_clk);
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
