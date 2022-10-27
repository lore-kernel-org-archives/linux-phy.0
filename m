Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B5FAC67871
	for <linux-phy@archiver.kernel.org>; Thu, 27 Oct 2022 04:50:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dNsbai60DNGbfHg2N/SJWobXBHfEjoCpjEqvCXX/Pr4=; b=rnKg8sGE1Q2Ofq
	45yyJ9hVzbO1iGaX8JxLs3Jy+9EtbMfXWf9GsIWFA0OSwbSRyKp7zBH1Dm1vp+9pg311pLE8w3asy
	w7FSzqIrfWBZGfRNh/hFq9Z0vAsyVsrqmMcerN9BqmE8FLQMdjbyiUH7yA0SP66vdAJuwK5t6trfS
	vO5ivf/7yN+qeb1iZIinS6fs+MQVOwzFym80zZhL2allaq4arQ5h+cKah7VP/atjkoCab8LnRe70m
	ULdaBtz9s+WKesO+Jjn+JPyBEP6JqXhe2X7yQ9/h3ZvuFSVZKf4hp1R4wRJfEMxkOgDja4w/4lCEX
	NpeT0akcKD4+kvRI9IyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onuqS-00Bozh-FU; Thu, 27 Oct 2022 04:50:20 +0000
Received: from mx.socionext.com ([202.248.49.38])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onupn-00Boqa-4Z; Thu, 27 Oct 2022 04:49:43 +0000
Received: from unknown (HELO iyokan2-ex.css.socionext.com) ([172.31.9.54])
  by mx.socionext.com with ESMTP; 27 Oct 2022 13:49:30 +0900
Received: from mail.mfilter.local (m-filter-2 [10.213.24.62])
	by iyokan2-ex.css.socionext.com (Postfix) with ESMTP id 9995120584CE;
	Thu, 27 Oct 2022 13:49:30 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP; Thu, 27 Oct 2022 13:49:30 +0900
Received: from plum.e01.socionext.com (unknown [10.212.243.119])
	by kinkan2.css.socionext.com (Postfix) with ESMTP id 5F2BCB62A4;
	Thu, 27 Oct 2022 13:49:30 +0900 (JST)
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Masami Hiramatsu <mhiramat@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Subject: [PATCH 1/2] dt-bindings: phy: Fix UniPhier USB3 controller node names in example
Date: Thu, 27 Oct 2022 13:49:19 +0900
Message-Id: <20221027044920.23194-2-hayashi.kunihiko@socionext.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221027044920.23194-1-hayashi.kunihiko@socionext.com>
References: <20221027044920.23194-1-hayashi.kunihiko@socionext.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221026_214941_334770_ECF7F73B 
X-CRM114-Status: GOOD (  12.80  )
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

The word "glue" is ambiguous for the controller node name. Should put
"usb-controller" instead of "usb-glue" on the controller node.

Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
---
 .../devicetree/bindings/phy/socionext,uniphier-usb3hs-phy.yaml  | 2 +-
 .../devicetree/bindings/phy/socionext,uniphier-usb3ss-phy.yaml  | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/socionext,uniphier-usb3hs-phy.yaml b/Documentation/devicetree/bindings/phy/socionext,uniphier-usb3hs-phy.yaml
index 21e4414eea60..8ce57898fb96 100644
--- a/Documentation/devicetree/bindings/phy/socionext,uniphier-usb3hs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/socionext,uniphier-usb3hs-phy.yaml
@@ -146,7 +146,7 @@ additionalProperties: false
 
 examples:
   - |
-    usb-glue@65b00000 {
+    usb-controller@65b00000 {
         compatible = "socionext,uniphier-ld20-dwc3-glue", "simple-mfd";
         #address-cells = <1>;
         #size-cells = <1>;
diff --git a/Documentation/devicetree/bindings/phy/socionext,uniphier-usb3ss-phy.yaml b/Documentation/devicetree/bindings/phy/socionext,uniphier-usb3ss-phy.yaml
index 4c26d2d2303d..ba60b7add4f7 100644
--- a/Documentation/devicetree/bindings/phy/socionext,uniphier-usb3ss-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/socionext,uniphier-usb3ss-phy.yaml
@@ -131,7 +131,7 @@ additionalProperties: false
 
 examples:
   - |
-    usb-glue@65b00000 {
+    usb-controller@65b00000 {
         compatible = "socionext,uniphier-ld20-dwc3-glue",
                      "simple-mfd";
         #address-cells = <1>;
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
