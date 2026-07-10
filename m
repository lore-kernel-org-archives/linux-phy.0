Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 530C9C44506
	for <linux-phy@archiver.kernel.org>; Fri, 10 Jul 2026 16:47:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+xfDyrLuUbhaT3CcihCtO8GNuArPE1Uyv6SUW3CHyEk=; b=T0lIzYpTpSSK1c
	0WV/Lv6jx2KzeNndzFr8g8HeM/N/4VhfqHZsons5WugPItvDBdAy/m8uoP3YH0m/qBHJhHMFmkzpJ
	ctrGWZwFn3Bu6OP/f0Fil8P/ziHviDFvzMxHQyyDjN0iXPE2vJFVVtMJC6m/kq1PPDQHAZPGdDQ+i
	wjRdIk6S8A9tMQRQK/TTPUj/OPe1ceulI6JKwBJI/oC48JRaupkesbZRBjWOwiEbfCSC6iPhFhJe7
	LB/gjgMqVrYmA5z0aErRjKW9RtgMfJuhU1TJ43he/ONZqCUtTrxMWUOYXVte1Wq/UCEdcNIRn3wRT
	PYusL6G8R3qJ/OAoK3JQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiENn-00000005KlD-38pn;
	Fri, 10 Jul 2026 16:47:23 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiEMt-00000005JCH-218N;
	Fri, 10 Jul 2026 16:46:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1783701978;
	bh=Cq66EKeE2flHvN+UE+9Jd7VxqMbU2uK/j0/Drv52Xi4=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=lsWJFETAbvMXTYQVVcQJ5QLkPws9Wvyl6QO3pRp4yAMfkSbXlcAh+ZC36aH83qv/q
	 Zd83tMANHKjPKZ5BQsbFXtHyIN+lzzKUpDOoEgT2idk2PNwnBWLdZUWiU9eEmv5j8A
	 IybORvaq9C1sPv6XVyfN2BvvvmiUm7itnmxEvVNlUGcnuJiHSxctoPsLEJjhr0mo+S
	 PtePfGtNRE2nBoUWmzVHqMTSK07OGTimpkl1f+GkVhkUEAalLdBNvK8RMUWkhXhDt2
	 zrZAEGNKRVTXSMG2vqc2gTDLRYg0n7WYvXOzkYp2YZxEe+VRYPv8aq6Rgc9DnLGxfH
	 KOw+UcbyQBt4Q==
