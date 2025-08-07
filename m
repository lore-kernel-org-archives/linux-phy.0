Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E27CAC87FCA
	for <linux-phy@archiver.kernel.org>; Thu,  7 Aug 2025 16:33:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GZG2GnYJ42WpyY14j8v2CtHNSVSd6Z9AIIFqm6rXNfo=; b=eNt8NTavKAjqSa
	Aeh3TIAzmZxsk1cZQ1Uf74CMEYykAaE7Ha0MPUxXhwKjfHMqkUd0hco5bWpqaPiDBjDHoK2TcYFeY
	cV6MoOj6DJl5wR+UyH+RU2dQx5VEZbv8kyVuwfUsuXMkHxCWJTsrkRGJefVjcN1ib30EbCCcdJBGn
	8T7jcpuZ4qbaN7s4SILy2Ri4prp/TkF/R5Vbw1Wjfofn8XoY7N7wbGdKMJjskrwnLnxdeJrHM1HlL
	e5ZJDcjs4y1W2rcZYkBkEs3YyOPhzKvlIUssTClMkBEYOEvvm62QsfWmpsu1iZNOe4ZJyssmSJ3LM
	O7PMINL2aBh3lOsbd5EA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uk3Ym-00000001A00-2qyE;
	Thu, 07 Aug 2025 16:33:44 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uk3Yl-000000019zU-3r6Z
	for linux-phy@lists.infradead.org;
	Thu, 07 Aug 2025 16:33:44 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 5B31F601F0;
	Thu,  7 Aug 2025 16:33:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2E8D8C4CEEB;
	Thu,  7 Aug 2025 16:33:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754584423;
	bh=vH+XAhFoFw8bFy65i97uyeO5sSUgfdapXmGNVliPTCY=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=inP1U+j8GLuygHdBHyI5g2HB8++hrj50TXnv9YbSqem2vjoV45o8w5WP9IZTMJrZb
	 sLY46LvtRUvmVUq9ZkiZjiSzdbAdWi3VTuntv4XiTIj7c+QOOV3AoaOlg3iuxvstA9
	 74qcPVw5oUOaBMB0VB5D1rAVtCArHJK13Fb8SIVpHL5yUi8hhaROOsh+Yn3BpkCiin
	 pC/sjvAcdZ52vZQg2iTuvZRJYHBCpxn1VdhY6Huw3vbTkOIJ4TMI3gl6VisCVnxWOA
	 SN8v/Q62sJTiy8iuCBejNQrj8syvCU+fWXBCzTt/oBeeSddmB9jGtkrRw9Rd9wahMw
	 iAp0W6j6lS8jA==
From: Konrad Dybcio <konradybcio@kernel.org>
Date: Thu, 07 Aug 2025 18:33:22 +0200
Subject: [PATCH v4 4/6] phy: qcom: qmp-combo: introduce QMPPHY_MODE
MIME-Version: 1.0
Message-Id: <20250807-topic-4ln_dp_respin-v4-4-43272d6eca92@oss.qualcomm.com>
References: <20250807-topic-4ln_dp_respin-v4-0-43272d6eca92@oss.qualcomm.com>
In-Reply-To: <20250807-topic-4ln_dp_respin-v4-0-43272d6eca92@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1754584403; l=3132;
 i=konrad.dybcio@oss.qualcomm.com; s=20230215; h=from:subject:message-id;
 bh=wwNxslbPGJK/G//pcTLP5e9hP0rnAe22Nbzx6I8BS6A=;
 b=O3EkWAfpwOBee9+xb4F8ZXG5qiQHu0ZfS1BfuPaHUlsViOcPtkxfqQRmWujBK0WLBPAqRVqN7
 8fDIFIGYNwoAYNotjtZ4d1adHE6RtEJ2Q/LPHDE2w610r4MMtX/EPRl
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
index 8395035754975808ee1b5b9c48d046a719e79e60..c65837fc9e4c38673fc61d3ae66072ba5a265a70 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -62,6 +62,12 @@
 
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
@@ -1844,6 +1850,7 @@ struct qmp_combo {
 
 	struct mutex phy_mutex;
 	int init_count;
+	enum qmpphy_mode qmpphy_mode;
 
 	struct phy *usb_phy;
 	enum phy_mode phy_mode;
@@ -3037,12 +3044,33 @@ static int qmp_combo_com_init(struct qmp_combo *qmp, bool force)
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
@@ -4053,6 +4081,12 @@ static int qmp_combo_probe(struct platform_device *pdev)
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
2.50.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
