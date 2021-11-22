Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E9726C433F5
	for <linux-phy@archiver.kernel.org>; Mon, 22 Nov 2021 12:59:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zR6srX56p599u8UMF2XFCkJTIsQo4cNMHQevorq2Zys=; b=3GMU2E2orZ+l6F
	KOtk5DICDxA161nmbFb6n1R0I+LEZFZTEIUo9+A+yyJtn0LAJ3QfAu6fhwEOOXJM5ckJCiTbz4H8f
	/uO1Y2pko8fhrAeMno5V3yS40bTcMWC866A7l8JU8zyNZMALb58muRpTOe+4k9RckRekBH5SWy7ZJ
	hbQmteMTlv4tN0gmm/pyZnsImuCarB/h3bZAAsKXu63fDalrFGnIIWOUXm0q5AHWYhhnsq6W+YEFw
	+DUW4JErlSr4nj4LFXTr8J3WC7wIShWCvjxgpL4G8EoZgnUprRcaLVNxQSh2AvEIwOY5nnl3o6hdi
	nSRg8OoYPGDw1zFjWD/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mp8ul-00GXUf-8b; Mon, 22 Nov 2021 12:59:19 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mp8sE-00GWLP-5F
 for linux-phy@lists.infradead.org; Mon, 22 Nov 2021 12:56:43 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 1AMCuahA088056;
 Mon, 22 Nov 2021 06:56:36 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1637585796;
 bh=Og3+O1jskQm9r1BZRRkEZXp0Ecf5L2wGQtT+0FYWQMo=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=Z70SGHG9BCzzhjYF4IVyCQ++6Yy2b8dy+8qnoAQy3jfZgBbYkzt+9Bj6cQCQjsXZH
 bv3DbaiFJxXP781ujLXZAqnzyYMLshik+G3FDAt5P2WZKIJysJnu0TOAJY1QxtmZ4n
 f4j5ksnQ+GA5iqDu+eFvbmMt43ATXOxJPzHePP7c=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 1AMCuaZl118596
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 22 Nov 2021 06:56:36 -0600
Received: from DFLE104.ent.ti.com (10.64.6.25) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14; Mon, 22
 Nov 2021 06:56:35 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14 via
 Frontend Transport; Mon, 22 Nov 2021 06:56:35 -0600
Received: from gsaswath-HP-ProBook-640-G5.dal.design.ti.com
 (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 1AMCuQi0109786;
 Mon, 22 Nov 2021 06:56:32 -0600
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
Subject: [PATCH RFC v2 1/4] dt-bindings: mux: Increase the number of arguments
 in mux-controls
Date: Mon, 22 Nov 2021 18:26:21 +0530
Message-ID: <20211122125624.6431-2-a-govindraju@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20211122125624.6431-1-a-govindraju@ti.com>
References: <20211122125624.6431-1-a-govindraju@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211122_045642_321643_F56D8DCB 
X-CRM114-Status: GOOD (  10.31  )
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
