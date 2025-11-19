Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 629B5CF2597
	for <linux-phy@archiver.kernel.org>; Wed, 19 Nov 2025 08:45:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HzwIttxCZgeXJrx2RcxCDTc5WmyaKzvfMJDnpYpOP2c=; b=k19QyERRxm6zIJ
	TPjCL/YkSb96WjgcCPbBA2zMHh/ZVPglK9sQ08HFROOykgbGG3iE21q+0X+SMjQhidLy17YYhxhaj
	a79MfQJyZ4LDAlAxwcFOfM5gowGjtaZf8vN8Hqs/hDGJdJrtRWQF65WFuyw7mNOlaKJBrbz47ovmW
	SC/OZe/hIQDMQhUNxSKR+7zodY9LFPFApO/aPUcq+Fy7PPkf3Ok/sHxp5ukzOX/jTMMq4lxxhM+op
	ioQDZzkFJgdmswYfr7loidj7u156pU8J7xQOMZ/nn1KV07O+4/bqFbEeS3wJqCw4FbRTQhj+ZdCcq
	02GEOar56lMrEZIUYFWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLdp2-00000002ojR-2fJJ;
	Wed, 19 Nov 2025 08:45:54 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLdoy-00000002oh0-1dxc
	for linux-phy@lists.infradead.org;
	Wed, 19 Nov 2025 08:45:49 +0000
Received: by mail-wr1-x42b.google.com with SMTP id ffacd0b85a97d-42b3c5defb2so4354492f8f.2
        for <linux-phy@lists.infradead.org>; Wed, 19 Nov 2025 00:45:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763541946; x=1764146746; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dCxZuR4nvCuHh/n6CAwD2wdIj5XPsLnOXttvnGgl2Hk=;
        b=FkVItw4w13exYAy+YkjVBRakPsPeIgkA92LtyCc4mPIiyqFx3V3gfADodt2JLH3lFL
         NrusTGB8fOz3xCElTvilvPxIVKhAsl/RtfCfRC0frG34/bVUdZFZTD4psqYrF5myD/GD
         S495LJMJV7W5V6d2g8SVnOAvUxB7NLSgZpmvsleg8MSXR24cfNDGC7z+lxyZ+7WjG3hm
         w9r0Cqm7gF0ceCbT/frEOf00tEovK6KCwVFYS07aOMFNC9BIw3auDd9AKZU1txzo2KPY
         XVNYeUgheUtt4RPzQnmM81twjac1w28J9/8HPTsjE2X6SPV4ITkY665R27l6OO0CpbUj
         NfJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763541946; x=1764146746;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=dCxZuR4nvCuHh/n6CAwD2wdIj5XPsLnOXttvnGgl2Hk=;
        b=Am2CmL/Bbw4RLheoGNOG8qipROsNSDtqDv6Y4VTSRIqi5hX74k+RHdVM8X+kZIt6wF
         CUeDjm2w7ZvScKTBQtbocrbpgDfqJ8Kc+bvNBDq7+sNZ9pmNbdpPCdSpvjCIAr9tqgLi
         E2mwKpPeHuAdb8N688gLPxmGS5o4G1KFB56i2YEpQrgIDdUjIaHVuKnBSqTYzGJfbNow
         v/NOQy3upUEQyFr8rIqRFCLu8Fza27rkqu5rGrvQuQy6Ow7hemKttBtA8HzVV0tgrry8
         Nz+4wKEBrU26anO+XiVyfGJUWLX5RXUFYFALW6/U8l/h6zgccATppO2TZQcdlz3oda17
         TpDg==
X-Forwarded-Encrypted: i=1; AJvYcCWObKaJZjYKe1+jMLAgREkwWztA5fgdYSYpMtAaTAQYznvCDUwdKs229D2VUl83xMO6SD6JU43FEIY=@lists.infradead.org
X-Gm-Message-State: AOJu0YwxftdZWlR9JXS+kxSoRkJFU08Ds9qQT6F7OI8bCJFSQZmELRh1
	aaib0ACKp/iNjmuQKEIeLC1Tr7n5LUSWplde0zVh0QaXlnsjLUPgkYPY9rj4fI1auPU=
