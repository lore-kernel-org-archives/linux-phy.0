Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8D12C433EF
	for <linux-phy@archiver.kernel.org>; Fri, 15 Apr 2022 15:22:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UPb4qeMYC9p3vMP2dvS8SwEKlPQQBO6J7nfkh/CVg6c=; b=Dpenb5QwEkzJGC
	/9GsQPjCN9decCLK0S/jdbHpzifxU4xLrehDYvNLpjJ3AJgkRqNDGO2gH//JhtJl8/e+V+Cm9OEEJ
	de17W9wkqPVGBE2YsUASgjqfoJlTecK9/IEp8DmKq0flsrjSL3c/G0WA4Zl3xvHt5OmKsW6LtMnZG
	J9dR+ifIaipwCmmOeNPItEMiCleD8ScbjGvyuPDYVjMAI6Uns3s+rlys9xR3koqbmiWpb6k9o46gd
	kcfymytcExI0ueHpFSCpWZAwGGuyAvXcdKolGT2Qcn9yaT4eNmn/LEhjl8mM2/GZ/I0svwcp0/zjq
	kh4UGdM9qCQLLjDRbvkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nfNm4-00AUAx-59; Fri, 15 Apr 2022 15:22:16 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nfNlm-00ATyR-0q; Fri, 15 Apr 2022 15:21:59 +0000
Received: (Authenticated sender: paul.kocialkowski@bootlin.com)
 by mail.gandi.net (Postfix) with ESMTPSA id 07D7A240007;
 Fri, 15 Apr 2022 15:21:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
 t=1650036114;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=VsUxuduSUSmT5cVDhch3xSuWAwRsl9IrVPZo+IvctwA=;
 b=jeJ9wnGKPLZD9sEkT//XK2wPy5CnxYAhOtEEf/QB1cVtYyhQmB809YT54bF+h77Luy9+0L
 WCySsqrjMw0pzXl2KgwEgb9pVhSPZdn1bnBMjjOMIukqnyeZImUT+eLT0kdj0pUMovvwTX
 JEzvhXGPhgzgx5TqVGHHazRFtEHQNU84xc0BAH8Wnr/SrcdmuthgqNYR60P3hT16U9sVrG
 WGZjBPqsJPRNfjp8ui/BF3k3AVizbfjKG1j1ZBywxDN8ml56eRunvbimffVEBPSnsr6HEp
 8ux5jaxaFIMNTiQVvUV5HthUiibQBkxi21m0BmfDk5D+KnMHc/NmQOxqYnV7Ag==
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Cc: Yong Deng <yong.deng@magewell.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Samuel Holland <samuel@sholland.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Hans Verkuil <hans.verkuil@cisco.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Rob Herring <robh@kernel.org>
Subject: [PATCH v4 1/8] dt-bindings: sun6i-a31-mipi-dphy: Add optional
 direction property
Date: Fri, 15 Apr 2022 17:21:31 +0200
Message-Id: <20220415152138.635525-2-paul.kocialkowski@bootlin.com>
X-Mailer: git-send-email 2.35.2
In-Reply-To: <20220415152138.635525-1-paul.kocialkowski@bootlin.com>
References: <20220415152138.635525-1-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220415_082158_343537_74D67416 
X-CRM114-Status: GOOD (  11.49  )
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

The Allwinner A31 MIPI D-PHY block supports both tx and rx directions,
although each instance of the block is meant to be used in one
direction only. There will typically be one instance for MIPI DSI and
one for MIPI CSI-2 (it seems unlikely to ever see a shared instance).

Describe the direction with a new allwinner,direction property.
For backwards compatibility, the property is optional and tx mode
should be assumed by default.

Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../bindings/phy/allwinner,sun6i-a31-mipi-dphy.yaml  | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/allwinner,sun6i-a31-mipi-dphy.yaml b/Documentation/devicetree/bindings/phy/allwinner,sun6i-a31-mipi-dphy.yaml
index d0b541a461f3..22636c9fdab8 100644
--- a/Documentation/devicetree/bindings/phy/allwinner,sun6i-a31-mipi-dphy.yaml
+++ b/Documentation/devicetree/bindings/phy/allwinner,sun6i-a31-mipi-dphy.yaml
@@ -37,6 +37,18 @@ properties:
   resets:
     maxItems: 1
 
+  allwinner,direction:
+    $ref: '/schemas/types.yaml#/definitions/string'
+    description: |
+      Direction of the D-PHY:
+      - "rx" for receiving (e.g. when used with MIPI CSI-2);
+      - "tx" for transmitting (e.g. when used with MIPI DSI).
+
+    enum:
+      - tx
+      - rx
+    default: tx
+
 required:
   - "#phy-cells"
   - compatible
-- 
2.35.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
