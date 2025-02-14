Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7FF65C02198
	for <linux-phy@archiver.kernel.org>; Fri, 14 Feb 2025 18:11:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dbw9uLbw1R0XyilV3R0imBtYGyU/Nx4XDQv3X8W4gKw=; b=1gFjxacDX5R2Fx
	FKiy7jBvyHfw0C+I6mo6R5bt7gpI8PasCWbGvT9Wnu3Gn7hKUwpL+kVu0aJrgFVIdzScMOLrppTcF
	zON8Oknk6aJxZ2xXoQYD+HJ6EjItkGzQYiVQ/f+DEIiXYdrPeqtmm5fmo9Rosmfr7zmYxgRRbp2bp
	h5pixQO73Nv0CdG47q0am4Qxi5pMJfynkWguRjjHfQGT78Z3AiO+pQS8uk9iUnhL16TMHCbnC5EDY
	luXG9tpbdrI2FSP6tiPnNKTzC65iXpeUHBw6zuDQEldkR9Zutib+8XKMk0ulVipC22b0MhLy7y9Wq
	FNhj4xIZ7pnht3L9xLOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tj0A9-0000000FpdX-19Cd;
	Fri, 14 Feb 2025 18:11:41 +0000
Received: from sendmail.purelymail.com ([34.202.193.197])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tizTW-0000000Fhxz-0fVV
	for linux-phy@lists.infradead.org;
	Fri, 14 Feb 2025 17:27:39 +0000
Authentication-Results: purelymail.com; auth=pass
DKIM-Signature: a=rsa-sha256; b=QkbdHz1QdCgSpPWTSSzdDhcQ12Mpzb59utA6h91owRHnT2MAWOnphp8Z3LIoLu79ypGbRkbZ910EeX7iKFLePZ9wWOayYNhdXZMDajXAJrJtDC7t4jJDAF4T+1BAlVasLG6DBkUfS0eYu+2P+w9tHQr/jhBz6zsK+zxwEqxPGiAPTdp34w7/MhfpL/epyVP2sOrkBqPmRIaQD5ge8DSUjUcRY7lg9qA/p/Waihfgj1ocELz2xrXYA8W3R3O8Q+2xBuhLgnKvbBWa34sEJkLFK18nh/Emnza3P8BzyIz8TTNlubGctmnaOglQgZ7jM0ScsVWsJfwI5Nuyuyki9AhG6Q==; s=purelymail3; d=purelymail.com; v=1; bh=iDXXbPWbID8m8JbMx1nJgBGgKzWTYtFCC6JsMVbw3I4=; h=Feedback-ID:Received:From:Date:Subject:To;
Feedback-ID: 68247:10037:null:purelymail
X-Pm-Original-To: linux-phy@lists.infradead.org
Received: by smtp.purelymail.com (Purelymail SMTP) with ESMTPSA id -1457029256;
          (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
          Fri, 14 Feb 2025 17:25:51 +0000 (UTC)
From: Igor Belwon <igor.belwon@mentallysanemainliners.org>
Date: Fri, 14 Feb 2025 18:21:07 +0100
Subject: [PATCH 1/2] dt-bindings: phy: samsung,usb3-drd-phy: Add exynos990
 compatible
MIME-Version: 1.0
Message-Id: <20250214-exynos990-dwusb-v1-1-d68282c51ba8@mentallysanemainliners.org>
References: <20250214-exynos990-dwusb-v1-0-d68282c51ba8@mentallysanemainliners.org>
In-Reply-To: <20250214-exynos990-dwusb-v1-0-d68282c51ba8@mentallysanemainliners.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Marek Szyprowski <m.szyprowski@samsung.com>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Alim Akhtar <alim.akhtar@samsung.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 Igor Belwon <igor.belwon@mentallysanemainliners.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1739553946; l=1219;
 i=igor.belwon@mentallysanemainliners.org; s=20241206;
 h=from:subject:message-id; bh=iDXXbPWbID8m8JbMx1nJgBGgKzWTYtFCC6JsMVbw3I4=;
 b=0CiJOuWyRSYcOvfmqT1w7uVi/46ykMVj0zRaUAklcpxVMoDlW9I9IdOuFpfRff+c4Z+DMXIob
 vBNio8EOCWBD6N76A5sGD2D0J0u2lDqr8AnWPzsaJgdg07rIrYlN5gY
X-Developer-Key: i=igor.belwon@mentallysanemainliners.org; a=ed25519;
 pk=qKAuSTWKTaGQM0vwBxV0p6hPKMN4vh0CwZ+bozrG5lY=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250214_092738_268773_87D590A1 
X-CRM114-Status: UNSURE (   7.25  )
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

Add a compatible for the exynos990-usbdrd-phy. The PHY is compatible
with the older exynos5420 design (two clocks) when running in highspeed mode.

Signed-off-by: Igor Belwon <igor.belwon@mentallysanemainliners.org>
---
 Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml b/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
index 27295acbba7674f6cdc402f18ff4c505bd8760f6..b9ba92b8975d3e88162b938624558b3fca9f4faf 100644
--- a/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
@@ -31,6 +31,7 @@ properties:
       - samsung,exynos5433-usbdrd-phy
       - samsung,exynos7-usbdrd-phy
       - samsung,exynos850-usbdrd-phy
+      - samsung,exynos990-usbdrd-phy
 
   clocks:
     minItems: 2
@@ -185,6 +186,7 @@ allOf:
               - samsung,exynos5250-usbdrd-phy
               - samsung,exynos5420-usbdrd-phy
               - samsung,exynos850-usbdrd-phy
+              - samsung,exynos990-usbdrd-phy
     then:
       properties:
         clocks:

-- 
2.47.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
