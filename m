Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C69AC433F5
	for <linux-phy@archiver.kernel.org>; Mon, 28 Mar 2022 02:06:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YbQbRVMbHCcJxNrFz4i7sJZf5fPKtvcP095/EAkg3zY=; b=jPa1xFoWnsPaAv
	eePhZyi1NCOK6Cm97CBS4d4AvTtf2vu9NFZtwoureBoHt1PZkhdoZ9tu/qyOgMTDgqtXEHnBd0JdJ
	+NiAzUWvqRKfSSs96fh8fvcLEvPz2kxa7gvxrnHOGqtA1dCvcwlBheEhfb2wNxcbs46SUfnLosXfS
	bIpakVyEF7+nPtfhZOmqBuulDB1AQgqWVC2UVwzcKKJRPaa1x5j24LHbjEgiSoG0xCT2ijMcMzcp8
	Pfj0+DuMcsJGrtdkX9B7hMyeWwRI67Dy/eKF58ZA+bbl4FIo8UQfMU0PTOMIejPs4q34FprRcX7EY
	9hSgrTJWOFM/jJvh44Ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nYelu-0073xW-R8; Mon, 28 Mar 2022 02:06:18 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nYelb-0073qV-79; Mon, 28 Mar 2022 02:06:00 +0000
Received: from unknown (HELO iyokan2-ex.css.socionext.com) ([172.31.9.54])
 by mx.socionext.com with ESMTP; 28 Mar 2022 11:05:57 +0900
Received: from mail.mfilter.local (m-filter-2 [10.213.24.62])
 by iyokan2-ex.css.socionext.com (Postfix) with ESMTP id 2F84C2058B50;
 Mon, 28 Mar 2022 11:05:57 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Mon, 28 Mar 2022 11:05:57 +0900
Received: from plum.e01.socionext.com (unknown [10.212.243.119])
 by kinkan2.css.socionext.com (Postfix) with ESMTP id DF025B6389;
 Mon, 28 Mar 2022 11:05:56 +0900 (JST)
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Masami Hiramatsu <mhiramat@kernel.org>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Subject: [PATCH 1/3] dt-bindings: phy: uniphier-usb2: Add vbus-supply
Date: Mon, 28 Mar 2022 11:05:50 +0900
Message-Id: <1648433152-23126-2-git-send-email-hayashi.kunihiko@socionext.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1648433152-23126-1-git-send-email-hayashi.kunihiko@socionext.com>
References: <1648433152-23126-1-git-send-email-hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220327_190559_397599_99B14088 
X-CRM114-Status: GOOD (  11.54  )
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

UniPhier USB2 PHY controller can apply vbus-supply.
Add "vbus-supply" property to fix the following warning.

  uniphier-pro4-ace.dtb: usb-glue: phy@2: 'vbus-supply' does not match any of the regexes: 'pinctrl-[0-9]+'
      From schema: Documentation/devicetree/bindings/phy/socionext,uniphier-usb2-phy.yaml

Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
---
 .../devicetree/bindings/phy/socionext,uniphier-usb2-phy.yaml   | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/socionext,uniphier-usb2-phy.yaml b/Documentation/devicetree/bindings/phy/socionext,uniphier-usb2-phy.yaml
index 479b203f7aa6..63dab914a48d 100644
--- a/Documentation/devicetree/bindings/phy/socionext,uniphier-usb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/socionext,uniphier-usb2-phy.yaml
@@ -43,6 +43,9 @@ patternProperties:
       "#phy-cells":
         const: 0
 
+      vbus-supply:
+        description: A phandle to the regulator for USB VBUS, only for USB host
+
     required:
       - reg
       - "#phy-cells"
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
