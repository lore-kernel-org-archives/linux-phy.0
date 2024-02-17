Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1EF48C48BC3
	for <linux-phy@archiver.kernel.org>; Sat, 17 Feb 2024 14:02:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q62CqTKfqH17zxis8rw/ffZpF6l1RUHVXfNW2xh4gyA=; b=BqpwCQtCtor2Bm
	ditNVgaJQmSkrohuYCnNRBAJJOPHfABmghDA/SZgIQbN8Qpww54WSk0FhvJAe8c0WJV4TIwh3mCeP
	uDgNfjjNZ9mXWRVhEQwoc17u5ikpORLssMxub9x61RAVkJYaGHwwtAjxd/Ah45YJ1uTOd9Pc85B9q
	k/sEESW+tFA4U7ZU0uUvBO0JLJFBoQ2fPfkC0xr+CtJrhfJWUMuf5yT3wIxWeMaDTEKK3b8g0QSEv
	kO1l01bSwVHocEWgtvAddPvfIc0GBVJkzwck2pKxuOdGI5lpepDZolrSfRWerUwmztzcJu1eQktTA
	Xl9KcYjNRuoPQIErx91A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbLHM-00000005n7j-3JVw;
	Sat, 17 Feb 2024 14:02:56 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbLHK-00000005n6S-0ZEr
	for linux-phy@lists.infradead.org;
	Sat, 17 Feb 2024 14:02:55 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 7C83261440;
	Sat, 17 Feb 2024 14:02:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 06897C43399;
	Sat, 17 Feb 2024 14:02:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708178572;
	bh=jFL/RZ2ZDCgiqAKnWhKvV31YON6zb+pCMW1UeDu3mgQ=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=UwDnRDzhm31AMlD15S1Nen8w6hcqxyTSSKeUCGMkmgra+lE3U5RuFZC957o0jtLHj
	 yEtp6AFznQxgQ5dZFTVML27gFxfq6u0HCSgFrsfZyyq2wxnUKt8aDkEDUX9lvSybhz
	 tGgFRL3gc+8/fD8/Yn0OQaGjJRfFKAlAzH2WoES/5TQpMYYNZxA4W0hpZUtsJSGZUZ
	 61xefRx84SIbjoUiQwShr2gtKppAJ+9XKuujllW9M5jcPNfOMtvwYuc7n0hpv5XKPq
	 RZjkaj5AfW9N+yaYWM9Hk7+XvHJX2hNtqWAuJd6lAt3dQumRNc5U1e2mcKS92Rkwvx
	 sKFIwUUdIeb9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E2CCBC54764;
	Sat, 17 Feb 2024 14:02:51 +0000 (UTC)
From: Yang Xiwen via B4 Relay <devnull+forbidden405.outlook.com@kernel.org>
Date: Sat, 17 Feb 2024 22:02:48 +0800
Subject: [PATCH RFC v2 4/4] dt-bindings: phy: hisi-inno-usb2: add
 compatible of hisilicon,hi3798mv200-usb2-phy
MIME-Version: 1.0
Message-Id: <20240217-inno-phy-v2-4-3bf7e87b0e9e@outlook.com>
References: <20240217-inno-phy-v2-0-3bf7e87b0e9e@outlook.com>
In-Reply-To: <20240217-inno-phy-v2-0-3bf7e87b0e9e@outlook.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1708178566; l=2016;
 i=forbidden405@outlook.com; s=20230724; h=from:subject:message-id;
 bh=jLZWuS47anxDC0v84kYOmUKJTlxPytV3qZbHvwpp28g=;
 b=Q/aLZDrqeMAj7mGpkxaMVPftjiJie2s2j/B2+LT4yWcdXm2FhadHAELA55FE9PjR3yynydw5y
 IDMBjWQCPJoCX6q6Hc93VBJWE1lkbYzChX1fhYBozhNb3cuFi8sj+TC
X-Developer-Key: i=forbidden405@outlook.com; a=ed25519;
 pk=qOD5jhp891/Xzc+H/PZ8LWVSWE3O/XCQnAg+5vdU2IU=
X-Endpoint-Received: by B4 Relay for forbidden405@outlook.com/20230724 with auth_id=67
X-Original-From: Yang Xiwen <forbidden405@outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240217_060254_318731_7A5DC6F2 
X-CRM114-Status: UNSURE (   7.62  )
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

It is accessed by direct MMIO, making "ranges" property mandatory for
it. Also there is an extra clock for the phy.

Signed-off-by: Yang Xiwen <forbidden405@outlook.com>
---
 .../bindings/phy/hisilicon,inno-usb2-phy.yaml      | 32 ++++++++++++++++++++--
 1 file changed, 30 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/hisilicon,inno-usb2-phy.yaml b/Documentation/devicetree/bindings/phy/hisilicon,inno-usb2-phy.yaml
index bfbda1568557..105dd9eebd4c 100644
--- a/Documentation/devicetree/bindings/phy/hisilicon,inno-usb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/hisilicon,inno-usb2-phy.yaml
@@ -16,6 +16,7 @@ properties:
       - enum:
           - hisilicon,hi3798cv200-usb2-phy
           - hisilicon,hi3798mv100-usb2-phy
+          - hisilicon,hi3798mv200-usb2-phy
       - const: hisilicon,inno-usb2-phy
 
   reg:
@@ -25,18 +26,27 @@ properties:
       controller, e.g. PERI_USB0 for USB 2.0 PHY01 on Hi3798CV200 SoC.
       Or direct MMIO address space.
 
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
+    maxItems: 2
+
+  reset-names:
+    items:
+      - const: port
+      - const: test
 
 patternProperties:
   'phy@[0-9a-f]+':
@@ -54,6 +64,9 @@ patternProperties:
       resets:
         maxItems: 1
 
+      phy_type:
+        const: utmi
+
     required:
       - reg
       - '#phy-cells'
@@ -67,6 +80,21 @@ required:
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
