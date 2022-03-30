Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A993C433F5
	for <linux-phy@archiver.kernel.org>; Wed, 30 Mar 2022 10:56:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qDgiu+PT2+deHHozdlvdU2zyVyVCHquylxPLpKbGb5E=; b=Fvd8xusa2f60rE
	ghDuSF3JuQyrRJiZJV4/45tfxYD/qTNdFGiTtQk9nhpAiFDD6OqyFkiUaShDlHCC7m2cJ8IejTjj2
	g7HsjUkQ9j/fcwd2X5ixMdf9YSpMBf/w9SwCh0KNFUSEwWCcQIsJEqSdeDf2WTC65gORd6XO2YJiR
	qfR+AY5awz15V7qkNC7Zpf5jT1Z3gUtzJN7pfoWqkIVe6cDuovAvL2bLsOiMGLrAUZKOPPlL6cM+d
	9pIohgZ0l5jAF2TZnGDjkOqNk02K01k6ZpQAz7HkCugd+wyba8fqj+3JcL9X58MXeqWfXw8jJ/x3M
	GLOUipfCs64mYIhQ2BJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZW05-00FH62-Dv; Wed, 30 Mar 2022 10:56:29 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZVz2-00FGhW-Iz; Wed, 30 Mar 2022 10:55:26 +0000
Received: from unknown (HELO kinkan2-ex.css.socionext.com) ([172.31.9.52])
 by mx.socionext.com with ESMTP; 30 Mar 2022 19:55:22 +0900
Received: from mail.mfilter.local (m-filter-2 [10.213.24.62])
 by kinkan2-ex.css.socionext.com (Postfix) with ESMTP id 9A1212058443;
 Wed, 30 Mar 2022 19:55:22 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Wed, 30 Mar 2022 19:55:22 +0900
Received: from plum.e01.socionext.com (unknown [10.212.243.119])
 by kinkan2.css.socionext.com (Postfix) with ESMTP id D281FB62B7;
 Wed, 30 Mar 2022 19:55:21 +0900 (JST)
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Masami Hiramatsu <mhiramat@kernel.org>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Subject: [PATCH v3 3/5] dt-bindings: phy: uniphier-ahci: Fix missing
 reset-names
Date: Wed, 30 Mar 2022 19:55:13 +0900
Message-Id: <1648637715-19262-4-git-send-email-hayashi.kunihiko@socionext.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1648637715-19262-1-git-send-email-hayashi.kunihiko@socionext.com>
References: <1648637715-19262-1-git-send-email-hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220330_035524_780892_5CC577CB 
X-CRM114-Status: GOOD (  11.93  )
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
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
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
