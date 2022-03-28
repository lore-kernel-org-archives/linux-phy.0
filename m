Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA407C433EF
	for <linux-phy@archiver.kernel.org>; Mon, 28 Mar 2022 02:06:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S1KghcJWRF1Pc97kYf/RFz6ezqiCjKY/Y3L2Li6tjT0=; b=XxFfrl9b9CSuKh
	xDmUIuPHwkt7qjx3pCs1E2INm/ixvG0eQaoT5eIfU8u7jI0GB1uVRXvHVKZ2WH/gNsqyykgvRqnVS
	dGswoWkbHIeGBIBTAyfATtLSaDerzwUawtQckvJ8hYsOyQajj240N0PYsRP+IdDXrRqULQpwRofWN
	qsUtzITjdzdcaRh2LZV5svKNv6kHt1xUTwiqLNq0BZw+MwmzWyOeDjyuJfWzRa4XKEq/rV4/VPcxV
	FBI3UoMp4P7l7/otXGu4i32aA0+74iQE8j8qmqvNqKXOJmYsiFeHBxbuK66RdLnsdVqYInm9VOj8J
	mY0gaAmWcK6hK6IWdEXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nYemE-00741e-4k; Mon, 28 Mar 2022 02:06:38 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nYelc-0073qF-QZ; Mon, 28 Mar 2022 02:06:02 +0000
Received: from unknown (HELO iyokan2-ex.css.socionext.com) ([172.31.9.54])
 by mx.socionext.com with ESMTP; 28 Mar 2022 11:06:00 +0900
Received: from mail.mfilter.local (m-filter-1 [10.213.24.61])
 by iyokan2-ex.css.socionext.com (Postfix) with ESMTP id 1300E2058B50;
 Mon, 28 Mar 2022 11:06:00 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Mon, 28 Mar 2022 11:06:00 +0900
Received: from plum.e01.socionext.com (unknown [10.212.243.119])
 by kinkan2.css.socionext.com (Postfix) with ESMTP id A943DB62B7;
 Mon, 28 Mar 2022 11:05:59 +0900 (JST)
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Masami Hiramatsu <mhiramat@kernel.org>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Subject: [PATCH 3/3] dt-bindings: phy: uniphier-ahci: Fix missing reset-names
Date: Mon, 28 Mar 2022 11:05:52 +0900
Message-Id: <1648433152-23126-4-git-send-email-hayashi.kunihiko@socionext.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1648433152-23126-1-git-send-email-hayashi.kunihiko@socionext.com>
References: <1648433152-23126-1-git-send-email-hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220327_190601_031361_3E9C6ADD 
X-CRM114-Status: GOOD (  10.58  )
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

Add missing "phy" reset-names to fix the following warning:

  uniphier-pro4-ace.dtb: ahci-phy@10: resets: [[26, 28], [26, 12], [26, 30], [36, 0], [36, 1], [36, 2]] is too long
      From schema: Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml
  uniphier-pro4-ace.dtb: ahci-phy@10: reset-names: 'oneOf' conditional failed, one must be fixed:
      ['link', 'gio', 'phy', 'pm', 'tx', 'rx'] is too long
      From schema: Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml

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
