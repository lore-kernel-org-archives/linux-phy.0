Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C92DC54787
	for <linux-phy@archiver.kernel.org>; Mon, 19 Feb 2024 21:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MKIsvZTrbYZfJXhHoN4NNVNqS3B96/HpjF0tg2X2uAM=; b=LmghsHxll9gGrB
	jUZLSmMbOTnwCLlwwqp2xMxivW4Byo6a/5t11vw6qy/+gFf704BrgTcU2CeRNQmq2v7AKEcONhrj1
	4W7O35p8e5JWjnWjtm6HnuviqhQtslbtz5h+ZRrMRUcYI1ZsEmd3Iguu8CpEvwG4L7aFHEt6C/2+p
	voHKJAUWgxQad9NWQkEtUPybh/tikXsQNcyLA0vTm5Ii47JP86h7SquHic2iR4iiDuB1y+88eO3yb
	hO6pb0LcQHpd7YPum0aUJr5SLzwttxUT+zEWI1mNnAKft5+rRHBspWcGR63ulcosWWkMTkED2BzIg
	voEwFBjNr3RRGdEQU8nA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcBBF-0000000CE8d-0iQf;
	Mon, 19 Feb 2024 21:28:05 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcBBB-0000000CE4e-1Ctq
	for linux-phy@lists.infradead.org;
	Mon, 19 Feb 2024 21:28:02 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id B0DFA60FD2;
	Mon, 19 Feb 2024 21:28:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C9C6C4166B;
	Mon, 19 Feb 2024 21:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708378079;
	bh=bubzY9/Q81Ml7PldAcrUeOkRxvvoWWMJMf+jhZFDA1s=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=OcvjZdSXTUQpicinGKWLlKRUdttBhzQoryWSwgH+x/FBTFVIak/f/s8jJacvGs93z
	 8l+KQT0s9XmzcR7bNeGOci0jOcUP2Yn+qCFoVx77mWH320r23D3cliX+M07XeOFcA6
	 zqorjNs5D/sivfkdUTb1FCL8Qs1U/7fDPrJEuoFnNgtmXg5099Q1f28We6QtepsLcX
	 YQDUvuW/ql4+akdghsOBhG6dKK/9gpH5/w7MDb5PyIpJTgr8M/slfG/Z+PwGYGFjfw
	 zEiaJ1X6N4rnOhOocp9VgrZ2qyPQ4R81l9NHbDsDQCkKphdg2s4iMgq1KAvW8K0V0f
	 hrPjO8fcOJ3EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 565A5C48BC3;
	Mon, 19 Feb 2024 21:27:59 +0000 (UTC)
From: Yang Xiwen via B4 Relay <devnull+forbidden405.outlook.com@kernel.org>
Date: Tue, 20 Feb 2024 05:28:02 +0800
Subject: [PATCH RFC v3 5/5] dt-bindings: phy: hisi-inno-usb2: add
 compatible of hisilicon,hi3798mv200-usb2-phy
MIME-Version: 1.0
Message-Id: <20240220-inno-phy-v3-5-893cdf8633b4@outlook.com>
References: <20240220-inno-phy-v3-0-893cdf8633b4@outlook.com>
In-Reply-To: <20240220-inno-phy-v3-0-893cdf8633b4@outlook.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1708378078; l=2027;
 i=forbidden405@outlook.com; s=20230724; h=from:subject:message-id;
 bh=avj4AQctpHODHrI4Gj2Nnv22VVypJnyWPLnjEGJEEdE=;
 b=xZ9uDnvgbLGc44UOmznpNLi5rmjnlS/9CKX9jmNtOvRqOBPi6PeuTIZpq5jyKB4Ty1XXjQjBh
 x660NzaUFhPD8H222qtB1e2SROUGiE+AjJFtRO97Ci2oNfsllIBvmhi
X-Developer-Key: i=forbidden405@outlook.com; a=ed25519;
 pk=qOD5jhp891/Xzc+H/PZ8LWVSWE3O/XCQnAg+5vdU2IU=
X-Endpoint-Received: by B4 Relay for forbidden405@outlook.com/20230724 with auth_id=67
X-Original-From: Yang Xiwen <forbidden405@outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240219_132801_473561_3476C6C5 
X-CRM114-Status: UNSURE (   8.14  )
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
index 1b57e0396209..969fd3fb7537 100644
--- a/Documentation/devicetree/bindings/phy/hisilicon,inno-usb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/hisilicon,inno-usb2-phy.yaml
@@ -15,6 +15,7 @@ properties:
       - enum:
           - hisilicon,hi3798cv200-usb2-phy
           - hisilicon,hi3798mv100-usb2-phy
+          - hisilicon,hi3798mv200-usb2-phy
       - const: hisilicon,inno-usb2-phy
 
   reg:
@@ -23,18 +24,27 @@ properties:
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
