Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1656C6FA96
	for <linux-phy@archiver.kernel.org>; Wed, 28 Sep 2022 15:28:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j4lM2qOz70huKKnEYZIfWerfraTHVYseUrqRxJDeEmQ=; b=F1TSghQ2IA7HWc
	ScOw6yJJFGs9l10/cd07gjOdE0R784a4Aq7kcD0eTMAIRzSuXERUqEzneChReSOf7ybyHL+LR3gAP
	5zkXwwdLzMVl97vWyZ4/1ApHca6shTZAA8dF/Tlkuq//wU1WLfpJUu+1VSDjHLgFvTbJRwqvYenDY
	NT3LvfFJ9O8EtK+vZBphMEbxbulIUCU+dp6bAoKWpBHZKyxZOWRQHondHb2/gNro1lJsGwIaa/iqN
	H1n/017wdY8W/9T21Hs/M+1ZYmiqYXLLk5CDs5DxL2DVdmljrEz9oUEEWnFD/NEDclofZ7KfKRD4F
	FBU9TEb0RhlD1FSqHlGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odYzM-00GtyE-1L; Wed, 28 Sep 2022 15:28:44 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odYzG-00GttS-VI
	for linux-phy@lists.infradead.org; Wed, 28 Sep 2022 15:28:42 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 19FE461F0E;
	Wed, 28 Sep 2022 15:28:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 29694C4315B;
	Wed, 28 Sep 2022 15:28:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664378916;
	bh=0CIZwjTp4S6UVd9PWMy28ZB7xuGJAfjb72jJqca0pFg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=X4fZN1/9bFNFMxRJ+oCj9IOpEckyAUYMaunTAyqqMPd4Af4BMmL5AF8FqsqSe6Z0s
	 cvICDVqeAOxlQumtP6mUDnfCcjgAM0im4Ogx/HSOynfUMbOC5kk+PrO+jnkyiJmwqQ
	 nNbFaBthpNmTeoUuEOUeLyX6Em6McjmLt2jVMF50dafC/1OMHq0z2G9ntOWKL9wWoE
	 VQVyBmDOogdONfmrwJDdY6TjEs/BUiRCzWKpMGPgzIMfYch9+hKlf94HNhl23asJqC
	 kzP5EPzWdVz4/RtKqxPlqj+MCw12IuqdHcRdFeDh4zxgkGAoAia4MABjLsdiuLczBM
	 irQhR1XCfoSXQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1odYzK-0007zj-Ku; Wed, 28 Sep 2022 17:28:42 +0200
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
Subject: [PATCH 05/13] phy: qcom-qmp-pcie: unify sdm845 registers
Date: Wed, 28 Sep 2022 17:28:14 +0200
Message-Id: <20220928152822.30687-6-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220928152822.30687-1-johan+linaro@kernel.org>
References: <20220928152822.30687-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220928_082839_087348_5817CF34 
X-CRM114-Status: GOOD (  10.79  )
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

The SDM845 register array is identical to pciephy_regs_layout so drop
the former.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 8 +-------
 1 file changed, 1 insertion(+), 7 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 7b3f7e42edd5..4146545fdf5f 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -92,12 +92,6 @@ static const unsigned int pciephy_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_PCS_STATUS]		= 0x174,
 };
 
-static const unsigned int sdm845_qmp_pciephy_regs_layout[QPHY_LAYOUT_SIZE] = {
-	[QPHY_SW_RESET]			= 0x00,
-	[QPHY_START_CTRL]		= 0x08,
-	[QPHY_PCS_STATUS]		= 0x174,
-};
-
 static const unsigned int sdm845_qhp_pciephy_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_SW_RESET]			= 0x00,
 	[QPHY_START_CTRL]		= 0x08,
@@ -1545,7 +1539,7 @@ static const struct qmp_phy_cfg sdm845_qmp_pciephy_cfg = {
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
 	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
-	.regs			= sdm845_qmp_pciephy_regs_layout,
+	.regs			= pciephy_regs_layout,
 
 	.start_ctrl		= PCS_START | SERDES_START,
 	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
