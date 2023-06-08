Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81F77C87FDE
	for <linux-phy@archiver.kernel.org>; Thu,  8 Jun 2023 16:22:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jHO07sikZm0QtyrCqMxwq0a2CrcWCvI7tf1Hopgyxqk=; b=zh1Uxpi7Ycm/Ie
	CMH4dZCHG1HYKwtGfcRsdcP5BzUAECbs3aIM13Xp4nBu0J2+uJFuSQ2zKtjGPFnhgTlhDst0gvzgW
	XPUcYK3s4UAaxjP844SUt25S5rBZaMl9Xv79WoRqW3G9eNYw8jDcF0jAdoqsUNYp5wQ0gURkLsFGe
	qtlxGTn4bb+jacZfqqMghbW3Z3yyVEAYTS+DokfbtxBVcosOZxhIarcjdlUSTrtMsnxwOuSMwsZH4
	1eVyZlUGF8q9tqOljqDIy8TaGwQ7Gzw+NMixMOd4D8FH3PfPOavkUdc+bVgEb3MhB5DKg/Asos/tw
	azPa6GlMJsvjltgpoRqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q7IPT-009rUn-04;
	Thu, 08 Jun 2023 16:22:51 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q7IPO-009rPv-1c;
	Thu, 08 Jun 2023 16:22:49 +0000
Received: from jupiter.universe (dyndsl-091-248-189-092.ewe-ip-backbone.de [91.248.189.92])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id D6CEC6606F21;
	Thu,  8 Jun 2023 17:22:41 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1686241362;
	bh=FwPLJSnkJes7aEk1zAq6YjShJyVUZg9nQ3s3arUOpf0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=XCM3/njX/QTdb8Ky5RrlS2NB0s/2mU4RP9KsQ64i4z8VGStaw6NtoWkl8EdqUGY0/
	 8GTiH2MVJa8jifQeKCjf7c05zm98pre0S6JJOAmHiw2vBU019hEBm3AM5v3VevufDi
	 6nuU+kK91XQ8MJ8Mu8SywQ3NZysnDA/BpWJWXNxb/oe83vCb8Vx+xBXv1eFYHw8P/L
	 7fp/iHMC8sZgS4GtD2CovcA7jCo6RxuweGO1HlIjFtGZbUR/qoD91MBAryRya8pw+Z
	 B+OVB/WzjSRR9zrO3efk2vpwcEXmq1zr4GOpP0/sDcjCjnxIWJOp2qOZB8aa90Orxa
	 b0OJpb4OWE4Eg==
Received: by jupiter.universe (Postfix, from userid 1000)
	id CA4164807E0; Thu,  8 Jun 2023 18:22:39 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Damien Le Moal <damien.lemoal@opensource.wdc.com>,
	Serge Semin <fancer.lancer@gmail.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-ide@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH v3 1/5] dt-bindings: ata: dwc-ahci: add PHY clocks
Date: Thu,  8 Jun 2023 18:22:34 +0200
Message-Id: <20230608162238.50078-2-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230608162238.50078-1-sebastian.reichel@collabora.com>
References: <20230608162238.50078-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230608_092246_703094_5F5833B9 
X-CRM114-Status: UNSURE (   9.47  )
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

Add PHY transmit and receive clocks as described by the
DW SATA AHCI HW manual.

Suggested-by: Serge Semin <fancer.lancer@gmail.com>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 .../devicetree/bindings/ata/snps,dwc-ahci-common.yaml     | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/ata/snps,dwc-ahci-common.yaml b/Documentation/devicetree/bindings/ata/snps,dwc-ahci-common.yaml
index c1457910520b..34c5bf65b02d 100644
--- a/Documentation/devicetree/bindings/ata/snps,dwc-ahci-common.yaml
+++ b/Documentation/devicetree/bindings/ata/snps,dwc-ahci-common.yaml
@@ -31,11 +31,11 @@ properties:
       PM-alive clock, RxOOB detection clock, embedded PHYs reference (Rx/Tx)
       clock, etc.
     minItems: 1
-    maxItems: 4
+    maxItems: 6
 
   clock-names:
     minItems: 1
-    maxItems: 4
+    maxItems: 6
     items:
       oneOf:
         - description: Application APB/AHB/AXI BIU clock
@@ -48,6 +48,10 @@ properties:
           const: pmalive
         - description: RxOOB detection clock
           const: rxoob
+        - description: PHY Transmit Clock
+          const: asic
+        - description: PHY Receive Clock
+          const: rbc
         - description: SATA Ports reference clock
           const: ref
 
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
