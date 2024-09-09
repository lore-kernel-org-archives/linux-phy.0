Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A7C8ECE57A
	for <linux-phy@archiver.kernel.org>; Mon,  9 Sep 2024 15:24:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:CC:To:In-Reply-To:References:Message-ID
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pTU6r1QcAHS8VjIvZVDYM6KIlJl/6x0c980iXKqbDFU=; b=TAKN4gGe78Cm16
	w8JA4l0j3OONcyY93BFbYG6brN0Z9VPUFXLlNvkZUNmmrWGvLOlV9FExBy3xFd1zDAUvEdSTH/wQx
	vlp7s9mgdKR06uvoa9ETmqWi7VRVThuia1femA5uNCr1Hl17LXNOzjeRqa512YRjU75OVfEDgDNK4
	ZpP2ai4noZdKUZ+/y1RDn87LX3kQrLSyPdzcSf4GFtAtTAhG2nCdqt5ntND684e1KQJbUh970/uPV
	mkmLai4f8esjWU3z9vd1YjTY4PBdajaOt03E0I1yOB14W1/ouf7gndD0s5wQz6Bh99ThP+wA1LqhS
	QttegbIAiSmWQ7VqksGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sngFf-00000002SWP-0Tvk;
	Mon, 09 Sep 2024 15:24:27 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sng7F-00000002QJo-3VDH;
	Mon, 09 Sep 2024 15:15:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=CC:To:In-Reply-To:References:
	Message-ID:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=w+s9uFBCwFo6IZNxTzB4lec+gCJpxOiyKrmh5RkCzZo=; b=emzh/kJRICb3Rrj/6iK9DXtWiC
	BWXx2LewSz7fTDuuATOgUhlwgz0sFVACS4YYH2zVgYeTVggwcbM/jgof/esZD9M2sw4yithS3AeXA
	lNleIhDzaKSVB56mmLS85HLPCPq6io7yezGQ6PuMNr6mobVxioyqBokFEO7hgGLtQ5E+xXj/eVRYx
	+ozTkTCQxjGKtGE5gP9ikoc5ZzSnRIh9a07habVUp1RFHb9XiuMZzYqU+4CbYKP0D4hjqzXHMg7ml
	CbrUcFo7By9Cwf+kCYETJbPG0DJEcloGlDFQIriJk41w3eUeOfof3pC45+70BuO4ER6iiA1aXCTs9
	R9QOud5A==;
Received: from esa.microchip.iphmx.com ([68.232.154.123])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sng7A-00000000SIH-2uvu;
	Mon, 09 Sep 2024 15:15:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1725894940; x=1757430940;
  h=from:date:subject:mime-version:content-transfer-encoding:
   message-id:references:in-reply-to:to:cc;
  bh=Kv95HuOyH4jOLtRTnSTsPX1+Mbx06lXUaXcNGAKCwSY=;
  b=GGXuNXqjrUdAWlyuw5iUeMuGAXCb4lkBoj7l3MUoIv2EnhLRmI9Ixw7H
   KPKs4pXxjDorCNfx1trOFEMvtfFLKEIxls+MEvb3fPFVSK3aoEpQ6gRGN
   pdnywGPWu5IkXtKYutnAVKBqJCASrWRQj+asoNzls0bgbCK7M0Y+Hhyfk
   /ZmdIvSXwYx22BOXe4yLVtcd1+4JAa2TT3BHbtXhVRNuFqbbuouyHxjDe
   T8DcGzfY53nmRQg/gGTrqbXrA50gQ477X4ZXSlpdohkQJfrW+kVnnEo0C
   9QUjjK5h8decAnwnpsgPTE+UlMWj/7Dqy+LA0wh/1xso0dur+AOM8nwKi
   g==;
X-CSE-ConnectionGUID: 2asziJ13SmWKAWPwHD4niQ==
X-CSE-MsgGUID: lp1o19g2QGKhLbqcIeferw==
X-IronPort-AV: E=Sophos;i="6.10,214,1719903600"; 
   d="scan'208";a="198959138"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa6.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 09 Sep 2024 08:15:32 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 9 Sep 2024 08:15:13 -0700
Received: from DEN-DL-M70577.microchip.com (10.10.85.11) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.2507.35 via Frontend Transport; Mon, 9 Sep 2024 08:15:11 -0700
From: Daniel Machon <daniel.machon@microchip.com>
Date: Mon, 9 Sep 2024 17:14:48 +0200
Subject: [PATCH v2 8/9] dt-bindings: phy: sparx5: document lan969x
MIME-Version: 1.0
Message-ID: <20240909-sparx5-lan969x-serdes-driver-v2-8-d695bcb57b84@microchip.com>
References: <20240909-sparx5-lan969x-serdes-driver-v2-0-d695bcb57b84@microchip.com>
In-Reply-To: <20240909-sparx5-lan969x-serdes-driver-v2-0-d695bcb57b84@microchip.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
	Lars Povlsen <lars.povlsen@microchip.com>, Steen Hegelund
	<Steen.Hegelund@microchip.com>, <UNGLinuxDriver@microchip.com>, Rob Herring
	<robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
	<conor+dt@kernel.org>
CC: <linux-phy@lists.infradead.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>
X-Mailer: b4 0.14-dev
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240909_161541_130864_43F0EF8C 
X-CRM114-Status: UNSURE (   8.29  )
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

Lan969x is going to reuse the existing Sparx5 SERDES driver - document
that by adding compatible strings for the different SKU's that we
support, and a short description of the SERDES types and data rates
supported.

Signed-off-by: Daniel Machon <daniel.machon@microchip.com>
Reviewed-by: Steen Hegelund <Steen.Hegelund@microchip.com>
---
 .../bindings/phy/microchip,sparx5-serdes.yaml           | 17 ++++++++++++++++-
 1 file changed, 16 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/microchip,sparx5-serdes.yaml b/Documentation/devicetree/bindings/phy/microchip,sparx5-serdes.yaml
index bdbdb3bbddbe..fa0b02916dac 100644
--- a/Documentation/devicetree/bindings/phy/microchip,sparx5-serdes.yaml
+++ b/Documentation/devicetree/bindings/phy/microchip,sparx5-serdes.yaml
@@ -8,6 +8,7 @@ title: Microchip Sparx5 Serdes controller
 
 maintainers:
   - Steen Hegelund <steen.hegelund@microchip.com>
+  - Daniel Machon <daniel.machon@microchip.com>
 
 description: |
   The Sparx5 SERDES interfaces share the same basic functionality, but
@@ -62,12 +63,26 @@ description: |
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
+    oneOf:
+      - enum:
+          - microchip,sparx5-serdes
+          - microchip,lan9691-serdes
+      - items:
+          - enum:
+              - microchip,lan9698-serdes
+              - microchip,lan9696-serdes
+              - microchip,lan9694-serdes
+              - microchip,lan9693-serdes
+              - microchip,lan9692-serdes
+          - const: microchip,lan9691-serdes
 
   reg:
     minItems: 1

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
