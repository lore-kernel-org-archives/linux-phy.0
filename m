Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17B80C5B542
	for <linux-phy@archiver.kernel.org>; Tue, 27 May 2025 20:40:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q6ar/ufMePv0RGoJDbHJq0RL8Wta9GReTHPT8u6dsR4=; b=gT5xCfwnV8VfFi
	Wn7eQBV2q4CKN2wpJ4zJlzSSdpLUQo+wwq8k39zepiFH6gB9qb0F/2iLXERmaITOuIhBrBmyTM0ne
	y2Sao6Ef1Gv17bEDFZwIpLG3k3ydWk24SAlqC21DZmbqcwBRzENR882mpx+UEfNGioj3380DeyeUK
	MsdOgDwTR/39r+bZ3R01cTAQp5NVyf1/Kczqny7sbs9zjb4Kd07kqk3TN0vRskErGcuMdz0cUq56C
	GlHGuSiRVyHTXT/3XbxnixMDp6AXoYhPk0D+ZLyDWSOerb5MglEC6l7FFYobXaMJYnYHcxhKeU8WH
	pD9hE7faIU7LdSDOtV5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK16M-0000000BWdM-3QaJ;
	Tue, 27 May 2025 20:40:46 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK16K-0000000BWcE-45XK
	for linux-phy@lists.infradead.org;
	Tue, 27 May 2025 20:40:46 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 3B918A4F4AB;
	Tue, 27 May 2025 20:40:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 581DEC4CEE9;
	Tue, 27 May 2025 20:40:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748378443;
	bh=iGRNn0Ik9GXgiezNKZDAhg9fUrRbLbH1eQNpIXs/Big=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=j8O6NOn/WRrnzRYePWoo+YwrVlLn0HdHgy4jOsxhatu+PohNreY1fahjcPHA243IM
	 XOyxxGA0mvQGee0kkZwbxl1qi2dctoTgR133SeBydm4KoSdSCkkMJbWOLwwzN6JRaX
	 fxBez4KJfGCbk9SBbrKiAgo4QiucV262nDfgEQEtmU2kybqZcr8nIqLSx5/HKWJbNM
	 moSc3LSb5vh5477D/Bej4SmImrkoreyJMNdU7GqakoMoqU9zqvEvjHCuiWWNSuQlGX
	 gPU1/lK4pXfR5fc/l/3WoXmYOcijkwPeaacGIsETGYIS7uapw5Yq8wr4arI+IisJuU
	 HKgKxFGRmL8eA==
From: Konrad Dybcio <konradybcio@kernel.org>
Date: Tue, 27 May 2025 22:40:07 +0200
Subject: [PATCH v3 5/6] phy: qcom: qmp-combo: register a typec mux to
 change the QMPPHY_MODE
MIME-Version: 1.0
Message-Id: <20250527-topic-4ln_dp_respin-v3-5-f9a0763ec289@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1748378414; l=5691;
 i=konrad.dybcio@oss.qualcomm.com; s=20230215; h=from:subject:message-id;
 bh=x6IDncDMA1iAfkJiGFc6fqLei4nWXVqabbPXBW+g0u0=;
 b=II7epJpAALpYfaf0NppJOBxi3KX9J2bK2YNLPhrAomA9xqJyXFIfttvNEh2lGm2lnSVXtwidj
 PYU+OdGkXGvC/gXbUquRO334ObWrycjMIDC1kxsrfl9NHOeDhEnlTJJ
X-Developer-Key: i=konrad.dybcio@oss.qualcomm.com; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250527_134045_154897_9A0BE14E 
X-CRM114-Status: GOOD (  20.41  )
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

Register a typec mux in order to change the PHY mode on the Type-C
mux events depending on the mode and the svid when in Altmode setup.

The DisplayPort phy should be left enabled if is still powered on
by the DRM DisplayPort controller, so bail out until the DisplayPort
PHY is not powered off.

The Type-C Mode/SVID only changes on plug/unplug, and USB SAFE states
will be set in between of USB-Only, Combo and DisplayPort Only so
this will leave enough time to the DRM DisplayPort controller to
turn of the DisplayPort PHY.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
[konrad: renaming, rewording, bug fixes]
Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 121 ++++++++++++++++++++++++++++--
 1 file changed, 116 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index b34ad92021a656b39562e2685a1e7a0a93660a35..4c9d92d6e0b8508191d052bd85dd135e4b8d7cc7 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -19,6 +19,7 @@
 #include <linux/reset.h>
 #include <linux/slab.h>
 #include <linux/usb/typec.h>
+#include <linux/usb/typec_dp.h>
 #include <linux/usb/typec_mux.h>
 
 #include <drm/bridge/aux-bridge.h>
@@ -1709,6 +1710,8 @@ struct qmp_combo {
 
 	struct typec_switch_dev *sw;
 	enum typec_orientation orientation;
+
+	struct typec_mux_dev *mux;
 };
 
 static void qmp_v3_dp_aux_init(struct qmp_combo *qmp);
@@ -3582,17 +3585,112 @@ static int qmp_combo_typec_switch_set(struct typec_switch_dev *sw,
 	return 0;
 }
 
