Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 858FAC88CB4
	for <linux-phy@archiver.kernel.org>; Mon, 12 Jun 2023 17:13:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TTVpy1Tl7w94qHZWwWpARJnkr/Kj+iFAeH4qSxVzuuE=; b=RFvRetVGCfD13M
	TkgFzpAxvUl6b4Anr3ai80pIZpuZf4hPJHJk3tfA9dFjJp/4P3PTKaZWQAsYwOFvRLutfsIcICef5
	X5tM8gLMCNxxwTeoIdQC9IgksHi8j3rKvcYqls2fUNkj83lQiOZdF9yEh8xOmyemmEMQXYumkDLCg
	LdZ87HLAk+82EkvUKVsgDn0k5k6nJ3CXLICgALolzH+5/Ier1uEPJMSIyjRxPLcvQL9stZmTByVj6
	1D2xgw+kEELI5uiYe6BWd1cgG/GwnNHerplGEGav6HuTKm9KIO61AhWUH8MNXnt71k1MrXtr00XPr
	OPu3IUzMMfn4f24Pding==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8l71-004idh-0b;
	Mon, 12 Jun 2023 17:13:51 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8l6w-004iZ9-1D;
	Mon, 12 Jun 2023 17:13:49 +0000
Received: from jupiter.universe (dyndsl-091-248-210-131.ewe-ip-backbone.de [91.248.210.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id EC835660217A;
	Mon, 12 Jun 2023 18:13:40 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1686590021;
	bh=n54yxi0NbW+9j5w95zW2R5gmOueJZM48CLnOI1FoEB0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=MikiQcRGOiFOSxmoBB/jq8DkOGToAcx9ny7kd5HyQLvOJjkUdEY7XMGZTAKrpavSG
	 qGB4EsjoXVQDOiPUjGooYvCiiep7/d5jSuNjnxqj6WADEQLNRChE5HFXJ2edmEzcxG
	 yWQ3+PEHRJ1NvULmUAnXYIyNTXScTFHb+7JAfAETjZP30wE6REdzg33bYru62aQcdT
	 ZDgsGDA8Wbc2bhRyFokFJFRMsmtuSPeUSwIcht+pW8DK3ECzJDjsu9s+0X9w3gsTYj
	 PxVcL1/D6Og+wgRyJVvqknab6ZAp9BIbYsyApKEZ5CYvHy6OGnVRRmfEjzPz7i5m2a
	 EbVUzTjnrP6VA==
Received: by jupiter.universe (Postfix, from userid 1000)
	id A3C8D4805B8; Mon, 12 Jun 2023 19:13:38 +0200 (CEST)
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
	kernel@collabora.com,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v4 1/5] dt-bindings: ata: dwc-ahci: add PHY clocks
Date: Mon, 12 Jun 2023 19:13:33 +0200
Message-Id: <20230612171337.74576-2-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230612171337.74576-1-sebastian.reichel@collabora.com>
References: <20230612171337.74576-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_101346_593261_8A0C020F 
X-CRM114-Status: UNSURE (   9.39  )
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
Reviewed-by: Serge Semin <fancer.lancer@gmail.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
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
