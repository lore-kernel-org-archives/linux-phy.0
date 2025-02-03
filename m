Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5E50C02192
	for <linux-phy@archiver.kernel.org>; Mon,  3 Feb 2025 14:43:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SYHuKxnf2mxW6ojRqSoYAjrgJOhGZL0uOl7LJq7Bzic=; b=OW+v4Bbi6MK28j
	S7zOIi7ceWCZyT8eHRwZg3Od4MX1j5nXjPCAHrSS1Q0P0IU6CQ4KIUVgtbuliSr779iEVUXLoTf7P
	TpwFoPhPdURgvxQWPf29ykLqwiTAMFwzoJWLm1wSJqN2Q4LXLsp9AuFgGeXSrefq8jkesq0iHPPRy
	5NSTp+sOyRG5q5vOB1xpYZUlUqdioP4oe9RQ2H/yxQdWReRvNTU5F4hROkf9o3ig12xh2TMfBQ2Vb
	ZopB0t6tF/em8CN9Ggv+W6xNptQU8T23oskIhIUm7I6/M2V92hcVQCnyGwj935KyVYnQ1i9GDQTyk
	UbHM8PFl6TiBfSO5Xyog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1texfv-0000000Fj9d-1wmx;
	Mon, 03 Feb 2025 14:43:47 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1texfs-0000000Fj8I-44uD
	for linux-phy@lists.infradead.org;
	Mon, 03 Feb 2025 14:43:46 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id E2DE1A40BB2;
	Mon,  3 Feb 2025 14:41:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7581BC4CED2;
	Mon,  3 Feb 2025 14:43:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738593823;
	bh=E5UWmKZHfmUPPBAUAOD2QHMmxB8u/RhMpbRI6NU0d20=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=JwykFQ+gn5wmgR1ZKsK15dg06wEhVJWkOh+1IT5kMKoauARXo6ahVDHKisW1ZWGV3
	 B5CEIvJG1o01D0G1HMvSjRo/Lj/ew14J72hk66ypX4w5rniZUfAtKchl8zD358FJOe
	 4VTn0VZYRUYx2WWZnKgtx2vEL1IQ2OAQ2AI9RHsNVOpz8/JwHBPfv0d5j6P6ivRdnv
	 f1J03hDkzg3FpxT2coOjzxxzL4oe17Yvvem9+6KA9KO10oBvwEsLsq04pupLZqRTTz
	 fokZ5CwyJMXSN7+whGblEGRhLmCq/3DANc6k/ByPmDWgKSORTpkHnNfRficqD5OqLt
	 d2vix+udOy5jg==
From: Konrad Dybcio <konradybcio@kernel.org>
Date: Mon, 03 Feb 2025 15:43:22 +0100
Subject: [PATCH v2 3/6] phy: qcom: qmp-pcie: Add X1P42100 Gen4x4 PHY
MIME-Version: 1.0
Message-Id: <20250203-topic-x1p4_dts-v2-3-72cd4cdc767b@oss.qualcomm.com>
References: <20250203-topic-x1p4_dts-v2-0-72cd4cdc767b@oss.qualcomm.com>
In-Reply-To: <20250203-topic-x1p4_dts-v2-0-72cd4cdc767b@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Jens Glathe <jens.glathe@oldschoolsolutions.biz>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1738593805; l=2051;
 i=konrad.dybcio@oss.qualcomm.com; s=20230215; h=from:subject:message-id;
 bh=nzsvvcCxOygMnYLwhijRvCq7bSIq9zyoNX9K393UW/c=;
 b=NTor0H9g3H5sFFqMrIR1S0ITNkBJI44QEf5YImzlJJ9rfSq+v/f0yNQN9w4r5WPv7jxpEXKjL
 RdJVZNh8lIbCaYVfM+FkxP5ey/GNsaSLJizqpc3pqjWgtUPLczLAMEK
X-Developer-Key: i=konrad.dybcio@oss.qualcomm.com; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250203_064345_157681_AF11C35E 
X-CRM114-Status: UNSURE (   9.46  )
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

Add a new, common configuration for Gen4x4 V6 PHYs without an init
sequence.

The bootloader configures the hardware once and the OS retains that
configuration by using the NOCSR reset line (which doesn't drop
register state on assert) in place of the "full reset" one.

Use this new configuration for X1P42100's Gen4x4 PHY.

Acked-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Tested-by: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 58103e87540ad84faca708debf61d79fe9f9ac54..68befe2901944b7f39e5adc12208c4b5578d94b1 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -4150,6 +4150,21 @@ static const struct qmp_phy_cfg x1e80100_qmp_gen4x8_pciephy_cfg = {
 	.phy_status		= PHYSTATUS_4_20,
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
@@ -4981,6 +4996,9 @@ static const struct of_device_id qmp_pcie_of_match_table[] = {
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
2.48.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
