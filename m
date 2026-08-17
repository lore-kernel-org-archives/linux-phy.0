Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07DA8C5B572
	for <linux-phy@archiver.kernel.org>; Mon, 17 Aug 2026 21:48:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o2Hd5w+eHFeVJ34B4mJwQPs6v9xZQUTpzSPXR8V83Ko=; b=xCOCC9z/C/2Equ
	LX1K8u3AEBtxB4sOoNJcAddklkBTWOWYJ8GWInDsouHxHmzCIIS9sc6zClT1dJOgxD1KovKsf+INN
	NeTbAUQ7XGaUo9/upUD0boNCM5pA5STmgzcYHslTleS48GhrB/xCWq+LgQ6QR9/IOzNl49gwkuDDz
	mw6qnDHLsVBNZ0A82yy09GISkSSLsJIKBAY0mFYhcHxSA3hcetifC87WBESs/zX6A/cSFoLVbzze6
	R6VYKxYmrzoLxogTQqYwlj5KL0Fp61VIcqQy+vI48fIoUP7J454t9oKI/c5VdKmn3aCS+6dqNrGoc
	dzSYXwa5+G1GumpPDyeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1ww5CA-00000006sVL-2ibp;
	Mon, 17 Aug 2026 21:48:38 +0000
Received: from mail-pl1-x62d.google.com ([2607:f8b0:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1ww5C8-00000006sUc-1SWk
	for linux-phy@lists.infradead.org;
	Mon, 17 Aug 2026 21:48:37 +0000
Received: by mail-pl1-x62d.google.com with SMTP id d9443c01a7336-2d01548ac96so7733325ad.3
        for <linux-phy@lists.infradead.org>; Mon, 17 Aug 2026 14:48:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787003315; x=1787608115; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=CBKpudphPlbxUGeo34jNMtpBUnC6d5V3mo4+9YrfHwY=;
        b=d0fwWc5GAKadfNEW7Ugn/784N/nx7VrQ+Q1XO8mgYoLgYIWySXafrF5GkQ0giuE5Oa
         NP7gDucyvhddHAPKDxMAkiPJBbiwi2CB2PWUlPM5we0IbwJOxX+3N2VC3kA2GvE8VDpF
         WVHA9J5AOx5oL0mGxuhTXewhMUUxJYPTOQYilK57gfm8iHTMfJxLabnesvetAN+hr5UK
         09MPsPUrCDV6v4wI247yGT5+C0IpFE2xf7t92x8sqg7hMfcgzzWwU+TytEukmbN/QBwv
         LLdAo8SVghzlDS5rUGBZlAmp8zhPEIMCDm7e8sxrbbP+jqJNsZWWQDIfjDhDmutzjUfm
         mnCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787003315; x=1787608115;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=CBKpudphPlbxUGeo34jNMtpBUnC6d5V3mo4+9YrfHwY=;
        b=CmmiAb/KRu4T/3BM0tjnwSHa96RNZ1R5/O99Mem9i0yB3uEWeTRLmg8PtlVVo/6jss
         TXjzdiNUiMeIxDovSpmAag29Icvdz0SyEubbl9BXSxldcDZsJXMr2Y0rs0vfwdn8ogSO
         0TSs4/HSZ3FLqY5DdGiHfztKqrBpcRCf51WGVEhjcL/CIm+ks2mFgHNvgINKHTRlMZol
         8sDAujh0jBWyqRC7NAn4KFizsv2lR0I11CuT9VfUWZK5njJvZ8nzg8NIiL+Oe0QwkHij
         n9rQCFrl7jjnDIIBqAXSOw/+lClPfyxjS7Bebmv+v6dZgSdpxjyfe7AJo8mn0lIFipQs
         5Xvw==
X-Forwarded-Encrypted: i=1; AHgh+RpYygv8tws15FMngVgwbzoOa+//qh2t3kW5wYyPSmsiDlyAOgIHLZrDNddVyKxl+tW+9VG4G1xM3Uc=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyst0j6PCbYmhpITQf87yEsoRSMrPjOKRvnfy2e4Ck8qYnU2R6u
	SpSx+GpkHu9rfgaBnvzP/mqv8MYz5bKESE5Y+gNphqC3AvtSX1vge1b0
X-Gm-Gg: AR+sD12PkogR2lUaTWRZ+na+3Pa4B2UZ+MSc2LHvtAe0enWN8Ov4ejDrRpMceq0TR3A
	xYZnDcq/5rldxo4BVbkGBrjFWj2cC0cF53HzRHo4C/kiKaKKGRCmuyNwaEXGcIT0Ayd2WsYQb7C
	0ScAAlr7QNoVqLJ8hDq2P3I3Z+4JkYBYgQFcPReQjUpMi7khLnxYjkN90/4C3vjnkrvNrAMkXVm
	rQtnttesKZXEvOqYGIZQn80fivTMYkjEmtF4sjTIW38G45yAk//l5H1bzlIStjX/oKofgoCGjiK
	MUpXVKSfC4XWEiZZieNOyAJYOBRmbUqx9EpW9c6opF13voFmes6ZuvxScXojKo+sp2hjYrZTgLz
	LdeGCoouQmmKdcORlYakcdzU3fLKkvwpz3EH8f+XMImPkp72ve0hzVWm0XlffdatXmkxROQE7gB
	/NLqgSkNW/j57CEB+feHgUfw9/eb4qWb8gqS5QXMHbfRp4DBOfcCB6UnSpxa9mPvqdTaCG9pRau
	w==
X-Received: by 2002:a17:902:c944:b0:2d2:a952:2628 with SMTP id d9443c01a7336-2d3b0e152e0mr211801725ad.2.1787003315509;
        Mon, 17 Aug 2026 14:48:35 -0700 (PDT)
Received: from [10.112.173.252] ([2409:40c2:5053:3384:1c8f:aa2d:e07e:6d3d])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3267c388e3csm10153024eec.21.2026.08.17.14.48.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Aug 2026 14:48:35 -0700 (PDT)
From: Bhargav Joshi <j.bhargav.u@gmail.com>
Date: Tue, 18 Aug 2026 03:16:35 +0530
Subject: [PATCH 5/7] dt-bindings: usb: ti,am335x-usb-ctrl-module: Convert
 to DT schema
MIME-Version: 1.0
Message-Id: <20260818-ti-am33-usb-v1-5-69ac5f92df45@gmail.com>
References: <20260818-ti-am33-usb-v1-0-69ac5f92df45@gmail.com>
In-Reply-To: <20260818-ti-am33-usb-v1-0-69ac5f92df45@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1787003201; l=2481;
 i=j.bhargav.u@gmail.com; h=from:subject:message-id;
 bh=vrwv1Mg7Vr8WAjda7g0Qmipd7F0KReKrluJL/Sq2pp0=;
 b=5cdVO5grvNtj7pSZ3l35JvsZZXzjIlCUGf7WP0sk5fc/QuBlbz2cGsDRvjcd3Mf3kAErZuM3b
 w4kZuLmbQK8AfhA1iKqoyTRn67UautFydPH1F1rD5x9k29gvuHotrn2
X-Developer-Key: i=j.bhargav.u@gmail.com; a=ed25519;
 pk=IqNDwUZKECEA+n8wXctFLBbYL9NhFstZNbOznm/nX1k=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260817_144836_397349_F32DF04D 
X-CRM114-Status: GOOD (  14.70  )
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
