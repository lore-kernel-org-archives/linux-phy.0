Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 700ABC36010
	for <linux-phy@archiver.kernel.org>; Mon,  7 Apr 2025 18:58:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kh4pHMpvil5k7z18wg+DDWxgE+Xziu0jDOOA7jhFTSs=; b=TNPimwyD5MWkEV
	1WaR+R6+PRnfvDHkstRlxuLZscpeerUyQqUpBPSIuBultwDjJwYKBJte3Qz3gXIxGTOn03QE6DG0L
	YeVzoxqBEcX6KUGq3LLxyEAVhS8u+86aAFYLbz+BF7TeUq9ifh6Z+snC9DE6iWMvBCMmJ7nbooabA
	9rZA7yQ6KUbDfLc5X5xuYfosZeQFN0PcjcEpHjSfNa/ELnjnNn+lZRkrzwEhMLN/4TgqZXpQYpI0k
	9cbQ8FvNM+5gAo3wGUp62vso3uDs76nf+rgs6z3cb3gOGtvjiIIHL7j/2w274AlHLMWmO4rTBrWgE
	/JTX6xPv3UFnp4K8bEDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1rfe-00000001icY-0tiq;
	Mon, 07 Apr 2025 18:58:10 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1qwO-00000001TxR-1SyW
	for linux-phy@lists.infradead.org;
	Mon, 07 Apr 2025 18:11:25 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id D2D79A42B63;
	Mon,  7 Apr 2025 18:05:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 44D37C4CEE7;
	Mon,  7 Apr 2025 18:11:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744049483;
	bh=VLTyvpMWS/bw6pyMgplGAhRhyBZWm7/B21i4Z8dYpLw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=dK1JEoVcDguJW+OF2fKZm72JC96YiEWPzWiTZ0Y2BQWQIk+zeKqoFg0B+xczXrBDJ
	 c5AcUOUhlT8y7mqAOHb+Iqf/PgavhSakLrueqI91/CHz7f4p3TftSUXRIauQHvF/da
	 IDPXf3ahj/Weer6Otpin9tsfGcMmxvMLnRS9rQZsFb3rA8WQ93Fns4LDEJahfsuvgC
	 CDEE0LoYf4+BpdotgcMlq2cRkJEBgXMbVAMROSLoL/KpOn261bBLMjBW0Ch+eWBAMB
	 Bzi/BsepIhAe/tlOpjBcKtPhjcBdUtQa9ExHOlbNTnLx2Fo8vMHocwP3XHhJkw6iDq
	 eq+e05Sj0QoVQ==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Jens Glathe <jens.glathe@oldschoolsolutions.biz>,
	Vinod Koul <vkoul@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	kishon@kernel.org,
	lumag@kernel.org,
	abel.vesa@linaro.org,
	neil.armstrong@linaro.org,
	quic_qianyu@quicinc.com,
	quic_ziyuzhan@quicinc.com,
	quic_devipriy@quicinc.com,
	quic_krichai@quicinc.com,
	manivannan.sadhasivam@linaro.org,
	johan+linaro@kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH AUTOSEL 6.14 08/31] phy: qcom: qmp-pcie: Add X1P42100 Gen4x4 PHY
Date: Mon,  7 Apr 2025 14:10:24 -0400
Message-Id: <20250407181054.3177479-8-sashal@kernel.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250407181054.3177479-1-sashal@kernel.org>
References: <20250407181054.3177479-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.14.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250407_111124_515525_CDF123A3 
X-CRM114-Status: UNSURE (   9.77  )
X-CRM114-Notice: Please train this message.
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

From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

[ Upstream commit 0d8db251dd15d2e284f5a6a53bc2b869f3eca711 ]

Add a new, common configuration for Gen4x4 V6 PHYs without an init
sequence.

The bootloader configures the hardware once and the OS retains that
configuration by using the NOCSR reset line (which doesn't drop
register state on assert) in place of the "full reset" one.

Use this new configuration for X1P42100's Gen4x4 PHY.

Acked-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Tested-by: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Link: https://lore.kernel.org/r/20250203-topic-x1p4_dts-v2-3-72cd4cdc767b@oss.qualcomm.com
Signed-off-by: Vinod Koul <vkoul@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 018bbb3008303..6726bbe4ad15d 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -4156,6 +4156,21 @@ static const struct qmp_phy_cfg x1e80100_qmp_gen4x8_pciephy_cfg = {
 	.has_nocsr_reset	= true,
 };
 
+static const struct qmp_phy_cfg qmp_v6_gen4x4_pciephy_cfg = {
+	.lanes = 4,
+
+	.offsets                = &qmp_pcie_offsets_v6_20,
+
+	.reset_list             = sdm845_pciephy_reset_l,
+	.num_resets             = ARRAY_SIZE(sdm845_pciephy_reset_l),
+	.vreg_list              = qmp_phy_vreg_l,
+	.num_vregs              = ARRAY_SIZE(qmp_phy_vreg_l),
+	.regs                   = pciephy_v6_regs_layout,
+
+	.pwrdn_ctrl             = SW_PWRDN | REFCLK_DRV_DSBL,
+	.phy_status             = PHYSTATUS_4_20,
+};
+
 static void qmp_pcie_init_port_b(struct qmp_pcie *qmp, const struct qmp_phy_cfg_tbls *tbls)
 {
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
@@ -4960,6 +4975,9 @@ static const struct of_device_id qmp_pcie_of_match_table[] = {
 	}, {
 		.compatible = "qcom,x1e80100-qmp-gen4x8-pcie-phy",
 		.data = &x1e80100_qmp_gen4x8_pciephy_cfg,
+	}, {
+		.compatible = "qcom,x1p42100-qmp-gen4x4-pcie-phy",
+		.data = &qmp_v6_gen4x4_pciephy_cfg,
 	},
 	{ },
 };
-- 
2.39.5


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
