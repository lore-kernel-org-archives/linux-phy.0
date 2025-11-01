Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B74FBCCFA07
	for <linux-phy@archiver.kernel.org>; Sat,  1 Nov 2025 13:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G+q6/x4neLMRpngPIkfiYR3Paqv0AVGQJmV+oqafOSc=; b=ct+6rp1tBSiERu
	Kk4CTcQb6QBDTq4oL4KuSyWCitFr3FPwVhVVW0vIg9WrOPf6TzuRzILoVCO9W56uT5+P6sDCKBBHa
	GrgnQlqIgzDGzerqrrDKBpZ5jkF07AS5iLvg7fGtuw/2G1R0YQBfCXHItMlJKkZ3voejDwqPKboig
	AvefOoXx/8VCwtAlP70sMKVi56JD3awpSv38wrgPYnINYKYypUNR72dtqzaci29+2P4KYCpP4b/t4
	JqjOtPf0VL1P1PAqTkn34pAi6Hm3wiKo6JoA2C/Fx3Y8fr22yZHVG34I2TlR8mmANLS7bfJUXh2+7
	5+Dlz7grolsZBselF3Tw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFBjA-00000007mAn-1zbt;
	Sat, 01 Nov 2025 13:33:08 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFBj5-00000007m64-0u73;
	Sat, 01 Nov 2025 13:33:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1762003979;
	bh=TML+7NIpD9ku6fMMNJ4M3sDNuPNu+rMvX1U1RKvDE/Y=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=fS5BHcvi5NKG+PayXkzDIFxY7Y8m/3TPgiARnEqyD6D3CrOj9z3utuHzrvbZXwhnJ
	 kXnsg0GSmRMe3nTgq3T9YmN4Xo1hAHjEe5UUAFdsFnFP4MX6HY+ZRw5ZkiXuTQaprE
	 9Bb69eiqABYmuEpO5zHfwAqhHlNAETVAF04/CkeTT3xLukM7J9Zlp/7JNMOJMMnhq6
	 aXj72/6mY5Di7+KnE9vfg7LfwnRti9EmJ9gI6ZGWSM9rqTmLx1H6Ov7xDOccXMJJ6y
	 zIfefG8sDXNUVjw1mA1tkGOWgfvTqpZ+ht4/Xia735EskZ6IjWT6Mo0ay6wqEJq5uy
	 K1v6mSQQwOrsQ==
Received: from beast.luon.net (unknown [IPv6:2a10:3781:2531::8])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sjoerd)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id DA4E317E1091;
	Sat,  1 Nov 2025 14:32:58 +0100 (CET)
Received: by beast.luon.net (Postfix, from userid 1000)
	id 88F2410E9D02A; Sat, 01 Nov 2025 14:32:58 +0100 (CET)
From: Sjoerd Simons <sjoerd@collabora.com>
Date: Sat, 01 Nov 2025 14:32:46 +0100
Subject: [PATCH v2 01/15] arm64: dts: mediatek: mt7981b: Configure UART0
 pinmux
MIME-Version: 1.0
Message-Id: <20251101-openwrt-one-network-v2-1-2a162b9eea91@collabora.com>
References: <20251101-openwrt-one-network-v2-0-2a162b9eea91@collabora.com>
In-Reply-To: <20251101-openwrt-one-network-v2-0-2a162b9eea91@collabora.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Ryder Lee <ryder.lee@mediatek.com>, 
 Jianjun Wang <jianjun.wang@mediatek.com>, 
 Bjorn Helgaas <bhelgaas@google.com>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Chunfeng Yun <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Lee Jones <lee@kernel.org>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Lorenzo Bianconi <lorenzo@kernel.org>, Felix Fietkau <nbd@nbd.name>
Cc: kernel@collabora.com, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, linux-pci@vger.kernel.org, 
 linux-phy@lists.infradead.org, netdev@vger.kernel.org, 
 Daniel Golle <daniel@makrotopia.org>, Bryan Hinton <bryan@bryanhinton.com>, 
 Sjoerd Simons <sjoerd@collabora.com>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251101_063303_921908_DC69E546 
X-CRM114-Status: UNSURE (   9.79  )
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

Add explicit pinctrl configuration for UART0

Signed-off-by: Sjoerd Simons <sjoerd@collabora.com>
---
V1 -> V2: Move pinctrl to the soc dtsi as it's the only available
          pinmux for the uart. And very rare for the pins to be used for
          anything else.
---
 arch/arm64/boot/dts/mediatek/mt7981b.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt7981b.dtsi b/arch/arm64/boot/dts/mediatek/mt7981b.dtsi
index 58c99f2a25218..4fa35bbf0a9cd 100644
--- a/arch/arm64/boot/dts/mediatek/mt7981b.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt7981b.dtsi
@@ -102,6 +102,8 @@ uart0: serial@11002000 {
 			clocks = <&infracfg CLK_INFRA_UART0_SEL>,
 				 <&infracfg CLK_INFRA_UART0_CK>;
 			clock-names = "baud", "bus";
+			pinctrl-names = "default";
+			pinctrl-0 = <&uart0_pins>;
 			status = "disabled";
 		};
 
@@ -229,6 +231,13 @@ pio: pinctrl@11d00000 {
 			gpio-controller;
 			#gpio-cells = <2>;
 			#interrupt-cells = <2>;
+
+			uart0_pins: uart0-pins {
+				mux {
+					function = "uart";
+					groups = "uart0";
+				};
+			};
 		};
 
 		efuse@11f20000 {

-- 
2.51.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