X-Gm-Gg: ASbGnctRU7iGAjAsxcr0JaZM7vlY9K+N0UguwSUSxoMM5bAiJGsIAGl7aYaocPDPZSz
	X6FKgXeyOzbQu9yeC9ujVYJm2Tb6VWxS4ihFkoLGAEmGxEiup9hBa7i886kMQnHRf0iUG43AxzB
	wtNfZH8yu4yVsHQSr2uFRZSwFjWsSWa8gg2se6DXFspRo052cz3gSHVrRA1PGSHTHJYf8ipZbd0
	CzPXqbKogTDh/T5+5rVYG4Ds8M8AG2mJOWDDZiL00nRPFiyMOHOPyK7I2wbAsHz9sZP2Se8DYb5
	WD3gkV+wArnnnAlEyacnvMh0RLqhmglgZsizWMrCTsAeuXTO7JZ/AbsKRWErmnS9Tuhk3/oRfc6
	h/it7jLxQtyi1P+QAnJC+XtMROIYI7mhyvvnaj4UHafzv92VtNN8q794vEzNrJQMATVkVLVVzc1
	SjA9nzysaFZEjTMiR1KaJESsOTzrLTDeCJp115HsoSVA==
X-Google-Smtp-Source: AGHT+IFh+5jaYZ8H9QYyCVf2+FyHofQ3p91R6Qj+AJh8dPTzh1+rjurln6VPtOL0H/XejsiFY3o/ew==
X-Received: by 2002:a05:6000:2601:b0:42b:3d9d:c605 with SMTP id ffacd0b85a97d-42b5938f92fmr16878886f8f.49.1763541946355;
        Wed, 19 Nov 2025 00:45:46 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42b53f0b894sm38132306f8f.26.2025.11.19.00.45.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Nov 2025 00:45:45 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Wed, 19 Nov 2025 09:45:41 +0100
Subject: [PATCH v7 2/3] phy: qcom: qmp-combo: get the USB3 & DisplayPort
 lanes mapping from DT
MIME-Version: 1.0
Message-Id: <20251119-topic-x1e80100-hdmi-v7-2-2bee0e66cc1b@linaro.org>
References: <20251119-topic-x1e80100-hdmi-v7-0-2bee0e66cc1b@linaro.org>
In-Reply-To: <20251119-topic-x1e80100-hdmi-v7-0-2bee0e66cc1b@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Xilin Wu <sophon@radxa.com>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Abel Vesa <abel.vesa@linaro.org>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=6719;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=LGyRbs3nEpd8TPaRuDnl3oNEOOnmR63dD5K+Fo1T0B8=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBpHYO2taghZb3+XQkAM4Jj92JhEwExoKfZzh355Qc8
 4y/zf8KJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaR2DtgAKCRB33NvayMhJ0RKvD/
 0Y63pvt6Ypito3i6X5PDB2pJtRv37J47mUFyaJkuodl0ACF9VzsqFBPgWBrkMjQUJQqU9vajIWpzF4
 kT9SiourQmYWgewVivWXen+Xim6jT6kNE/O55OhYS2k160ur13cyjAmP522nQheVQIeaSzn3N3Sp9b
 7FV0oGptS0aMFSULC8Ek6jPIhh65v3QcSx+wIAsA7A+vBNnEu3XGYBrBAtL24fIceMHmBYgyktCWjH
 RYtNH9PvHdrKXbdvC4zd3VH5euTnUWx2N9bbwtaC+xmLGt0hpy9K+PNdNRI2ur8J1GCW3E251qphIy
 J8nPEUz1gPPBp1AUwDpMspKDeI1e/+lZAROrWw6OzHCOuL7b2iKHauRbWqAM8NtGWA9nFyygP4PvGa
 7K8LD0W2OyZyPuf2mwuBLQlWP7xaZJzbOQQxOPRchPxZcrM3u/ITkHQ+LKmbBjobewKD1TtgXVlu/R
 Y7jWMGtgCFlN9ApkfgpGDxCGxnSArs/Fdh/xcHKcRl+796X1ylB5ng9eI2/PZj/K7xNSRHD1oJaCda
 Qi/lSMPn0mY07bcPhYHznNOdB5uyKgDx/tPu32zQhdopxSYfSnXTQxhcgFnSxWMGUbQ9yuEqltf7Cu
 JArmqZEJMJ9pblsKgRFF/8f/EhOfjxSYWQktUCb0TQAfjcGX2Tn6N+wVpDRw==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251119_004548_478406_3117249E 
X-CRM114-Status: GOOD (  22.75  )
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
Reviewed-by: Abel Vesa <abel.vesa@linaro.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 142 ++++++++++++++++++++++++++++--
 1 file changed, 134 insertions(+), 8 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 7b5af30f1d02..18321f441baf 100644
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
