Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37CF9CCD185
	for <linux-phy@archiver.kernel.org>; Mon, 13 Oct 2025 08:55:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fR07reZVTzleGWV+lsk5198e4PZhVVDLm9cFb5nHdWE=; b=Kbbrmluoh1UG/G
	0DwpV2KhoiaqLQakbwKeO+cCeXzPX7MiJnV5m5KTLxnjndkerY4KZEVGkBHh4iEvfv7o/oTLkWpYQ
	PuaWczSrCkTnA/+j9MphgrkfZ00uTKFztEFwzPZTWaerfDbMT7GlWY6natD6Lntygrppwp2miirzr
	nF6qMJ9virHsfnEC2M546FwDYPS0gHg44ZCiKPO6JMq/70cMUXackDIGjXfI9eiNYaAJ2WaLNrguI
	hSOZxLPf8ubcIypoxRxKdmHe3OkUlVLmg6Vm2bu2tCKRw1p7nG73utbKZ+FxHv55LEiQGLWr3m2wn
	0wZtsLHOd1abzTxJo0TA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8ELS-0000000CfOR-4738;
	Mon, 13 Oct 2025 08:55:54 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8ELP-0000000CfMA-1JO2
	for linux-phy@lists.infradead.org;
	Mon, 13 Oct 2025 08:55:53 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-46e3cdc1a6aso28272185e9.1
        for <linux-phy@lists.infradead.org>; Mon, 13 Oct 2025 01:55:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760345749; x=1760950549; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=X+s3SE4zp4gJNrXwzm2LtDr1Hi5y/USSWqn+FVGoYHw=;
        b=zUbiZBgwJgsXlXabd08ww7pyqf3v0o4V2Xaz1il4y6d2PCOXwwLLX47u2nKF2TQrAu
         N9J2+gb+z3/fbAWHJk4LsI3mIUEm+Bvk46u60H5Ad3o/BQwDAbWEtGhDOCQc/mEuPhKT
         gDwCb4DJFdqhUEhJJDz8pkbgksFpUBVTLMcQLdx7pNglNWl/4h3n1oaxCT8nhk3Ko0aP
         YPgk3dU9QreOepVranSa1OBqId/negr5u5BNHEFEP34ECa61JKadHPqPUR63UOm61V3+
         UQhTwU66E+6j7GPf4eJcEs/BBWCHmSdno/tKphbCiIxYKL8Ij7aP9bJpQW1/KSwjNJgv
         hx1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760345749; x=1760950549;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=X+s3SE4zp4gJNrXwzm2LtDr1Hi5y/USSWqn+FVGoYHw=;
        b=DUVTAOkiJl0VesxtM1TmwpyYa05Nwe/PaFTD/5wBL+4RaojGnTul12IXfTyu14M34a
         Vbf8X6YPPpzsTBkVt5zoVFoSqUPqbyusQRD56edqNW7oEzmrGl9ou77UnsuLVv8q0rHo
         t1LYJQx5yTx1JoNlKFLWafiuNU1ZoUlXtbGBso72Cu4PQnmhvEm7zuSIxwWqdlGeYhVF
         PXftd3E0B1awE3Hw3xBdEMVwNqc4qTg8Dol/dF9u8hNVEFvyExjNNpnxLBmPD+buUj6g
         h2V6MC7zerkotFSye57Gnfd+0qzB/JAY0c66T3BsZl2TJpVZWS4QOz+DgUzdWZ03KadW
         6Rrw==
X-Forwarded-Encrypted: i=1; AJvYcCV0OAUz3jdAtRm125QVS4HpiF93gsSNIlzIRVBZohGpcON6aLFgpR+dKIbTRGWXwd8IgvpeS53UoGY=@lists.infradead.org
X-Gm-Message-State: AOJu0YxrqzKLhPwR2S/BCYzpUaeg6Zpu6rfpcpkDzGs96GLl20eNc4Gs
	dqgk2wQMDDg22jBuYAGckUg+dReCqX3QS2Ih9De47a2iS5kQdn+jOI0cSD6yNjTKuxxOuWkiz2P
	8bcGj
