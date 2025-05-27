Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0870C54ED1
	for <linux-phy@archiver.kernel.org>; Tue, 27 May 2025 20:40:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=irBDDLCX7YuepwufB6eAnBO30T7QwighRg6Tk0zgMN0=; b=PZQpRf9aTmHf7s
	d6RmPXRo2EBUXpTA7wmzHQXaKGd0+rTYP+v1jE9MOtwkNuQYvHppndaEeqsLaOqxKibHPqWNzX2ei
	x8lgrLgvSRIW2zuOqILCF/1PsWaM1TVJNL1vzFkWBu0xNo6F+An5nUuxD1pvHx2jgm2pkPSoKmTAp
	+PmjSAmmyXjQND2M66XSLsPf93JyLL3XFYAZXbemCbU6i4s37snS/vCJvcN1OVubPt8ATcNBsQfHI
	1MQTD9BF4POaTsaw4fi8wiMUJzveDH2CgyztiVKKzBiKqrsBOk4858jSeLdgTb6no5mhujwJvhj6q
	Iz4d29wxOvRErBp5bENQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK16I-0000000BWbT-2HlB;
	Tue, 27 May 2025 20:40:42 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK16H-0000000BWah-0V9N
	for linux-phy@lists.infradead.org;
	Tue, 27 May 2025 20:40:41 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 1A14D614B6;
	Tue, 27 May 2025 20:40:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9D512C4CEED;
	Tue, 27 May 2025 20:40:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748378439;
	bh=IpMb7V0sAlt8/QPGelTGeOsg+wTJq9WrQx/D96Ll6L0=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=sm0iTUnqpGSTq1Y8Dz5W4NuIK65PfDjOitYRyTrKZBDPC0JP6klw4PqLhkFilRAOz
	 XToWo8EkeK7/NWoNBbA3WUAGrbS0MaLPwRPNIs+hWfFln8hV84EsWdeCbTvtjJhmK8
	 hCL7xjvblRYHkhlGB7FAo3pEXGo4DS71hhQh6jDZiEmYiH84M3Zb4OcH5d470z8aj+
	 /6nQPe6PdEs0c9jwgoeqghuVshAPfifKFcCjxA1zev0LWx/6enBIAWKOPGIZXBj/Rk
	 b7XVYPc8cVR22ioaG32IRDWLpgnbwTxNOpQttnLfYr7g8aTJZOw1yAl4fY3hk9zKJm
	 1Rj9uI/htbwCQ==
From: Konrad Dybcio <konradybcio@kernel.org>
Date: Tue, 27 May 2025 22:40:06 +0200
Subject: [PATCH v3 4/6] phy: qcom: qmp-combo: introduce QMPPHY_MODE
MIME-Version: 1.0
Message-Id: <20250527-topic-4ln_dp_respin-v3-4-f9a0763ec289@oss.qualcomm.com>
References: <20250527-topic-4ln_dp_respin-v3-0-f9a0763ec289@oss.qualcomm.com>
In-Reply-To: <20250527-topic-4ln_dp_respin-v3-0-f9a0763ec289@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1748378414; l=3132;
 i=konrad.dybcio@oss.qualcomm.com; s=20230215; h=from:subject:message-id;
 bh=BRtYMDxSKD4x12RQQ6A5MlAQlMhQmTMBNmxjgiW2Chw=;
 b=gQjg8nQnAUGrwjxRU5MiHRlAjrYVku3MgKHySByvAkjXbgEBmybkXtq15P0JmJOAklP46JIbY
 d+KUTZoZGb2DSdRn60uujm0YfyMJeo5RFaR/mkgpb4gOO3WQyVEeRzj
X-Developer-Key: i=konrad.dybcio@oss.qualcomm.com; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
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

From: Neil Armstrong <neil.armstrong@linaro.org>

Introduce an enum for the QMP Combo PHY modes, use it in the
QMP commmon phy init function and default to COMBO mode.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
[konrad: some renaming and rewording]
Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 44 +++++++++++++++++++++++++++----
 1 file changed, 39 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 26480d63322b22eca9637392f888bfbe440c2a13..b34ad92021a656b39562e2685a1e7a0a93660a35 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -61,6 +61,12 @@
 
 #define PHY_INIT_COMPLETE_TIMEOUT		10000
 
