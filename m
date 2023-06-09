Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8AD3EC7EE25
	for <linux-phy@archiver.kernel.org>; Fri,  9 Jun 2023 07:15:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fvqfCgNYxG1V9Tkd7OUN0BVE+yo3PvIixyuhiEgnYUw=; b=XGEYbsbnAqW6/L
	uMM0Ik312lZn9j08pfcA3WR4kCjDQjIVSRPOjZ7xGv7xQF0Q/GcR9/wb9GDj71adKaL3rYEI08kOX
	R9z42SOMmXLe9rwK2MGVM9zVvYDWV+JJVWm5UyS2ij9yNt/p9utk00z1bw+RP6iSE7xyXx+JC4QDC
	WBwE7c8F5QdpBuipxtqHuGGc2b+ig8qR3dDHc0o8jshdPTN164wQzV6rSWcMt7xrX1Cs5OBHCY0O1
	6WTndzDp416ZAl1pLmojUDdyKKuvrgqiSHh+qo9Xhc8Gtzrx9fBeI2udnppB+NyBi7rRllEHV6yVg
	+uL8KY4j2dE8zzvVpMsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q7WLb-00C0f8-03;
	Fri, 09 Jun 2023 07:15:47 +0000
Received: from mx1.tq-group.com ([93.104.207.81])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q7WLX-00C0dd-2M
	for linux-phy@lists.infradead.org;
	Fri, 09 Jun 2023 07:15:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1686294943; x=1717830943;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=rglwPnnCh4JkW+rLdV6FB+gI3tpwBPD9iGIxhuqLe+g=;
  b=gqaZybgU+qVyMdkw6o+FlDOana8GGV768eXEY/5TDB2zFQ68B2vf7nuK
   z3s1GaLp/omsk5reCumEijulDjj2wQLAFQ/LE4hL2ve62HySpyrH3lhQy
   kHslB6sxsijJV/7DL8jzMDERczYPRyE12UQ9t5qq+DVEqVaEp1xA8rVXi
   TxzqeYtnLuZR8WKScwLvfb+ijKplMePcqHe9q6CC69I3glAvYp+W+Fd/7
   pmXvRqC8vTwf3MNPCqQrcgvL9fre53o65HfrFa9XyMXPNJ9XrD1P1Uwv7
   f2M06iVUbG3x0thIfNl5YMaSFjQ20JtdqpANVNoJbCnffZpXYA+J0tPmV
   g==;
X-IronPort-AV: E=Sophos;i="6.00,228,1681164000"; 
   d="scan'208";a="31357752"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 09 Jun 2023 09:15:39 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Fri, 09 Jun 2023 09:15:39 +0200
X-PGP-Universal: processed;
	by tq-pgp-pr1.tq-net.de on Fri, 09 Jun 2023 09:15:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1686294939; x=1717830939;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=rglwPnnCh4JkW+rLdV6FB+gI3tpwBPD9iGIxhuqLe+g=;
  b=dOC8GqwjGL66DLKmKpo391W1tGJC8/hs5zXJlcpJnDiNWnmgUhfhibKA
   yqQD6JIDeWqUHUTm49RyoGOHE9kgfJ8j25FOKLZR56b2sj0xLbLVA7p4w
   SOtgQPuOZbkbsBj1eyvTUr+uryu2Hltw9xQZofTdvmYq7W8Yxs0ccgabt
   871e3li18tMvnsLmx1KUZkW1G+wFNXUDc0gIX38XuJF32kS+Q2Nm0juBg
   v6KP21DBE/gA3D416kieBTJ3v+j+yeF5/NCDybKR31jpn9LdL+1x3cZ63
   fnkWraErFQLH2kjqXQXG44KxGKSIQd5VPG2ZA21SEOiYBLIwQlAuCzjSQ
   g==;
X-IronPort-AV: E=Sophos;i="6.00,228,1681164000"; 
   d="scan'208";a="31357751"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 09 Jun 2023 09:15:39 +0200
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 5BE7B280087;
	Fri,  9 Jun 2023 09:15:39 +0200 (CEST)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Liu Ying <victor.liu@nxp.com>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v2 1/1] dt-bindings: phy: mixel,mipi-dsi-phy: Remove assigned-clock* properties
Date: Fri,  9 Jun 2023 09:15:38 +0200
Message-Id: <20230609071538.149712-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230609_001544_158521_1D393212 
X-CRM114-Status: UNSURE (   7.76  )
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

With dt-schema v2021.02 these properties are added by default. Some SoC
(e.g. imx8mq) configure more than just one clock using these properties.

Fixes: f9b0593dd4fc6 ("dt-bindings: phy: Convert mixel,mipi-dsi-phy to json-schema")
Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
---
Changes in v2:
* Add Conor's r-b
* Add rationale to commit message why these properties can be removed

 .../devicetree/bindings/phy/mixel,mipi-dsi-phy.yaml      | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/mixel,mipi-dsi-phy.yaml b/Documentation/devicetree/bindings/phy/mixel,mipi-dsi-phy.yaml
index 786cfd71cb7eb..3c28ec50f0979 100644
--- a/Documentation/devicetree/bindings/phy/mixel,mipi-dsi-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/mixel,mipi-dsi-phy.yaml
@@ -32,15 +32,6 @@ properties:
   clock-names:
     const: phy_ref
 
-  assigned-clocks:
-    maxItems: 1
-
-  assigned-clock-parents:
-    maxItems: 1
-
-  assigned-clock-rates:
-    maxItems: 1
-
   "#phy-cells":
     const: 0
 
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