X-Gm-Gg: ASbGnctTXMOLfrQ+16z2PHDxDBM43krybP+eix1n0goFuhb/G8ldqH0pTpD6o/kt2f6
	7EJcTg6dMj4qhBTVz6Wlof7a7XgB0c9/1uN051oEHL/zgMqrAtEsrIy+jo67cQON7fp49nh98ea
	k88HH01xVSy5BANUxE/Yo2gNsiBy3fSeB8/m6MT413CSMeY+EMVzEbOlVIzz+WXg/WJuNnWsA8Q
	P3JXCK0ho1gKqSBhoLvGPVY785XWM7iTSlBuD47BrvwZPJEK1YXo9EXNONsIJTdnpqg7Se0sZbR
	jhXwCntdPQISuB2pwudtCW3LvLkY9+5BaivhHpnxWMRuQlaJFl1BrnoONkJCRtU7nj+B5CJGoqH
	yz5N08vcNhw87GZcYTx9DaMxUxmFDFtIvsf8Hv3P1RxVAo3KNuXnp1FwhGTNu9scrBQ==
X-Google-Smtp-Source: AGHT+IF8zX+iEDLUhdo9DD2vye+splloAOH7RyP+gOGGF/Nj416E0M49/B5BB15Rg7A9cB8ueAZgJA==
X-Received: by 2002:a05:600c:83c6:b0:45d:dc10:a5ee with SMTP id 5b1f17b1804b1-46fa9ec7727mr141176015e9.15.1760345749332;
        Mon, 13 Oct 2025 01:55:49 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46fb482b99fsm180016185e9.3.2025.10.13.01.55.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Oct 2025 01:55:49 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 13 Oct 2025 10:55:45 +0200
Subject: [PATCH v6 2/3] phy: qcom: qmp-combo: get the USB3 & DisplayPort
 lanes mapping from DT
MIME-Version: 1.0
Message-Id: <20251013-topic-x1e80100-hdmi-v6-2-3a9c8f7506d6@linaro.org>
References: <20251013-topic-x1e80100-hdmi-v6-0-3a9c8f7506d6@linaro.org>
In-Reply-To: <20251013-topic-x1e80100-hdmi-v6-0-3a9c8f7506d6@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Xilin Wu <sophon@radxa.com>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=6667;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=aPV0KuIxCTXWbNGZkLEcxbshB79S+o1IdnN8zZ1ul6Y=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBo7L6SVGqHqmAL9KVP4fwdspH2Ioag9satNKDmuN0z
 H/q13tmJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaOy+kgAKCRB33NvayMhJ0ZOGD/
 9eWkIYFzgkEo4AiZwLzz34XG3CEZc4mZvzgcoW/skL8zoka9gFC7v6QyX1Pu7fPFRZteMzTpKi6H2e
 Kd4JHOXf4qJHSEd64zCCaWo/7omsugDsygzekqtkYFtW6aO3AjxCqHoILgtQ5p919KHgQsgRxfKLoq
 Fs4535tkf3kx5sc6+Gr8MycAoM8jpkk0Tt4mituPARdizgVVl9tlneReCCi7kR4/G0+bNEsoHZPGcL
 IDFGEogfQvJPRKbLU0P6zTHIKW6UTCBgwOwAQ2MTyfrfjbH47J5gzBtUiy9S4a9kJUI+s8L+Wz8MIk
 AxGiUx+0VAZJrbBmsz2+nij6YvuDfkyfJXvERRVMEKXQyfNr/f3UXT0dNjslzuEE/iL7CZ3qfrDHqa
 jqKaXuy/RmWd/Aaxcc4UbZ2rVxZqXKCHbdRGDYbDIFWrlhl4LmsPRqk8CuHjJxTuklOUp8OihvoRel
 N+4UjiOSkG4fgNesWHHQkwdyx0QTMQpqK4vlpHiHGY12nSwUuxpG89Lp5sxb4+r9zcFz43UJCq31/Y
 XXlY28GticpnuOzVe1ihU28NkzW5pHFczPSEXTWw91n7jATDLo8J6nJJK6tv6htfUap0rRrgbX5pHo
 1PooAPF2NLue7KVz6NQWuXUQyB/nL2VlwSg+rPtq7Kp+LcWPQS6BbeUzwneA==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251013_015551_394552_C8B4F57A 