Received: from jupiter.universe (unknown [100.64.1.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519)
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id A27C517E0FD2;
	Fri, 10 Jul 2026 18:46:18 +0200 (CEST)
Received: by jupiter.universe (Postfix, from userid 1000)
	id EF33D48004E; Fri, 10 Jul 2026 18:46:17 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Fri, 10 Jul 2026 18:44:51 +0200
Subject: [PATCH v12 13/36] phy: rockchip: usbdp: Rename DP lane functions
MIME-Version: 1.0
Message-Id: <20260710-rockchip-usbdp-cleanup-v12-13-8b41a9a9bef0@collabora.com>
References: <20260710-rockchip-usbdp-cleanup-v12-0-8b41a9a9bef0@collabora.com>
In-Reply-To: <20260710-rockchip-usbdp-cleanup-v12-0-8b41a9a9bef0@collabora.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Heiko Stuebner <heiko@sntech.de>, Frank Wang <frank.wang@rock-chips.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Thinh Nguyen <Thinh.Nguyen@synopsys.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: Andy Yan <andy.yan@rock-chips.com>, Dmitry Baryshkov <lumag@kernel.org>, 
 Yubing Zhang <yubing.zhang@rock-chips.com>, 
 Alexey Charkov <alchark@flipper.net>, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, kernel@collabora.com, 
 devicetree@vger.kernel.org, linux-usb@vger.kernel.org, 
 Sebastian Reichel <sebastian.reichel@collabora.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2007;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=Cq66EKeE2flHvN+UE+9Jd7VxqMbU2uK/j0/Drv52Xi4=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGpRIdje/dVxNaIgSe1sDf0tGtslymIEJXNAX
 FPDgtvNw00eA4kCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJqUSHYAAoJENju1/PI
 O/qamx0QAI8YOVSbAx9X79xCtxl319zGPVzBvbuEFucuLk0LgeDMKPf/SmSiCEpAVjQfWh34NB0
 SZpIMRC2jaakSGoPe2XWhipzlk+LGZYX3PBRC7WMURc4Xb6ip1GAWYk/2n1Tzziq/zLtihj+nu1
 4FPROBaPbXSiygxGq45pFXLTrcuhtAXRl3pKsmnsEezTWTmp8MtiOXcqCDy5h0D+7UUPZpHo+lm
 S7KM3gy1I462xdKCET/voAm1d1Jtr2gKXnza2fRgXYWdJYlY8UbJWP4cCwFikVLGn3iYSmeweal
 FS8/R182/5OMKTjuDSlAa2GGy8Q98s7mTNjM+BwVDVVvUltNu7/m5cUfRLCoRB058whlAbCa5wK
 tJMMBC9M6Cd8WoMem3DawZfNFYoMcoD7qeqctehipVd6BGpNutDfMX176y4ZBGUYVqx6ihvidmf
 IZ+ChIT8z/5A7HED7wmHwJxCqb7awMBX34umV2N9PCmql1nj4+CgBLV8EwZ/OLXnSNtqc8oj613
 LDk5HcJ0Mvvs/czPVeVDqXX/a/I3qID2jbDyla8Hg4hkRDVLm/xaUmasf7DxRx+BYh366N0/MiF
 yXRAU6q14S1nTg/Cblt7qYCjqho2ko0S42/Ei97/MrZybeUsP4vTnTk0nKtKH8RJRcO0NVRcKUU
 YDTGdd02s8Y/IVIghtIYl7g==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260710_094627_707777_E3156E24 
X-CRM114-Status: GOOD (  11.70  )
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

The common prefix for DisplayPort related functions is rk_udphy_dp_
(with a final _), so update the two DP lane functions to follow that
scheme.

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/phy/rockchip/phy-rockchip-usbdp.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rockchip/phy-rockchip-usbdp.c
index b172ce6a722e..7fb864a1486c 100644
--- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
+++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
@@ -545,7 +545,7 @@ static void rk_udphy_usb_bvalid_enable(struct rk_udphy *udphy, u8 enable)
  * ---------------------------------------------------------------------------
  */
 
-static void rk_udphy_dplane_select(struct rk_udphy *udphy)
+static void rk_udphy_dp_lane_select(struct rk_udphy *udphy)
 {
 	const struct rk_udphy_cfg *cfg = udphy->cfgs;
 	u32 value = 0;
@@ -574,7 +574,7 @@ static void rk_udphy_dplane_select(struct rk_udphy *udphy)
 		     FIELD_PREP(DP_AUX_DOUT_SEL, udphy->dp_aux_dout_sel) | value);
 }
 
-static void rk_udphy_dplane_enable(struct rk_udphy *udphy, int dp_lanes)
+static void rk_udphy_dp_lane_enable(struct rk_udphy *udphy, int dp_lanes)
 {
 	u32 val = 0;
 	int i;
@@ -1049,9 +1049,9 @@ static int rk_udphy_dp_phy_power_on(struct phy *phy)
 	if (ret)
 		goto unlock;
 
-	rk_udphy_dplane_enable(udphy, udphy->dp_lanes);
+	rk_udphy_dp_lane_enable(udphy, udphy->dp_lanes);
 
-	rk_udphy_dplane_select(udphy);
+	rk_udphy_dp_lane_select(udphy);
 
 unlock:
 	mutex_unlock(&udphy->mutex);
@@ -1069,7 +1069,7 @@ static int rk_udphy_dp_phy_power_off(struct phy *phy)
 	struct rk_udphy *udphy = phy_get_drvdata(phy);
 
 	mutex_lock(&udphy->mutex);
-	rk_udphy_dplane_enable(udphy, 0);
+	rk_udphy_dp_lane_enable(udphy, 0);
 	rk_udphy_power_off(udphy, UDPHY_MODE_DP);
 	mutex_unlock(&udphy->mutex);
 

-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
