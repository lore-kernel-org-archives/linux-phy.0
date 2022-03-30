Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1A14C433F5
	for <linux-phy@archiver.kernel.org>; Wed, 30 Mar 2022 05:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LLlbfKlrZMRoCx9KodSs/OqFOWfus5wIwvNU2PbVD1I=; b=3eVcLG1koGewyr
	7zf2/uAz+3xB8ApcmNEoJwc5UQ2EbV23rfDoUiw7e1quzad08yqPviRhjB1PaaqjqeLWy1Mh8LRz7
	hOGw47lcO4MOYoOytHUEmU1ag9DJup6fcrLGacOjX4YT2Y1w/FsfMXKr5gwsKbt6RhfMYvCGFHfY+
	FbsaGnVTST7IdMSEA6oC43XAw3C/9GWGdpMlzS5LO66A3apzEg5azoLbq3t02ubcpxsYt/HtSUyXp
	G32//gjRnAFfRMZKhj8pOfAYxKrx+A0ytI1Y2tqCcrWHz2h5TdMXEGC5tsqqARWmGb4MSZMgQ9UD1
	C05cahEwTOp52094oGZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZQmk-00EI43-A2; Wed, 30 Mar 2022 05:22:22 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZQlO-00EHPb-Ff; Wed, 30 Mar 2022 05:20:59 +0000
Received: from unknown (HELO kinkan2-ex.css.socionext.com) ([172.31.9.52])
 by mx.socionext.com with ESMTP; 30 Mar 2022 14:20:58 +0900
Received: from mail.mfilter.local (m-filter-1 [10.213.24.61])
 by kinkan2-ex.css.socionext.com (Postfix) with ESMTP id 074A22058443;
 Wed, 30 Mar 2022 14:20:58 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Wed, 30 Mar 2022 14:20:58 +0900
Received: from plum.e01.socionext.com (unknown [10.212.243.119])
 by kinkan2.css.socionext.com (Postfix) with ESMTP id 5DFB2B62B7;
 Wed, 30 Mar 2022 14:20:57 +0900 (JST)
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Masami Hiramatsu <mhiramat@kernel.org>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Subject: [PATCH v2 4/5] dt-bindings: phy: uniphier-usb3hs: Fix incorrect
 clock-names and reset-names
Date: Wed, 30 Mar 2022 14:20:50 +0900
Message-Id: <1648617651-9004-5-git-send-email-hayashi.kunihiko@socionext.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1648617651-9004-1-git-send-email-hayashi.kunihiko@socionext.com>
References: <1648617651-9004-1-git-send-email-hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220329_222058_682650_6AE4347C 
X-CRM114-Status: GOOD (  12.37  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

There is no clock-names and reset-names for Pro5 SoC, that should have two
properties, "gio" and "link" like usb3-ssphy.

And according to the existing PXs2 devicetree, the clock-names for PXs2 SoC
should have "link" and "phy", and minItems of clocks should be 2.

Fixes: 134ab2845acb ("dt-bindings: phy: Convert UniPhier USB3-PHY conroller to json-schema")
Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
---
 .../phy/socionext,uniphier-usb3hs-phy.yaml       | 16 +++++++++++-----
 1 file changed, 11 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/socionext,uniphier-usb3hs-phy.yaml b/Documentation/devicetree/bindings/phy/socionext,uniphier-usb3hs-phy.yaml
index 33946efcac5e..1bbd164f2527 100644
--- a/Documentation/devicetree/bindings/phy/socionext,uniphier-usb3hs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/socionext,uniphier-usb3hs-phy.yaml
@@ -31,12 +31,14 @@ properties:
     const: 0
 
   clocks:
-    minItems: 1
+    minItems: 2
     maxItems: 3
 
   clock-names:
     oneOf:
-      - const: link          # for PXs2
+      - items:               # for Pro5
+          - const: gio
+          - const: link
       - items:               # for PXs3 with phy-ext
           - const: link
           - const: phy
@@ -49,9 +51,13 @@ properties:
     maxItems: 2
 
   reset-names:
-    items:
-      - const: link
-      - const: phy
+    oneOf:
+      - items:               # for Pro5
+          - const: gio
+          - const: link
+      - items:               # for others
+          - const: link
+          - const: phy
 
   vbus-supply:
     description: A phandle to the regulator for USB VBUS
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
