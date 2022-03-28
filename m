Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7285C433F5
	for <linux-phy@archiver.kernel.org>; Mon, 28 Mar 2022 02:06:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pfWdSmPLUMFHOZ9BlOLspvVqugqtmguYInsxa0ZFOBE=; b=ezLtVgWTStvqT8
	VfQ3sCYJQQVuGIGe8EhgPCp/HhQLOi6oc3VDrvfhh8h3yl5uczxUKyx12R0Fql1qy91s07iXoAOVL
	SEPFfVKO8Td/7G3dvAMNV9VZIDbKXjaQ4kFltT7Blj08xNyrjJBp192XQrOOoQPiCfD1SxFNVHUp3
	iltAdYmRRRG3MgsItM1rQEUvOlmenDFbB9DZlWi8dS1t22BXU+83fheKWKb0cKovSsNzLDmGlUdiD
	lNZmVWMa4Gswu9EIaLIL/q55seBYbgJ1yOAGkvOwWpckOMgMGzkSsOp4oIcyLIG8cLH1LditPvIiJ
	ichQax3QLkTkAekzC9Mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nYem4-0073yx-AK; Mon, 28 Mar 2022 02:06:28 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nYelb-0073qW-Br; Mon, 28 Mar 2022 02:06:01 +0000
Received: from unknown (HELO kinkan2-ex.css.socionext.com) ([172.31.9.52])
 by mx.socionext.com with ESMTP; 28 Mar 2022 11:05:58 +0900
Received: from mail.mfilter.local (m-filter-1 [10.213.24.61])
 by kinkan2-ex.css.socionext.com (Postfix) with ESMTP id 81B732058443;
 Mon, 28 Mar 2022 11:05:58 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Mon, 28 Mar 2022 11:05:58 +0900
Received: from plum.e01.socionext.com (unknown [10.212.243.119])
 by kinkan2.css.socionext.com (Postfix) with ESMTP id C473FB62B7;
 Mon, 28 Mar 2022 11:05:57 +0900 (JST)
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Masami Hiramatsu <mhiramat@kernel.org>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Subject: [PATCH 2/3] dt-bindings: phy: uniphier-usb3ss: Treat vbus-supply as
 optional
Date: Mon, 28 Mar 2022 11:05:51 +0900
Message-Id: <1648433152-23126-3-git-send-email-hayashi.kunihiko@socionext.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1648433152-23126-1-git-send-email-hayashi.kunihiko@socionext.com>
References: <1648433152-23126-1-git-send-email-hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220327_190559_551787_25E169CA 
X-CRM114-Status: GOOD (  11.72  )
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

The usb-device doesn't need "vbus-supply" property, so the property should
be removed from required.

Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
---
 .../devicetree/bindings/phy/socionext,uniphier-usb3ss-phy.yaml | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/socionext,uniphier-usb3ss-phy.yaml b/Documentation/devicetree/bindings/phy/socionext,uniphier-usb3ss-phy.yaml
index 92d46eb913a3..06c957d52d23 100644
--- a/Documentation/devicetree/bindings/phy/socionext,uniphier-usb3ss-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/socionext,uniphier-usb3ss-phy.yaml
@@ -61,7 +61,7 @@ properties:
           - const: phy
 
   vbus-supply:
-    description: A phandle to the regulator for USB VBUS
+    description: A phandle to the regulator for USB VBUS, only for USB host
 
 required:
   - compatible
@@ -71,7 +71,6 @@ required:
   - clock-names
   - resets
   - reset-names
-  - vbus-supply
 
 additionalProperties: false
 
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
