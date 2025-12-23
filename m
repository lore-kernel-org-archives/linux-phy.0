Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1FBD8E6F08C
	for <linux-phy@archiver.kernel.org>; Tue, 23 Dec 2025 12:38:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mMcatTYYr0YXyMTqtg/jL4DsHUtXlbKGaZ1s/1+wQDo=; b=FO6t5i0Viynx/5
	BU8HnAgOK767lX9N8kjN7YmrioPTyfH9qC0Dg846QL+T1pWrRDNDwJzMYXnNQKucvZN3zB+0lAjk9
	tj0dKYTDNrLH5iZA2YGFqZBffp38av/xoSZk4u421bX5eLWn2ZyjfImlI2Dcb6n6r2lcw2aL1CXgm
	8IN2WB+auUJI1qN8PN17PSjWzkSPTFOJk718Y7S81FDCRy5KI+gMqyDtdbe51b3sIyXyzaL7xHlla
	HLo+CO8jxNaEJL7V2ZRn2zGyM1c/8ZQwpiD+RJSfbjJXCZ5j5sjwQG77rMWcLZR6BIz4Rsq5KT1Ao
	cg7ZrsSsuucOuCTWkTaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vY1f2-0000000FU3X-2LV8;
	Tue, 23 Dec 2025 12:38:44 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vY1ea-0000000FTWh-0SCm;
	Tue, 23 Dec 2025 12:38:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1766493489;
	bh=70ZG8RLfpdui8rg/UXpo7IzLHPeebgji9MGrfmTyqsE=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=gFA7+XcteN2QDYWhrhQr7UWAbk/JsZde6aHkAV16mEgOWAU+uC6K3nHDmBIuNKUlF
	 w0FcSVTu9e93ooZ3ph7ieEGDxDCjOJcIR5pFVXNCwHQz+o5O12zYUzXD1k06EaXwYL
	 hEHkmphOoysA0w8LQ5ps0xpgcdMS7Io1ByFcY13fl+lxXPv39kc8O0Wr1/XMNoAfTz
	 nVWRbKjpXfHgK5cjtByi/pGypN89UjUbuvR8t2QXYbifQQPAlnEdF2wSmXhk6iJD64
	 Q7D8b02Y+O6oy+++TjXMGE5Uf0trlXRtUXGa7n1eIcpFeayD7TWm6c7NkEblw/Zr4T
	 mNFlprTY5kVng==
Received: from beast.luon.net (unknown [IPv6:2a10:3781:2531:0:f337:3245:2545:b505])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sjoerd)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 9FF1F17E151B;
	Tue, 23 Dec 2025 13:38:09 +0100 (CET)
Received: by beast.luon.net (Postfix, from userid 1000)
	id 66A53117A067B; Tue, 23 Dec 2025 13:38:08 +0100 (CET)
From: Sjoerd Simons <sjoerd@collabora.com>
Date: Tue, 23 Dec 2025 13:37:57 +0100
Subject: [PATCH v5 7/8] arm64: dts: mediatek: mt7981b: Add wifi memory
 region
MIME-Version: 1.0
Message-Id: <20251223-openwrt-one-network-v5-7-7d1864ea3ad5@collabora.com>
References: <20251223-openwrt-one-network-v5-0-7d1864ea3ad5@collabora.com>
In-Reply-To: <20251223-openwrt-one-network-v5-0-7d1864ea3ad5@collabora.com>
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
X-CRM114-CacheID: sfid-20251223_043816_358298_F4E6C4F0 
X-CRM114-Status: UNSURE (   9.65  )
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

Add required memory region for the builtin wifi block.

Signed-off-by: Sjoerd Simons <sjoerd@collabora.com>
---
V1 -> V2: Don't set status to in this patch
---
 arch/arm64/boot/dts/mediatek/mt7981b.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt7981b.dtsi b/arch/arm64/boot/dts/mediatek/mt7981b.dtsi
index 1f4c11435466..a7be3670e005 100644
--- a/arch/arm64/boot/dts/mediatek/mt7981b.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt7981b.dtsi
@@ -69,6 +69,11 @@ secmon_reserved: secmon@43000000 {
 			no-map;
 		};
 
+		wmcpu_emi: wmcpu-reserved@47c80000 {
+			reg = <0 0x47c80000 0 0x100000>;
+			no-map;
+		};
+
 		wo_emi0: wo-emi@47d80000 {
 			reg = <0 0x47d80000 0 0x40000>;
 			no-map;
@@ -497,6 +502,7 @@ wifi@18000000 {
 			clocks = <&topckgen CLK_TOP_NETSYS_MCU_SEL>,
 				 <&topckgen CLK_TOP_AP2CNN_HOST_SEL>;
 			clock-names = "mcu", "ap2conn";
+			memory-region = <&wmcpu_emi>;
 			resets = <&watchdog MT7986_TOPRGU_CONSYS_SW_RST>;
 			reset-names = "consys";
 			status = "disabled";

-- 
2.51.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
