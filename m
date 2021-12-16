Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76D59C4332F
	for <linux-phy@archiver.kernel.org>; Thu, 16 Dec 2021 04:10:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uhDZfpSKR1SSJPLY36ZGnjYHb7a1eQE/Sed9cZbtiXo=; b=eNHA/oV4v8a5vU
	GWtBEJs1ZEwUxRv2/O8bt+veKxayeJMzb/Av7kGfHol1gNlOSmmJBJwNYt/XaPJkzrNtWppyP/gtP
	0Gkldm4jX2yg0sqN9Vh7uLvw5XTI4V3ZSgc69o2d/zRrXYAnIp7CIClchmfthopxH7MuxNJej5o5j
	/rLd4xuRBNIAFp65a8g9XIesTIbMsXIbl/WJKtC3JYbnrpriYAcJXs2Qn0d05JqhUrC+quXz/ypR2
	pPfD8xjT8dEvtpnkhZJpsZXHNo/kQfNZkoO2zu9Q7/bRanzT+29Tk6jN9zVvd+7RkDP0Hm18iMhn/
	ecbkY90s8E3LoL3MGrWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxi6A-003XCB-Qa; Thu, 16 Dec 2021 04:10:30 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxi68-003XBh-8p
 for linux-phy@lists.infradead.org; Thu, 16 Dec 2021 04:10:29 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 1BG4AOlL097987;
 Wed, 15 Dec 2021 22:10:24 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1639627824;
 bh=y++VsA+9A8bXEp/r65lqltyup+1E6rXbXO+u5m0KoDg=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=oxaKTGfXf3EFoQgDkFCrOozfxcdd95mjIJvURCazwcbt4oRnqaCiRv1b5/KFCgPNB
 jiDBPixwRTvrwK7g/3N9193CV091VyTHVd8c2jMjkJ7FFeC2KIp9ti+kln3rABfDrz
 I2zPRzaFr7fUyeoUEBpxB2rLwxbPV7V3Y/luzHo8=
Received: from DLEE113.ent.ti.com (dlee113.ent.ti.com [157.170.170.24])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 1BG4AOJO121576
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 15 Dec 2021 22:10:24 -0600
Received: from DLEE113.ent.ti.com (157.170.170.24) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14; Wed, 15
 Dec 2021 22:10:24 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14 via
 Frontend Transport; Wed, 15 Dec 2021 22:10:24 -0600
Received: from gsaswath-HP-ProBook-640-G5.dal.design.ti.com
 (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 1BG4AEOK093350;
 Wed, 15 Dec 2021 22:10:20 -0600
From: Aswath Govindraju <a-govindraju@ti.com>
To: 
CC: Aswath Govindraju <a-govindraju@ti.com>, Wolfgang Grandegger
 <wg@grandegger.com>, Marc Kleine-Budde <mkl@pengutronix.de>, Kishon Vijay
 Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, <linux-can@vger.kernel.org>,
 <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
Subject: [PATCH v3 1/2] dt-bindings: phy: ti,
 tcan104x-can: Document mux-states property
Date: Thu, 16 Dec 2021 09:40:11 +0530
Message-ID: <20211216041012.16892-2-a-govindraju@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20211216041012.16892-1-a-govindraju@ti.com>
References: <20211216041012.16892-1-a-govindraju@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211215_201028_417408_F152DD33 
X-CRM114-Status: UNSURE (   8.71  )
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
muxes might need to be set. This can be implemented using mux-states
property. Therefore, document the same in the respective bindings.

Signed-off-by: Aswath Govindraju <a-govindraju@ti.com>
---
 Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml b/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
index 6107880e5246..02b76f15e717 100644
--- a/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
+++ b/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
@@ -37,6 +37,12 @@ properties:
       max bit rate supported in bps
     minimum: 1
 
+  mux-states:
+    description:
+      mux controller node to route the signals from controller to
+      transceiver.
+    maxItems: 1
+
 required:
   - compatible
   - '#phy-cells'
@@ -53,4 +59,5 @@ examples:
       max-bitrate = <5000000>;
       standby-gpios = <&wakeup_gpio1 16 GPIO_ACTIVE_LOW>;
       enable-gpios = <&main_gpio1 67 GPIO_ACTIVE_HIGH>;
+      mux-states = <&mux0 1>;
     };
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
