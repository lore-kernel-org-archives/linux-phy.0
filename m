Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3B30C77B7F
	for <linux-phy@archiver.kernel.org>; Tue, 24 Jun 2025 13:40:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=545i2pqdDCOL/xeGsJqtUanad74ioWiOvKgNiUonDLg=; b=MSuSWbUbR8JmVP
	NUoZNLBqGoE99QsIxPKhQGrwl4GcuyvDxp/P+3llaVp4LpirxO6SYMxpRV2Cx83hVM38U/uAlNYKM
	N7xohWZ/QWDlXPLAVeyEXJmDDc8+PEesP2kAOeUio6jCniCEAoY94fwRA57pJgYl1s9qLTfQ3R78c
	CZtZmLq2/edMBUiOyYH848HAdGwj9Cq1sHItxSO2R8q+5BXEN3CGdIcmaATrzqDLtoKvDBRmbBzGe
	cOeHjM7hv2zkkSpk9qMIqpWC+Mlm63tkLKWWP+rzS2lUTIIEut8di8LtSYoQiJ4oBnEMslwp6duw8
	mQJYlKo6eJR7e7rszgxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uU3su-00000005k6j-1YVd;
	Tue, 24 Jun 2025 13:40:24 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uU3bg-00000005hLz-0aqr
	for linux-phy@lists.infradead.org;
	Tue, 24 Jun 2025 13:22:36 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 3B9F86116F;
	Tue, 24 Jun 2025 13:22:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D6CB5C4CEE3;
	Tue, 24 Jun 2025 13:22:32 +0000 (UTC)
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Khuong Dinh <khuong@os.amperecomputing.com>
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH] dt-bindings: phy: apm,xgene-phy: Remove trailing whitespace
Date: Tue, 24 Jun 2025 15:22:29 +0200
Message-ID: <5b8e9b4f645bcac9d50059e513abba4db7e1aaea.1750771156.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
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

Remove trailing whitespace which hurts my eyes.

Fixes: 65ad0d068c426c2f ("dt-bindings: phy: Convert apm,xgene-phy to DT schema")
Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 Documentation/devicetree/bindings/phy/apm,xgene-phy.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/apm,xgene-phy.yaml b/Documentation/devicetree/bindings/phy/apm,xgene-phy.yaml
index d1e6b112b6de97d9..0674391feeae0091 100644
--- a/Documentation/devicetree/bindings/phy/apm,xgene-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/apm,xgene-phy.yaml
@@ -8,7 +8,7 @@ title: APM X-Gene 15Gbps Multi-purpose PHY
 
 maintainers:
   - Khuong Dinh <khuong@os.amperecomputing.com>
-  
+
 description:
   PHY nodes are defined to describe on-chip 15Gbps Multi-purpose PHY. Each
   PHY (pair of lanes) has its own node.
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
