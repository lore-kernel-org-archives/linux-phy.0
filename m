Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 603CFC433FE
	for <linux-phy@archiver.kernel.org>; Mon, 22 Nov 2021 12:59:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LVn2v7vQWu9Q7UBUnvAzgrRRN3RJIO3gcQDfaT/e98M=; b=g7Lx2CPQxtpDn8
	eImNG3nuDSbf+h1nw3ynE2LxzmSKYuERpSaZMVuS/OvlsmpjwZqI4ykRHbGM31gF5evrD/V89Xkqm
	q3RsuuBAjPTzBiA45/XGffmse6JBLAb8sr14T+/8q+MHhLF1ke8L7HAPsqx8Qua0vwTV4UqmCvdLF
	haeQAyc5E26fH4T8YKKqK9fUfynYteaEbez7RAGkdgvbSyOTBEN0wA4BT5RvlOFX4jd3YAXPg+Cok
	ySZHeMaHwY/53/YDCNb7N3vj/kd8xDwQcTHpuZICzKT3uZLBcXMn2hC6/1rLTchMwtzEjjPTG3A9w
	7vxh+1d9NcGfVNoSQerg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mp8ul-00GXV0-JN; Mon, 22 Nov 2021 12:59:19 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mp8sM-00GWNq-Ma
 for linux-phy@lists.infradead.org; Mon, 22 Nov 2021 12:56:52 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 1AMCufmH065907;
 Mon, 22 Nov 2021 06:56:41 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1637585801;
 bh=F9DCa620EBhOWSMGuwO/rTA9ebG6ER5N7DJdYv3qsog=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=QOZ88aKaWMs23vkOcj5pK806A1u4PINGnbPsstP5gPlRynhj8y6zvZ7fWTgfaHa4s
 JD7q0sV6NFbiRyEZmHeyx2qPjIJ+gzDATEMGOgzLc691Djfe9B72v/OLJWgrW8VBt8
 OjP4O2c1p3EnCg0/3EkNPCbnlBz7vtB++nIp3ew8=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 1AMCufZa118648
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 22 Nov 2021 06:56:41 -0600
Received: from DLEE103.ent.ti.com (157.170.170.33) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14; Mon, 22
 Nov 2021 06:56:41 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14 via
 Frontend Transport; Mon, 22 Nov 2021 06:56:41 -0600
Received: from gsaswath-HP-ProBook-640-G5.dal.design.ti.com
 (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 1AMCuQi1109786;
 Mon, 22 Nov 2021 06:56:37 -0600
From: Aswath Govindraju <a-govindraju@ti.com>
To: 
CC: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, Aswath
 Govindraju <a-govindraju@ti.com>,
 Peter Rosin <peda@axentia.se>, Rob Herring <robh+dt@kernel.org>,
 Wolfgang Grandegger <wg@grandegger.com>, Marc
 Kleine-Budde <mkl@pengutronix.de>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-can@vger.kernel.org>, <linux-phy@lists.infradead.org>
Subject: [PATCH RFC v2 2/4] dt-bindings: phy: ti,
 tcan104x-can: Document mux-controls property
Date: Mon, 22 Nov 2021 18:26:22 +0530
Message-ID: <20211122125624.6431-3-a-govindraju@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20211122125624.6431-1-a-govindraju@ti.com>
References: <20211122125624.6431-1-a-govindraju@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211122_045650_861757_B6C0A50E 
X-CRM114-Status: UNSURE (   9.93  )
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
 .../devicetree/bindings/phy/ti,tcan104x-can.yaml          | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml b/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
index 6107880e5246..7392088cf060 100644
--- a/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
+++ b/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
@@ -37,6 +37,13 @@ properties:
       max bit rate supported in bps
     minimum: 1
 
+  mux-controls:
+    description:
+      mux controller node to route the signals from controller to
+      transceiver. The first and second arguments can be used
+      representing the line in the mux-controller to control and
+      the state to be set in the given line respectively.
+
 required:
   - compatible
   - '#phy-cells'
@@ -53,4 +60,5 @@ examples:
       max-bitrate = <5000000>;
       standby-gpios = <&wakeup_gpio1 16 GPIO_ACTIVE_LOW>;
       enable-gpios = <&main_gpio1 67 GPIO_ACTIVE_HIGH>;
+      mux-controls = <&mux0 0 1>;
     };
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
