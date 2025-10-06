Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BFF7FCCA476
	for <linux-phy@archiver.kernel.org>; Mon,  6 Oct 2025 13:55:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UwKUIPYN6MiWimoe3eTCWCC7eBugDPlxticvjQGhIQI=; b=gvcmuomw11Rczx
	YFGS+epilEDZPvoYL6l0mqUnhVhjCvPpMlMOLTwNwqvjbmd+K4XOqoET1R05gaWFY+/tDUknPBDUz
	7wii87k+BJYSaxWogOtCoMjN0jgrf4e0uXy0yEsMxHjhaJngfyglJ+H3o3tY7he/WZExjffx9PseI
	u7iXs+23aHqoi7LZ0cNcfIar8bxKanUnr9DZQpUoI2RPQo+dBed5F11iIsCO2sZWPmEWgiCl9gKv8
	EIo1U3Qo/chtl6X52qHvq+OfoGERtXHwdUF4SJOQmRw5nw+T152/CrwYwgOsLW0OhEu7c8sWZVxsm
	R9LrsJqQ7qpcss7TV8MA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5lgM-000000007iJ-1w7b;
	Mon, 06 Oct 2025 13:55:18 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5lgK-000000007gc-02Y6
	for linux-phy@lists.infradead.org;
	Mon, 06 Oct 2025 13:55:17 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-46e384dfde0so56720465e9.2
        for <linux-phy@lists.infradead.org>; Mon, 06 Oct 2025 06:55:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759758914; x=1760363714; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+3PwY2Su8FGUm8I2o7iZNHQaUPPiuR6Gy8cotqp3czU=;
        b=tQRO41KYn2PZ+Lu7cw4HHunU6/cz8J5IjGfV68rvKKVWnkz0uVj7XZHSSR3Q+XXerW
         A28Du7JMpcvQVnu5tfudOftFJ3UeSkGsjPDzcjh0n7ipT63Y82NecW8tUl9a6/qaajEk
         0KG5aE3E4Ss2REWU/SarKMH7TOHG0mVnWuqIabmTpNYPmeRS/EOrp4ebKBTrDkfAOAyK
         qAt6khGcjbX9oVte0ELF5gYlEqS5D+/OmuIcmxyD5ql4Odzd34uObZ87BCUq2Em8kOnu
         ozhUKv+9s2nBlkYpiU9iFh4EQegssNIBwazXdn8+SKFOMJitlZPEBR7Z59UJkAOiQ8Fh
         iCGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759758914; x=1760363714;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+3PwY2Su8FGUm8I2o7iZNHQaUPPiuR6Gy8cotqp3czU=;
        b=hn1ODoXTDyRjdQRp9bv4R821TXL1rxpAqPxcYws/8uEh2jtXU0FeW+jFzHhcli7QjZ
         4UEhY6V0lbIRHoY1HUHcnp0Cx65RuPWMmVsH5ZGtGOq17Qz4V1XE5U9ZoH8xR5ghB27U
         eOfohXU4cImhQT0shsrQAeeFTDaa5oJtnWQmn/PA5mW/wINJroJYWRRn9nWuPIdo4Keb
         QZEkPCCxUF8qeMXY4R9v1yGqBiYtDYW/TM6nA54iCaq3Cq29cjop3HRkVeUOX5/qwofq
         5UEmfDj/4+v2ihVN5n5r1vJGPc/nXsb5FWGS6Gz81jcoDxDlQxh0x4dv5KQ5YBtaRijC
         8d8w==
X-Forwarded-Encrypted: i=1; AJvYcCU/UU1aKxZzfNlJgD0rudi02GgkXRzxHPD90t8uGK34xNsG7TzUqnevtU2S5Sjv2OFY2BztpwaRs3s=@lists.infradead.org
X-Gm-Message-State: AOJu0YwTQoVqd1iZw9T5oXiNcr471nLTszHY+9VDiRgqA4pni4J/vcy0
	Du3lwzpIppVf3rZG8XdFxZosR246Ytsp/2jYz3ZqzbVnOpqf99mxoZCR5lt3YmeoSug=
