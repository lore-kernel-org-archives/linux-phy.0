Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5B00CA1005
	for <linux-phy@archiver.kernel.org>; Tue,  2 Sep 2025 09:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jY6XENo3Npq4ztb90FqpR2917Waj29Z2jI9N8ZfQVoc=; b=JL9QNzkBjrsUgU
	OPs7F2y47aofAYaqsgwQ1WnThu0UtEnHdyCZdhNSCEGEOfbe/XZlr7n5VDjhzI9uVN6V9Rak9lV/y
	4MWJmKIvn/m4zd9dpd74ypcEmp+RBjUnLJ41JGcnGw6rS8ouBBbWNINgF3sru3mjyMLrpUjGiRhQG
	mGVke5VJ6saYThjEf1zky1mYlPZRvNusxYDUYotCIwCglwinVMp9/wQOGiv2gtFeq6YVwp7VbBOBz
	3rMihp3cTHFNGNb+eY/6Z282+G/J/7dwXZQhxclKrYFfoAdGyfZf61c/UQh7DaDKT5RPipn0anCYl
	LGsSjCjdCRwGZ1jxsafA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utNHB-0000000GM4A-2WHv;
	Tue, 02 Sep 2025 09:26:05 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utMsZ-0000000GE9J-00nj
	for linux-phy@lists.infradead.org;
	Tue, 02 Sep 2025 09:00:40 +0000
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-45b8b7ac427so11659655e9.2
        for <linux-phy@lists.infradead.org>; Tue, 02 Sep 2025 02:00:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756803637; x=1757408437; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uG2Ow/KrfUPau7cUdJ1kjwBZjHHiJIe47jnJYV0FS6M=;
        b=bLqOxTjS1+zS4OPY7N7j1UOgckAnIpGT3IpMIIaon24cYRDsYWwD8uu21m4eI6EuE+
         eJqwlG+hhL8ISRKCtfGTHEoATW4tZZD/kf76upuTUNdI9qq4zYp7tNv7faa5RjyhTJm4
         gMoNelO3YV2+8rqZujWMgzt6dYZcIox8jBA6ohQAz011WaZOgux5d0P2EDrQ6JPqm4uE
         Z1kvPXzaNhM/EeBld74dTk732gqolM1PaITHG0+nxb/Bd32cNsVMpKOiCz1C7Po0KFrI
         V2g3IW2vQXN7ltERPq1O5G1TCaiqIIwEYNCOrs34+6rIdxglxmp4w0LeGxjr0szf0uu4
         hxpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756803637; x=1757408437;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uG2Ow/KrfUPau7cUdJ1kjwBZjHHiJIe47jnJYV0FS6M=;
        b=SUD13J5NmTx8zcM9V97uv2q4GjT5sb4mFy4O7Xqjs5M1jruUmUnndArwTs9GVpatZU
         bxPVOslODpxjSBnVGWv9soxIUHUJHG96Yc4fOWn3rv7YsOateVuVv8Szz9mPNC/qFSeQ
         YsR1WxhUBppJBDoEm7Cg4Kr+b2r12vwgJz4zgdPAroHXZSHgwp7q1QB88tXomQEKEXaO
         /diX8U01qvCShEXRGnAfXq7LJyoNN/AilDMdZM9HODoVPGCZgOuplyrZS4mJVqkJfT/C
         sfI4zrS+JRuLrE6XMbPDur2CWvfH/zGqabdIW0BQURWmHNrTmWkmL0j5QkOtp8vXqqQg
         43mA==
X-Forwarded-Encrypted: i=1; AJvYcCVHhtvFS+Nf6pdssMC9whAx8gGX3QVgTzOSkKsnag/zfWqRuoU6O0fYqzdZcljuxmiheYCR7HMF0xI=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy/Br7TrObhIZbPh94AWWTMjUQ7jG+jmzRHcc6SWiLU2gLIOL0b
	9ciKnnDKsRs6RldndQTV3on1EKeRGkZOVDefhQtF7XnrYJYxzRsLtSBJKF81jSwFrLE=
