Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B87CCEBF88
	for <linux-phy@archiver.kernel.org>; Sat, 15 Nov 2025 20:58:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6ikRn/LPWmTiWGt4chQM1ww6UYktBvK/0OZdfjE3yCk=; b=DjWBwQTBW9HF1S
	JVE+B0K4JCXHOFfiKdvgNc+ovRs9wOVBSSGcGL6COTvNdf9veP+MaFYpQ5YcV95VH0aAXnykJM2gN
	BP+/Jh/wbY6arcgTvZr1ba39rglgLTAXoAAoQ6O8KB5Apu9y9hdNJaFo+bMkusJ7BejgFoLW9sOyE
	T+8VLZ7dzG7uxNNVKJu7mDC5cl36o10J2pAWHJwS7GG41xXuzhPD2cs6kHMuceRgV9pZo3fjWKqCV
	Z5aLXil8T81D88hKBVaNHb0x4jdlZqHqejWm+rcTDJxhAsupFr8GNtRvLWXHp88/hY801y/orQbIZ
	8l7NWFWhnnaQJN8O8xMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKNMH-0000000E5XE-0Ru9;
	Sat, 15 Nov 2025 20:58:57 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKNM1-0000000E58I-1TWC;
	Sat, 15 Nov 2025 20:58:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1763240313;
	bh=hw3ZAW2zOtXRACUrBJfwNwFWR2lDq8YE4T88GaAFI9E=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=AJKfCLLDEVZ2vLVs5c4AQth3HKWTJxWUAschvzx7UK7egad+wwIbwyP1CfqB9qheJ
	 ZyhUpaxUENHwiP6RELESKammjVBDat8g/h6kbAfXTsVWZqZ5VhUrZ1zhBxcLNFeJZj
	 ZRdm6VO7LpKhwNJdRtFbDq17VQNNznRUEGwPNqWKM7q2GyD04oHQ1i4XNpFJ/SLrji
	 Q0U63jm2Ka7oGMw010OayNXjsMEFItBFD9F6TTooNmZOa1F9SleM+Pq/tXp3S9tmV+
	 ps3pDTFG7xEOWoLvTkIAQnTXDaa5RItxdanzGh7Z8mDHqVJWDkxB3gtgN+6qSyjvyv
	 OmxOFYVPaqomw==
Received: from beast.luon.net (simons.connected.by.freedominter.net [45.83.240.172])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sjoerd)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id E8E6017E13D6;
	Sat, 15 Nov 2025 21:58:32 +0100 (CET)
Received: by beast.luon.net (Postfix, from userid 1000)
	id 2CCF8110527E3; Sat, 15 Nov 2025 21:58:32 +0100 (CET)
From: Sjoerd Simons <sjoerd@collabora.com>
Date: Sat, 15 Nov 2025 21:58:09 +0100
Subject: [PATCH v4 06/11] dt-bindings: net: mediatek,net: Correct bindings
 for MT7981
MIME-Version: 1.0
Message-Id: <20251115-openwrt-one-network-v4-6-48cbda2969ac@collabora.com>
References: <20251115-openwrt-one-network-v4-0-48cbda2969ac@collabora.com>
In-Reply-To: <20251115-openwrt-one-network-v4-0-48cbda2969ac@collabora.com>
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
X-CRM114-CacheID: sfid-20251115_125841_568173_8F06F4C0 
X-CRM114-Status: UNSURE (   9.74  )
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

Different SoCs have different numbers of Wireless Ethernet
Dispatch (WED) units:
- MT7981: Has 1 WED unit
- MT7986: Has 2 WED units
- MT7988: Has 2 WED units

Update the binding to reflect these hardware differences. The MT7981
also uses infracfg for PHY switching, so allow that property.

Signed-off-by: Sjoerd Simons <sjoerd@collabora.com>
--
V4:
  - Move back to V2 version (widening global constraint, constraining
    per compatible)
  - Ensure all compatibles are constraint in the amount of WEDs (2 for
    everything apart from mt7981). Specifically adding constraints for
    mediatek,mt7622-eth and ralink,rt5350-eth
V2 -> V3: Only update MT7981 constraints rather then defaults
V2: Only overwrite properties that are different from the default
---
 .../devicetree/bindings/net/mediatek,net.yaml      | 26 +++++++++++++++++++---
 1 file changed, 23 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/mediatek,net.yaml b/Documentation/devicetree/bindings/net/mediatek,net.yaml
index b45f67f92e80d..cc346946291af 100644
--- a/Documentation/devicetree/bindings/net/mediatek,net.yaml
+++ b/Documentation/devicetree/bindings/net/mediatek,net.yaml
@@ -112,7 +112,7 @@ properties:
 
   mediatek,wed:
     $ref: /schemas/types.yaml#/definitions/phandle-array
-    minItems: 2
+    minItems: 1
     maxItems: 2
     items:
       maxItems: 1
@@ -249,6 +249,9 @@ allOf:
           minItems: 1
           maxItems: 1
 
+        mediatek,wed:
+          minItems: 2
+
         mediatek,wed-pcie: false
     else:
       properties:
@@ -338,12 +341,13 @@ allOf:
             - const: netsys0
             - const: netsys1
 
-        mediatek,infracfg: false
-
         mediatek,sgmiisys:
           minItems: 2
           maxItems: 2
 
+        mediatek,wed:
+          maxItems: 1
+
   - if:
       properties:
         compatible:
@@ -385,6 +389,9 @@ allOf:
           minItems: 2
           maxItems: 2
 
+        mediatek,wed:
+          minItems: 2
+
   - if:
       properties:
         compatible:
@@ -429,6 +436,19 @@ allOf:
             - const: xgp2
             - const: xgp3
 
+        mediatek,wed:
+          minItems: 2
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: ralink,rt5350-eth
+    then:
+      properties:
+        mediatek,wed:
+          minItems: 2
+
 patternProperties:
   "^mac@[0-2]$":
     type: object

-- 
2.51.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
