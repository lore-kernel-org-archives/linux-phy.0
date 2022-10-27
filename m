Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5940BC38A2D
	for <linux-phy@archiver.kernel.org>; Thu, 27 Oct 2022 04:50:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=643YlvBTGMtYv92fYHCrRb3imN6GjSMURJX9JbnbE4o=; b=SXK2GqDmYGUlWR
	4EnHNLY6xSFNtRnnMx0DgORLhHHBVEVH8Bd1aRqUTG6h2UIidQxps7NFxzS9qEWlm8zppLV86n5wH
	uWuUEO0cZya+UKdXEGB3epaTXJXSRUJsZAXw+pnAMBl4P/Y1BWtNOXDNMxgxKyYIXwRpGL92OzT1J
	l9CMa5yyjYMFhnwBjsyHKvl+V4OCILpjFbXgD/YK8ldKzJ6gY60Yo1I1yVYDtQTWpK4aKA3CMHbNR
	JbrrhtTZTL5yXLQrEAxPGi8muOFiLUmETnOzV2qKTBFbN1Kl+uN3JcxcsQXRc4Pz+sahtaw2MziqF
	0HzxN6QBFnbBbDjnZ1cg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onuqJ-00Bowv-Ka; Thu, 27 Oct 2022 04:50:11 +0000
Received: from mx.socionext.com ([202.248.49.38])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onupn-00Boqm-1P; Thu, 27 Oct 2022 04:49:42 +0000
Received: from unknown (HELO iyokan2-ex.css.socionext.com) ([172.31.9.54])
  by mx.socionext.com with ESMTP; 27 Oct 2022 13:49:31 +0900
Received: from mail.mfilter.local (m-filter-2 [10.213.24.62])
	by iyokan2-ex.css.socionext.com (Postfix) with ESMTP id A167220584CE;
	Thu, 27 Oct 2022 13:49:31 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP; Thu, 27 Oct 2022 13:49:31 +0900
Received: from plum.e01.socionext.com (unknown [10.212.243.119])
	by kinkan2.css.socionext.com (Postfix) with ESMTP id 531E4B62A4;
	Thu, 27 Oct 2022 13:49:31 +0900 (JST)
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
Subject: [PATCH 2/2] dt-bindings: phy: Fix UniPhier SATA controller node names in example
Date: Thu, 27 Oct 2022 13:49:20 +0900
Message-Id: <20221027044920.23194-3-hayashi.kunihiko@socionext.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221027044920.23194-1-hayashi.kunihiko@socionext.com>
References: <20221027044920.23194-1-hayashi.kunihiko@socionext.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221026_214941_295904_B523FB9B 
X-CRM114-Status: GOOD (  12.47  )
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
"sata-controller" instead of "ahci-glue" on the controller node.
And rename a phy node to "sata-phy".

Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
---
 .../devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml  | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml b/Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml
index a3cd45acea28..89b8b133777a 100644
--- a/Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml
@@ -117,14 +117,14 @@ additionalProperties: false
 
 examples:
   - |
-    ahci-glue@65700000 {
+    sata-controller@65700000 {
         compatible = "socionext,uniphier-pxs3-ahci-glue",
                      "simple-mfd";
         #address-cells = <1>;
         #size-cells = <1>;
         ranges = <0 0x65700000 0x100>;
 
-        ahci_phy: phy@10 {
+        ahci_phy: sata-phy@10 {
             compatible = "socionext,uniphier-pxs3-ahci-phy";
             reg = <0x10 0x10>;
             #phy-cells = <0>;
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
