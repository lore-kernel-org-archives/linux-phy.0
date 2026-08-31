Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CBBBDC61DFD
	for <linux-phy@archiver.kernel.org>; Mon, 31 Aug 2026 23:25:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nc8NSCVt6COWNzLd0DeSXNaXE9LaWyRimSb2M1nnY2Y=; b=vSE0EtpogohVia
	n2YJ64iubK1SyA5cRv31yLNLa0w4BVp4GyvbB0T6ihqP3Vf0SgTaHDRmLHqpHfFJ4Kw5He/yPxYB7
	taeBC4GVInFnNb3tV8hFxstyK+L2DjUb5VYfass+qi5NZy99N+6f1ve89rjNEd2E6cHjstLFOolaw
	beRA3lq9ulGIzPv3ebOa4tT2OyHiajus33p2BrMuBTDBMrD8DfG58rj2PMYJVOCCXjnkH4hzJTqhs
	42jZLnNj3rZqA7j9RCZh+PzCM8nXSzdGC8dZiFxNsmWDMTqj3CGSofVx/tVAKYPhGuImKgAURTUFU
	FDa2CoWlO8UnFS5Rph4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1BN9-0000000Aeg5-2Gg2;
	Mon, 31 Aug 2026 23:25:03 +0000
Received: from mail-pj1-x1033.google.com ([2607:f8b0:4864:20::1033])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1BN6-0000000AefN-3naq
	for linux-phy@lists.infradead.org;
	Mon, 31 Aug 2026 23:25:02 +0000
Received: by mail-pj1-x1033.google.com with SMTP id 98e67ed59e1d1-385b78b4f9bso795358a91.2
        for <linux-phy@lists.infradead.org>; Mon, 31 Aug 2026 16:25:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788218700; x=1788823500; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=I2f1MFzQHcHK1Gr7vYedM+Hgn+oOUGoRn3RcTHV7nos=;
        b=S8In54zlHcfz3sP7RJpVQm++7oC9RHTXtzVLD3d4ZGqgJA4vpmyIbk//Wwrm6ntY8V
         Cdf+c7mkKIpG71dAt8iIFV3054x2rmgbCWc8Ax+pXuULdCAkOcRzyXCgtoAyR50A3wuq
         eRpoIvRwHtNmo83CDBDyeVkEF/W0yVZtMLf4XdLof0Lp+ZTd53EzI4u12/fARK+i+8FQ
         ZjpNf+OFipzhKXYE1534YnRizq/FiYHNdoBfKC+5tGUuh+A67C8BoJoji1xn8qXlJoot
         mDoMYs9fO3sTumAqzISBm3VfMgvbrzgRb9d/nzQm0gkAOldxxOjeFoGu1v5+J9EXUSBA
         q3PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788218700; x=1788823500;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=I2f1MFzQHcHK1Gr7vYedM+Hgn+oOUGoRn3RcTHV7nos=;
        b=c+lPQexoAmjyBclUDX2mOWUC80qmX3h+K5y9Y5pF95nS1/As226npw5opWC8M0sSbm
         kKtdebw4Rh/3Opf1FIXE3AsI6XMDYCgfJVqj1uRj50c7IKQE2qUz2pMmAqpGmgPUP4Nb
         UoD0jfjluMzCVYYFQ5UcIjwWieXme5yF/E6Bo2qYJJS+GiOEVFQcREIYneIMzgttwVWf
         JJXcf50OnEgPr1yMLTDG2sm/zwvDOriWPB4yUnV4I/CJBEW7Xmdo/gqfdJ4z6P7OxDex
         Y7V8yXlyiW+ZMkIOoXN0GDih8LoIM0CPNvyJrrVc9t0zoV1P8/T0+4wlSfM/6tPXr0ej
         +FuQ==
