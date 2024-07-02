Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2BF2DC30658
	for <linux-phy@archiver.kernel.org>; Tue,  2 Jul 2024 18:01:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XJNZW+4Csebf8mA3qPRQq8X1lSbBUCKvyHsSFLucSIU=; b=Y2G4wNknYjVkLX
	8qCcNihqPZChQD+ADW0m2/iifmTZiJVDOyI3qn2pULQj2VVLcoPoCpqIdib6onc6S7mjSxV5k2K2f
	FOAZMzX+EFF1LSCt0E9CIVElRQ7BedF0n+msMX9OvmVi5keurGdm1+x5MfjGEF8i5+lqDZ/+ij8aC
	IvMCqsnV3Ob9/gnMgGSP6lDCbN9J8IIZ+36g88+VoSyd1LHv6tSFVzaOMxXRVWAHZTpS4YqrwAQho
	6MSsBuHRGZa87ipZPhZWEA95+/sQfxg575gKjKiaUzG8y7B8igNIdsRJYQQ4Zb7Pfhv8kaMCPYlFv
	Ur3d4P5M0dBhZ3EBDw1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOhoK-00000007Zez-2gu1;
	Tue, 02 Jul 2024 18:01:00 +0000
Received: from relmlor2.renesas.com ([210.160.252.172] helo=relmlie6.idc.renesas.com)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOhoI-00000007ZeI-37L8
	for linux-phy@lists.infradead.org;
	Tue, 02 Jul 2024 18:01:00 +0000
X-IronPort-AV: E=Sophos;i="6.09,178,1716217200"; 
   d="scan'208";a="214008648"
Received: from unknown (HELO relmlir5.idc.renesas.com) ([10.200.68.151])
  by relmlie6.idc.renesas.com with ESMTP; 03 Jul 2024 03:00:56 +0900
Received: from localhost.localdomain (unknown [10.226.93.72])
	by relmlir5.idc.renesas.com (Postfix) with ESMTP id 06BB04005623;
	Wed,  3 Jul 2024 03:00:50 +0900 (JST)
From: Biju Das <biju.das.jz@bp.renesas.com>
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-renesas-soc@vger.kernel.org,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Biju Das <biju.das.au@gmail.com>
Subject: [PATCH v5 3/4] phy: renesas: phy-rcar-gen3-usb2: Control VBUS for RZ/G2L SoCs
Date: Tue,  2 Jul 2024 19:00:17 +0100
Message-ID: <20240702180032.207275-4-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240702180032.207275-1-biju.das.jz@bp.renesas.com>
References: <20240702180032.207275-1-biju.das.jz@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240702_110058_928757_5CD00C7F 
X-CRM114-Status: GOOD (  10.24  )
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

Use regulator_hardware_enable() for controlling VBUS enable for
RZ/G2L alike SoCs in interrupt context.

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
Acked-by: Vinod Koul <vkoul@kernel.org>
---
v4->v5:
 * Added Ack from Vinod.
v3->v4:
 * Updated commit description with regulator_hardware_enable()
 * Used devm_regulator_get_exclusive() to get regulator handle.
v2->v3:
 * Replaced regulator's regmap API with newly introduced
   regulator_set_hardware_enable_register to enable/disable regulator
   in interrupt context.
 * Dropped using "usb_vbus-supply"
v1->v2:
 * Used regulator driver's regmap to handle VBUS.
---
 drivers/phy/renesas/phy-rcar-gen3-usb2.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/renesas/phy-rcar-gen3-usb2.c b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
index fbab6ac0f0d1..7594f64eb737 100644
--- a/drivers/phy/renesas/phy-rcar-gen3-usb2.c
+++ b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
@@ -188,6 +188,9 @@ static void rcar_gen3_enable_vbus_ctrl(struct rcar_gen3_chan *ch, int vbus)
 
 	dev_vdbg(ch->dev, "%s: %08x, %d\n", __func__, val, vbus);
 	if (ch->soc_no_adp_ctrl) {
+		if (ch->vbus)
+			regulator_hardware_enable(ch->vbus, vbus);
+
 		vbus_ctrl_reg = USB2_VBCTRL;
 		vbus_ctrl_val = USB2_VBCTRL_VBOUT;
 	}
@@ -718,7 +721,10 @@ static int rcar_gen3_phy_usb2_probe(struct platform_device *pdev)
 		phy_set_drvdata(channel->rphys[i].phy, &channel->rphys[i]);
 	}
 
-	channel->vbus = devm_regulator_get_optional(dev, "vbus");
+	if (channel->soc_no_adp_ctrl && channel->is_otg_channel)
+		channel->vbus = devm_regulator_get_exclusive(dev, "vbus");
+	else
+		channel->vbus = devm_regulator_get_optional(dev, "vbus");
 	if (IS_ERR(channel->vbus)) {
 		if (PTR_ERR(channel->vbus) == -EPROBE_DEFER) {
 			ret = PTR_ERR(channel->vbus);
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
