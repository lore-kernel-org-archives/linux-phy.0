Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1D0CC32771
	for <linux-phy@archiver.kernel.org>; Wed, 28 Sep 2022 15:28:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MpNQ1TNct3xyc7E1Qa9HgdcDfPBBJvSZ6CF5tVHYRA0=; b=TPSx6CcVqe0tB6
	QoUrWIDeZ9s4z0d9lOWVQC8WE4KhxgfH24Rr3+T5L7Pv8A/poxgRbCOcz/u+/qTM05ZS4HXZumVBH
	3PLfsEK5PakH7St0zulamzCnIF3VJqaEHg7KMdnoBCwGAmzRFWI+ZsnmPZIDVxrZQ8nFzrIxBZsua
	nCBO2NXE+2ejI0bi5kDtZB7AMNxROfrI0rw1WydUrgC5tBB6Pk2FpwFdYkhYaUNKkAU21N38vsjzL
	0eFLcAg5JWZeTPZSErnGQ3Js3vx4LjhcEyMflMqgahlMcIkN+4bg+iKqk0GwNl6ErDph+Ed7Tj+lf
	I0t5o3gViE73C9MDAARQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odYzI-00Gtuq-2N; Wed, 28 Sep 2022 15:28:40 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odYzF-00Gtrg-94
	for linux-phy@lists.infradead.org; Wed, 28 Sep 2022 15:28:38 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 433A061F07;
	Wed, 28 Sep 2022 15:28:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DEC9CC43470;
	Wed, 28 Sep 2022 15:28:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664378916;
	bh=UTlC61z7rj8etdEZLgSbUnXER0qpRtxBcRao+1tRt3w=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=RT8d9c/Iva5E6cPgbHG8sKc7/neaWORUWab1UpvWBASKQfvCXgAVCxQwe+3TN8wfQ
	 mz4J1/kfBIwQgsXwjc63b1kbtUb7VSAjA2GJt5XBpqgHqhTVFX/51rhJAZvd+gTitY
	 MDNKUv/SI34sk0VYm1uFzeeff3qKiTSlsRe2q/n6GCJWm3K8SS2NLWxnJojvp4xhBE
	 0edyYL8iAch9M4RCFO55tZZyEWIgzXmClbgZKGYiwGPNTXoXuEpmUPXzl915S+j2YX
	 mLOp+FG+2iEQkDcTi7H5ghTa18OI0vEAdVGWcoVH+r1qLczSKufuBQkB/uVRzaMCTM
	 MzOeZhg2n8JCQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1odYzK-0007zo-O8; Wed, 28 Sep 2022 17:28:42 +0200
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
Subject: [PATCH 06/13] phy: qcom-qmp-pcie: drop bogus register update
Date: Wed, 28 Sep 2022 17:28:15 +0200
Message-Id: <20220928152822.30687-7-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220928152822.30687-1-johan+linaro@kernel.org>
References: <20220928152822.30687-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220928_082837_373733_466FD833 
X-CRM114-Status: GOOD (  11.48  )
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

Since commit 0d58280cf1e6 ("phy: Update PHY power control sequence") the
PHY is powered on before configuring the registers and only the MSM8996
PCIe PHY, which includes the POWER_DOWN_CONTROL register in its PCS
initialisation table, may possibly require a second update afterwards.

To make things worse, the POWER_DOWN_CONTROL register lies at a
different offset on more recent SoCs so that the second update, which
still used a hard-coded offset, would write to an unrelated register
(e.g. a revision-id register on SC8280XP).

As the MSM8996 PCIe PHY is now handled by a separate driver, simply drop
the bogus register update.

Fixes: e4d8b05ad5f9 ("phy: qcom-qmp: Use proper PWRDOWN offset for sm8150 USB") added support
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 4146545fdf5f..eea66c24cf7e 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -1953,12 +1953,6 @@ static int qmp_pcie_power_on(struct phy *phy)
 	qmp_pcie_configure(pcs_misc, cfg->regs, cfg->pcs_misc_tbl, cfg->pcs_misc_tbl_num);
 	qmp_pcie_configure(pcs_misc, cfg->regs, cfg->pcs_misc_tbl_sec, cfg->pcs_misc_tbl_num_sec);
 
-	/*
-	 * Pull out PHY from POWER DOWN state.
-	 * This is active low enable signal to power-down PHY.
-	 */
-	qphy_setbits(pcs, QPHY_V2_PCS_POWER_DOWN_CONTROL, cfg->pwrdn_ctrl);
-
 	if (cfg->has_pwrdn_delay)
 		usleep_range(cfg->pwrdn_delay_min, cfg->pwrdn_delay_max);
 
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