X-Forwarded-Encrypted: i=1; AKwUvBzdOYKWRXborHkc+XXWNGOCf5wnoiqBEtbclIulaKLVWhDSTabVr3kuBnJ3R+CzryS1LDvmoLTb/8A=@lists.infradead.org
X-Gm-Message-State: AFuF++nxTl5s8HtStPe5sUN5TG0wNJRUVDF9gf4h9qN/jEu3bNLjf3Wr
	pV6/aF+649kft/P9XtFG4ZY4zm1RfbnaddMYNIc/TTIdJJ5q0+aC5bcx
X-Gm-Gg: AYBFou3Ve3Us7i5J+dRTP/Emd+OzWkl9tIAu5z0tOBMDGduuxykKpNg6nGBGG2Y4Udr
	JbqUwyhTAT10HdGWVn37dfK4GdjCe81hAGf1s7c+jNtZl/+hIbshBO5Vxj9unUp1ngX6jXhE5PM
	oSPkKOqxw7gs6DcVF55/UcTZRNrfbIEZ04dqXY3cBH8SKNwNzD4o8SOqpuVetm/z+hL86TRaXJb
	DnjFruH9eT9EyfVQYm79kk10DmoeOlDYU1x88dfM7KwKTh8J/KaD8WkZVXObJzuFzXUYxg2U0HF
	eV84q4z12k3nLkWUQsiDbIPGpkgjsj5jbzxuwtwgLsAnlSiDRTsXNtxj/cK+s7GX04jlLNd6Z3U
	LyRl0zjW4O+MopPjs3qT9ShNWfo9QAh42/UDDbCXPZARrN/QvQb90CtiUDJEQINab70cdkT5GRe
	GriBQ59zzRb5nlEWceaYsBc47uir2+yKblw1qp0FWbBf69LS4yqZzBbF84coJzp4f2a116EGs=
X-Received: by 2002:a17:90a:d403:b0:38f:aa76:88b with SMTP id 98e67ed59e1d1-398babbb56fmr15866363a91.4.1788218699965;
        Mon, 31 Aug 2026 16:24:59 -0700 (PDT)
Received: from [10.60.78.252] ([2409:40c2:5002:4362:354a:8f21:7ceb:c8a6])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3990d75fc49sm1963213a91.12.2026.08.31.16.24.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Aug 2026 16:24:58 -0700 (PDT)
From: Bhargav Joshi <j.bhargav.u@gmail.com>
Date: Tue, 01 Sep 2026 04:53:08 +0530
Subject: [PATCH v3 4/6] dt-bindings: usb: ti,am335x-usb-ctrl-module:
 Convert to DT schema
MIME-Version: 1.0
Message-Id: <20260901-ti-am33-usb-v3-4-5e15c617d2e9@gmail.com>
References: <20260901-ti-am33-usb-v3-0-5e15c617d2e9@gmail.com>
In-Reply-To: <20260901-ti-am33-usb-v3-0-5e15c617d2e9@gmail.com>
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
 Manivannan Sadhasivam <mani@kernel.org>, Bin Liu <b-liu@ti.com>
Cc: dmaengine@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
 linux-phy@lists.infradead.org, linux-omap@vger.kernel.org, 
 goledhruva@gmail.com, m-chawdhry@ti.com, daniel.baluta@gmail.com, 
 simona.toaca@nxp.com, j.bhargav.u@gmail.com
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1788218595; l=2531;
 i=j.bhargav.u@gmail.com; h=from:subject:message-id;
 bh=WBrVAh2dl8UJKYGy/bCn2gBe1W2WzeDKN1Fq4A99l8c=;
 b=PrUWAD8e1Wj6MZVJOd+5GcYQfmkOigONZ2BF6CqeZ9Pp250pErMagc4593CxI0anBHddpK9QH
 T1/skBp4CYHDpOn59vKaQxDkb6rTvMVOCMbZh1kfidhWsIs83gr1u2B
X-Developer-Key: i=j.bhargav.u@gmail.com; a=ed25519;
 pk=IqNDwUZKECEA+n8wXctFLBbYL9NhFstZNbOznm/nX1k=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260831_162500_966222_DDD2812B 
X-CRM114-Status: GOOD (  15.49  )
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

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
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
