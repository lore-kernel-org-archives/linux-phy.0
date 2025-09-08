Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2D38CAC58B
	for <linux-phy@archiver.kernel.org>; Mon,  8 Sep 2025 17:09:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rOL0hW/qMVJ+6RnJBJFzlF178AKnRlF+YGUgAFD4kXk=; b=2RaBnK5HOqw+hZ
	YLXXVfT+jnUlyHG8ujMLsSYAncboCPRwO1ts8f7uYLF0yscXn2yUd06QcmvYvxlf4Tl0wAl1pP5Pb
	7Ug9lJ4kX+dKP7LXSQIoU6Rt+QvALlfMKBFyUBu4/q5EMAiO5PHzIuNEUU4Ps42h8id6vGa9JwAQW
	ElekbSXoBrbHQmmTodlMfSnzmvSY4Up+AxpZAz8/Hiceef96H6AfqO5vmrqAxiAH9G29oUGx5U9t/
	4IiTyLzEJbM9/gBcaLLHPw3YWDtVVf8yW6NtKB1wTMCnD8dJes3fYjoMicc8KIMZVL4VAJth3u6fa
	nxQaP0Ph5x/sFTFhx5eA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvfNJ-000000013Bu-3Mdy;
	Mon, 08 Sep 2025 17:09:53 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvbXq-0000000HEsR-2b2a
	for linux-phy@lists.infradead.org;
	Mon, 08 Sep 2025 13:04:31 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-45ddddbe31fso11705165e9.1
        for <linux-phy@lists.infradead.org>; Mon, 08 Sep 2025 06:04:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757336669; x=1757941469; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6hVFR7tlfJ4rwCckjFd0RFg5PR9+fm+hwaJJl+Zp7RE=;
        b=Q1Y8VDu+I3wYy5WPKgorwUiRdIE+FxsmRsKxcdHheotV3KZPMR2cL/CF3u7Pv/koNB
         De6YbuEE+rHpY8veW7pwwpe1SFqpY7hfOjKonwOEhZ8KVCfwJCIQharCiSZSlmW69Sq8
         GhKPKahjAm1DW6b1bHmNOj4QhiKMeKmmKW27cBamdDLHCp3T/J6o67528i6OUWfxj0tM
         lx765FJlqcfjlURssty210Ktvi9D4UT98UvIhD1ngXHbJhBNOIxIJxzDVIJXDeOye2be
         NM3eJ8Hty16ZXLQwrqsbQNuioH085BGM04oQR4d3UpA1HMF1izZVrritfq5tGdvD2eQm
         HYow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757336669; x=1757941469;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6hVFR7tlfJ4rwCckjFd0RFg5PR9+fm+hwaJJl+Zp7RE=;
        b=P/FM5EZ9s+yr6qz47tJkSkZYtuGuw+QyNi1OAjjMIxbVxx+B+7Em6S4rIVxEV7n1Ld
         DLgspdW68+VELe+bYZz673qRwRiHhx85/3Xz/w3wXeHPnZJwRYDwakkRRyIFYTHpD4J7
         sCyJbKm9wc4gErJmjTjabh7wSqS26fKmBrbmfR5bu6yk6Gr+K45BAzIp5LB7kpDKYV88
         5pyfRReAs/kvHOkQBnvfcm8UTWklIfAN0BanJVjJWo/iONPvNTpSrlj/ms5NbrjvSTWB
         +b7HF7Hp38bpn+AhzNnZDDLZtLL7Q+5CFtTLnydCcOZafINL6w83G5fM+UOM/8Vq+Hxv
         2FCQ==
X-Forwarded-Encrypted: i=1; AJvYcCVvPO0ohELaiyCMOgK/l7IomQndUZxpcnsfZBR71ywcAYFTtGehMzjFr7G7HOHZn/g2wLv5KxOoRS0=@lists.infradead.org
X-Gm-Message-State: AOJu0YywOGQiRuHa15h7g261L7FFXXMnJxMMo9AigWlzR1LOiLmmSXh7
	zi5S8h5HTlJSXkXNeTgorxbN7CG0Gt5saVMjcTFs2I7J+pxDtfK4z1NlYxsSQHj6Nk8=
