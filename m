Return-Path: <SRS0=Lyxf=P6=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 025C9C433F5
	for <linux-phy@archiver.kernel.org>; Thu, 11 Nov 2021 16:43:32 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BB4B56135E
	for <linux-phy@archiver.kernel.org>; Thu, 11 Nov 2021 16:43:31 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org BB4B56135E
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=krfBni6V3tBXZ0pDmwWIRSwBivra6oXztYlrhyFgSSo=; b=aGw6n6VpCf1KxM
	SYnewiM/a0bq8ofRTSkT9frQlZQF5EHicJMoeXBPHn7xqfvpGnpyqB/injug21FHexYX5tv2n4cHZ
	yRBq/LayDotFARWyob9n38f663Sr7dyYlynKG7I3Y5zEmpoGb8TpCCPal29b+rWyEAG4//Ub3fEUM
	LHtHNTkjnGzx4mIGu6o07iJMK1NFkOW6/ZE0Le1Jkzcfrr7bSFVyVcXHWCCOPYJ5qewnb2XovP3K5
	oo+tM2TYYqZTLBLgnCsTi9PpkpdcAlOufrndWSieuZRveUn7TsWl4IUKJmYRJmBqDd9KNiLyMVBEk
	Llw4yd/EZoXP+HcD2QBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mlDAh-008QhS-7n; Thu, 11 Nov 2021 16:43:31 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mlDAe-008Qft-K9
 for linux-phy@lists.infradead.org; Thu, 11 Nov 2021 16:43:30 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 1ABGhNaB086301;
 Thu, 11 Nov 2021 10:43:23 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1636649004;
 bh=RUuZjBBt+NqprL4Mt3s0+KmkZ/pXzDCBbVfCQ2QDt74=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=envYL7d6z4BjqrENo9d0DY08PiT30qa/4r6aig76RuG8hzvZnLZj078RAc0b8r9yY
 /sRDx+otmzUho0HYPX63kwqu3V+QajE0ak6Ecukcdw/AVThg2aUN+VQKrsEgakvMQv
 po9FHA58FJW2/VhKdjEu3QBSQf5BEVcw5sq6oysI=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 1ABGhN4B091157
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 11 Nov 2021 10:43:23 -0600
Received: from DFLE112.ent.ti.com (10.64.6.33) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14; Thu, 11
 Nov 2021 10:43:23 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14 via
 Frontend Transport; Thu, 11 Nov 2021 10:43:23 -0600
Received: from gsaswath-HP-ProBook-640-G5.dal.design.ti.com
 (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 1ABGhEg3104171;
 Thu, 11 Nov 2021 10:43:20 -0600
From: Aswath Govindraju <a-govindraju@ti.com>
To: 
CC: Vignesh Raghavendra <vigneshr@ti.com>, Kishon Vijay Abraham I
 <kishon@ti.com>, Nishanth Menon <nm@ti.com>, Aswath Govindraju
 <a-govindraju@ti.com>, Wolfgang Grandegger <wg@grandegger.com>, Marc
 Kleine-Budde <mkl@pengutronix.de>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, <linux-can@vger.kernel.org>,
 <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
Subject: [PATCH RFC 1/2] dt-bindings: phy: ti,
 tcan104x-can: Document mux-controls property
Date: Thu, 11 Nov 2021 22:13:11 +0530
Message-ID: <20211111164313.649-2-a-govindraju@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20211111164313.649-1-a-govindraju@ti.com>
References: <20211111164313.649-1-a-govindraju@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211111_084328_819137_867FAA43 
X-CRM114-Status: UNSURE (   8.91  )
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

On some boards, for routing CAN signals from controller to transceivers,
muxes might need to be set. Use mux-controls property can be used for model
this.

Signed-off-by: Aswath Govindraju <a-govindraju@ti.com>
---
 Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml b/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
index 6107880e5246..24cc3c04b85d 100644
--- a/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
+++ b/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
@@ -37,6 +37,11 @@ properties:
       max bit rate supported in bps
     minimum: 1
 
+  mux-controls:
+    description:
+      mux controller node to route the signals from controller to
+      transceiver.
+
 required:
   - compatible
   - '#phy-cells'
@@ -53,4 +58,5 @@ examples:
       max-bitrate = <5000000>;
       standby-gpios = <&wakeup_gpio1 16 GPIO_ACTIVE_LOW>;
       enable-gpios = <&main_gpio1 67 GPIO_ACTIVE_HIGH>;
+      mux-controls = <&mux0>;
     };
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
