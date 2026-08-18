Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D97E3C5DF7D
	for <linux-phy@archiver.kernel.org>; Tue, 18 Aug 2026 14:31:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o2Hd5w+eHFeVJ34B4mJwQPs6v9xZQUTpzSPXR8V83Ko=; b=GCZz85InsxKzEH
	xvx30tDVP5bKe8dgYchlOia7hxN/GJwsstfRuzTqFYXqTs05mQIOEutxqYqGIdOVhyR8/DTtgQfFS
	68Tnd5HA+tR3HSQhvk6zwN13IoW2PI7bPginSy23sotZXpk+LvDQAnN6EODcz61ejQ5iARFYnzvtW
	ktKy6ZU4BJmtYehvmxk1lABtTuLpO8SiP9Y21WJunpRRoOkIVaGlm/BUh2GPtGHVaHGynHeUt8ISm
	ulLtHa/j3O/cpzvOVJZLpYYV8OlwVUy4AvD0o1MXPvq8tK9dU8wk14tfmQrdGcV82lyO0r38QXQaX
	2jNMsgtAS9dTXZ6TETHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwKqC-00000008B4A-2HPF;
	Tue, 18 Aug 2026 14:31:00 +0000
Received: from mail-pl1-x634.google.com ([2607:f8b0:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwKqA-00000008B3O-0Hdz
	for linux-phy@lists.infradead.org;
	Tue, 18 Aug 2026 14:30:59 +0000
Received: by mail-pl1-x634.google.com with SMTP id d9443c01a7336-2cf4c37dbe6so7289705ad.2
        for <linux-phy@lists.infradead.org>; Tue, 18 Aug 2026 07:30:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787063457; x=1787668257; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=CBKpudphPlbxUGeo34jNMtpBUnC6d5V3mo4+9YrfHwY=;
        b=C7NLUbqTN5SmxYwA+ln/JvJ4cSwOEkJ2MZMWYaX1e3dEiGOO4jTXxzl4w+JY/2hpY/
         +uxJpp5WKHhq68nY4fRMSV84p1+bLNJvG2+cqu1mwkB85WcKgmrHa5CjVT/HCg1bBjrr
         P7JXPSOTuC/+dfAe/R7HpGwsk17Pf/Oafhi8q/0UUN6776SlLMBLxo93IhqHXgYQcjmo
         hr9c00jNPOlDNTLnQrPcs5FcZwyjfw8sj3TNdQuJq2o63D3G4MnBIKn2RHEMgVGxrQ6O
         RtVwCgiy+wlO5xnIMzCYv7kAVpSOIrjJqmUhPAEKDNLOCpGJh2WxLeB6r26gtnUbnmNi
         N59Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787063457; x=1787668257;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=CBKpudphPlbxUGeo34jNMtpBUnC6d5V3mo4+9YrfHwY=;
        b=hXsvYRQ47K/7WSX6x7Kq0QLCJD3yoaEQt9/6N/Mhs32J/I0n1uLr0QEpdbfBGaECNk
         1+lu9TFOdYD4RwjT5gAk3ZRIl6UktkNnRpMkUliYMUDkVRSkqmVMJUjgxYSyZLv4HMJU
         0d+nOal9w1RhiOZ6PayP48KuNJ2zRegDN4j0LFVh6rlpdg1M9YKbgkTLEzaL8LZcH3rd
         KcIqCUYmh5VCDzmKRZVXHF/GCaXpxAA7R3tX+EmMyBOdHALF+ZuYFJ3rdvua4mwQ1o/f
         kMcWKJb7tz/HKkyQq/Y23TaJn6/TYs84ZekJO37NV5tzX6oyvA0NT1c1omKHbKbss+xk
         mcvw==
X-Forwarded-Encrypted: i=1; AHgh+RquQ/exOEYSefxPdCuL9yZAl5063N8Z9YJc6Y4Bqk04rIxXk8/IKszZK5d9o8Gw3YSVTniUsUPlNrU=@lists.infradead.org
X-Gm-Message-State: AOJu0YwnCFBB2FfeXqFFvwG0XujRbtkXXUmAhY48QrLVKzizi+dcmITd
	7u5ojb1idFUbfpw1ozJp0hsqqoWiDFrY2+rKMRXrkkyG/XgpeJjLETl1
X-Gm-Gg: AR+sD10S1s7oRYitTSXFIihJdT6sxokC10ab977KOfwhsCGth7ENZYWUjTQdGa7wGUv
	4hVK6mMXEZMu5gUruCSchpJFiRhP6kIJg4O3uwl0KuCbH1+KVMYOtuW/zEdlKiXCz4rR/hsDxly
	szyZA80UWyMNXi3xLKjQvxwdcwtUQqYYw9IBL+QmLjmpiFG7diGG5V1QfTNci80ymPwsRVA5H2z
	cUE7aqZle8dE4R9eQAr3BIcL/bbo1ZMDDqBdVCYWFS1zGEZTVMigE1DzSDr2Tg3OzR0zAdVsGCi
	AomfNl0USXXUmeOog2NUuyHL3Xk7g7eZK6n/W26zqdGI5xD8NYHNXWXMV7rWu8iR2EllVzBWf8y
	ADZRQkgXy6DhpkEW5mN7VUNi0e0dy8bKlwno0cis6fpikPapmffy3J2p2W8RweWSLepJxZ2fjV6
	Mh8i6zYavsYPmAPZzrH3qXES/0mN4mXHafTv4xF4CCgrui33/X/jsapJ+HaGD+dKhfi7sWZQKl
X-Received: by 2002:a17:903:2ce:b0:2c7:ef84:c58e with SMTP id d9443c01a7336-2d3b0827041mr272611865ad.1.1787063457148;
        Tue, 18 Aug 2026 07:30:57 -0700 (PDT)
Received: from [10.90.163.252] ([2409:40c2:501a:6e15:dc3f:c23f:e55e:d03d])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-327b43d488dsm9043527eec.29.2026.08.18.07.30.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Aug 2026 07:30:56 -0700 (PDT)
From: Bhargav Joshi <j.bhargav.u@gmail.com>
Date: Tue, 18 Aug 2026 19:58:47 +0530
Subject: [PATCH v2 5/7] dt-bindings: usb: ti,am335x-usb-ctrl-module:
 Convert to DT schema
MIME-Version: 1.0
Message-Id: <20260818-ti-am33-usb-v2-5-66fd44d66824@gmail.com>
References: <20260818-ti-am33-usb-v2-0-66fd44d66824@gmail.com>
In-Reply-To: <20260818-ti-am33-usb-v2-0-66fd44d66824@gmail.com>
To: Vignesh Raghavendra <vigneshr@ti.com>, Vinod Koul <vkoul@kernel.org>, 
 Frank Li <Frank.Li@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Andrzej Siewior <bigeasy@linutronix.de>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Aaro Koskinen <aaro.koskinen@iki.fi>, 
 Andreas Kemnade <andreas@kemnade.info>, Kevin Hilman <khilman@baylibre.com>, 
 Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>, 
 Ravi B <ravibabu@ti.com>, Kumar Gupta <ajay.gupta@ti.com>, 
 Sergei Shtylyov <sshtylyov@ru.mvista.com>
Cc: dmaengine@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
 linux-phy@lists.infradead.org, linux-omap@vger.kernel.org, 
 goledhruva@gmail.com, m-chawdhry@ti.com, daniel.baluta@gmail.com, 
 simona.toaca@nxp.com, j.bhargav.u@gmail.com
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1787063337; l=2481;
 i=j.bhargav.u@gmail.com; h=from:subject:message-id;
 bh=vrwv1Mg7Vr8WAjda7g0Qmipd7F0KReKrluJL/Sq2pp0=;
 b=yxhLJGFqbGsVwm0ht8G4qU0zird4onY64PgatPQWRbpABK2HEy5W9yPMQc2wg+jW+glahsjrf
 i6AKL5cUraVArDBbn4vXC78BHk97LBnzXIkzXQT4D97CQ1x4MfekQDx
X-Developer-Key: i=j.bhargav.u@gmail.com; a=ed25519;
 pk=IqNDwUZKECEA+n8wXctFLBbYL9NhFstZNbOznm/nX1k=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260818_073058_109378_9062803B 
X-CRM114-Status: GOOD (  15.14  )
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

Convert the TI AM335x USB Control Module text bindings to DT schema. No
functional changes.

Signed-off-by: Bhargav Joshi <j.bhargav.u@gmail.com>
---
 .../devicetree/bindings/usb/am33xx-usb.txt         |  9 -----
 .../bindings/usb/ti,am335x-usb-ctrl-module.yaml    | 38 ++++++++++++++++++++++
 2 files changed, 38 insertions(+), 9 deletions(-)

diff --git a/Documentation/devicetree/bindings/usb/am33xx-usb.txt b/Documentation/devicetree/bindings/usb/am33xx-usb.txt
index 5973f88bcc65..94312ad8ec8c 100644
--- a/Documentation/devicetree/bindings/usb/am33xx-usb.txt
+++ b/Documentation/devicetree/bindings/usb/am33xx-usb.txt
@@ -8,15 +8,6 @@ The glue layer contains multiple child nodes. It is required to have
 at least a control module node, USB node and a PHY node. The second USB
 node and its PHY node are optional. The DMA node is also optional.
 
-Reset module
-~~~~~~~~~~~~
-- compatible: ti,am335x-usb-ctrl-module
-- reg: offset and length of the "USB control registers" in the "Control
-  Module" block. A second offset and length for the USB wake up control
-  in the same memory block.
-- reg-names: "phy_ctrl" for the "USB control registers" and "wakeup" for
-  the USB wake up control register.
-
 Example:
 ~~~~~~~~
 The following example contains all the nodes as used on am335x-evm:
diff --git a/Documentation/devicetree/bindings/usb/ti,am335x-usb-ctrl-module.yaml b/Documentation/devicetree/bindings/usb/ti,am335x-usb-ctrl-module.yaml
new file mode 100644
index 000000000000..f8ac0af745c6
--- /dev/null
+++ b/Documentation/devicetree/bindings/usb/ti,am335x-usb-ctrl-module.yaml
@@ -0,0 +1,38 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/usb/ti,am335x-usb-ctrl-module.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: TI AM335x USB Control Module
+
+maintainers:
+  - Sebastian Andrzej Siewior <bigeasy@linutronix.de>
+
+properties:
+  compatible:
+    const: ti,am335x-usb-ctrl-module
+
+  reg:
+    maxItems: 2
+
+  reg-names:
+    items:
+      - const: phy_ctrl
+      - const: wakeup
+
+required:
+  - compatible
+  - reg
+  - reg-names
+
+additionalProperties: false
+
+examples:
+  - |
+    control@44e10000 {
+        compatible = "ti,am335x-usb-ctrl-module";
+        reg = <0x44e10620 0x10>,
+              <0x44e10648 0x4>;
+        reg-names = "phy_ctrl", "wakeup";
+    };

-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