X-CRM114-Status: GOOD (  22.16  )
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

The QMP USB3/DP Combo PHY hosts an USB3 phy and a DP PHY on top
of a combo glue to route either lanes to the 4 shared physical lanes.

The routing of the lanes can be:
- 2 DP + 2 USB3
- 4 DP
- 2 USB3

Get the lanes mapping from DT and stop registering the USB-C
muxes in favor of a static mode and orientation detemined
by the lanes mapping.

This allows supporting boards with direct connection of USB3 and
DisplayPort lanes to the QMP Combo PHY lanes, not using the
USB-C Altmode feature.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Tested-by: Xilin Wu <sophon@radxa.com> # qcs6490-radxa-dragon-q6a
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 142 ++++++++++++++++++++++++++++--
 1 file changed, 134 insertions(+), 8 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 7b5af30f1d028c592500e723ecd27b54ed554709..18321f441bafb36fd53ca3904d4fbe839412156d 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -13,6 +13,7 @@
 #include <linux/module.h>
 #include <linux/of.h>
 #include <linux/of_address.h>
+#include <linux/of_graph.h>
 #include <linux/phy/phy.h>
 #include <linux/platform_device.h>
 #include <linux/regulator/consumer.h>
@@ -1744,6 +1745,26 @@ static const u8 qmp_dp_v6_pre_emphasis_hbr_rbr[4][4] = {
 	{ 0x22, 0xff, 0xff, 0xff }
 };
 
