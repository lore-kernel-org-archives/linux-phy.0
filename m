Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F9ADCCD193
	for <linux-phy@archiver.kernel.org>; Thu, 16 Oct 2025 02:29:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XVnMnBylNDf0P3dY34ftgS44ggT9MpLMtwTo1d/QSis=; b=f3e5MuibTfXFwK
	nebW1/EgRh94YQcEKZrwF2610Jgdg8uHPqehhKXzn2b0sJUKOW2xNwP6yTobHOfTZdcffFnQUXuNX
	9ROA06OS5rKaPIpC50k95d4LbJfpkyDDOErZWGJXZYSV3moPZ/Djoum0LUFcLtOVnri+2wKmX431s
	ByidlAIzG84/uoeTYy8uRmDB8/Pp/5jG3bpVVD4tOgAXYoVQHcX/45g5ArNshsFGJJKIxqwA/LNdi
	nyzPEIyXPbJHDz96uOXAh7UwCxW05+Idy5GDhnkj9s6F5vMWYGlRTQYKAr0wyqvChoWh276iO2jze
	hAvVA8wev8l75QPWwzTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9Dk0-00000003HMP-2vu0;
	Thu, 16 Oct 2025 02:29:20 +0000
Received: from smtpbgeu1.qq.com ([52.59.177.22])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9Djq-00000003Gs3-3UfU;
	Thu, 16 Oct 2025 02:29:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=airkyi.com;
	s=altu2504; t=1760581699;
	bh=nQG0w7dhU7Aew5bKV30plkPn0nBnVdgTnfwSbxYLntU=;
	h=From:To:Subject:Date:Message-Id;
	b=SNne4gc91WMHhHaAMz5+5NArjkkA9rgz4oHbFGTmOuhEyAVgjQqDOWxF8EavmrFT4
	 YnKt/YqhmrgQkiETHxldz81QW2vt/kYR0AVK3fdR7ESZzEgSww3ZRJfJq/b4bPVxu/
	 n3AoE5MCxRvDPITq0aMwfCYQoyACSXLuzSNu800E=
X-QQ-mid: zesmtpgz1t1760581697tf65e1f89
X-QQ-Originating-IP: 6NbQJeS/+dGFQkjM52rtrshJx1shko+6S27zLhjeTRw=
Received: from DESKTOP-8BT1A2O.localdomain ( [58.22.7.114])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Thu, 16 Oct 2025 10:28:14 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 6632506262232562505
From: Chaoyi Chen <kernel@airkyi.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Sandy Huang <hjc@rock-chips.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Yubing Zhang <yubing.zhang@rock-chips.com>,
	Frank Wang <frank.wang@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Amit Sunil Dhamne <amitsd@google.com>,
	Heikki Krogerus <heikki.krogerus@linux.intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>,
	Dragan Simic <dsimic@manjaro.org>,
	Johan Jonker <jbx6244@gmail.com>,
	Diederik de Haas <didi.debian@cknow.org>,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	Peter Robinson <pbrobinson@gmail.com>
Cc: linux-usb@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	dri-devel@lists.freedesktop.org
Subject: [PATCH v6 5/8] drm/rockchip: cdn-dp: Support handle lane info without extcon
Date: Thu, 16 Oct 2025 10:27:38 +0800
Message-Id: <20251016022741.91-6-kernel@airkyi.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20251016022741.91-1-kernel@airkyi.com>
References: <20251016022741.91-1-kernel@airkyi.com>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpgz:airkyi.com:qybglogicsvrsz:qybglogicsvrsz4a-0
X-QQ-XMAILINFO: NgiXOM0lDIKdrUz8Xn2TAZUxzCFgerj1En3BR464Xu7KFGCGjAxlMA8m
	a2euzpTQjINOONAWPJmVoq8NPFh37MpvLpIsKzkpvBFbdr8+F8s/6cqoHzp8crw4nMa8e2Y
	IivVd8KT8TN2wj6Wj5eGG5A4+P+BVKjoFIB7KX4fthvS1xVeh9xsIn5qy6Rc5OpVqxPjVcT
	vQwMsRhlxXu3rS/FrlQap3AXFIIS0wQuvV3XbkM5DYo9jnJmh3NEPSLcZJ8b7GRzCa0c3AP
	nnPE7j5aZQTuKrvtoZeLEMKHxBAFEpo3L3jyyRJ0HKkzPo5XQH329uKmnz/ZzAoxSGS+OtT
	DTXQQrm0YHaqoAHdTsR2Kz33kOtubxRddJIqxhqjlksgoAfQkUvKZZ7wBTpZOFKELWpiJ/D
	KLu6+l/fXxL1ZMgqoCtj5PAn6eBEqv+QsRVXw4V9vf04rj0nBDFLbBBSdv0csBWjnQNAv32
	tXAlsKl34t7dbLF82CcZGTc8H5fjssVzuKct2e4PHTtA/ym6EooTOMcuO1Fhw+ptLjS73so
	B1vBomw5T/zngFwlJOn4s4Ku86wVVt5KDrYe92yJwxQcrKFcuye6AzaEEILBqu/qKn0IC0I
	+fpKcBAfAcNNbUW4eyX9iEO3NtMWWIK7S+qpG3mALBXPMaah/9evMcVkW38H/m7ObUuP/Hv
	gN8eQSHTAuknyt+4Jc5AqGH7VkkNtHQ5v7Z64Q6fp/+gmEg4AWrZ6DJWrJabM67m6bLjh27
	0Ct+ADwdp8xOKicp1vAsLYTZE4VGc9Uei3yBhtsuJ3VrfgQ5Txs/ypq4cBp4COiwolDdlv0
	hq0dsVM/9laq+icmoBg9i+8oSpdfN031PeI8AAs91KKsOcASxKeWM45I+wrvWdDmFI3CYFm
	MVP/v8oAUIQ8biDcFM6hi/YL8zOHLFBoNHfWvnEtk/6TtnsmPSeJNTjCPc/v70fyHOm5Z4D
	N76qfvZez0t6vcMxw5PDdkJblZOASstV9bCZeQ01WzEO9/ASk5TJLts0IcpN9YE6rYkQ7Nz
	1YWZWoGksC+GeZNa8v+RgUcY8PoN27AvMsjf6SPQ==
