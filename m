Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D87DC27C53
	for <linux-phy@archiver.kernel.org>; Sun, 16 Jun 2024 10:54:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WRvRNWMxFwYIN2zh0bPRWJ/lgJx+oipX8xCMlKjOc3c=; b=lMaHYeC+S/Jr5X
	l48Y4uikK4E8ynnWaqmstAJ4ublxEXPgKmZgbQXcuF+2kZ1rBt7zQ0U/1aAiodPl/oE6AwQZJFIca
	D7AjyH2ImfUX4yxOuCrH9K1O1Kf7Y0Atn7PG5KVD9IqynUDUlMHExsW6+D02AuE6+GAA5tRiOKK4J
	RZQHLjv2XEgYVQq8PzmdgiNeU5wZUecxSAEo+iUbDgowYxLj6OZ1kS3B+CCJV+p+u5Yy/wBQb4Fjf
	J/ynGdqujANIBWxUN8686jgbKPFrD1bcbX/vdd58P2HEiwKpk/EQZKyLMgwW+qCJXQSVgEfSS2t/O
	bz2cxPdntMvOikPC6f5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sInX1-00000007MhN-19LP;
	Sun, 16 Jun 2024 10:54:43 +0000
Received: from relmlor1.renesas.com ([210.160.252.171] helo=relmlie5.idc.renesas.com)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sInWy-00000007Mfh-0sh2
	for linux-phy@lists.infradead.org;
	Sun, 16 Jun 2024 10:54:42 +0000
X-IronPort-AV: E=Sophos;i="6.08,242,1712588400"; 
   d="scan'208";a="208104655"
Received: from unknown (HELO relmlir6.idc.renesas.com) ([10.200.68.152])
  by relmlie5.idc.renesas.com with ESMTP; 16 Jun 2024 19:54:39 +0900
Received: from localhost.localdomain (unknown [10.226.92.60])
	by relmlir6.idc.renesas.com (Postfix) with ESMTP id E35D440CBFD8;
	Sun, 16 Jun 2024 19:54:34 +0900 (JST)
From: Biju Das <biju.das.jz@bp.renesas.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-renesas-soc@vger.kernel.org,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Biju Das <biju.das.au@gmail.com>
Subject: [PATCH v4 6/6] arm64: dts: renesas: rz-smarc: Replace fixed regulator for USB VBUS
Date: Sun, 16 Jun 2024 11:53:58 +0100
Message-ID: <20240616105402.45211-7-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240616105402.45211-1-biju.das.jz@bp.renesas.com>
References: <20240616105402.45211-1-biju.das.jz@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240616_035440_391067_E82374AD 
X-CRM114-Status: UNSURE (   8.12  )
X-CRM114-Notice: Please train this message.
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

Replace the fixed regulator for USB VBUS.

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
v3->v4:
 * Dropped regulator-{min,max}-microvolt
v2->v3:
 * Upated label name
 * Updated node and regulator name that matches with the bindings.
v1->v2:
 * New patch.
---
 arch/arm64/boot/dts/renesas/rz-smarc-common.dtsi | 11 +++--------
 1 file changed, 3 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/renesas/rz-smarc-common.dtsi b/arch/arm64/boot/dts/renesas/rz-smarc-common.dtsi
index b7a3e6caa386..b34855956ae0 100644
--- a/arch/arm64/boot/dts/renesas/rz-smarc-common.dtsi
+++ b/arch/arm64/boot/dts/renesas/rz-smarc-common.dtsi
@@ -54,14 +54,6 @@ codec_dai: simple-audio-card,codec {
 		};
 	};
 
-	usb0_vbus_otg: regulator-usb0-vbus-otg {
-		compatible = "regulator-fixed";
-
-		regulator-name = "USB0_VBUS_OTG";
-		regulator-min-microvolt = <5000000>;
-		regulator-max-microvolt = <5000000>;
-	};
-
 	vccq_sdhi1: regulator-vccq-sdhi1 {
 		compatible = "regulator-gpio";
 		regulator-name = "SDHI1 VccQ";
@@ -139,6 +131,9 @@ &ohci1 {
 
 &phyrst {
 	status = "okay";
+	usb0_vbus_otg: regulator-vbus {
+		regulator-name = "vbus";
+	};
 };
 
 &scif0 {
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
