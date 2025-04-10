Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83DADC3601E
	for <linux-phy@archiver.kernel.org>; Thu, 10 Apr 2025 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=19vmB/YUt4gMfOVqk//tA/sZ2rqR2R5ujKRVj9I8NYM=; b=sj3csbww1wMTsn
	+19WY8Zc5z2DL6t741mEoMea84gOK1915FA+y6vq5qDl2SbbRT288MV/9nPo/30HcIsPgjKduYW1a
	U8lFhDwI3WbzR87Rbd9sBm7KBfIoZ63ozawZ0kgCC79JhSj+uxo8WTtOOn287syIv/k2l2kk4zo8W
	y0ZUKWto1E1yi73bf4ximQ/sT9japt6mdZOUiy4b96LS7C+jaOM6KruM9g5bCfKqLpBOJQxwMjJxQ
	NAWAceP9fcbCDGmmkw1a1Wu6jOBLJLvkrQOVI0QfpxUXaDMtzNEBc9MjCgpjU/XzHBBpS9WcJ2IQK
	zrhqTBJ5nOy9+cNUYuZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2nhR-00000009pZ0-1B29;
	Thu, 10 Apr 2025 08:55:53 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2nKd-00000009l7Q-2yCl;
	Thu, 10 Apr 2025 08:32:21 +0000
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 6007B2591A;
	Thu, 10 Apr 2025 10:32:18 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id U-DXZHkkyRaR; Thu, 10 Apr 2025 10:32:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1744273937; bh=WPe1sxDRW4Ck8whEWKonZDCvZ3gDCa3iKSd6Shbmxhg=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc;
	b=FgkLgtHl0hs2IU4IIsD64hCGhyXRNvFQKedDzx9aZmvUzVEdLpzM2Up4PZsS0cCo/
	 y5txzpb6bSJt7Me2tQdEvtJYtZgAOxiZ3lPpskBJhrA8Sp+sxl9zOSMIh+KJgJtIEi
	 8bn8sPQfUxPNbXTZDvMccg7TI6KJFEz96MhSwB9ZhgdItfA9BDvP7OJ5JgrRQcPNMy
	 WOYD52L9Hsj7msQPSfT7ljS7gvRFzmkRvn+Pv557a5frChz+I9xScGyjBeu7bHE7qy
	 nYByO9Q1xRNA5C1REvgW/63swu9fXhT/iCPkMMJa8I0VXrpS7vYhjAUD9WNhP3DgQd
	 5xjath69YzYBQ==
From: Kaustabh Chakraborty <kauschluss@disroot.org>
Date: Thu, 10 Apr 2025 14:01:13 +0530
Subject: [PATCH RESEND v2 2/3] dt-bindings: phy: samsung,usb3-drd-phy: add
 exynos7870-usbdrd-phy compatible
MIME-Version: 1.0
Message-Id: <20250410-exynos7870-usbphy-v2-2-2eb005987455@disroot.org>
References: <20250410-exynos7870-usbphy-v2-0-2eb005987455@disroot.org>
In-Reply-To: <20250410-exynos7870-usbphy-v2-0-2eb005987455@disroot.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Marek Szyprowski <m.szyprowski@samsung.com>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>
Cc: linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Kaustabh Chakraborty <kauschluss@disroot.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Developer-Signature: v=1; a=ed25519-sha256; t=1744273913; l=1340;
 i=kauschluss@disroot.org; s=20250202; h=from:subject:message-id;
 bh=WPe1sxDRW4Ck8whEWKonZDCvZ3gDCa3iKSd6Shbmxhg=;
 b=jTKXsnDqVe+aHRgxlxi3cjhFZ8/IkqodvnhJvdmGnCDqMfCDlJe2rlgOS3OjaqXBlxMmK0B3J
 51yQLKU+PGmCjSTYe+6egWhms52klyVK4mrglyGOwxbMc5OZOF55oKL
X-Developer-Key: i=kauschluss@disroot.org; a=ed25519;
 pk=h2xeR+V2I1+GrfDPAhZa3M+NWA0Cnbdkkq1bH3ct1hE=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250410_013219_881076_C7547446 
X-CRM114-Status: UNSURE (   6.10  )
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

Add the compatible string "samsung,exynos7870-usbdrd-phy" to the
documentation. The devicetree node requires two clocks, named "phy" and
"ref" (same as clocks required by Exynos5).

Signed-off-by: Kaustabh Chakraborty <kauschluss@disroot.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml b/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
index 27295acbba7674f6cdc402f18ff4c505bd8760f6..fdddddc7d611364ce17870b5b8963b5a0c0c9668 100644
--- a/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
@@ -30,6 +30,7 @@ properties:
       - samsung,exynos5420-usbdrd-phy
       - samsung,exynos5433-usbdrd-phy
       - samsung,exynos7-usbdrd-phy
+      - samsung,exynos7870-usbdrd-phy
       - samsung,exynos850-usbdrd-phy
 
   clocks:
@@ -184,6 +185,7 @@ allOf:
             enum:
               - samsung,exynos5250-usbdrd-phy
               - samsung,exynos5420-usbdrd-phy
+              - samsung,exynos7870-usbdrd-phy
               - samsung,exynos850-usbdrd-phy
     then:
       properties:

-- 
2.49.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
