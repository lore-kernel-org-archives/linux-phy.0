Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1292AFA3744
	for <linux-phy@archiver.kernel.org>; Mon, 31 Oct 2022 11:16:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mlb2AjpqaiYHd/GKqVyu1no03m/lM4slDENBsOJmF60=; b=UieuF0xyxsMPbF
	X2GxPhGRbylG5Zaw0Gwv0DD5NOB073AsEwrSq0psm5i2FjQd6Suc8Sf7Bj+JMH1NE2bJGXFhV4sVT
	6J/ekmZ3tI4e+keArMv/lZ74RGMbHjkVjy0clJm9NxOVoDYhG28HJLOnq0l+bhE0qwQSg89SOADGz
	87Qmgi2cCehP2isJF+FjFhkNS+TsWbs7Lgbmyh0ap1VDk6vIri2yaVxzwuwy9wvrTQaUSpK3bKVOj
	3lAwg5KNQsNo7fKzCboEhXbZxNueed6Z3CZcCONCeiWUyVDi04CrnPYQQ1unc9rRlmDJOjACpmRf6
	gLduuVUiNv8UPIsbLbdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opSlu-00B8Fd-81; Mon, 31 Oct 2022 11:16:02 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opSkP-00B7G8-E3; Mon, 31 Oct 2022 11:14:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 49AC112FC;
	Mon, 31 Oct 2022 04:14:32 -0700 (PDT)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.42])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6FC263F703;
	Mon, 31 Oct 2022 04:14:23 -0700 (PDT)
From: Andre Przywara <andre.przywara@arm.com>
To: Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-phy@lists.infradead.org,
	linux-usb@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	Karl Kurbjun <karl.os@veroson.com>,
	Icenowy Zheng <uwu@icenowy.me>
Subject: [PATCH v2 2/7] dt-bindings: phy: Add special clock for Allwinner H616 PHY
Date: Mon, 31 Oct 2022 11:13:53 +0000
Message-Id: <20221031111358.3387297-3-andre.przywara@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221031111358.3387297-1-andre.przywara@arm.com>
References: <20221031111358.3387297-1-andre.przywara@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221031_041429_573049_2760E5CC 
X-CRM114-Status: UNSURE (   8.80  )
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

The USB PHY IP in the Allwinner H616 SoC requires a quirk that involves
some resources from port 2's PHY and HCI IP. In particular the PMU clock
for port 2 must be surely ungated before accessing the REG_HCI_PHY_CTL
register of port 2. To allow each USB port to be controlled
independently of port 2, we need a handle to that particular PMU clock
in the *PHY* node, as the HCI and PHY part might be handled by separate
drivers.

Add that clock to the requirements of the H616 PHY binding, so that a
PHY driver can apply the quirk in isolation, without requiring help from
port 2's HCI driver.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 .../phy/allwinner,sun8i-h3-usb-phy.yaml       | 26 +++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/allwinner,sun8i-h3-usb-phy.yaml b/Documentation/devicetree/bindings/phy/allwinner,sun8i-h3-usb-phy.yaml
index 77539b4601c24..2df012d13655e 100644
--- a/Documentation/devicetree/bindings/phy/allwinner,sun8i-h3-usb-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/allwinner,sun8i-h3-usb-phy.yaml
@@ -36,18 +36,22 @@ properties:
       - const: pmu3
 
   clocks:
+    minItems: 4
     items:
       - description: USB OTG PHY bus clock
       - description: USB Host 0 PHY bus clock
       - description: USB Host 1 PHY bus clock
       - description: USB Host 2 PHY bus clock
+      - description: PMU clock for host port 2
 
   clock-names:
+    minItems: 4
     items:
       - const: usb0_phy
       - const: usb1_phy
       - const: usb2_phy
       - const: usb3_phy
+      - const: pmu2_clk
 
   resets:
     items:
@@ -96,6 +100,28 @@ required:
   - resets
   - reset-names
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - allwinner,sun50i-h616-usb-phy
+    then:
+      properties:
+        clocks:
+          minItems: 5
+
+        clock-names:
+          minItems: 5
+    else:
+      properties:
+        clocks:
+          maxItems: 4
+
+        clock-names:
+          maxItems: 4
+
 additionalProperties: false
 
 examples:
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
