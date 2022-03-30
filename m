Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88152C433EF
	for <linux-phy@archiver.kernel.org>; Wed, 30 Mar 2022 05:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IfrszPd+4hTCWR9y96yGdAV20CCVfFOjFxIwzvAWafI=; b=Az5kUIN94K62/j
	sQLH4dFRxkTfbSw4OMzfPvfGVg3YcyINr34Ug5uC+v4xf6QQevafZlIE6ucsf0KnX2KEiiGUJcf9I
	WWDfzOy49slSYCslx/aCY/uMO5RqxaImrKoOmCti8x3ZNoqEUaJVZU7wd6Gl6Nrkv3GkxKvE3/Vgr
	Opl9XrWnQfUHRIO3/lRfw8fM5gV/F1cBLVgWhhXe8KoyT250ZxcRGEqv9ja6ogVuLX6bax70pXKgO
	CJcQwPms8lszpmDFaksL1HiUo3GnqTJukTSvo1BppE03Wq3a+pEzWcgLjgms26ntGvjqA7A1YXspH
	CbgDhpK4oOxY3vZ79Gtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZQmG-00EHom-V3; Wed, 30 Mar 2022 05:21:52 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZQlM-00EHQj-P5; Wed, 30 Mar 2022 05:20:58 +0000
Received: from unknown (HELO kinkan2-ex.css.socionext.com) ([172.31.9.52])
 by mx.socionext.com with ESMTP; 30 Mar 2022 14:20:56 +0900
Received: from mail.mfilter.local (m-filter-2 [10.213.24.62])
 by kinkan2-ex.css.socionext.com (Postfix) with ESMTP id EB0062058443;
 Wed, 30 Mar 2022 14:20:55 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Wed, 30 Mar 2022 14:20:55 +0900
Received: from plum.e01.socionext.com (unknown [10.212.243.119])
 by kinkan2.css.socionext.com (Postfix) with ESMTP id 70319B62B7;
 Wed, 30 Mar 2022 14:20:55 +0900 (JST)
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Masami Hiramatsu <mhiramat@kernel.org>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Subject: [PATCH v2 2/5] dt-bindings: phy: uniphier-usb3ss: Treat vbus-supply
 as optional
Date: Wed, 30 Mar 2022 14:20:48 +0900
Message-Id: <1648617651-9004-3-git-send-email-hayashi.kunihiko@socionext.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1648617651-9004-1-git-send-email-hayashi.kunihiko@socionext.com>
References: <1648617651-9004-1-git-send-email-hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220329_222056_980699_48F6F089 
X-CRM114-Status: GOOD (  12.67  )
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
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
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
