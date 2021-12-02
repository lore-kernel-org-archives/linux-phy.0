Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0EAA5C433EF
	for <linux-phy@archiver.kernel.org>; Thu,  2 Dec 2021 13:10:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w5rQyNXkdDNzEnrrkwmV7Z6k6BaZ3xCbjinyoxU90Vw=; b=i3CwxWOyIk7Llp
	z+gQY5iZcxpMN5aL1Vr3Rn8Xs5Ogi4fqC7GgcoB+YNKP63L5VzbzDE5jkZHZ8AjJ8NNJl2FvjFamZ
	+ySGIbZCX962POwknahJnkfpTRiw6sH2DdQ7do35mpoC++1Qd4e0fh5qyV9li4p4jezRjpNPTZXrX
	MmpuO0nTd0l5mCT56T7qmakzRk0P2rSNM+PK17oGdgHMgHmQo9DhKvxjZSrpi5kaZblPX8VCeyd8h
	SEKjoomSffkiMpyzx8Vuko2TG/v3O5Jo6s2VwvKTLDdJgDuAyEKpohkuW1vjLzPVddw/b1xt9YmVk
	xn9RMyz3P3PUBZ9N69pg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mslr0-00CQLG-Cm; Thu, 02 Dec 2021 13:10:26 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mslqv-00CQI0-62
 for linux-phy@lists.infradead.org; Thu, 02 Dec 2021 13:10:24 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 1B2DADRF011629;
 Thu, 2 Dec 2021 07:10:13 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1638450613;
 bh=dn8l7Os6Ucq45HCQxIDhH9KClfTJiZ3Yf7GgLyFAQRo=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=FpwsjjE6U9wTE2g4y/MnISur//9jPLi2xTM5dQ7pDgqHM7cGzWZYM12uoah+ack6T
 1w37dLeEsuRzUiM9hAC3564Xuc8F8lacvR6K4rqmzH0dkDPquzSQnw5f3lS1lpBREg
 8/jAQk0cXO4R51AoL6CdwQIoM1f9oZZvSGjwowOc=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 1B2DADDO119556
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 2 Dec 2021 07:10:13 -0600
Received: from DFLE115.ent.ti.com (10.64.6.36) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14; Thu, 2
 Dec 2021 07:10:12 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14 via
 Frontend Transport; Thu, 2 Dec 2021 07:10:12 -0600
Received: from gsaswath-HP-ProBook-640-G5.dal.design.ti.com
 (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 1B2DA4Kj031324;
 Thu, 2 Dec 2021 07:10:09 -0600
From: Aswath Govindraju <a-govindraju@ti.com>
To: 
CC: Aswath Govindraju <a-govindraju@ti.com>, Wolfgang Grandegger
 <wg@grandegger.com>, Marc Kleine-Budde <mkl@pengutronix.de>, Kishon Vijay
 Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, <linux-can@vger.kernel.org>,
 <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
Subject: [PATCH 1/2] dt-bindings: phy: ti,
 tcan104x-can: Document mux-states property
Date: Thu, 2 Dec 2021 18:40:01 +0530
Message-ID: <20211202131002.12217-2-a-govindraju@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20211202131002.12217-1-a-govindraju@ti.com>
References: <20211202131002.12217-1-a-govindraju@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211202_051021_336542_BAD878BD 
X-CRM114-Status: GOOD (  12.38  )
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
 .../devicetree/bindings/phy/ti,tcan104x-can.yaml    | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml b/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
index 6107880e5246..5b2b08016635 100644
--- a/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
+++ b/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
@@ -37,6 +37,18 @@ properties:
       max bit rate supported in bps
     minimum: 1
 
+  mux-states:
+    description:
+      mux controller node to route the signals from controller to
+      transceiver. Depending on the mux chip and the control lines
+      in it, the first and second parameters can be used for
+      representing control line and state. The number of arguments
+      is to be used based on '#mux-state-cells' property in the
+      mux-controller node. If '#mux-state-cells' is equal to
+      one then, then the argument to be used would be the state.
+      If it is set to two, then the first argument is the control
+      line and the second argument would be its corresponding state.
+
 required:
   - compatible
   - '#phy-cells'
@@ -53,4 +65,5 @@ examples:
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
