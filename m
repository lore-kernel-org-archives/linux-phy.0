Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A7A2C433EF
	for <linux-phy@archiver.kernel.org>; Wed, 30 Mar 2022 10:55:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zMCrVdcs4qgMGlrcCuN1ubp9nK8ZvNkpVU1wGEzmqWk=; b=s/1rjnC8TGMqKC
	CXkzrZWdn1hzpTTow5iXoJVJ3wQtSVHoKKWJvXrjVJhPpd0c+6ALGE2IzHW/pWfRFfKi1+H5Gi5QG
	/eAtPJgya+1G7CcMJ+2oBijpviBC3fPyHNNTFhdPtmeWx2whxBS1iTECq9xAHREJ7do/E646AxkJa
	SaYO73mLw8I5IsjW2in5SkhI0CfOdS89v33ZhStnNB+3hfsby3BLW3hfm/cGE9rQyqK7gvVl0jiwP
	KUaT1lE+GoRf8ese97ibKXp227IEdrNPaOQ9CNRM/hCi3Txil82gri4K9YeY8xBgH38Sox/9M/Uf6
	Ceu2Q16U0JbXxGDmguZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZVzN-00FGqj-SU; Wed, 30 Mar 2022 10:55:45 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZVz1-00FGgQ-28; Wed, 30 Mar 2022 10:55:24 +0000
Received: from unknown (HELO iyokan2-ex.css.socionext.com) ([172.31.9.54])
 by mx.socionext.com with ESMTP; 30 Mar 2022 19:55:20 +0900
Received: from mail.mfilter.local (m-filter-1 [10.213.24.61])
 by iyokan2-ex.css.socionext.com (Postfix) with ESMTP id A8AFD2058B50;
 Wed, 30 Mar 2022 19:55:20 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Wed, 30 Mar 2022 19:55:20 +0900
Received: from plum.e01.socionext.com (unknown [10.212.243.119])
 by kinkan2.css.socionext.com (Postfix) with ESMTP id 68A1FB62B7;
 Wed, 30 Mar 2022 19:55:20 +0900 (JST)
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Masami Hiramatsu <mhiramat@kernel.org>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Subject: [PATCH v3 1/5] dt-bindings: phy: uniphier-usb2: Add vbus-supply
Date: Wed, 30 Mar 2022 19:55:11 +0900
Message-Id: <1648637715-19262-2-git-send-email-hayashi.kunihiko@socionext.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1648637715-19262-1-git-send-email-hayashi.kunihiko@socionext.com>
References: <1648637715-19262-1-git-send-email-hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220330_035523_230661_DE0FA0B1 
X-CRM114-Status: GOOD (  10.38  )
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
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
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
