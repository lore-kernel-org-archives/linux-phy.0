Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D522C4332F
	for <linux-phy@archiver.kernel.org>; Wed,  2 Mar 2022 22:09:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+dbIWIM94D7v1KWS17qm/7UxpwDN6E/sDM7TEwGZefM=; b=K4QUV4h3FVwBLU
	wdq9PBLUmfKn9tZ8CdOoXsBbHzpDoMX5DkvJVk7JWT/N03Y1c8pSnwl0c/n2qNBUNqFSB2VF3SQT0
	XrMEQFZl9sqy0czX71aBOudayNrD6w1U4XRa5ve/HrATjGVWJAeGlEBdlo56QIpOMOauFlwbifrw3
	93MBAh/QPac3TIGgmERN8HjcZs8D1NXaUtOh5FHTdFuo9WIzL+ov4wXuUWvH9sHHyvH3VZ21u0A32
	QVJ0Js8HogjsJQINnpG9eTp0LGPil4UIlBCVCQEjpTgcYmGV+O/BZumN5EIPM9BYHYJolJgM5+ewE
	kSbP9YQlFYWkL3d887Jg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPXAM-004T3Z-EU; Wed, 02 Mar 2022 22:09:50 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPX8i-004S5G-RY; Wed, 02 Mar 2022 22:08:13 +0000
Received: (Authenticated sender: paul.kocialkowski@bootlin.com)
 by mail.gandi.net (Postfix) with ESMTPSA id BB3AEE0005;
 Wed,  2 Mar 2022 22:07:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
 t=1646258876;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=eymG5qtlYkxjiqQgEdxW89q1KILX/L8h+KZV8d8+vVY=;
 b=evJeg/DYJqPbJp6//lkkq0Tz6uchK2o+BcKYPowU5ktya//YVfpO8z2qO/tIRPdxs5IW6Y
 D0b8dbx8mKZbuSKVdHJhfSPsK9e7+7Wfn/V7qzMLd6fS8ECs4RgLrdTJv6qlqzPw5CVUKg
 KbleBJ5iGe9PyZUDsJ31q8blkUYJNpyn+v5v+nFQ1z66FUCPcNDiB1osAl7GrwnDOdZvRK
 uoWWu5KotZA1uc8P1sHWSw0pr9PXurFDQ1oDR65PFBO8kFcY+qNJi20KKW4rJPA09BJz4R
 rx0JhZ//QBcsPvQBGdgtY7kR697cy4I0SUPky5fySCa98il+toIMgC/CboD6uw==
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
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: [PATCH v3 1/9] dt-bindings: sun6i-a31-mipi-dphy: Add optional
 direction property
Date: Wed,  2 Mar 2022 23:07:31 +0100
Message-Id: <20220302220739.144303-2-paul.kocialkowski@bootlin.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220302220739.144303-1-paul.kocialkowski@bootlin.com>
References: <20220302220739.144303-1-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220302_140809_033826_CA9E6756 
X-CRM114-Status: GOOD (  12.47  )
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
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