X-QQ-XMRINFO: OWPUhxQsoeAVDbp3OJHYyFg=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251015_192911_519114_750F8A40 
X-CRM114-Status: GOOD (  16.86  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

From: Chaoyi Chen <chaoyi.chen@rock-chips.com>

This patch add support for get PHY lane info without help of extcon.

There is no extcon needed if the Type-C controller is present. In this
case, the lane info can be get from PHY instead of extcon.

The extcon device should still be supported if Type-C controller is
not present.

Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
---

(no changes since v5)

Changes in v4:
- Remove cdn_dp_hpd_notify().

(no changes since v3)

Changes in v2:
- Ignore duplicate HPD events.

 drivers/gpu/drm/rockchip/cdn-dp-core.c | 25 +++++++++++++++++--------
 1 file changed, 17 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/cdn-dp-core.c b/drivers/gpu/drm/rockchip/cdn-dp-core.c
index b7e3f5dcf8d5..1e27301584a4 100644
--- a/drivers/gpu/drm/rockchip/cdn-dp-core.c
+++ b/drivers/gpu/drm/rockchip/cdn-dp-core.c
@@ -156,6 +156,9 @@ static int cdn_dp_get_port_lanes(struct cdn_dp_port *port)
 	int dptx;
 	u8 lanes;
 
+	if (!edev)
+		return phy_get_bus_width(port->phy);
+
 	dptx = extcon_get_state(edev, EXTCON_DISP_DP);
 	if (dptx > 0) {
 		extcon_get_property(edev, EXTCON_DISP_DP,
@@ -219,7 +222,7 @@ static bool cdn_dp_check_sink_connection(struct cdn_dp_device *dp)
 	 * some docks need more time to power up.
 	 */
 	while (time_before(jiffies, timeout)) {
-		if (!extcon_get_state(port->extcon, EXTCON_DISP_DP))
+		if (port->extcon && !extcon_get_state(port->extcon, EXTCON_DISP_DP))
 			return false;
 
 		if (!cdn_dp_get_sink_count(dp, &sink_count))
@@ -385,11 +388,14 @@ static int cdn_dp_enable_phy(struct cdn_dp_device *dp, struct cdn_dp_port *port)
 		goto err_power_on;
 	}
 
-	ret = extcon_get_property(port->extcon, EXTCON_DISP_DP,
-				  EXTCON_PROP_USB_TYPEC_POLARITY, &property);
-	if (ret) {
-		DRM_DEV_ERROR(dp->dev, "get property failed\n");
-		goto err_power_on;
+	property.intval = 0;
+	if (port->extcon) {
+		ret = extcon_get_property(port->extcon, EXTCON_DISP_DP,
+					  EXTCON_PROP_USB_TYPEC_POLARITY, &property);
+		if (ret) {
+			DRM_DEV_ERROR(dp->dev, "get property failed\n");
+			goto err_power_on;
+		}
 	}
 
 	port->lanes = cdn_dp_get_port_lanes(port);
@@ -1028,6 +1034,9 @@ static int cdn_dp_bind(struct device *dev, struct device *master, void *data)
 	for (i = 0; i < dp->ports; i++) {
 		port = dp->port[i];
 
+		if (!port->extcon)
+			continue;
+
 		port->event_nb.notifier_call = cdn_dp_pd_event;
 		ret = devm_extcon_register_notifier(dp->dev, port->extcon,
 						    EXTCON_DISP_DP,
@@ -1120,14 +1129,14 @@ static int cdn_dp_probe(struct platform_device *pdev)
 		    PTR_ERR(phy) == -EPROBE_DEFER)
 			return -EPROBE_DEFER;
 
-		if (IS_ERR(extcon) || IS_ERR(phy))
+		if (IS_ERR(phy) || PTR_ERR(extcon) != -ENODEV)
 			continue;
 
 		port = devm_kzalloc(dev, sizeof(*port), GFP_KERNEL);
 		if (!port)
 			return -ENOMEM;
 
-		port->extcon = extcon;
+		port->extcon = IS_ERR(extcon) ? NULL : extcon;
 		port->phy = phy;
 		port->dp = dp;
 		port->id = i;
-- 
2.49.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