X-Gm-Gg: ASbGncsarbpS9JMSlko+7WEI9QdSgnqbG9vyvWSsWHqrWcGy3u0NbI+wWf69wEow+p+
	OfWXU/zJjtD9gfEKCojnBsqvcDlYN+V4qyQcAkklMHxeLI/31kbD+TTdNB7L3cu747YnGKUVnxn
	s1Tyt/bbsQQo9sI5Jbdx5qNIkPBAKQmpb1fuaGZ5APelTfBPzOl/IozzYClEwcksYhWFQGJp3WS
	H5yvLzWnZtS2xR/0hyADjX41mQpfHmpPTn2lSrYYS2FQ489j5lXlD7igXi5KM2qEUiOihnOGrWp
	YOv6hZcak+PhZn1ZiScTqJzWUQK9rkb8Kc+srQRkKL6BTDa1KZ8x58a4cKY+MYMrpnIEiNJGJ2p
	udMMUYaZOTbwZ1wv1ZFZ0qKQsAlPF+gunNFwSK2Mv0LY=
X-Google-Smtp-Source: AGHT+IFar9tnrVzNvRWv4vs9RDcwWH8x6/oKpKs9B26t/CVh/B1GNcOENkRhKdPDKrLb8eWA4C7nKg==
X-Received: by 2002:a05:600c:4fcd:b0:45b:7185:9e5 with SMTP id 5b1f17b1804b1-45b85525cddmr94188905e9.5.1756803637260;
        Tue, 02 Sep 2025 02:00:37 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b7271cd01sm261112045e9.23.2025.09.02.02.00.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Sep 2025 02:00:36 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Tue, 02 Sep 2025 11:00:31 +0200
Subject: [PATCH v2 4/5] phy: qcom: qmp-combo: get the static lanes mapping
 from DT
MIME-Version: 1.0
Message-Id: <20250902-topic-x1e80100-hdmi-v2-4-f4ccf0ef79ab@linaro.org>
References: <20250902-topic-x1e80100-hdmi-v2-0-f4ccf0ef79ab@linaro.org>
In-Reply-To: <20250902-topic-x1e80100-hdmi-v2-0-f4ccf0ef79ab@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=5509;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=R+bIubWm0CbZM++7XjFU57IsDC7CloYPz/RJjoqOA9w=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBotrIvrkSdnqOJO70/0vuXWzbieSL0D81n8KBphRed
 tj4KjvyJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaLayLwAKCRB33NvayMhJ0RTeD/
 90ggmuB07LjRwlGik2gYLD72R3CEE3SrAzufyoqTQI+x9T3fvDYPHXUp/A0ta9zvEyAhWpKNnq2Mdt
 53lO9z69AYW1LZDM+32RjlC4he5WSPgwq+pMJmgLY70Xtg1CRi8b3DTByIFW5aWkmUpZPKI6Ri5xgp
 nmhe3r9f/o4k7eIaaQxbrQLHPBK14myFoK+GbQ+AkmUKy+PvWbcqULQqWRVuifz1IE1qr+cYDB6NpF
 IwICHTosvb1DH2pfJGR2j2pu2vD50T6Eo2HnjmBcfviNkznIqD5hIBquQ/8iZU8BQFiInEguT/T0c7
 ETm8lJcCJaQnOjuHmdeg9ab3UPHMA5grQcUiQMYKjy03lZi3Tm5aNZ2I/O943EfXrbFd9PjsMfDyWO
 pueWSoOlE7ItK2P/vV2POhuiACjdU3XXtNOqfwSVKzFpkagxo1Caf7S5SYrcIxg0ZyXbRDtLkMVfVf
 Tgpc2FK2NMYDQPvP1hhUDafXx39BjHH4QEAH9yADof3hIw5Vkn1qdh8eVsEnrEobGCdbwHFf8q6Kpk
 Do6QuVIl/SYEgOCM8/wjOoo83y5Q1ML6M4fDpW+zUBlrdeodZu4OshAjavWlG+/kNsL6dhtUzcJAi4
 fnSHrb5HAbSTLf9/1FjfXG/mBcHk1RcYd3KoW6rpzP8oRWHE9X2BKO23x35Q==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250902_020039_049490_7042A316 
