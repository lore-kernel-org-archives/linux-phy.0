Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6079C7EE24
	for <linux-phy@archiver.kernel.org>; Tue,  6 Jun 2023 14:44:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uVqYz6O1Yxxo48dsEuYnr3dNwUy1RET+DABvqTuC1MQ=; b=tq1BDdeWV0KCBW
	xj2U1C+PFGkhNV2ooMx4Xw65dOlzjRg38i9iKkrk40RCL8B065udQL4eB6HO2wd6ygT6deJs7Ez6U
	8kRgB5YpJt0lPTTmghZDYMfYAJrMqVLeYql764/YsZqIYNJ6bOgxW2bIebLWR31glOv542TARCO1T
	Ut9Dq1OhG1nly+/4biuS1QU5IbdNwVYQxy4i9GHROF6g1t9R7YE4EgsxWczLYDAyL26gqiUSMhqXY
	uUZ8/DO3Gkic+Fv3uFuXTk4GyS+rSpVWuBIKBUvdfQaJ/IuxKWrf3979ffmbQqmA/HmqS7si40OU8
	iaB+roN531vXvMjWoSgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6Xve-00250L-20;
	Tue, 06 Jun 2023 14:44:58 +0000
Received: from mx1.tq-group.com ([93.104.207.81])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6Xvb-0024yB-05
	for linux-phy@lists.infradead.org;
	Tue, 06 Jun 2023 14:44:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1686062695; x=1717598695;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=E9N6gczqBRtzStfelmYrMFPt3bD/yQja4D7peLE7F1A=;
  b=b2Bodj8T4Yhx2fJN0/eL0CI8p/L2HpXU4MWQLaNlNFMUD/GPWfLoatd1
   dokoalK7y5zSYAHr3PkmcBWLTZXsUX1Y+/ZcoweudY7BdJylt1EANBgSM
   cuV5mIMxJV9W7Vk+j0UXNfEV4OB2OX5jmvghOl4XfwJ/vXmtWf2sCN+VN
   UbMCGT74+T61c1/ZENKT1em9IHFXc6B/5B0SHvN+2lTsEKApUrqpM0837
   RGh3yiNXwvoqDQT5si82ENQwyZhjHtnsLxr4sw+bs0YAeqUPut8tHFTaX
   gPIQj7GF1heUzknwWn45jN+fSoGQnAS6Z5Mrp+XantCAEiiilliB1VCtv
   Q==;
X-IronPort-AV: E=Sophos;i="6.00,221,1681164000"; 
   d="scan'208";a="31307737"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 06 Jun 2023 16:44:50 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Tue, 06 Jun 2023 16:44:50 +0200
X-PGP-Universal: processed;
	by tq-pgp-pr1.tq-net.de on Tue, 06 Jun 2023 16:44:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1686062690; x=1717598690;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=E9N6gczqBRtzStfelmYrMFPt3bD/yQja4D7peLE7F1A=;
  b=JRnGx8y66FpnViI9fVHfcRva2PJpBp7gjP1MIaS3NRMg27KqLVLBIxTU
   l6hw9Lco8GCPaVW+xEwFJT3sa87aZ37yUmjYtUi0mGOv6Yl3Cg2zu8Cpt
   7S56ljX6WoELB7Kne+hFBURa+Px7kaLqY4Hf2AQmdHnVXQWZ7AyDSBb9v
   48dCaJP/2HeeCDW2MV/6kMqe4oxqlAywQIqvPnWnx576q4cyR5EbWH+cd
   tiDAmLoA2LpmVH7a+8M7HDu0/tpRL4fExvIkODy2bd2VBIOg1wnBPxFJ8
   it/9RjfEkxB87rKkP3+VVFlzCH3g6e6lf+PrlnqxBKZB1uUmSGOQPONKl
   g==;
X-IronPort-AV: E=Sophos;i="6.00,221,1681164000"; 
   d="scan'208";a="31307736"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 06 Jun 2023 16:44:50 +0200
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 7AEE6280090;
	Tue,  6 Jun 2023 16:44:50 +0200 (CEST)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Liu Ying <victor.liu@nxp.com>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH 1/1] dt-bindings: phy: mixel,mipi-dsi-phy: Remove assigned-clock* properties
Date: Tue,  6 Jun 2023 16:44:46 +0200
Message-Id: <20230606144447.775942-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230606_074455_448275_B2874B17 
X-CRM114-Status: UNSURE (   9.10  )
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

These properties are allowed anyway and some SoC (e.g. imx8mq) configure
more than just one clock using these properties.

Fixes: f9b0593dd4fc6 ("dt-bindings: phy: Convert mixel,mipi-dsi-phy to json-schema")
Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
I can't reproduce the mentioned mis-matches in commit f9b0593dd4fc6
("dt-bindings: phy: Convert mixel,mipi-dsi-phy to json-schema").

Since commit 62270eeb2b639 ("arm64: dts: imx8mq: Add clock parents for
mipi dphy") imx8mq.dtsi configures several clocks using assigned-clocks*
properties.

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