+struct qmp_combo_lane_mapping {
+	unsigned int lanes_count;
+	enum typec_orientation orientation;
+	u32 lanes[4];
+};
+
+static const struct qmp_combo_lane_mapping usb3_data_lanes[] = {
+	{ 2, TYPEC_ORIENTATION_NORMAL, { 1, 0 }},
+	{ 2, TYPEC_ORIENTATION_REVERSE, { 2, 3 }},
+};
+
+static const struct qmp_combo_lane_mapping dp_data_lanes[] = {
+	{ 1, TYPEC_ORIENTATION_NORMAL, { 3 }},
+	{ 1, TYPEC_ORIENTATION_REVERSE, { 0 }},
+	{ 2, TYPEC_ORIENTATION_NORMAL, { 3, 2 }},
+	{ 2, TYPEC_ORIENTATION_REVERSE, { 0, 1 }},
+	{ 4, TYPEC_ORIENTATION_NORMAL, { 3, 2, 1, 0 }},
+	{ 4, TYPEC_ORIENTATION_REVERSE, { 0, 1, 2, 3 }},
+};
+
 struct qmp_combo;
 
 struct qmp_combo_offsets {
@@ -4117,6 +4138,84 @@ static struct phy *qmp_combo_phy_xlate(struct device *dev, const struct of_phand
 	return ERR_PTR(-EINVAL);
 }
 
+static void qmp_combo_find_lanes_orientation(const struct qmp_combo_lane_mapping *mapping,
+					     unsigned int mapping_count,
+					     u32 *lanes, unsigned int lanes_count,
+					     enum typec_orientation *orientation)
+{
+	int i;
+
+	for (i = 0; i < mapping_count; i++) {
+		if (mapping[i].lanes_count != lanes_count)
+			continue;
+		if (!memcmp(mapping[i].lanes, lanes, sizeof(u32) * lanes_count)) {
+			*orientation = mapping[i].orientation;
+			return;
+		}
+	}
+}
+
+static int qmp_combo_get_dt_lanes_mapping(struct device *dev, unsigned int endpoint,
+					  u32 *data_lanes, unsigned int max,
+					  unsigned int *count)
+{
+	struct device_node *ep __free(device_node) = NULL;
+	int ret;
+
+	ep = of_graph_get_endpoint_by_regs(dev->of_node, 0, endpoint);
+	if (!ep)
+		return -EINVAL;
+
+	ret = of_property_count_u32_elems(ep, "data-lanes");
+	if (ret < 0)
+		return ret;
+
+	*count = ret;
+	if (*count > max)
+		return -EINVAL;
+
+	return of_property_read_u32_array(ep, "data-lanes", data_lanes,
+					  min_t(unsigned int, *count, max));
+}
+
+static int qmp_combo_get_dt_dp_orientation(struct device *dev,
+					     enum typec_orientation *orientation)
+{
+	unsigned int count;
+	u32 data_lanes[4];
+	int ret;
+
+	/* DP is described on the first endpoint of the first port */
+	ret = qmp_combo_get_dt_lanes_mapping(dev, 0, data_lanes, 4, &count);
+	if (ret < 0)
+		return ret == -EINVAL ? 0 : ret;
+
+	/* Search for a match and only update orientation if found */
+	qmp_combo_find_lanes_orientation(dp_data_lanes, ARRAY_SIZE(dp_data_lanes),
+					 data_lanes, count, orientation);
+
+	return 0;
+}
+
+static int qmp_combo_get_dt_usb3_orientation(struct device *dev,
+					     enum typec_orientation *orientation)
+{
+	unsigned int count;
+	u32 data_lanes[2];
+	int ret;
+
+	/* USB3 is described on the second endpoint of the first port */
+	ret = qmp_combo_get_dt_lanes_mapping(dev, 1, data_lanes, 2, &count);
+	if (ret < 0)
+		return ret == -EINVAL ? 0 : ret;
+
+	/* Search for a match and only update orientation if found */
+	qmp_combo_find_lanes_orientation(usb3_data_lanes, ARRAY_SIZE(usb3_data_lanes),
+					 data_lanes, count, orientation);
+
+	return 0;
+}
+
 static int qmp_combo_probe(struct platform_device *pdev)
 {
 	struct qmp_combo *qmp;
@@ -4167,9 +4266,41 @@ static int qmp_combo_probe(struct platform_device *pdev)
 	if (ret)
 		goto err_node_put;
 
-	ret = qmp_combo_typec_register(qmp);
-	if (ret)
-		goto err_node_put;
+	qmp->qmpphy_mode = QMPPHY_MODE_USB3DP;
+
+	if (of_property_present(dev->of_node, "mode-switch") ||
+	    of_property_present(dev->of_node, "orientation-switch")) {
+		ret = qmp_combo_typec_register(qmp);
+		if (ret)
+			goto err_node_put;
+	} else {
+		enum typec_orientation dp_orientation = TYPEC_ORIENTATION_NONE;
+		enum typec_orientation usb3_orientation = TYPEC_ORIENTATION_NONE;
+
+		ret = qmp_combo_get_dt_dp_orientation(dev, &dp_orientation);
+		if (ret)
+			goto err_node_put;
+
+		ret = qmp_combo_get_dt_usb3_orientation(dev, &usb3_orientation);
+		if (ret)
+			goto err_node_put;
+
+		if (dp_orientation == TYPEC_ORIENTATION_NONE &&
+		    usb3_orientation != TYPEC_ORIENTATION_NONE) {
+			qmp->qmpphy_mode = QMPPHY_MODE_USB3_ONLY;
+			qmp->orientation = usb3_orientation;
+		} else if (usb3_orientation == TYPEC_ORIENTATION_NONE &&
+			 dp_orientation != TYPEC_ORIENTATION_NONE) {
+			qmp->qmpphy_mode = QMPPHY_MODE_DP_ONLY;
+			qmp->orientation = dp_orientation;
+		} else if (dp_orientation != TYPEC_ORIENTATION_NONE &&
+			 dp_orientation == usb3_orientation) {
+			qmp->qmpphy_mode = QMPPHY_MODE_USB3DP;
+			qmp->orientation = dp_orientation;
+		} else {
+			dev_warn(dev, "unable to determine orientation & mode from data-lanes");
+		}
+	}
 
 	ret = drm_aux_bridge_register(dev);
 	if (ret)
@@ -4189,11 +4320,6 @@ static int qmp_combo_probe(struct platform_device *pdev)
 	if (ret)
 		goto err_node_put;
 
-	/*
-	 * The hw default is USB3_ONLY, but USB3+DP mode lets us more easily
-	 * check both sub-blocks' init tables for blunders at probe time.
-	 */
-	qmp->qmpphy_mode = QMPPHY_MODE_USB3DP;
 
 	qmp->usb_phy = devm_phy_create(dev, usb_np, &qmp_combo_usb_phy_ops);
 	if (IS_ERR(qmp->usb_phy)) {

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
