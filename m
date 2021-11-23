Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB243C433F5
	for <linux-phy@archiver.kernel.org>; Tue, 23 Nov 2021 08:20:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zR6srX56p599u8UMF2XFCkJTIsQo4cNMHQevorq2Zys=; b=NI75Fc78C73+as
	/LPIxDVLetAOzAvZHqA/mGyAnxBdaO+PMQlfmG2Qq07dMVBra9uf2UEx1xvEf8GcTYoXytDGQCBUX
	cBL8bHAkl276cUV6EaC9HLAQUvVhSphXxOxZEcbBU6OpMyi6ulul8dJUw8MocBWoPRdVRYnrGXfuF
	9D2z/B6PFSChkpwuB5O0Matxuv/PzsuMRYKpAnP4QVbmNAb7QtWgf20HhXkIqNde+BIBbsisoApdJ
	u8ZbsZYGfSa8qaQ8mjhhQ5ApNlOb5UunxVguujG0On41dTw4vZx1W92NL3osD5tlDexfgi+8UpyWI
	59u8vpJkR80VatM6iuqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mpR2O-001Fh4-Vl; Tue, 23 Nov 2021 08:20:25 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mpQvI-001D4v-Dt
 for linux-phy@lists.infradead.org; Tue, 23 Nov 2021 08:13:05 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 1AN8CvKu018424;
 Tue, 23 Nov 2021 02:12:57 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1637655177;
 bh=Og3+O1jskQm9r1BZRRkEZXp0Ecf5L2wGQtT+0FYWQMo=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=aG+CGN0rYfnB/hfOFImp7NrdscPJXdNxiuLS6iIHko614h4kzg1ksAlFk8zp0rKKM
 ZTUUOUDnGsOTsBMSaJOE1oVAD4Qyma0i8yeLJ5YgnwcBIjVb6RmjsrChHm+u+4PYJm
 PM9H5EK3yWdyaK9/b/RMexuLMAxz4wabB9eOP7t4=
Received: from DLEE113.ent.ti.com (dlee113.ent.ti.com [157.170.170.24])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 1AN8Cvig010791
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 23 Nov 2021 02:12:57 -0600
Received: from DLEE105.ent.ti.com (157.170.170.35) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14; Tue, 23
 Nov 2021 02:12:33 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14 via
 Frontend Transport; Tue, 23 Nov 2021 02:12:33 -0600
Received: from gsaswath-HP-ProBook-640-G5.dal.design.ti.com
 (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 1AN8CNdx101399;
 Tue, 23 Nov 2021 02:12:30 -0600
From: Aswath Govindraju <a-govindraju@ti.com>
To: 
CC: Vignesh Raghavendra <vigneshr@ti.com>, Nishanth Menon <nm@ti.com>, Aswath
 Govindraju <a-govindraju@ti.com>,
 Peter Rosin <peda@axentia.se>, Rob Herring <robh+dt@kernel.org>,
 Wolfgang Grandegger <wg@grandegger.com>, Marc
 Kleine-Budde <mkl@pengutronix.de>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-can@vger.kernel.org>, <linux-phy@lists.infradead.org>
Subject: [PATCH RFC v3 1/4] dt-bindings: mux: Increase the number of arguments
 in mux-controls
Date: Tue, 23 Nov 2021 13:42:18 +0530
Message-ID: <20211123081222.27979-2-a-govindraju@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20211123081222.27979-1-a-govindraju@ti.com>
References: <20211123081222.27979-1-a-govindraju@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211123_001304_581331_CD82E331 
X-CRM114-Status: GOOD (  10.55  )
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

Increase the allowed number of arguments in mux-controls to add support for
passing information regarding the state of the mux to be set, for a given
device.

Signed-off-by: Aswath Govindraju <a-govindraju@ti.com>
---
 Documentation/devicetree/bindings/mux/gpio-mux.yaml       | 2 +-
 Documentation/devicetree/bindings/mux/mux-controller.yaml | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/mux/gpio-mux.yaml b/Documentation/devicetree/bindings/mux/gpio-mux.yaml
index 0a7c8d64981a..c810b7df39de 100644
--- a/Documentation/devicetree/bindings/mux/gpio-mux.yaml
+++ b/Documentation/devicetree/bindings/mux/gpio-mux.yaml
@@ -26,7 +26,7 @@ properties:
       List of gpios used to control the multiplexer, least significant bit first.
 
   '#mux-control-cells':
-    const: 0
+    enum: [ 0, 1, 2 ]
 
   idle-state:
     default: -1
diff --git a/Documentation/devicetree/bindings/mux/mux-controller.yaml b/Documentation/devicetree/bindings/mux/mux-controller.yaml
index 736a84c3b6a5..0b4b067a97bf 100644
--- a/Documentation/devicetree/bindings/mux/mux-controller.yaml
+++ b/Documentation/devicetree/bindings/mux/mux-controller.yaml
@@ -73,7 +73,7 @@ properties:
     pattern: '^mux-controller(@.*|-[0-9a-f]+)?$'
 
   '#mux-control-cells':
-    enum: [ 0, 1 ]
+    enum: [ 0, 1, 2 ]
 
   idle-state:
     $ref: /schemas/types.yaml#/definitions/int32
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
