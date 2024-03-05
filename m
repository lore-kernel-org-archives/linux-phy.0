Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38100C54E41
	for <linux-phy@archiver.kernel.org>; Tue,  5 Mar 2024 13:32:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/NMmSJktMieLa+CkoCqhkyxmt7rLH66rfejjBt5t/gQ=; b=0G0j1e9DK2+F03
	ELHponQe3ezTM5IgjJa6zKiKBZZOlf0RcuFZR3d05seEOovTybTEXXPXg0NwL0zf5ydKnF9whVEtS
	T9FSc8z9tcuwY7wj6tCFvw1fMpbpMP70i3fpaLA3/r1wAjjPtJT6C6+6wF9oZLhuwA49R841kKTZg
	OLrWgeDpIj+oyvg/lePLCym74P+OdIA6LA+JAUlTrUwmEvb+F1c0zbmPzVOxfujOlJhAzo4x+Vwxg
	xr+iOKYo0pHuZvy2WSsd6uDNpANYn6Sjg8Ed8h/8HIqcsZrWY87LGsy76zNefdw//aHqTeA3AJZVY
	7+tQ5gu2e5moQZqrJoXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhUu7-0000000Dle2-2iBu;
	Tue, 05 Mar 2024 13:32:23 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhUu3-0000000Dlb4-05Sp
	for linux-phy@lists.infradead.org;
	Tue, 05 Mar 2024 13:32:22 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 36630CE1B21;
	Tue,  5 Mar 2024 13:32:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0A61C43142;
	Tue,  5 Mar 2024 13:32:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709645536;
	bh=Nb/la9hCvIDGODkj1BLvn7upbkGoEP4jj+8C4O4Wx18=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=phACKYP4bxHuSKTroxu12V5abLAd9RbYWBgi5lXWGpJwkRGNAebFUsWZ211RpJdjY
	 5TxzoBxNe8au723oKlhXzEyExbNBbJHEMbLx41mNlnTww8TKWsycR8HX4qy5TnwBMB
	 sd/63KcLI67sEO7BhWJxsArop6VUJ6cB4b+xkghLrEOA+A/+KZChq7y7IIWla9tlMw
	 aBIgvIq/aDwysQD+saWqXHAsRywO2XWTDSAFW+4MRHsKusEyCgX4kelcetTCXrS8wn
	 vSFanj4Ki/2nj1M48pIW/+8xJ6xb5f9RuCUQHx+xvECytRHnoSh0bjhjpMOcpe/u5g
	 KqRgOcQhEDgvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C984BC54E58;
	Tue,  5 Mar 2024 13:32:15 +0000 (UTC)
From: Yang Xiwen via B4 Relay <devnull+forbidden405.outlook.com@kernel.org>
Date: Tue, 05 Mar 2024 21:32:15 +0800
Subject: [PATCH v5 4/5] dt-bindings: phy: hisi-inno-usb2: add compatible of
 hisilicon,hi3798mv200-usb2-phy
MIME-Version: 1.0
Message-Id: <20240305-inno-phy-v5-4-dc1cb130ea08@outlook.com>
References: <20240305-inno-phy-v5-0-dc1cb130ea08@outlook.com>
In-Reply-To: <20240305-inno-phy-v5-0-dc1cb130ea08@outlook.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Jiancheng Xue <xuejiancheng@hisilicon.com>, 
 Shawn Guo <shawn.guo@linaro.org>, Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>, 
 David Yang <mmyangfl@gmail.com>, Yang Xiwen <forbidden405@outlook.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=ed25519-sha256; t=1709645533; l=1981;
 i=forbidden405@outlook.com; s=20230724; h=from:subject:message-id;
 bh=wZ19rp19Vxc5/c1Dz8YVfg/y4dYjOmfzasZL5uF3AuA=;
 b=laTgr7rJDNdlboI1H7dpo6mz0du6YBTHCCt3kaSDfLB8oX1yhtR61C5PbSS3x8vGdOK9DnX/n
 /DTfBsX3T40Bjc+S1BNnjcC2yM2YTGj9HBYCSfV8afzn5V2cOrRQ1OT
X-Developer-Key: i=forbidden405@outlook.com; a=ed25519;
 pk=qOD5jhp891/Xzc+H/PZ8LWVSWE3O/XCQnAg+5vdU2IU=
X-Endpoint-Received: by B4 Relay for forbidden405@outlook.com/20230724 with auth_id=67
X-Original-From: Yang Xiwen <forbidden405@outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240305_053219_482446_8327937B 
X-CRM114-Status: UNSURE (   7.77  )
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
Reply-To: forbidden405@outlook.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

From: Yang Xiwen <forbidden405@outlook.com>

Hi3798MV200 INNO USB2 PHY is attached directly to system bus. Add
compatible "hisilicon,hi3798mv200-usb2-phy" for it. The ports of
Hi3798MV200 INNO PHY has its own address space, so

Signed-off-by: Yang Xiwen <forbidden405@outlook.com>
---
 .../bindings/phy/hisilicon,inno-usb2-phy.yaml      | 31 ++++++++++++++++++++--
 1 file changed, 29 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/hisilicon,inno-usb2-phy.yaml b/Documentation/devicetree/bindings/phy/hisilicon,inno-usb2-phy.yaml
index 7f0811a2dc2b..92559bdc4fef 100644
--- a/Documentation/devicetree/bindings/phy/hisilicon,inno-usb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/hisilicon,inno-usb2-phy.yaml
@@ -15,6 +15,7 @@ properties:
       - enum:
           - hisilicon,hi3798cv200-usb2-phy
           - hisilicon,hi3798mv100-usb2-phy
+          - hisilicon,hi3798mv200-usb2-phy
 
   reg:
     maxItems: 1
@@ -22,18 +23,29 @@ properties:
       peripheral controller, e.g. PERI_USB0 for USB 2.0 PHY01 on Hi3798CV200 SoC,
       or direct MMIO address space.
 
+  ranges:
+    maxItems: 1
+
   '#address-cells':
     const: 1
 
   '#size-cells':
-    const: 0
+    enum: [0, 1]
 
   clocks:
     maxItems: 1
     description: reference clock
 
   resets:
-    maxItems: 1
+    minItems: 1
+    items:
+      - description: port reset
+      - description: optional external test bus reset
+
+  reset-names:
+    items:
+      - const: port
+      - const: test
 
 patternProperties:
   'phy@[0-9a-f]+':
@@ -66,6 +78,21 @@ required:
   - '#size-cells'
   - resets
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: hisilicon,hi3798mv200-usb2-phy
+    then:
+      required:
+        - ranges
+        - reset-names
+    else:
+      properties:
+        ranges: false
+        reset-names: false
+
 additionalProperties: false
 
 examples:

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