-static void qmp_combo_typec_unregister(void *data)
+static int qmp_combo_typec_mux_set(struct typec_mux_dev *mux, struct typec_mux_state *state)
+{
+	struct qmp_combo *qmp = typec_mux_get_drvdata(mux);
+	const struct qmp_phy_cfg *cfg = qmp->cfg;
+	enum qmpphy_mode new_mode;
+	unsigned int svid;
+
+	guard(mutex)(&qmp->phy_mutex);
+
+	if (state->alt)
+		svid = state->alt->svid;
+	else
+		svid = 0;
+
+	if (svid == USB_TYPEC_DP_SID) {
+		switch (state->mode) {
+		/* DP Only */
+		case TYPEC_DP_STATE_C:
+		case TYPEC_DP_STATE_E:
+			new_mode = QMPPHY_MODE_DP_ONLY;
+			break;
+
+		/* DP + USB */
+		case TYPEC_DP_STATE_D:
+		case TYPEC_DP_STATE_F:
+
+		/* Safe fallback...*/
+		default:
+			new_mode = QMPPHY_MODE_USB3DP;
+			break;
+		}
+	} else {
+		/* Fall back to USB3+DP mode if we're not sure it's strictly USB3-only */
+		if (state->mode == TYPEC_MODE_USB3 || state->mode == TYPEC_STATE_USB)
+			new_mode = QMPPHY_MODE_USB3_ONLY;
+		else
+			new_mode = QMPPHY_MODE_USB3DP;
+	}
+
+	if (new_mode == qmp->qmpphy_mode) {
+		dev_dbg(qmp->dev, "typec_mux_set: same qmpphy mode, bail out\n");
+		return 0;
+	}
+
+	if (qmp->qmpphy_mode != QMPPHY_MODE_USB3_ONLY && qmp->dp_powered_on) {
+		dev_dbg(qmp->dev, "typec_mux_set: DP PHY is still in use, delaying switch\n");
+		return 0;
+	}
+
+	dev_dbg(qmp->dev, "typec_mux_set: switching from qmpphy mode %d to %d\n",
+		qmp->qmpphy_mode, new_mode);
+
+	qmp->qmpphy_mode = new_mode;
+
+	if (qmp->init_count) {
+		if (qmp->usb_init_count)
+			qmp_combo_usb_power_off(qmp->usb_phy);
+
+		if (qmp->dp_init_count)
+			writel(DP_PHY_PD_CTL_PSR_PWRDN, qmp->dp_dp_phy + QSERDES_DP_PHY_PD_CTL);
+
+		qmp_combo_com_exit(qmp, true);
+
+		/* Now everything's powered down, power up the right PHYs */
+		qmp_combo_com_init(qmp, true);
+
+		if (new_mode == QMPPHY_MODE_DP_ONLY) {
+			if (qmp->usb_init_count)
+				qmp->usb_init_count--;
+		}
+
+		if (new_mode == QMPPHY_MODE_USB3DP || new_mode == QMPPHY_MODE_USB3_ONLY) {
+			qmp_combo_usb_power_on(qmp->usb_phy);
+			if (!qmp->usb_init_count)
+				qmp->usb_init_count++;
+		}
+
+		if (new_mode == QMPPHY_MODE_DP_ONLY || new_mode == QMPPHY_MODE_USB3DP) {
+			if (qmp->dp_init_count)
+				cfg->dp_aux_init(qmp);
+		}
+	}
+
+	return 0;
+}
+
+static void qmp_combo_typec_switch_unregister(void *data)
 {
 	struct qmp_combo *qmp = data;
 
 	typec_switch_unregister(qmp->sw);
 }
 
-static int qmp_combo_typec_switch_register(struct qmp_combo *qmp)
+static void qmp_combo_typec_mux_unregister(void *data)
+{
+	struct qmp_combo *qmp = data;
+
+	typec_mux_unregister(qmp->mux);
+}
+
+static int qmp_combo_typec_register(struct qmp_combo *qmp)
 {
 	struct typec_switch_desc sw_desc = {};
+	struct typec_mux_desc mux_desc = { };
 	struct device *dev = qmp->dev;
+	int ret;
 
 	sw_desc.drvdata = qmp;
 	sw_desc.fwnode = dev->fwnode;
@@ -3603,10 +3701,23 @@ static int qmp_combo_typec_switch_register(struct qmp_combo *qmp)
 		return PTR_ERR(qmp->sw);
 	}
 
-	return devm_add_action_or_reset(dev, qmp_combo_typec_unregister, qmp);
+	ret = devm_add_action_or_reset(dev, qmp_combo_typec_switch_unregister, qmp);
+	if (ret)
+		return ret;
+
+	mux_desc.drvdata = qmp;
+	mux_desc.fwnode = dev->fwnode;
+	mux_desc.set = qmp_combo_typec_mux_set;
+	qmp->mux = typec_mux_register(dev, &mux_desc);
+	if (IS_ERR(qmp->mux)) {
+		dev_err(dev, "Unable to register typec mux: %pe\n", qmp->mux);
+		return PTR_ERR(qmp->mux);
+	}
+
+	return devm_add_action_or_reset(dev, qmp_combo_typec_mux_unregister, qmp);
 }
 #else
-static int qmp_combo_typec_switch_register(struct qmp_combo *qmp)
+static int qmp_combo_typec_register(struct qmp_combo *qmp)
 {
 	return 0;
 }
@@ -3839,7 +3950,7 @@ static int qmp_combo_probe(struct platform_device *pdev)
 	if (ret)
 		goto err_node_put;
 
-	ret = qmp_combo_typec_switch_register(qmp);
+	ret = qmp_combo_typec_register(qmp);
 	if (ret)
 		goto err_node_put;
 

-- 
2.49.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
