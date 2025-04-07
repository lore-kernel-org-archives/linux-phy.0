Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6889C369A3
	for <linux-phy@archiver.kernel.org>; Mon,  7 Apr 2025 19:02:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rPqpjsSgyUzpnmjuCbGPQUtY2UJ2eMelAgRS8rG4kH8=; b=IneeNzj3RnA5u9
	JRCbSrGwFGoSnf/+xUz6+AgFdkQyNhdLNME0Jcbd/f24zooTpHm/MHchLxYlBmnFntKEPHIzTrVZ3
	D1rM5lmNuEn5fEcwWGtHPXehg/aaTw3doJ6oQ9F3RyHMe1n5njdQj5BxDKUXbJc4QHuV8M7VZU3Ml
	N/N7Pt3JyqcPeMgTyvHqSVv1+cnQy9gzciH829KwB2esi7bSulO2gUUOBRDmcLrrt6msXPGkZELR2
	NkZGZs5HmPxGYOII/K+HdMtd60VgE9o2cUFT1QCWtzR0p62yTDr+YKR2fKt0PDQgD2gA+gD7LYw4V
	vt3N+GeBYpZ3qTb0j67A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1rjS-00000001jhk-2YkG;
	Mon, 07 Apr 2025 19:02:06 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1qxd-00000001UFU-0OKS
	for linux-phy@lists.infradead.org;
	Mon, 07 Apr 2025 18:12:41 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 10EB861164;
	Mon,  7 Apr 2025 18:12:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 55F76C4CEDD;
	Mon,  7 Apr 2025 18:12:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744049560;
	bh=j6+bi5lVLy0URTHxStXKwgC/N1bCcMeQLLcy4p6Ft9U=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=aG6CD8wPghDB5XCtwzHN91+Gt0NIQaN+mAiGF7ZvhDVMgwc9DPftJvR+FJfyUUK7i
	 9OivApH0OEMkuh07NHJZ/Roc9OVWZ6U7KzXyFSTWB64ocOi7U5BiOvLZSFfcJQcUit
	 B7vdNtki8IC64cQ/w9GSU/kJMXNIyWbJrWCZwE8/QptwWdwSGMtfFw/S5E0C4nxgMZ
	 Sb3aeR7+/1Jsgl8QjushjI4+OGXROiAQZrdrGdsjZcO+k8QNVZ6wOAHBFrYLSMU7Fn
	 dXRBsQVuzC7FLUFqW4zSi7VwaQSOgGglWqG0+b9RiOLfl87UilubSooFdBTEeayzp+
	 9ti5K8VDSqPwA==
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
	neil.armstrong@linaro.org,
	abel.vesa@linaro.org,
	johan+linaro@kernel.org,
	quic_qianyu@quicinc.com,
	quic_devipriy@quicinc.com,
	quic_ziyuzhan@quicinc.com,
	quic_krichai@quicinc.com,
	manivannan.sadhasivam@linaro.org,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH AUTOSEL 6.13 06/28] phy: qcom: qmp-pcie: Add X1P42100 Gen4x4 PHY
Date: Mon,  7 Apr 2025 14:11:56 -0400
Message-Id: <20250407181224.3180941-6-sashal@kernel.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250407181224.3180941-1-sashal@kernel.org>
References: <20250407181224.3180941-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.13.10
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
index 873f2f9844c66..0f96a3507ca20 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -3905,6 +3905,21 @@ static const struct qmp_phy_cfg x1e80100_qmp_gen4x8_pciephy_cfg = {
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
@@ -4692,6 +4707,9 @@ static const struct of_device_id qmp_pcie_of_match_table[] = {
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
