Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31B8DC433FE
	for <linux-phy@archiver.kernel.org>; Mon, 17 Oct 2022 06:50:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oDq9ZIzbBhAEpoaRs7heOWJYmSMny8W7l17F6FK/B/M=; b=QKcPPKOdezFdNo
	8FyLSFPTmcsrCZKl8RqaraPxbJXSaAnMVLMeNZk0UoWUMp2wHTVGIEC+Yd+y5A/K14PWgD6eQDn7c
	cCObkqb2C7E2GhewlYQXoB0kxZf5j2UZUFArgP2Oo2ky0on8Mh8u1Obh6d79qwa6gc5rYxNo2d9Oy
	oX4i+fOdpuIBIIuNXqs8Bapa2SDVfcIgQjhWDuKb0WrQMgh9c1M1Z721Nsa8OByZwOgZANtFmDVw+
	keb4QnGXqs52xaIp7KxacjS4jmPtNBj6xX+QTswf1brr1k6b5kILXzwK+mCJcUUdTq7Pxh175LXao
	oZhmiQ4XcZ4LgxzeU27w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okJxV-00892G-IO; Mon, 17 Oct 2022 06:50:45 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okJxS-0088vE-V4
	for linux-phy@lists.infradead.org; Mon, 17 Oct 2022 06:50:44 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 8948860F3E;
	Mon, 17 Oct 2022 06:50:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C8553C43470;
	Mon, 17 Oct 2022 06:50:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665989440;
	bh=kOgCXcGyHB8eids12qXfKQV+4R4gdT0Lz+7oWPyNCj4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=dMY0/SiTcOGP860yFX29bSbsnEEwfRbS3+Z7/9tpfahBRIwQ++qrWHcrGM80elQ3X
	 f0xiq1kNrnEh5JJnOFnzrIIjWwl2rHbJsukKwSzv+8t3XhHwFYTZxNgj9tsIzDxEhD
	 L2vmQbVvp8LrGCYKQVLVpPg1wVPlJgYAkTaMpqJc9hXpdx6U0J5Cax3cPShaUp45XS
	 zdojWp+nPCjvi/OI04FbOPYbDj5ofXrkprjk0vYQ/+tuRJh2LS46CB4iWB1atBvJH+
	 BSIkr4bPEn1YBjv0ZPtsoGaGI2zyvspsfX7kIN/WnyGzwxZtLmIJSCspKujG7Gunu6
	 5mIqfvvJDeR0g==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1okJxG-00057f-If; Mon, 17 Oct 2022 08:50:30 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH v3 05/11] phy: qcom-qmp-pcie: move power-down update
Date: Mon, 17 Oct 2022 08:50:07 +0200
Message-Id: <20221017065013.19647-6-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221017065013.19647-1-johan+linaro@kernel.org>
References: <20221017065013.19647-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221016_235043_064564_96BD972E 
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

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 1105d439828c..b42c5e185228 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -1976,7 +1976,6 @@ static int qmp_pcie_init(struct phy *phy)
 	struct qmp_phy *qphy = phy_get_drvdata(phy);
 	struct qcom_qmp *qmp = qphy->qmp;
 	const struct qmp_phy_cfg *cfg = qphy->cfg;
-	void __iomem *pcs = qphy->pcs;
 	int ret;
 
 	/* turn on regulator supplies */
@@ -2002,9 +2001,6 @@ static int qmp_pcie_init(struct phy *phy)
 	if (ret)
 		goto err_assert_reset;
 
-	qphy_setbits(pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
-			cfg->pwrdn_ctrl);
-
 	return 0;
 
 err_assert_reset:
@@ -2041,6 +2037,9 @@ static int qmp_pcie_power_on(struct phy *phy)
 	unsigned int mask, val, ready;
 	int ret;
 
+	qphy_setbits(pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
+			cfg->pwrdn_ctrl);
+
 	if (qphy->mode == PHY_MODE_PCIE_RC)
 		mode_tables = cfg->tables_rc;
 	else
-- 
2.37.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