+enum qmpphy_mode {
+	QMPPHY_MODE_USB3DP = 0,
+	QMPPHY_MODE_DP_ONLY,
+	QMPPHY_MODE_USB3_ONLY,
+};
+
 /* set of registers with offsets different per-PHY */
 enum qphy_reg_layout {
 	/* PCS registers */
@@ -1685,6 +1691,7 @@ struct qmp_combo {
 
 	struct mutex phy_mutex;
 	int init_count;
+	enum qmpphy_mode qmpphy_mode;
 
 	struct phy *usb_phy;
 	enum phy_mode phy_mode;
@@ -2817,12 +2824,33 @@ static int qmp_combo_com_init(struct qmp_combo *qmp, bool force)
 	if (qmp->orientation == TYPEC_ORIENTATION_REVERSE)
 		val |= SW_PORTSELECT_VAL;
 	writel(val, com + QPHY_V3_DP_COM_TYPEC_CTRL);
-	writel(USB3_MODE | DP_MODE, com + QPHY_V3_DP_COM_PHY_MODE_CTRL);
 
-	/* bring both QMP USB and QMP DP PHYs PCS block out of reset */
-	qphy_clrbits(com, QPHY_V3_DP_COM_RESET_OVRD_CTRL,
-			SW_DPPHY_RESET_MUX | SW_DPPHY_RESET |
-			SW_USB3PHY_RESET_MUX | SW_USB3PHY_RESET);
+	switch (qmp->qmpphy_mode) {
+	case QMPPHY_MODE_USB3DP:
+		writel(USB3_MODE | DP_MODE, com + QPHY_V3_DP_COM_PHY_MODE_CTRL);
+
+		/* bring both QMP USB and QMP DP PHYs PCS block out of reset */
+		qphy_clrbits(com, QPHY_V3_DP_COM_RESET_OVRD_CTRL,
+				SW_DPPHY_RESET_MUX | SW_DPPHY_RESET |
+				SW_USB3PHY_RESET_MUX | SW_USB3PHY_RESET);
+		break;
+
+	case QMPPHY_MODE_DP_ONLY:
+		writel(DP_MODE, com + QPHY_V3_DP_COM_PHY_MODE_CTRL);
+
+		/* bring QMP DP PHY PCS block out of reset */
+		qphy_clrbits(com, QPHY_V3_DP_COM_RESET_OVRD_CTRL,
+				SW_DPPHY_RESET_MUX | SW_DPPHY_RESET);
+		break;
+
+	case QMPPHY_MODE_USB3_ONLY:
+		writel(USB3_MODE, com + QPHY_V3_DP_COM_PHY_MODE_CTRL);
+
+		/* bring QMP USB PHY PCS block out of reset */
+		qphy_clrbits(com, QPHY_V3_DP_COM_RESET_OVRD_CTRL,
+				SW_USB3PHY_RESET_MUX | SW_USB3PHY_RESET);
+		break;
+	}
 
 	qphy_clrbits(com, QPHY_V3_DP_COM_SWI_CTRL, 0x03);
 	qphy_clrbits(com, QPHY_V3_DP_COM_SW_RESET, SW_RESET);
@@ -3833,6 +3861,12 @@ static int qmp_combo_probe(struct platform_device *pdev)
 	if (ret)
 		goto err_node_put;
 
+	/*
+	 * The hw default is USB3_ONLY, but USB3+DP mode lets us more easily
+	 * check both sub-blocks' init tables for blunders at probe time.
+	 */
+	qmp->qmpphy_mode = QMPPHY_MODE_USB3DP;
+
 	qmp->usb_phy = devm_phy_create(dev, usb_np, &qmp_combo_usb_phy_ops);
 	if (IS_ERR(qmp->usb_phy)) {
 		ret = PTR_ERR(qmp->usb_phy);

-- 
2.49.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