X-CRM114-Status: GOOD (  19.70  )
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

Get the static lanes mapping from DT and stop registering the
USB-C muxes in favor of a static mode and orientation detemined
by the mapping.

This allows supporting boards with direct connection of USB3 and
DisplayPort lanes to the QMP Combo PHY lanes, not using the
USB-C Altmode feature.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 118 +++++++++++++++++++++++++++---
 1 file changed, 109 insertions(+), 9 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 7b5af30f1d028c592500e723ecd27b54ed554709..9a121a61e77ed8a839fa0fb588ec379382fb63b2 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -24,6 +24,7 @@
 
 #include <drm/bridge/aux-bridge.h>
 
+#include <dt-bindings/phy/phy.h>
 #include <dt-bindings/phy/phy-qcom-qmp.h>
 
 #include "phy-qcom-qmp-common.h"
@@ -1744,6 +1745,85 @@ static const u8 qmp_dp_v6_pre_emphasis_hbr_rbr[4][4] = {
 	{ 0x22, 0xff, 0xff, 0xff }
 };
 
+static struct qmp_lanes_mapping {
+	u32 map[4];
+	enum qmpphy_mode mode;
+	enum typec_orientation orientation;
+} const qmpphy_lanes_mapping[] = {
+	/* No lanes connected, set 'safe' USB3 mode */
+	{
+		.map = {PHY_NONE, PHY_NONE, PHY_NONE, PHY_NONE},
+		.mode = QMPPHY_MODE_USB3_ONLY,
+		.orientation = TYPEC_ORIENTATION_NONE,
+	},
+	/* USB3 Only */
+	{
+		.map = {PHY_TYPE_USB3, PHY_TYPE_USB3, PHY_NONE, PHY_NONE},
+		.mode = QMPPHY_MODE_USB3_ONLY,
+		.orientation = TYPEC_ORIENTATION_NORMAL,
+	},
+	/* USB3 Only, reverted */
+	{
+		.map = {PHY_NONE, PHY_NONE, PHY_TYPE_USB3, PHY_TYPE_USB3},
+		.mode = QMPPHY_MODE_USB3_ONLY,
+		.orientation = TYPEC_ORIENTATION_REVERSE,
+	},
+	/* USB3 and DP single lane */
+	{
+		.map = {PHY_TYPE_USB3, PHY_TYPE_USB3, PHY_NONE, PHY_TYPE_DP},
+		.mode = QMPPHY_MODE_USB3DP,
+		.orientation = TYPEC_ORIENTATION_NORMAL,
+	},
+	/* USB3 and DP */
+	{
+		.map = {PHY_TYPE_USB3, PHY_TYPE_USB3, PHY_TYPE_DP, PHY_TYPE_DP},
+		.mode = QMPPHY_MODE_USB3DP,
+		.orientation = TYPEC_ORIENTATION_NORMAL,
+	},
+	/* DP single lane and USB3 */
+	{
+		.map = {PHY_TYPE_DP, PHY_NONE, PHY_TYPE_USB3, PHY_TYPE_USB3},
+		.mode = QMPPHY_MODE_USB3DP,
+		.orientation = TYPEC_ORIENTATION_REVERSE,
+	},
+	/* DP and USB3 */
+	{
+		.map = {PHY_TYPE_DP, PHY_TYPE_DP, PHY_TYPE_USB3, PHY_TYPE_USB3},
+		.mode = QMPPHY_MODE_USB3DP,
+		.orientation = TYPEC_ORIENTATION_REVERSE,
+	},
+	/* DP single lane */
+	{
+		.map = {PHY_TYPE_DP, PHY_NONE, PHY_NONE, PHY_NONE},
+		.mode = QMPPHY_MODE_DP_ONLY,
+		.orientation = TYPEC_ORIENTATION_REVERSE,
+	},
+	/* DP 2 lanes */
+	{
+		.map = {PHY_TYPE_DP, PHY_TYPE_DP, PHY_NONE, PHY_NONE},
+		.mode = QMPPHY_MODE_DP_ONLY,
+		.orientation = TYPEC_ORIENTATION_REVERSE,
+	},
+	/* DP 4 lanes */
+	{
+		.map = {PHY_TYPE_DP, PHY_TYPE_DP, PHY_TYPE_DP, PHY_TYPE_DP},
+		.mode = QMPPHY_MODE_DP_ONLY,
+		.orientation = TYPEC_ORIENTATION_NORMAL,
+	},
+	/* DP 2 lanes, reverted */
+	{
+		.map = {PHY_NONE, PHY_NONE, PHY_TYPE_DP, PHY_TYPE_DP},
+		.mode = QMPPHY_MODE_DP_ONLY,
+		.orientation = TYPEC_ORIENTATION_NORMAL,
+	},
+	/* DP single lane, reverted */
+	{
+		.map = {PHY_NONE, PHY_NONE, PHY_NONE, PHY_TYPE_DP},
+		.mode = QMPPHY_MODE_DP_ONLY,
+		.orientation = TYPEC_ORIENTATION_NORMAL,
+	},
+};
+
 struct qmp_combo;
 
 struct qmp_combo_offsets {
@@ -4123,7 +4203,7 @@ static int qmp_combo_probe(struct platform_device *pdev)
 	struct device *dev = &pdev->dev;
 	struct device_node *dp_np, *usb_np;
 	struct phy_provider *phy_provider;
-	int ret;
+	int ret, i;
 
 	qmp = devm_kzalloc(dev, sizeof(*qmp), GFP_KERNEL);
 	if (!qmp)
@@ -4167,9 +4247,34 @@ static int qmp_combo_probe(struct platform_device *pdev)
 	if (ret)
 		goto err_node_put;
 
-	ret = qmp_combo_typec_register(qmp);
-	if (ret)
-		goto err_node_put;
+	qmp->qmpphy_mode = QMPPHY_MODE_USB3DP;
+
+	if (of_find_property(dev->of_node, "qcom,static-lanes-mapping", NULL)) {
+		u32 mapping[4];
+
+		ret = of_property_read_u32_array(dev->of_node, "qcom,static-lanes-mapping",
+						 mapping, 4);
+		if (ret) {
+			dev_err(dev, "failed to read static lanes mapping: %d\n", ret);
+			goto err_node_put;
+		}
+
+		for (i = 0; i < ARRAY_SIZE(qmpphy_lanes_mapping); ++i) {
+			if (memcmp(mapping, &qmpphy_lanes_mapping[i].map, sizeof(mapping)))
+				continue;
+
+			qmp->qmpphy_mode = qmpphy_lanes_mapping[i].mode;
+			qmp->orientation = qmpphy_lanes_mapping[i].orientation;
+
+			break;
+		}
+		if (i == ARRAY_SIZE(qmpphy_lanes_mapping))
+			dev_warn(dev, "invalid qcom,static-lanes-mapping, keeping default\n");
+	} else {
+		ret = qmp_combo_typec_register(qmp);
+		if (ret)
+			goto err_node_put;
+	}
 
 	ret = drm_aux_bridge_register(dev);
 	if (ret)
@@ -4189,11 +4294,6 @@ static int qmp_combo_probe(struct platform_device *pdev)
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
