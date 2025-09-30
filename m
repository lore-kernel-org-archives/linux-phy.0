Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9ACA2CAC5B9
	for <linux-phy@archiver.kernel.org>; Tue, 30 Sep 2025 07:40:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AP6lkysuguLsHqv3b3OLdOF4aLUZHWZJkA8NPbJ3vQY=; b=iBe17opuy5eVIO
	DMsfitg6J4jvuo2Svb2UvNL6VQLeigMVKcyVNudR7OeN4FFDmTYk8lvqTRN8GZqcJmSgVc+BexMda
	m7nkOUGVD+JNjuo1EvylzhX5MyLss+h0Tj4JBhHKOv3dtgizapr6kJER9hhqc3CbvtXVYl3CgfgNl
	yM8VmGUXBchwpjnu7hFmn8dhHxa3mnWGZkpDT3cyFSTm8TjyoaG/IHGRdppmwIlsLp4Dn5gFHxP+d
	ZQ9nvJvK5ocDx6yVGPBn0rwRM7RTuu6117o7sKJ+gm28T5GRsGS3JiQ+bgQMIhz5qD61f5tfNkAdH
	a8D6w4UIW2kRJB1lPbfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3Uxs-00000004W3F-14VB;
	Tue, 30 Sep 2025 07:40:00 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3Uxn-00000004W15-2zsT
	for linux-phy@lists.infradead.org;
	Tue, 30 Sep 2025 07:39:57 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-46b303f7469so38043695e9.1
        for <linux-phy@lists.infradead.org>; Tue, 30 Sep 2025 00:39:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759217994; x=1759822794; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/AW1ctYNPwGkF6JSa7A5Ncb8daKyZj2q8cgernXaO9g=;
        b=kiQQye/ion2sYw2xu4iIlAvsFGzKAC1/wZdJJ6OQqMuBNEsXU6KGN31GvqnrGuDPfR
         ie/GgqCpRjiqovnQ8ogs5A6BMww10fo07mS10J3aPpfD1fiGRxudxaX3FQDB/IQ7iWFf
         tAM6p+z5q5ARFkrJHd+u/KoX3w02/X2HfyUszT+/Wf9+6nONj0NHszo0bUauv9xfCzs8
         wyMKQSB/Gz9T98jG1uqRR/KvmpvsjOLHEJxIpXjjnbM0EEyzV9emFhUOCF9Cte29Auh7
         DSNRPVLjzU+0HXSxE/a2f0SoVDI8+Gns358tOybnFR6FA4+drBIA9/nBrPBtbQ6ccdCS
         DB+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759217994; x=1759822794;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/AW1ctYNPwGkF6JSa7A5Ncb8daKyZj2q8cgernXaO9g=;
        b=Y7iGFbt7ABpIhpQD8MxXreamULQ+7NXVFKLw8tUkdxJ4mwVWQTefEYYedI4+vQLT9y
         Ojhe5U9ZquDDUKn4VFt/yzNVT5AzjK+nXojZoy0oWu1BJATf/6SjVwMfmABU5jtZm5j1
         co9/PnYrvgrnLrVHU5bkFg4z05gxsiEVravO6ZMQvYqSxtHKbMfwhgo10ZASHrt41oqW
         I/I1MaSW2ezAGZiYL1q9KXJ65IUYfJnE5E13C3MZ9iuposR3uKI6B8aYVr0gjuCsUf6O
         PKJOzf/bsIcS2Jt4v7TC37wTGbLntDDAEZcewcWAEFjgcO8wqxhMEQ1S4yxQqPYEaKjc
         tirQ==
X-Forwarded-Encrypted: i=1; AJvYcCUEssxF9vmLyua7AtYuDUF/vVu78rZI7iEj1Z4sWucwYgx0YlzPcvvzLJ3u8WKVTWkol0w8VjW8HKY=@lists.infradead.org
X-Gm-Message-State: AOJu0YyEEE9Ly7M7C8PfpSwpZS/MhLttLURXTa/3nreMgBRSLmRpY3Tm
	L3FyYtbStd7WUVzokY06y2pgGYWLZ7/AIKepJcyk63jH+BLCVF4G14RJwFkLqnyuwLA=
X-Gm-Gg: ASbGncuLt8rl7MCHSGxwq6kf+XzWdZlBUF9Iy5hoS4B7QPkL9y2AKlHEYFJagTAiwuD
	pmrA4+OusRLyC0wjDJN5F4qfDp1imAxdNXGqJxKEbnytwgtccQSlkgz4kgpuNMKQt0IEDp5HDq5
	37bYCnnf9LTsPnCPBpiKNCcOh3jIrpQnKxei1Ypxfud914yWgohGCq6IJCzMmT9ZN48ridwvcii
	LNSZc6kmubiX1zs8ndX8tfXrj4J8migsUrLNc9HePklub5+dznYZb729SacpfVxShGaKr7CsWHn
	0Eia9Cv/Q6tkGuPpebnu/RM8yGmtbhu9sd3h6F4O9ers9t6+yzWalHISwrwJemH3WlOHhkwC5GK
	z2mby1B24dA78R218cuQTiwFtw70LpbY/VHdh5xeUrX6nitw4THGTX9FORjuKjoyp/qg=