X-Gm-Gg: ASbGncu0cVSGGTP0QGlwz5JBzwgMm1spil+umTXmXmTk0Une2PBGVpA/yX4S3+njl7E
	4by8Ryq9B2SE5J9R59EziF+VJb00h8G/UtOofcjtvbeulYb7K58k4qhwlCjIVlE0dUNWuujYKd9
	xMiL1oAcMu1287bk2DMGZW/gEzyGSE9pgR8LR143QOBGzyGPgY4exy5alDj0n8Sm+BtvhfQHgvy
	Z02azRHyXjZKYIu/2MLtuZY84V0RASL1yqcazuh+u7UniEcQifmL26uxRtalNAs6ivFUbRw3A8W
	bMEm0x35ADioW6mBS1I4fwgcM6DwMDxs2KWq7u551FO1f2aat9hkX+BMrCy0UGicQdxOYoRruSd
	SRgrYRDJUG/nXoEJ39TtKhKvDflY9DQDUdnnK8yr3pjY=
X-Google-Smtp-Source: AGHT+IF6rpGHIQqohS9lzYVCz3pQ7EeM5njM+scjW7GHsTFOc2+YN9gxLQmujK0s7N4N9Z14XbFXDQ==
X-Received: by 2002:a05:600c:358a:b0:45b:9322:43fc with SMTP id 5b1f17b1804b1-45ddded6b98mr60937485e9.29.1757336668917;
        Mon, 08 Sep 2025 06:04:28 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45dd6891d23sm145632475e9.4.2025.09.08.06.04.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Sep 2025 06:04:28 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 08 Sep 2025 15:04:21 +0200
Subject: [PATCH v3 4/5] phy: qcom: qmp-combo: get the USB3 & DisplayPort
 lanes mapping from DT
MIME-Version: 1.0
Message-Id: <20250908-topic-x1e80100-hdmi-v3-4-c53b0f2bc2fb@linaro.org>
References: <20250908-topic-x1e80100-hdmi-v3-0-c53b0f2bc2fb@linaro.org>
In-Reply-To: <20250908-topic-x1e80100-hdmi-v3-0-c53b0f2bc2fb@linaro.org>
To: Andrzej Hajda <andrzej.hajda@intel.com>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=5803;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=lOUHhuJduyd4uVL3cdLjbnnx7qqWeLxF7qvYd0HnxIo=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBovtRXFe7zxBwluA3jvmm4gOBQteCg0RDZ+ZE5pQde
 sVco1pWJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaL7UVwAKCRB33NvayMhJ0QBHD/
 4sPNXHxrN6EZYj8eY+ad2W5jKQqfW73Syl5NqdPrSaEnMVQ51QkdM++uGuTof+3Z4lK+NzCtHncnoc
 YnlRcw6Ww+hrzwyLoch8mBSHBxujd+nyYgREAq6u9+zE5F22HfD4hlCJAxMJbKO5AxnNKD42tcxlfb
 uDvR/P968VaYOnbwQEuhj1lfwXXWIBce9pfBstsRMKL0xCmSDruSB+2Lg/OXlgHXm5uQ5vJ/xO1irN
 AM2/lR+bXnHYD6jfW7fMHBnyrOYmVZChDpTDuw90ma/LYPjAYTtIFY/ElNkvr3XwxEOUWf3xIPS8g2
 O4KqI7z2GG9pKglCS/yChRcBq7iOI/LnCNvmsNcS9hjOw/Z4ydXSqBQYResJPLBhxVDwbkNQzh8Fxx
 4wj5c3d0p1XoVgIVQpADzFJUc583sA0a+3qhSusdHT9mZamqdO3+2sQz1gmOERol+oMb/Il+aahINK
 SdiKM0lXcUCoryjZvoHmXyD3SoKXtRlDEq1DexAgrijjj9rqyAHmJGuVTpVpi6RoEF2eGktiTgo/mX
 GYyg0KV98TF6Av5eEGmDF1in850fJHAW3Sd9RvTuXSZkN/D7oNDZ4QksOcNbWZ5QLnh9q8B9TGI5pZ
 334QiQfnZVqGPHgoo16ns3m0pa+CyKNU1VPjcb9hFE+omsIIcnyP8K8Ez8ZQ==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250908_060430_662934_E55533CA 
