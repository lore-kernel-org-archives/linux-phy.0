Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6CC0C433EF
	for <linux-phy@archiver.kernel.org>; Wed, 30 Mar 2022 05:22:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1+TOxZEpuAqtSnDKQWbM8ARn9wKOO8xmxpKJd88FzUM=; b=qBHev3wPmLfIqU
	cNgnVA6jN8LssO113MU9yO4GNuLpEdWYwTDrS2pHtsBo0bY/CE4FuZM/vMxy7YsDSVuWQytvgTuqj
	VodNirdf4IcgTy2deTWiBCQNZ3JneAbbA73YOJIoiozhmHYHf+iU1dnFdc8RVPhxFO4vS7tsZwDc4
	nn9fedMIElJnUgZgaZuqal50R5Af87ykw9tdj6cqg+pcwSPiXsBx4w34epJTtO7CYejRyyv4Jg0ZT
	epFbIl0uBIc6uMCGvhH8zRFjXDwxmn25oC8mybdl3VxUw8RsINidKgifoeXH8+lb1+DlUK7otdtPE
	nHp+169qYfi2dmSjUIcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZQmV-00EHvo-3r; Wed, 30 Mar 2022 05:22:07 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZQlN-00EHQ8-I0; Wed, 30 Mar 2022 05:20:58 +0000
Received: from unknown (HELO kinkan2-ex.css.socionext.com) ([172.31.9.52])
 by mx.socionext.com with ESMTP; 30 Mar 2022 14:20:57 +0900
Received: from mail.mfilter.local (m-filter-2 [10.213.24.62])
 by kinkan2-ex.css.socionext.com (Postfix) with ESMTP id 01DA42058443;
 Wed, 30 Mar 2022 14:20:57 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Wed, 30 Mar 2022 14:20:56 +0900
Received: from plum.e01.socionext.com (unknown [10.212.243.119])
 by kinkan2.css.socionext.com (Postfix) with ESMTP id 4BED4B62B7;
 Wed, 30 Mar 2022 14:20:56 +0900 (JST)
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Masami Hiramatsu <mhiramat@kernel.org>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Subject: [PATCH v2 3/5] dt-bindings: phy: uniphier-ahci: Fix missing
 reset-names
Date: Wed, 30 Mar 2022 14:20:49 +0900
Message-Id: <1648617651-9004-4-git-send-email-hayashi.kunihiko@socionext.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1648617651-9004-1-git-send-email-hayashi.kunihiko@socionext.com>
References: <1648617651-9004-1-git-send-email-hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220329_222057_732273_408C24FD 
X-CRM114-Status: GOOD (  12.04  )
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

UniPhier AHCI PHY controller needs to specify 6 reset lines, so this adds
missing "phy" to reset-names and increases maxItems of resets.

Fixes: 34f92b67621f ("dt-bindings: phy: uniphier-ahci: Add bindings for Pro4 SoC")
Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
---
 .../devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml   | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml b/Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml
index 3b400a85b44a..14f7579e7daa 100644
--- a/Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml
@@ -43,13 +43,14 @@ properties:
 
   resets:
     minItems: 2
-    maxItems: 5
+    maxItems: 6
 
   reset-names:
     oneOf:
       - items:          # for Pro4
           - const: link
           - const: gio
+          - const: phy
           - const: pm
           - const: tx
           - const: rx
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
