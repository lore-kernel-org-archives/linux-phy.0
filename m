Return-Path: <SRS0=Fvr8=MG=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71303C07E9A
	for <linux-phy@archiver.kernel.org>; Wed, 14 Jul 2021 09:42:25 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 460066120A
	for <linux-phy@archiver.kernel.org>; Wed, 14 Jul 2021 09:42:25 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 460066120A
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=z5LLsgwWXfAnh/loS8W504xlwCvYay6OF5B/hsnsITw=; b=SSfZTopwjFZuP8
	MGugXKJut0Gytbx7IzGjI3z24A7luChB2d6i8QANrQY8jNtgr8X4fAgO7Iwlvp7C0kzsEhI3PrdgC
	P+xZjqdlmbcKwT2evMGdDmJrd5KrNJRvRPmzO+CZWoMMDknpRkocA7jybTwuyVFuLDSbrhHgPaORg
	lNEYHqxPE4Q9VW5KBh0pdbQzsgmrsZedxEnhgGtN9Fkkh7PBJnY1cOPR6r5uXy8iQix78u2UGRcMn
	JgrdwUczg+rmygkprWT6pBB+peGnn+IPnnxfrSmQa9uLEz0cNzacehPGoQJVP8JRyZG+k9Utna9zj
	1eo/V7Qz4g48fZK0rVww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m3bPM-00Cwze-Q5; Wed, 14 Jul 2021 09:42:24 +0000
Received: from laurent.telenet-ops.be ([2a02:1800:110:4::f00:19])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m3bPG-00Cwxr-KN
 for linux-phy@lists.infradead.org; Wed, 14 Jul 2021 09:42:24 +0000
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed10:39cc:190a:2775:cfe7])
 by laurent.telenet-ops.be with bizsmtp
 id UxiF2500Q1ccfby01xiFKs; Wed, 14 Jul 2021 11:42:15 +0200
Received: from rox.of.borg ([192.168.97.57])
 by ramsan.of.borg with esmtps (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.93)
 (envelope-from <geert@linux-m68k.org>)
 id 1m3bPD-0015cg-0F; Wed, 14 Jul 2021 11:42:15 +0200
Received: from geert by rox.of.borg with local (Exim 4.93)
 (envelope-from <geert@linux-m68k.org>)
 id 1m3bPC-00A3QK-Ca; Wed, 14 Jul 2021 11:42:14 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Ahmad Zainie <wan.ahmad.zainie.wan.mohamad@intel.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Geert Uytterhoeven <geert+renesas@glider.be>,
 Rob Herring <robh@kernel.org>
Subject: [PATCH v2] dt-bindings: phy: Rename Intel Keem Bay USB PHY bindings
Date: Wed, 14 Jul 2021 11:42:13 +0200
Message-Id: <91235a64185f7446fc58e638d77691078d3114d1.1626255556.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210714_024218_845972_1C32C35B 
X-CRM114-Status: UNSURE (   8.08  )
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

This is the only file not using the "intel,keembay-*" pattern.
Fortunately the actual compatible value is already following the
standard scheme.

Fixes: 4086afa2a1627939 ("dt-bindings: phy: Add Intel Keem Bay USB PHY bindings")
Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
Acked-by: Rob Herring <robh@kernel.org>
---
v2:
  - Add Acked-by.
---
 .../{intel,phy-keembay-usb.yaml => intel,keembay-phy-usb.yaml}  | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
 rename Documentation/devicetree/bindings/phy/{intel,phy-keembay-usb.yaml => intel,keembay-phy-usb.yaml} (93%)

diff --git a/Documentation/devicetree/bindings/phy/intel,phy-keembay-usb.yaml b/Documentation/devicetree/bindings/phy/intel,keembay-phy-usb.yaml
similarity index 93%
rename from Documentation/devicetree/bindings/phy/intel,phy-keembay-usb.yaml
rename to Documentation/devicetree/bindings/phy/intel,keembay-phy-usb.yaml
index a217bb8ac5bc0887..52815b6c2b88d019 100644
--- a/Documentation/devicetree/bindings/phy/intel,phy-keembay-usb.yaml
+++ b/Documentation/devicetree/bindings/phy/intel,keembay-phy-usb.yaml
@@ -1,7 +1,7 @@
 # SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
 %YAML 1.2
 ---
-$id: http://devicetree.org/schemas/phy/intel,phy-keembay-usb.yaml#
+$id: http://devicetree.org/schemas/phy/intel,keembay-phy-usb.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
 title: Intel Keem Bay USB PHY bindings
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