X-CRM114-Status: GOOD (  19.99  )
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
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 132 ++++++++++++++++++++++++++++--
 1 file changed, 124 insertions(+), 8 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 7b5af30f1d028c592500e723ecd27b54ed554709..f3f91a69dc8b81e049cd06f7ab4f04baf57776cd 100644
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
@@ -1744,6 +1745,21 @@ static const u8 qmp_dp_v6_pre_emphasis_hbr_rbr[4][4] = {
 	{ 0x22, 0xff, 0xff, 0xff }
 };
 
+static const u32 usb3_data_lane_mapping[][2] = {
+	[TYPEC_ORIENTATION_NORMAL] = { 1, 0 },
+	[TYPEC_ORIENTATION_REVERSE] = { 2, 3 },
+};
+
+static const u32 dp_2_data_lanes_mapping[][2] = {
+	[TYPEC_ORIENTATION_NORMAL] = { 0, 1 },
+	[TYPEC_ORIENTATION_REVERSE] = { 3, 2 },
+};
+
+static const u32 dp_4_data_lanes_mapping[][4] = {
+	[TYPEC_ORIENTATION_NORMAL] = { 0, 1, 2, 3 },
+	[TYPEC_ORIENTATION_REVERSE] = { 3, 2, 1, 0 },
+};
+
 struct qmp_combo;
 
 struct qmp_combo_offsets {
@@ -4167,9 +4183,114 @@ static int qmp_combo_probe(struct platform_device *pdev)
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
+		enum typec_orientation usb3_orientation = TYPEC_ORIENTATION_NONE;
+		enum typec_orientation dp_orientation = TYPEC_ORIENTATION_NONE;
+		struct device_node *usb3_ep, *dp_ep;
+		u32 data_lanes[4];
+		int count, i;
+
+		usb3_ep = of_graph_get_endpoint_by_regs(dev->of_node, 0, 0);
+		dp_ep = of_graph_get_endpoint_by_regs(dev->of_node, 0, 1);
+
+		if (usb3_ep) {
+			ret = of_property_count_u32_elems(usb3_ep, "data-lanes");
+			if (ret == -EINVAL)
+				/* Property isn't here, ignore property */
+				goto usb3_mapping_done;
+			if (ret < 0)
+				goto err_node_put;
+
+			count = ret;
+			if (count != 2)
+				/* Property size is invalid, ignore property */
+				goto usb3_mapping_done;
+
+			ret = of_property_read_u32_array(usb3_ep, "data-lanes", data_lanes, count);
+			if (ret)
+				goto err_node_put;
+
+			for (i = TYPEC_ORIENTATION_NORMAL; i <= TYPEC_ORIENTATION_REVERSE; i++)
+				if (!memcmp(data_lanes, usb3_data_lane_mapping[i], sizeof(u32) * 2))
+					break;
+
+			if (i >= TYPEC_ORIENTATION_REVERSE)
+				/* Property value is invalid, ignore property */
+				goto usb3_mapping_done;
+
+			usb3_orientation = i;
+		}
+
+usb3_mapping_done:
+		of_node_put(usb3_ep);
+
+		if (dp_ep) {
+			ret = of_property_count_u32_elems(dp_ep, "data-lanes");
+			if (ret == -EINVAL)
+				/* Property isn't here, ignore property */
+				goto dp_mapping_done;
+			if (ret < 0)
+				goto err_node_put;
+
+			count = ret;
+			if (count != 2 && count != 4)
+				/* Property size is invalid, ignore property */
+				goto dp_mapping_done;
+
+			ret = of_property_read_u32_array(dp_ep, "data-lanes", data_lanes, count);
+
+			if (ret)
+				goto err_node_put;
+
+			for (i = TYPEC_ORIENTATION_NORMAL; i <= TYPEC_ORIENTATION_REVERSE; i++) {
+				switch (count) {
+				case 2:
+					ret = memcmp(data_lanes, dp_2_data_lanes_mapping[i],
+						      sizeof(u32) * count);
+					break;
+				case 4:
+					ret = memcmp(data_lanes, dp_4_data_lanes_mapping[i],
+						     sizeof(u32) * count);
+					break;
+				}
+
+				if (!ret)
+					break;
+			}
+
+			if (i >= TYPEC_ORIENTATION_REVERSE)
+				/* Property value is invalid, ignore property */
+				goto dp_mapping_done;
+
+			dp_orientation = i;
+		}
+
+dp_mapping_done:
+		of_node_put(dp_ep);
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
@@ -4189,11 +4310,6 @@ static int qmp_combo_probe(struct platform_device *pdev)
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
