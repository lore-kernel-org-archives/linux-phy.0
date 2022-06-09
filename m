Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36278CCA473
	for <linux-phy@archiver.kernel.org>; Thu,  9 Jun 2022 12:14:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OqJ41E2MvvyL1Nz5IvRIbqEDTlHRUPhqqURcp24AbTo=; b=gP0PONS0X5U+cI
	XjssFqT7wGtovtvGlpu/qvok1D0LcSApJcYrEa+4bQnqeWVi64Dhp7ZrcapqJmxuqtJhxmz0wiUMU
	1tlU50+1pdUXieVF+JfeE6k8k87ZzuUl2osVWVgebFpi3R6GwvmXGUbl2EIS6nG/HT7znU6r49stF
	6WyXOSKN07oOeNip/g6mXcp8KvE+ucvhJUvg2wwN+r1OoMO9RR8SN3dtUZAiBFq3d2U7VXmMrFdaJ
	3Byd2mUadqIpKVjQWLMrrz/eaU7WzmJ42HaXUkhvM86q8yMBNkUrvbZZoOMMfRjOK1/69x7W4VGs3
	VCqoCEzL+dzJGqSYSh+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzH3k-001dqd-Vt; Thu, 09 Jun 2022 12:14:44 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzGtN-001ZCo-Jy
	for linux-phy@lists.infradead.org; Thu, 09 Jun 2022 12:04:04 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 31431B82D45;
	Thu,  9 Jun 2022 12:04:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CC20CC3411F;
	Thu,  9 Jun 2022 12:03:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1654776237;
	bh=oaoo6MX5VQAXmrWYJ2witm5KxE0LsmNFvQE0kXLGRNg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=HCLqF5TITtjSg7G57lNOyd/djeztt68Y6WSb6NFOaiPwEYNyI7HUP87PQm6yiCUP2
	 MMgBmMfAB7ZkkWX5MzLrcakdYvS83fK8C76OTGge/pazdtJxJll3jQ3bZUvF5f+9jd
	 4cj6v9c4BRIgsq8o0/m02nTCmnGRDUQXqIvdY29GujBNYi9EIMfq4Yyg/XveLzgakq
	 cNUMxY+rjwq68y2FVII+5m71p1sHsAoaxatoDKyFoSfGLsaWWjmOkkHmohw91FjqHH
	 UFMpJWo2xChPmbgbg5uGDkYG0HnR5nAIzHNk07pVmZRt7XbFvzJJFC4+P/i1AjAjza
	 EhMr98JKgeH1Q==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1nzGtF-00014F-QU; Thu, 09 Jun 2022 14:03:53 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 2/3] phy: qcom-qmp: clean up define alignment
Date: Thu,  9 Jun 2022 14:03:37 +0200
Message-Id: <20220609120338.4080-3-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220609120338.4080-1-johan+linaro@kernel.org>
References: <20220609120338.4080-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220609_050402_016977_F3567E54 
X-CRM114-Status: GOOD (  10.12  )
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

Clean up the QMP defines by removing some stray white space and making
sure values are aligned.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp.h | 48 ++++++++++++++---------------
 1 file changed, 24 insertions(+), 24 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.h b/drivers/phy/qualcomm/phy-qcom-qmp.h
index 626be0ccede2..6d410826ae90 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.h
@@ -627,8 +627,8 @@
 #define QSERDES_V4_TX_INTERFACE_SELECT			0x2c
 #define QSERDES_V4_TX_RES_CODE_LANE_TX			0x34
 #define QSERDES_V4_TX_RES_CODE_LANE_RX			0x38
-#define QSERDES_V4_TX_RES_CODE_LANE_OFFSET_TX 		0x3c
-#define QSERDES_V4_TX_RES_CODE_LANE_OFFSET_RX 		0x40
+#define QSERDES_V4_TX_RES_CODE_LANE_OFFSET_TX		0x3c
+#define QSERDES_V4_TX_RES_CODE_LANE_OFFSET_RX		0x40
 #define QSERDES_V4_TX_TRANSCEIVER_BIAS_EN		0x54
 #define QSERDES_V4_TX_HIGHZ_DRVR_EN			0x58
 #define QSERDES_V4_TX_TX_POL_INV			0x5c
@@ -678,7 +678,7 @@
 #define QSERDES_V4_RX_UCDR_SB2_THRESH2			0x050
 #define QSERDES_V4_RX_UCDR_SB2_GAIN1			0x054
 #define QSERDES_V4_RX_UCDR_SB2_GAIN2			0x058
-#define QSERDES_V4_RX_AUX_DATA_TCOARSE_TFINE			0x060
+#define QSERDES_V4_RX_AUX_DATA_TCOARSE_TFINE		0x060
 #define QSERDES_V4_RX_RCLK_AUXDATA_SEL			0x064
 #define QSERDES_V4_RX_AC_JTAG_ENABLE			0x068
 #define QSERDES_V4_RX_AC_JTAG_MODE			0x078
