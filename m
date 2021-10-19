Return-Path: <SRS0=T9my=PI=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 489F2C433F5
	for <linux-phy@archiver.kernel.org>; Wed, 20 Oct 2021 00:00:33 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1860B61029
	for <linux-phy@archiver.kernel.org>; Wed, 20 Oct 2021 00:00:33 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 1860B61029
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=socionext.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SjYazovvdWLtuiKoSLvE38xOVmxhZJ//s6FwPpiD24Q=; b=kCnuSG50jOVyAz
	K8i++kLhJ0BEQPsaOK66RtMiti85D3y4VjfkA6qqx8rCeRC/XQUlBUnh1ULmXFzggJz6zDMafBI5/
	ZNDP8QFM6AFJEJTLqH1Nef6zm8LVOFDwD5RCKIWcQWhUIMkENGeCEqXqYTXZ9U2DDmHmb99MTMhK2
	w/usvDTnqQ9oDzAU8POyROYFOJfEj5wJ+Bw4vk4MQW7B4U8L8VQ16yexYqgtlCvvA3wVgS5arG0C+
	HnObUAY0QmL8gaqE2zGJ4bR0qXbUGBGKxcC+u3Z8Z2b8SrMNZKuTfj71hYVuftqaGHW6vQfpV7L1/
	hhC8PvvHgsYBj/ztmmCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mcz20-0030mn-9i; Wed, 20 Oct 2021 00:00:32 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mcz0A-002zog-3E; Tue, 19 Oct 2021 23:58:39 +0000
Received: from unknown (HELO iyokan2-ex.css.socionext.com) ([172.31.9.54])
 by mx.socionext.com with ESMTP; 20 Oct 2021 08:58:33 +0900
Received: from mail.mfilter.local (m-filter-1 [10.213.24.61])
 by iyokan2-ex.css.socionext.com (Postfix) with ESMTP id 6EF81206E701;
 Wed, 20 Oct 2021 08:58:33 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Wed, 20 Oct 2021 08:58:33 +0900
Received: from plum.e01.socionext.com (unknown [10.212.243.119])
 by kinkan2.css.socionext.com (Postfix) with ESMTP id 887FDB62E0;
 Wed, 20 Oct 2021 08:58:32 +0900 (JST)
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Rob Herring <robh+dt@kernel.org>, Masami Hiramatsu <mhiramat@kernel.org>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Subject: [PATCH v2 7/8] dt-bindings: phy: uniphier-ahci: Add bindings for Pro4
 SoC
Date: Wed, 20 Oct 2021 08:58:07 +0900
Message-Id: <1634687888-23900-8-git-send-email-hayashi.kunihiko@socionext.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1634687888-23900-1-git-send-email-hayashi.kunihiko@socionext.com>
References: <1634687888-23900-1-git-send-email-hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211019_165838_292233_8CBA2A15 
X-CRM114-Status: GOOD (  10.47  )
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

Update AHCI-PHY binding document for UniPhier Pro4 SoC. Add a compatible
string, clock and reset lines for the SoC to the document.

Pro4 AHCI-PHY needs to control additional GIO clock line and reset lines
("pm", "tx", and "rx").

Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
---
 .../bindings/phy/socionext,uniphier-ahci-phy.yaml    | 20 ++++++++++++++++----
 1 file changed, 16 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml b/Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml
index 745c525ce6b9..67415f7ebe8c 100644
--- a/Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml
@@ -16,6 +16,7 @@ maintainers:
 properties:
   compatible:
     enum:
+      - socionext,uniphier-pro4-ahci-phy
       - socionext,uniphier-pxs2-ahci-phy
       - socionext,uniphier-pxs3-ahci-phy
 
@@ -30,6 +31,9 @@ properties:
 
   clock-names:
     oneOf:
+      - items:          # for Pro4
+          - const: gio
+          - const: link
       - items:          # for PXs2
           - const: link
       - items:          # for others
@@ -37,12 +41,20 @@ properties:
           - const: phy
 
   resets:
-    maxItems: 2
+    minItems: 2
+    maxItems: 5
 
   reset-names:
-    items:
-      - const: link
-      - const: phy
+    oneOf:
+      - items:          # for Pro4
+          - const: gio
+          - const: link
+          - const: pm
+          - const: tx
+          - const: rx
+      - items:          # for others
+          - const: link
+          - const: phy
 
 required:
   - compatible
-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