X-Google-Smtp-Source: AGHT+IF4R2tFVGWC8k6CkleH6cTeT4JKQD3pLYPkCezw13nelkfxE7mqemTy2JJ2K7xkMnrvBzINPw==
X-Received: by 2002:a05:600c:3403:b0:46e:2109:f435 with SMTP id 5b1f17b1804b1-46e329b5a44mr134176745e9.11.1759217993870;
        Tue, 30 Sep 2025 00:39:53 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46e5707c1e7sm44021125e9.21.2025.09.30.00.39.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Sep 2025 00:39:53 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Tue, 30 Sep 2025 09:39:48 +0200
Subject: [PATCH v4 2/3] phy: qcom: qmp-combo: get the USB3 & DisplayPort
 lanes mapping from DT
MIME-Version: 1.0
Message-Id: <20250930-topic-x1e80100-hdmi-v4-2-86a14e8a34ac@linaro.org>
References: <20250930-topic-x1e80100-hdmi-v4-0-86a14e8a34ac@linaro.org>
In-Reply-To: <20250930-topic-x1e80100-hdmi-v4-0-86a14e8a34ac@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Xilin Wu <sophon@radxa.com>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=6533;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=g7Iz7iBAofGT0xX6ovoXpuwBLIN329RO4dbf43CapJA=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBo24lG4ldgPdjLTzi6xRfqW6o1HSf5B1jy/WLnnDmn
 Qx9LJoWJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaNuJRgAKCRB33NvayMhJ0UEMD/
 9GFyG7hFNsu4PG1UkA3YQ5OpNiNMWxD8QSkMYHMuZYiDHFl1wyzQBIFn/DfBTtwIkarAI6cvHCZfwP
 apRo6hl1ffzH+LupV9GF5Qfu9ho5uuFnqtYKzbkE/69YSPQRra519E9hJmGxYBuVbxqDUkxybcCc0I
 ibnubWgKS1cZ41HNiJYG46nO4j+EVRLAzOOfFU57IqZkj7551KJBeywK9Ce+RrX06VRphDwsdd4141
 L8RHWDiLZRQyXv7T9As6++smzY8+A/hZIbLk9Fg4GNGfpqcNby/XDI8X9eKzbIJOJ2gpeEwPSfDySS
 71a9PnO4KiQ2r0LJANCcbiREfhOkHdz+MYs4/BL/Adl3pHI9DryVvWMY4YwS6/G1wNfD4JuQUuBcYs
 znOK+i5kOLfauX0hWTa2YLl9Ad72me1bx/zNVs+VbMkBcqjINV93N9SoFgIO2Pk6FDxkang/r/Eflv
 DtibepVswb6rVFimEDwuy9W/8EOVl6ZCC+psBsATdVZIojKssuR6dq/IVw06+mRScT14xSZmVbLD61
 49fz01hT01RumICcEgDfYVAAcacw+WB8zj8pHkWaeO2EwefjRAYXh2c0QeoG3cMdPWtiySb7V8Qgy1
 0OOE8siGeWOEWn2BAyvaJGka9pL/3sE7CRkg5QPOEQUzWiJEr04+uYCyuuCA==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250930_003955_845667_5D8363DA 
X-CRM114-Status: GOOD (  22.46  )
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

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 145 ++++++++++++++++++++++++++++--
 1 file changed, 137 insertions(+), 8 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 7b5af30f1d028c592500e723ecd27b54ed554709..3a100807448152d7a08b6d1086f4a415b00e5255 100644
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
+	{ 1, TYPEC_ORIENTATION_NORMAL, { 0 }},
+	{ 1, TYPEC_ORIENTATION_REVERSE, { 3 }},
+	{ 2, TYPEC_ORIENTATION_NORMAL, { 3, 2 }},
+	{ 2, TYPEC_ORIENTATION_REVERSE, { 0, 1 }},
+	{ 4, TYPEC_ORIENTATION_NORMAL, { 3, 2, 1, 0 }},
+	{ 4, TYPEC_ORIENTATION_REVERSE, { 0, 1, 2, 3 }},
+};
+
 struct qmp_combo;
 
 struct qmp_combo_offsets {
@@ -4117,6 +4138,87 @@ static struct phy *qmp_combo_phy_xlate(struct device *dev, const struct of_phand
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
+	struct device_node *ep;
+	int ret;
+
+	ep = of_graph_get_endpoint_by_regs(dev->of_node, 0, endpoint);
+	if (!ep)
+		return -EINVAL;
+
+	ret = of_property_count_u32_elems(ep, "data-lanes");
+	if (ret < 0)
+		goto err_node_put;
+
+	*count = ret;
+
+	ret = of_property_read_u32_array(ep, "data-lanes", data_lanes,
+					 max_t(unsigned int, *count, max));
+
+err_node_put:
+	of_node_put(ep);
+
+	return ret;
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
@@ -4167,9 +4269,41 @@ static int qmp_combo_probe(struct platform_device *pdev)
 	if (ret)
 		goto err_node_put;
 
-	ret = qmp_combo_typec_register(qmp);
-	if (ret)
-		goto err_node_put;
+	qmp->qmpphy_mode = QMPPHY_MODE_USB3DP;
+
+	if (of_find_property(dev->of_node, "mode-switch", NULL) ||
+	    of_find_property(dev->of_node, "orientation-switch", NULL)) {
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
@@ -4189,11 +4323,6 @@ static int qmp_combo_probe(struct platform_device *pdev)
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