@@ -759,26 +759,26 @@
 #define QSERDES_V4_20_RX_MARG_COARSE_CTRL2		0x23c
 
 /* Only for QMP V4 PHY - UFS PCS registers */
-#define QPHY_V4_PCS_UFS_PHY_START				0x000
-#define QPHY_V4_PCS_UFS_POWER_DOWN_CONTROL			0x004
-#define QPHY_V4_PCS_UFS_SW_RESET				0x008
-#define QPHY_V4_PCS_UFS_TIMER_20US_CORECLK_STEPS_MSB		0x00c
-#define QPHY_V4_PCS_UFS_TIMER_20US_CORECLK_STEPS_LSB		0x010
-#define QPHY_V4_PCS_UFS_PLL_CNTL				0x02c
-#define QPHY_V4_PCS_UFS_TX_LARGE_AMP_DRV_LVL			0x030
-#define QPHY_V4_PCS_UFS_TX_SMALL_AMP_DRV_LVL			0x038
-#define QPHY_V4_PCS_UFS_BIST_FIXED_PAT_CTRL			0x060
-#define QPHY_V4_PCS_UFS_TX_HSGEAR_CAPABILITY			0x074
-#define QPHY_V4_PCS_UFS_RX_HSGEAR_CAPABILITY			0x0b4
-#define QPHY_V4_PCS_UFS_DEBUG_BUS_CLKSEL			0x124
-#define QPHY_V4_PCS_UFS_LINECFG_DISABLE				0x148
-#define QPHY_V4_PCS_UFS_RX_MIN_HIBERN8_TIME			0x150
-#define QPHY_V4_PCS_UFS_RX_SIGDET_CTRL2				0x158
-#define QPHY_V4_PCS_UFS_TX_PWM_GEAR_BAND			0x160
-#define QPHY_V4_PCS_UFS_TX_HS_GEAR_BAND				0x168
+#define QPHY_V4_PCS_UFS_PHY_START			0x000
+#define QPHY_V4_PCS_UFS_POWER_DOWN_CONTROL		0x004
+#define QPHY_V4_PCS_UFS_SW_RESET			0x008
+#define QPHY_V4_PCS_UFS_TIMER_20US_CORECLK_STEPS_MSB	0x00c
+#define QPHY_V4_PCS_UFS_TIMER_20US_CORECLK_STEPS_LSB	0x010
+#define QPHY_V4_PCS_UFS_PLL_CNTL			0x02c
+#define QPHY_V4_PCS_UFS_TX_LARGE_AMP_DRV_LVL		0x030
+#define QPHY_V4_PCS_UFS_TX_SMALL_AMP_DRV_LVL		0x038
+#define QPHY_V4_PCS_UFS_BIST_FIXED_PAT_CTRL		0x060
+#define QPHY_V4_PCS_UFS_TX_HSGEAR_CAPABILITY		0x074
+#define QPHY_V4_PCS_UFS_RX_HSGEAR_CAPABILITY		0x0b4
+#define QPHY_V4_PCS_UFS_DEBUG_BUS_CLKSEL		0x124
+#define QPHY_V4_PCS_UFS_LINECFG_DISABLE			0x148
+#define QPHY_V4_PCS_UFS_RX_MIN_HIBERN8_TIME		0x150
+#define QPHY_V4_PCS_UFS_RX_SIGDET_CTRL2			0x158
+#define QPHY_V4_PCS_UFS_TX_PWM_GEAR_BAND		0x160
+#define QPHY_V4_PCS_UFS_TX_HS_GEAR_BAND			0x168
 #define QPHY_V4_PCS_UFS_READY_STATUS			0x180
-#define QPHY_V4_PCS_UFS_TX_MID_TERM_CTRL1			0x1d8
-#define QPHY_V4_PCS_UFS_MULTI_LANE_CTRL1			0x1e0
+#define QPHY_V4_PCS_UFS_TX_MID_TERM_CTRL1		0x1d8
+#define QPHY_V4_PCS_UFS_MULTI_LANE_CTRL1		0x1e0
 
 /* PCIE GEN3 COM registers */
 #define PCIE_GEN3_QHP_COM_SSC_EN_CENTER			0x14
@@ -1140,8 +1140,8 @@
 /* Only for QMP V5 PHY - TX registers */
 #define QSERDES_V5_TX_RES_CODE_LANE_TX			0x34
 #define QSERDES_V5_TX_RES_CODE_LANE_RX			0x38
-#define QSERDES_V5_TX_RES_CODE_LANE_OFFSET_TX 		0x3c
-#define QSERDES_V5_TX_RES_CODE_LANE_OFFSET_RX 		0x40
+#define QSERDES_V5_TX_RES_CODE_LANE_OFFSET_TX		0x3c
+#define QSERDES_V5_TX_RES_CODE_LANE_OFFSET_RX		0x40
 #define QSERDES_V5_TX_LANE_MODE_1			0x84
 #define QSERDES_V5_TX_LANE_MODE_2			0x88
 #define QSERDES_V5_TX_LANE_MODE_3			0x8c
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
