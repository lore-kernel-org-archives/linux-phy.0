Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC741CE7B06
	for <linux-phy@archiver.kernel.org>; Fri,  6 Sep 2024 13:01:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:CC:To:In-Reply-To:References:Message-ID
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bwG01PhkMHhaSUt774m0N7ufwFVRqS9o5CLC5MKVvas=; b=m/04Sye35oja5k
	EJyy1vQVtrpyTQ7nuGqJfdtQDYvxOpJGDyPejpOaMEPdlPkC1i3X+etb0XZCxlBLTI3SXhSXgx0dt
	ChPYgcdKgpbHvbPW1Cpqw2OHDp8snJJEotoT1Y934+mg5tj5xTh4V6JnQ0K+AzshdLttu4O/rpJzq
	kU/oGGBbAj/4ZtOalyld24YjQj8xFjZoh53ve54ZlmF5jU50HcyigRZVlE6d0VqWEGm/jkivlr0lx
	C98cDEowUbmNn5ZyM1FTKv8GVT5YFvHp9FFHFaQyffJRji29ZXXrXU1MZCmwLfBmo/IZ0q/1dkLiR
	1afKKEs6UQRwrCOGfn3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smYaL-0000000CGmu-1zMH;
	Fri, 06 Sep 2024 13:01:09 +0000
Received: from esa.microchip.iphmx.com ([68.232.154.123])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smYTZ-0000000CF8a-2TKp;
	Fri, 06 Sep 2024 12:54:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1725627249; x=1757163249;
  h=from:date:subject:mime-version:content-transfer-encoding:
   message-id:references:in-reply-to:to:cc;
  bh=YuZBdtQE5MqcdrUj6rfc2zVrFcaYBODaSIfNfhlSw14=;
  b=KttoufTXEnmIbLoz+lsc6w54zS1tAPIpkxwxj9Gt7MXMEmstlv820Pyr
   6XVKaipVTNVp4vFT3GvDRrr914A0+wdWtd6NpCgoCDRzRUUhNH4QbGWno
   8d+yL+6F2s9TE4Y6IFbX36BtjUYlRVHEB/IcjnSvVs+yfvnJOCOz+aFZi
   XBHYxwHtiuy2uHAtGMh/yzaV2Q+9M1vWdnJj7jXQkeT1GUDjru56EDttg
   PRe1DeD/U8QRefwypn1a5/wQYGesybwyn5WQyR+Jvski7SIy8F//sp8/Q
   /VMz1aI3rjAi+7RmO7hndVZsilLXP7mW8BVUkmgF8dL6IAgwMaVSZCDru
   w==;
X-CSE-ConnectionGUID: sLMTJciFQoOe3QYYo7sv+w==
X-CSE-MsgGUID: xjGOYz0LQ8G5DM5GODpyag==
X-IronPort-AV: E=Sophos;i="6.10,207,1719903600"; 
   d="scan'208";a="31334947"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa4.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 06 Sep 2024 05:54:06 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 6 Sep 2024 05:53:32 -0700
Received: from DEN-DL-M70577.microchip.com (10.10.85.11) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.2507.35 via Frontend Transport; Fri, 6 Sep 2024 05:53:29 -0700
From: Daniel Machon <daniel.machon@microchip.com>
Date: Fri, 6 Sep 2024 14:52:45 +0200
Subject: [PATCH 8/9] dt-bindings: phy: sparx5: document lan969x in sparx5
 dt-bindings
MIME-Version: 1.0
Message-ID: <20240906-sparx5-lan969x-serdes-driver-v1-8-8d630614c58a@microchip.com>
References: <20240906-sparx5-lan969x-serdes-driver-v1-0-8d630614c58a@microchip.com>
In-Reply-To: <20240906-sparx5-lan969x-serdes-driver-v1-0-8d630614c58a@microchip.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
	Lars Povlsen <lars.povlsen@microchip.com>, Steen Hegelund
	<Steen.Hegelund@microchip.com>, <UNGLinuxDriver@microchip.com>, Rob Herring
	<robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
	<conor+dt@kernel.org>
CC: <linux-phy@lists.infradead.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>
X-Mailer: b4 0.14-dev
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240906_055409_849117_1361491F 
X-CRM114-Status: UNSURE (   8.43  )
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

Document lan969x in the existing Sparx5 dt-bindings.

Signed-off-by: Daniel Machon <daniel.machon@microchip.com>
Reviewed-by: Steen Hegelund <Steen.Hegelund@microchip.com>
---
 .../bindings/phy/microchip,sparx5-serdes.yaml          | 18 ++++++++++++++++--
 1 file changed, 16 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/microchip,sparx5-serdes.yaml b/Documentation/devicetree/bindings/phy/microchip,sparx5-serdes.yaml
index bdbdb3bbddbe..1e07a311e8a5 100644
--- a/Documentation/devicetree/bindings/phy/microchip,sparx5-serdes.yaml
+++ b/Documentation/devicetree/bindings/phy/microchip,sparx5-serdes.yaml
@@ -8,6 +8,7 @@ title: Microchip Sparx5 Serdes controller
 
 maintainers:
   - Steen Hegelund <steen.hegelund@microchip.com>
+  - Daniel Machon <daniel.machon@microchip.com>
 
 description: |
   The Sparx5 SERDES interfaces share the same basic functionality, but
@@ -62,12 +63,17 @@ description: |
   * 10.3125 Gbps (10GBASE-R/10GBASE-KR/USXGMII)
   * 25.78125 Gbps (25GBASE-KR/25GBASE-CR/25GBASE-SR/25GBASE-LR/25GBASE-ER)
 
+  lan969x has ten SERDES10G interfaces that share the same features, operating
+  modes and data rates as the equivalent Sparx5 SERDES10G interfaces.
+
 properties:
   $nodename:
     pattern: "^serdes@[0-9a-f]+$"
 
   compatible:
-    const: microchip,sparx5-serdes
+    enum:
+      - microchip,sparx5-serdes
+      - microchip,lan969x-serdes
 
   reg:
     minItems: 1
@@ -90,11 +96,19 @@ additionalProperties: false
 
 examples:
   - |
-    serdes: serdes@10808000 {
+    serdes@10808000 {
       compatible = "microchip,sparx5-serdes";
       #phy-cells = <1>;
       clocks = <&sys_clk>;
       reg = <0x10808000 0x5d0000>;
     };
 
+  - |
+    serdes@e3410000 {
+      compatible = "microchip,lan969x-serdes";
+      #phy-cells = <1>;
+      clocks = <&fabric_clk>;
+      reg = <0xe3410000 0x150000>;
+    };
+
 ...

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
