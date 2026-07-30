Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9B44C54FDF
	for <linux-phy@archiver.kernel.org>; Thu, 30 Jul 2026 09:54:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RE3EaRbxMvNn5aavTG2M+BEpuR6CenozSTS+q6jazi8=; b=Q+jZ/GKSHccMgd
	zVEfx1Q/2EVUQYEFU40d9jxJzaDuQLifJY+wPiWEHEqjfusyIAYXAmVPE/XbPAnt9fONhjjnQkTUL
	GpjJySM35QODwt4g4X1s7Hrksk2pOzjBBs3gm75+3OTyNaaga0S9K23roVzfOb3BZxcUfyhh6IFxz
	HqX/KoFTKWli26/nz8BYFy8ZrECR4QcYb73W7rhyRRbRZlfzO4TJijLxuCD/Z1gdqCL4WKQxb+4gQ
	4oBOAqSh2Q3SB4PSaqNYtp2bXra0tp2m/IdN859N5AzSRQZkjGRbqIRrXIodpcDPYnehiRBxf34Pz
	9Gr8vzPtDADz9hqnvVUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpNT9-0000000A6b0-17xb;
	Thu, 30 Jul 2026 09:54:28 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpNPQ-0000000A3p1-3lY1;
	Thu, 30 Jul 2026 09:50:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1785405035;
	bh=Iy+VUNXDXW8cWtqhoAcajkOwEmooMeEJCbxXu8rQQOs=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=M6A4pMj0Y651VoP4qsk/HDYB/ouyltMMEHBOvKK9lHthj5nv8IXPVDFRk2bgEvAzh
	 TLtG9k348dUPiIVbZM32DdvpJp9IcAX/l16UunCDOA8WGXCrp18n1N4oyZeZwFBKeY
	 JI1BQKsk+4xzPS3oD6bkHO9sFlGPUg9cauj7xHUpecWIpCTWHZA8AL1XwYmL67/jQd
	 mqfTNGP9z35Y0DMxSeKdyR4v/Gtt59r4WtfUcZXgnMCsSdUUz1Q7lWRHIVOaOYJh7v
	 4ruu9sqUGRvGVdm5H3aAGcnxhbHT9nRNQpai1qBqFu1W/PixDtYetazgXaC/TVKUI8
	 6USFxtDjvJVMg==
Received: from yukiji.home (unknown [100.64.0.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: laeyraud)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 9F4B917E098E;
	Thu, 30 Jul 2026 11:50:33 +0200 (CEST)
From: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
Date: Thu, 30 Jul 2026 11:49:22 +0200
Subject: [PATCH v10 26/26] arm64: dts: mediatek: mt8395-radxa-nio-12l:
 Complete UFS power supplies
MIME-Version: 1.0
Message-Id: <20260730-mt8196-ufs-v10-26-bc5ecef202dc@collabora.com>
References: <20260730-mt8196-ufs-v10-0-bc5ecef202dc@collabora.com>
In-Reply-To: <20260730-mt8196-ufs-v10-0-bc5ecef202dc@collabora.com>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Peter Wang <peter.wang@mediatek.com>, 
 Chaotian Jing <chaotian.jing@mediatek.com>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Avri Altman <avri.altman@sandisk.com>, Bart Van Assche <bvanassche@acm.org>, 
 Stanley Jhu <chu.stanley@gmail.com>, 
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>, 
 "Martin K. Petersen" <martin.petersen@oracle.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, Liam Girdwood <lgirdwood@gmail.com>, 
 Mark Brown <broonie@kernel.org>
Cc: kernel@collabora.com, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-scsi@vger.kernel.org, 
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, 
 Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1785404993; l=1050;
 i=louisalexis.eyraud@collabora.com; s=20250113; h=from:subject:message-id;
 bh=Iy+VUNXDXW8cWtqhoAcajkOwEmooMeEJCbxXu8rQQOs=;
 b=nfGWRi3J0wIO/+Y7GAM+mdM1gCNAi3C9pUwoyTTwK7WSjCpqpHJvmMMAKGcHa72Wmt1UJfVur
 t2UKOFrQ/cyAjk+U/ua73w5EYRl9WXBbbX0XvsHxQdcwIDscy6XTe8V
X-Developer-Key: i=louisalexis.eyraud@collabora.com; a=ed25519;
 pk=CHFBDB2Kqh4EHc6JIqFn69GhxJJAzc0Zr4e8QxtumuM=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260730_025037_113412_CEFADCC4 
X-CRM114-Status: UNSURE (   9.27  )
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

The MT8195 UFS host controller dt binding now describes the power supplies
feeding the host controller, that were previously missing from supply
description.

So, add in the Radxa NIO-12L board devicetree the regulators used to
power MT8395 UFS controller on the board.

Signed-off-by: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
---
 arch/arm64/boot/dts/mediatek/mt8395-radxa-nio-12l.dts | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8395-radxa-nio-12l.dts b/arch/arm64/boot/dts/mediatek/mt8395-radxa-nio-12l.dts
index 9cf0315da035..7e9cabdd2825 100644
--- a/arch/arm64/boot/dts/mediatek/mt8395-radxa-nio-12l.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8395-radxa-nio-12l.dts
@@ -1184,6 +1184,9 @@ &uart1 {
 };
 
 &ufshci {
+	avdd12-supply = <&mt6359_vrf12_ldo_reg>;
+	avdd12-ckbuf-supply = <&mt6359_vbbck_ldo_reg>;
+	avdd18-supply = <&mt6359_vio18_ldo_reg>;
 	vcc-supply = <&mt6359_vemc_1_ldo_reg>;
 	vccq2-supply = <&mt6359_vufs_ldo_reg>;
 	status = "okay";

-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
