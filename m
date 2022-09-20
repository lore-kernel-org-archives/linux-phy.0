Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ECC34C6FA93
	for <linux-phy@archiver.kernel.org>; Tue, 20 Sep 2022 07:39:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6WsFyuhMEkgJnCxJ0noCfsLsUjWd/828W5npaGyhF7s=; b=j4yZCSYszZ+wkh
	/uPsqR3Susku3dKmFrSDNFVMa0Z0AoT2Wx5j8Cs5SfYRJfVTSgYjRK58CfzjdlWM3SMBfxLqoC7X8
	R67DixnG9Dz89FKuxaqWkF1SLzJcmkh0IgU1euKBphoCW9yp+oludimu5UX/TNpnSlXoO/Qpja884
	DNJ+PSacpafmRJ9wqYXYhZbbmwFfcRSbeAKemq4RZnkV4hNM+7cQx3KS+M2WCzBgX5uhBXmvZdOFu
	++kTgap4EsrPq8hrM3S86Sj+TzztUlRLG2L4dDPWPGdrDMHM77bEj/lKm/N8Iq9kLZ5Q1TNYPvyjd
	R8Hw1p27rvLTvBeEeuiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaXqX-001Qdl-6q; Tue, 20 Sep 2022 07:39:09 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaXqR-001QUY-8v
	for linux-phy@lists.infradead.org; Tue, 20 Sep 2022 07:39:06 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id F118A6250C;
	Tue, 20 Sep 2022 07:39:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A2839C4FF07;
	Tue, 20 Sep 2022 07:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663659539;
	bh=eguzelNkWbY6y8/Ed+NE/WQQJvZhJ3BmpfHcj567dng=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=cJ20mgbpoeS0rn4vbauimQ7nJ08aGNvp8BWyWzPC9yNEBwgqZ+yxZ7j631nMcAiKg
	 +YSTzdDzdFeJJFe9R9Yvy4WmhB2AkXCTYGnV2H1rMgRqF2zTmEaIhvXBPjp8F/A826
	 ukbDquJD+pawlGFuB0o7baz48X/n2iSGu0XDxn9vRT05wWPnaobvs+jC7Mn+Y2rCB2
	 vxLw6G3v1Rq9YMdZRF3fcr58jQuB/9Coa09KrFZ8GPJkaOs2WnF7NVdp7hE+jtsmHU
	 iBhMoX2pZDtYZJuK72vkRMaFW8UbFGe5yLqyMTY/7bcYe7obZr2zAj5JvhX0QRPdWz
	 ltsc+W+bsCQUQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oaXqQ-0005RC-DW; Tue, 20 Sep 2022 09:39:02 +0200
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
Subject: [PATCH 13/17] phy: qcom-qmp-pcie-msm8996: rename nlanes config
Date: Tue, 20 Sep 2022 09:38:22 +0200
Message-Id: <20220920073826.20811-14-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220920073826.20811-1-johan+linaro@kernel.org>
References: <20220920073826.20811-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_003903_519777_8F81AA0E 
X-CRM114-Status: GOOD (  14.34  )
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

The nlanes configuration parameter is really the number of PHYs provided
by this QMP block on MSM8996. Rename it accordingly.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
index e261837aee32..0f8e739936ab 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
@@ -186,8 +186,8 @@ static const struct qmp_phy_init_tbl msm8996_pcie_pcs_tbl[] = {
 
 /* struct qmp_phy_cfg - per-PHY initialization config */
 struct qmp_phy_cfg {
-	/* number of lanes provided by phy */
-	int nlanes;
+	/* number of PHYs provided by this block */
+	int num_phys;
 
 	/* Init sequence for PHY blocks - serdes, tx, rx, pcs */
 	const struct qmp_phy_init_tbl *serdes_tbl;
@@ -318,7 +318,7 @@ static const char * const qmp_phy_vreg_l[] = {
 };
 
 static const struct qmp_phy_cfg msm8996_pciephy_cfg = {
-	.nlanes			= 3,
+	.num_phys		= 3,
 
 	.serdes_tbl		= msm8996_pcie_serdes_tbl,
 	.serdes_tbl_num		= ARRAY_SIZE(msm8996_pcie_serdes_tbl),
@@ -861,7 +861,7 @@ static int qmp_pcie_msm8996_probe(struct platform_device *pdev)
 	if (IS_ERR(serdes))
 		return PTR_ERR(serdes);
 
-	expected_phys = cfg->nlanes;
+	expected_phys = cfg->num_phys;
 
 	mutex_init(&qmp->phy_mutex);
 
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