X-Gm-Gg: ASbGncuTXjRfrwjI6WkuS0hl5Y++qGhuh57Q62u+XQ5FSpuIzddzGRea7zc2HY2bLfq
	1xLLc+w/siuHfmAkButrXom2AuDuz63o9ATNCnuhwFhf35fMlOwcyUucTQfmZBpeuVlDNqQAVn0
	hpIYwwvRtHrBVOLLiUP/SmWVK0zRGArXQ0VffelEWxB+Y+h3yTHo0ptsjuS+I/j2QBvGiq1iVjD
	i0aylF+JZ4W8BBrhORjux+FsToo8CKXaJratGbdk3VDU9iXdWOp+Pz+LuisI6ADF1sxFVHH6G8H
	wryqabQK4V9VYQH4U/QXH1yUShGoojXobDrEuZ81GnSgNw8tqQzXNbI8U3NTHp0t31AbV7J8buZ
	TQubz/F7oI3FAE+5Buyg/AHVbBbACI/jfU5JJtH7KjZE7GwOkxZazpc8w9Y8DEMhSbeOq9gA=
X-Google-Smtp-Source: AGHT+IE1WdC9uOmXoaHZ/kUEuDfuryRH8fzwZAqkoRcIFoX1p4U9e95Adhwxwb44aVahTYfD8Cr7jA==
X-Received: by 2002:a05:600c:621a:b0:46e:2801:84aa with SMTP id 5b1f17b1804b1-46e710b22a6mr88635645e9.0.1759758913732;
        Mon, 06 Oct 2025 06:55:13 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4255d8a6daasm21291921f8f.7.2025.10.06.06.55.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Oct 2025 06:55:13 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 06 Oct 2025 15:55:04 +0200
Subject: [PATCH v5 2/3] phy: qcom: qmp-combo: get the USB3 & DisplayPort
 lanes mapping from DT
MIME-Version: 1.0
Message-Id: <20251006-topic-x1e80100-hdmi-v5-2-c006311d59d7@linaro.org>
References: <20251006-topic-x1e80100-hdmi-v5-0-c006311d59d7@linaro.org>
In-Reply-To: <20251006-topic-x1e80100-hdmi-v5-0-c006311d59d7@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=6594;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=Jvq57DphFi7wtmww07r08dRLu0LQHutOYqaDw8wnv1Q=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBo48o+eHZS3KJP3oymWX7K6DJ1dPPz7JTIdOLexb1y
 zSySfD+JAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaOPKPgAKCRB33NvayMhJ0crgD/
 9+vb85Pg/4YGgVWF3VdV7Cy5RDYLMQkd0TSxBpUqpjSbZ6mOsP+HfyQS8RLO0cjc8pNizXXbsQ/Eww
 jjCRocAOQJx4kz1rSuFE0jStlrU2Zgw5oJ3iksqMjJq5u84/ZO2Nkglvmmpb3b7ao15vtG3B5XdZPA
 7R9srTMGOLe++0MEFipAIoKG+V8Z/e3o0FteEVeQuwNz03OXOvWri5kFN+JG2tvKupd1PvMktWvEfh
 toU5/SAas4fmC1nmpWNK2XnNTGoajdSgafDrzKGkKB4o/Bd1aj1MCDnNpsFFlR7KjhXudWmDoqLtYt
 5aCgRhLsNQTPo1DDhWDmobPYgYPF/y55JvLmFJY6NAm9HcU0HiUJnF/iUD27i+j2bxubJzw2TCSj1H
 HM77gQ1FGUyo9pDL7d4HLgxoUcyLb7/hPfTnp3sTpzsKa7E6KButEz2GJO/r2KIxextHrQVZTkJLKc
 67JpyooC+5QKYcTaag8xO4SgnIuHi1iBdNLz4cD5uvBeEjeW+9jlXOLm1oBa7GI0S2cq5uGTxQHcV3
 DgRNDOrHP6GP2OBURBK3vregYSeTheiVkmYYCSqz9oy10iTs6Cm9k++tV3dUMAC2YHk/FB7iEe1HXS
 GqZak7w0bdZqbuy9VNxUphFKnvnjvT7BYD2HFlsZstMaddgCwNyhhvgTzM9g==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251006_065516_116948_CF1320C8 
X-CRM114-Status: GOOD (  21.77  )
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
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 145 ++++++++++++++++++++++++++++--
 1 file changed, 137 insertions(+), 8 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 7b5af30f1d028c592500e723ecd27b54ed554709..da1823fa5daf316cdec72cdb03159f02961f8545 100644
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
