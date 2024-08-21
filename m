Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57923C52D6F
	for <linux-phy@archiver.kernel.org>; Wed, 21 Aug 2024 07:38:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+D3BQR6KOK7wqt5LoG/cqum4HfovYhWyuJPWCWJNEew=; b=HUyc21eUvrQyLh
	P5MrI6QnJZDemcIDFR9u/gps53Djo0WKR/EhB0Y4IeD8KFbJMyIEuKIRXp4vXNl1OEwplEzKiTVO8
	0FzINjnmHINGvRFi/9dbcYFflefYoFh12ctPvIvr0APN8htA5I1NcmplXguzVe/o4G5QN09DKfxyn
	w8aMoHkrUwBo7a/g4qVJVRcftVVlJuvjCnORLxXsf3RN5Z5PzM6awlE7yDLt5rfMUQ3O8AKhKiUaS
	a+Fm0ZGbuEUY+Zfpa4N3pCAxkiSrp0yd4c8bkEhLf86VcNIdo9KEbNknNPc+/S7itELc4npC0WcER
	Zk7ZYB5ckmt+t4xgS0XA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sgfvf-00000007wXZ-0KQo;
	Wed, 21 Aug 2024 07:38:51 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sgfuw-00000007wQz-1pjy;
	Wed, 21 Aug 2024 07:38:08 +0000
From: Dragan Simic <dsimic@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1724225882;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=RT+xNvS91oUZmgrFm0whaj9pHE06IUbxucr47hS+SAk=;
	b=bp1P0FN5SUbljLV+qPoyYshQdGr/Ss6zbzGvldDpeAR8Jpt12GZE6QZBne6UW7v0kHgVC6
	NbEGsn51h972eBdHe8U7An8hbzoba85u0W/jdAm9GFy8nZ2bHpr7H8trpBg1nlzjDdiUE3
	psAMVGJ8kjOCiSXw4N9GjCD00aY8d7yx2u3Yob2/Alp1+tEHxeHZDtuQfAIMsSfgbD14KB
	LaZuMUy4bV5ZT8Y4XV3WJ2s18NrGGuzsbwUK0XKeZJ3aIl6UnvRQTiutL1l5xzsfMf6wQw
	Loqs8M+BagMZvzcUg3KAHSCemT0XWOj1qLTuTfGV67hktM9QlC5q9uVQgJUrZQ==
To: linux-rockchip@lists.infradead.org,
	linux-phy@lists.infradead.org
Cc: vkoul@kernel.org,
	kishon@kernel.org,
	heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/3] phy: phy-rockchip-inno-usb2: Perform trivial code cleanups
Date: Wed, 21 Aug 2024 09:37:53 +0200
Message-Id: <14167d6b025e18d2a06ee429feea6551ef6f9c44.1724225528.git.dsimic@manjaro.org>
In-Reply-To: <cover.1724225528.git.dsimic@manjaro.org>
References: <cover.1724225528.git.dsimic@manjaro.org>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240821_003806_784824_1157DDFE 
X-CRM114-Status: GOOD (  13.48  )
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

Perform a few trivial code cleanups, e.g. to obey the reverse Christmas tree
rule, to avoid use of "{ ... }" code blocks where they aren't really needed,
or to avoid line wrapping by using the 100-column width better.

No intended functional changes are introduced by these code cleanups.

Signed-off-by: Dragan Simic <dsimic@manjaro.org>
---
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 27 +++++++------------
 1 file changed, 9 insertions(+), 18 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
index 4f71373ae6e1..113bfc717ff0 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
@@ -418,9 +418,9 @@ rockchip_usb2phy_clk480m_register(struct rockchip_usb2phy *rphy)
 
 static int rockchip_usb2phy_extcon_register(struct rockchip_usb2phy *rphy)
 {
-	int ret;
 	struct device_node *node = rphy->dev->of_node;
 	struct extcon_dev *edev;
+	int ret;
 
 	if (of_property_read_bool(node, "extcon")) {
 		edev = extcon_get_edev_by_phandle(rphy->dev, 0);
@@ -445,7 +445,6 @@ static int rockchip_usb2phy_extcon_register(struct rockchip_usb2phy *rphy)
 	}
 
 	rphy->edev = edev;
-
 	return 0;
 }
 
