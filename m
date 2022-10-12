Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 54327C4332F
	for <linux-phy@archiver.kernel.org>; Wed, 12 Oct 2022 08:50:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/+PZHT3p9TMOQFd2D2szgIkd3ujVNPD16KOFoKl8eok=; b=cuhmK0lANvpwsS
	56uWLQTfC0YKwIJ5s158RfmfnT4KBy+p5pwMIU5tc2wLCv3BJuRn1buVjuShw0mKrtvrfQdT6rERQ
	3RgrZdnIr0z7l3udLj2V+wQgJ9GchrD0g9cHANEr5BboYOe0kmqQf0GBukzU7WdK8epbOOA3KmWGf
	Agjb+JTD0PtV3NnnbXmhlmz1ruxeKE2PfUvpYRkMJM8a9Mw2L6effb/dmNV6lUs4dLPhU/UYkDsez
	qcaNeW4AJ41JWm7ffANOZCU+fv/z75H6laZAJD4zovGXCtYSY6PSsu5FOsOB+wDZciG/Ckwb5GFDW
	urIU6X0ADEGjGZVhQ0Gw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiXRs-007Q6h-Mx; Wed, 12 Oct 2022 08:50:44 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiXRo-007Q16-T6
	for linux-phy@lists.infradead.org; Wed, 12 Oct 2022 08:50:42 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 2D5446148C;
	Wed, 12 Oct 2022 08:50:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 06F90C43149;
	Wed, 12 Oct 2022 08:50:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665564639;
	bh=j091Sqs8HEJc78tMWY2dRxB2XsEU9gn3lUCPU2crSpc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=pAQAch98ha1mfbhWU0PmeZjGflOKzssPKmONxObEBSynh5ct2ZjuMihRdkN5n0E4p
	 Fen9t8CGGt4N4sY4/Flea3cISuigtTn3mO7ee37Td4ayovFXuk910Vxe2FvkUSZgMC
	 IYar2URtLXDMyNcIUQMtE/9C13IkQ2r4PCGM8ISNPcDuPKW1RT97kyPFzC1LG/zCMa
	 0of9Lx9es6tAJC7CnM2OyY8pnnYPFYI9qJ8VMOItoOWv+HBrVbtyVuWDSwG5+aITvE
	 gSfSgzpT3Oqh+CJU9vL4QKa8msVUDCb6LNgl/qOAkinMyj49VWu7Its8lleJtovnkM
	 b7nosqbw67kpQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oiXRe-0006Hm-Lc; Wed, 12 Oct 2022 10:50:30 +0200
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
Subject: [PATCH 07/20] phy: qcom-qmp-pcie-msm8996: increase status polling period
Date: Wed, 12 Oct 2022 10:49:49 +0200
Message-Id: <20221012085002.24099-7-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221012085002.24099-1-johan+linaro@kernel.org>
References: <20221012084846.24003-1-johan+linaro@kernel.org>
 <20221012085002.24099-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221012_015040_991294_8312F057 
X-CRM114-Status: GOOD (  10.86  )
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

It typically takes between one and two milliseconds for the PHY to
become ready after starting it. Increase the tight 3--10 us polling
period to the more reasonable 51--200 us.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
index b9260c8746bf..cd8fafe4c295 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
@@ -360,7 +360,7 @@ static int qmp_pcie_msm8996_serdes_init(struct qmp_phy *qphy)
 		     SERDES_START | PCS_START);
 
 	status = serdes + cfg->regs[QPHY_COM_PCS_READY_STATUS];
-	ret = readl_poll_timeout(status, val, (val & PCS_READY), 10,
+	ret = readl_poll_timeout(status, val, (val & PCS_READY), 200,
 				 PHY_INIT_COMPLETE_TIMEOUT);
 	if (ret) {
 		dev_err(qmp->dev,
@@ -514,7 +514,7 @@ static int qmp_pcie_msm8996_power_on(struct phy *phy)
 	qphy_setbits(pcs, cfg->regs[QPHY_START_CTRL], cfg->start_ctrl);
 
 	status = pcs + cfg->regs[QPHY_PCS_STATUS];
-	ret = readl_poll_timeout(status, val, !(val & PHYSTATUS), 10,
+	ret = readl_poll_timeout(status, val, !(val & PHYSTATUS), 200,
 				 PHY_INIT_COMPLETE_TIMEOUT);
 	if (ret) {
 		dev_err(qmp->dev, "phy initialization timed-out\n");
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