@@ -1327,21 +1326,19 @@ static int rockchip_usb2phy_probe(struct platform_device *pdev)
 	struct rockchip_usb2phy *rphy;
 	const struct rockchip_usb2phy_cfg *phy_cfgs;
 	unsigned int reg;
-	int index, ret;
+	int index = 0, ret;
 
 	rphy = devm_kzalloc(dev, sizeof(*rphy), GFP_KERNEL);
 	if (!rphy)
 		return -ENOMEM;
 
 	if (!dev->parent || !dev->parent->of_node) {
 		rphy->grf = syscon_regmap_lookup_by_phandle(np, "rockchip,usbgrf");
 		if (IS_ERR(rphy->grf)) {
 			dev_err(dev, "failed to locate usbgrf\n");
 			return PTR_ERR(rphy->grf);
 		}
-	}
-
-	else {
+	} else {
 		rphy->grf = syscon_node_to_regmap(dev->parent->of_node);
 		if (IS_ERR(rphy->grf))
 			return PTR_ERR(rphy->grf);
@@ -1358,16 +1355,14 @@ static int rockchip_usb2phy_probe(struct platform_device *pdev)
 	}
 
 	if (of_property_read_u32_index(np, "reg", 0, &reg)) {
-		dev_err(dev, "the reg property is not assigned in %pOFn node\n",
-			np);
+		dev_err(dev, "the reg property is not assigned in %pOFn node\n", np);
 		return -EINVAL;
 	}
 
 	/* support address_cells=2 */
 	if (of_property_count_u32_elems(np, "reg") > 2 && reg == 0) {
 		if (of_property_read_u32_index(np, "reg", 1, &reg)) {
-			dev_err(dev, "the reg property is not assigned in %pOFn node\n",
-				np);
+			dev_err(dev, "the reg property is not assigned in %pOFn node\n", np);
 			return -EINVAL;
 		}
 	}
@@ -1386,8 +1381,7 @@ static int rockchip_usb2phy_probe(struct platform_device *pdev)
 	if (ret)
 		return ret;
 
-	/* find out a proper config which can be matched with dt. */
-	index = 0;
+	/* find a proper config that can be matched with the DT */
 	do {
 		if (phy_cfgs[index].reg == reg) {
 			rphy->phy_cfg = &phy_cfgs[index];
@@ -1407,10 +1401,9 @@ static int rockchip_usb2phy_probe(struct platform_device *pdev)
 		return PTR_ERR(rphy->phy_reset);
 
 	rphy->clk = devm_clk_get_optional_enabled(dev, "phyclk");
-	if (IS_ERR(rphy->clk)) {
+	if (IS_ERR(rphy->clk))
 		return dev_err_probe(&pdev->dev, PTR_ERR(rphy->clk),
 				     "failed to get phyclk\n");
-	}
 
 	ret = rockchip_usb2phy_clk480m_register(rphy);
 	if (ret) {
@@ -1446,13 +1439,11 @@ static int rockchip_usb2phy_probe(struct platform_device *pdev)
 
 		/* initialize otg/host port separately */
 		if (of_node_name_eq(child_np, "host-port")) {
-			ret = rockchip_usb2phy_host_port_init(rphy, rport,
-							      child_np);
+			ret = rockchip_usb2phy_host_port_init(rphy, rport, child_np);
 			if (ret)
 				goto put_child;
 		} else {
-			ret = rockchip_usb2phy_otg_port_init(rphy, rport,
-							     child_np);
+			ret = rockchip_usb2phy_otg_port_init(rphy, rport, child_np);
 			if (ret)
 				goto put_child;
 		}

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
