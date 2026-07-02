Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B8B7C43458
	for <linux-phy@archiver.kernel.org>; Thu,  2 Jul 2026 09:38:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=InfqjtZDZPYV8S55qTxFXZOeugH3Dae3bR/lk2nLnT0=; b=vcsNNfJrtBjhAl
	sX+ZCp4IbR7VdrmLNYS3zOA6ill35geyRBekCJRiDZHdDC9gSYMSR5n+tAk0h9Emp57IAPhHge1ff
	10yEPdErXOPXvmP0UX5rFQ0+YziCXy+Ltm7DcCeEUYKCQWwrgmA7KBjRXdS9YW7sLnYjRUaln/5Ih
	pH7JayXFFJoc+d4hsvFdOMHRpDCSh69ikWgrMa9/k0ivskFwVFPoV5KLS6+CGeP0L2sWbBa5RmBG6
	DB88+52N8HUBFHeSfg2PuFewSdHUrXz8zeYTln2KzoojJ9STGmmxlhI0QlUbUuLyoyH5EG4J6H+EN
	C/UyTkMIQ3r1UR7tNz+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfDsK-000000043xs-0XES;
	Thu, 02 Jul 2026 09:38:28 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfDsH-000000043vk-3kfR
	for linux-phy@lists.infradead.org;
	Thu, 02 Jul 2026 09:38:27 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-493bc8fda98so13960565e9.0
        for <linux-phy@lists.infradead.org>; Thu, 02 Jul 2026 02:38:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782985104; x=1783589904; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=atavLJO9ib3dVO9oXs0ZfRhlR41n5og9pxT0XRvm9dc=;
        b=Po862T348vpD0AUospCmrUeNbsBj2ueDd/bYh6SOeGvtGuAlISoJodAqnnw3cmhVdK
         VuWdBvcGiGvG+9si1l8tKyzxxQlM8NQny3SnOXzqaS0ggvDIXdgvg8G5V/d2RzJgeWQB
         ouIrM4FwDp4WCAioa4jSSQnJXa9jwFsri1dJkA1k0PoVW9Sna4T8k7BKMpIRMDeOzAHb
         7e/jB/VP1rXym/rpycNRomKDdIdPlTV2SmS1+hm0s18dH7SQpHMcz8pP1F/mST3POx1G
         t1r4TtvUaI06PscofYkAQpSJDIHbtc7aoreSfW5BintNcAxAcFcTL7ArND3oIrA3G/rh
         epew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782985104; x=1783589904;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=atavLJO9ib3dVO9oXs0ZfRhlR41n5og9pxT0XRvm9dc=;
        b=nlNtISJ4wJFZ9FNalokJELoZBCubYxF3BNsDSfhhJyQxCmUCDvmorfiLDyDaXTP7jH
         DNcGKAXqAkN4UNGgMXhtfaCbDb3d+vKTl/RZRMkhUyFTVMq4VlTlU/1ps1SEvxxf8jFA
         IllRqjGK+GUFHy7I/KhELvY1b11kcbN/baB9kk/4UAzLTgY4nq3gAFbv37kJ0tWUa2E3
         lBVGJpmTA0Xd2GyO4lsyKvm1lJXLAnJrFwD9frKjvHvP8dOmqgMH4gL+AMH1Z/Mj4lz0
         dU30h5S7L4tGJbqFCPGFOtA12i5SlxDzh7Ir7EynlxtWEj4GBlidQ6TKO/8YUmxwsxAh
         /JRQ==
X-Forwarded-Encrypted: i=1; AFNElJ87C84Pa1mcg/AcQiDwzvFEsHg0NhfJFq21Dx7jjWw0ATDlJ4YAGNPHpJ/oOEFTuWeDc6bcDs19uh8=@lists.infradead.org
X-Gm-Message-State: AOJu0YzKYJnCcSBFlFroivAKqdy+3FtBS4vY0Tcqp8zzMPojpi6sSsVn
	HvxVLJGbFX2bpO/gMgYSpQrgbPboOTq1FjNTtCnkNNfGjsW2Fpwu9QBB
X-Gm-Gg: AfdE7ck6TMknAYR70gGFMKv0mTjfRJqOs1R5plIJqciuZ1Q5NMNzJnwPZXoNGVZCpjE
	Af/ZND6m0jbXRiu5xACghuKoTpkKOpekR8HyLuN+krz/MtHfdgkknwbTs21XPfrtyxbI4He4kQ7
	vmd1pxLZm2ojtc9wZ8tG2aYQNc4N8meJUvwoX9ieYzjjuG5tOuU8kyscmVvF8yRuuVk4vg8s+3W
	DgxEii83W6y/YiKbUfWttydkhIz30dawWt/o3gZQ25O8ryODDSbVGmR5HqR0ghyS2U/E799FZyv
	AcDdoGh2fYtLtaBg9HbJb77TmhAeegV3Wzt9kmeehaAeru1zQHlztv4s3bKwV6n9li0J3xbi61+
	Paj04o+6wTSJQIotP662//Z1DvKub1H4CDjIW3taM8cz95gpPewSwonBSVXU2lFnuzpDfjZrH4z
	ajoXfeh0W/Yl2zuBOhQfvf804PHzE3oXRng2Xv8AIYFtkQzt7Yu4AOXyiYKfjYslVV3JDd6vzSY
	0tiuA==
X-Received: by 2002:a05:600c:828d:b0:493:bf86:85c5 with SMTP id 5b1f17b1804b1-493c3df3495mr61803955e9.36.1782985104016;
        Thu, 02 Jul 2026 02:38:24 -0700 (PDT)
Received: from Ansuel-XPS24.localdomain (host-79-52-250-217.retail.telecomitalia.it. [79.52.250.217])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-493c636c8b9sm35502285e9.10.2026.07.02.02.38.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jul 2026 02:38:23 -0700 (PDT)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Brian Masney <bmasney@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Christian Marangi <ansuelsmth@gmail.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Lorenzo Bianconi <lorenzo@kernel.org>,
	Felix Fietkau <nbd@nbd.name>,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v10 1/5] dt-bindings: clock: airoha: Add PHY binding for Serdes port
Date: Thu,  2 Jul 2026 11:38:06 +0200
Message-ID: <20260702093812.15918-2-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260702093812.15918-1-ansuelsmth@gmail.com>
References: <20260702093812.15918-1-ansuelsmth@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260702_023825_959345_23F5314E 
X-CRM114-Status: GOOD (  14.11  )
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

Add PHY cell property for Serdes port selection. Currently supported only
for Airoha AN7581 SoC, that support up to 4 Serdes port.

The Serdes port can support both PCIe, USB3 or Ethernet mode.

- PCIe1 Serdes can support PCIe or Ethernet mode.
- PCIe2 Serdes can support PCIe or Ethernet mode.
- USB1 Serdes can support USB3 or HSGMII mode.
- USB2 Serdes can support USB3 or PCIe mode.

Add bindings to permit correct reference of the Serdes ports in DT.
Values are just symbolic and enumerates the Serdes port with a specific
number for precise reference.

The available Serdes port can be selected following the dt-binding header
in [2].

[2] <include/dt-bindings/soc/airoha,scu-ssr.h>

Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 .../devicetree/bindings/clock/airoha,en7523-scu.yaml  |  9 +++++++++
 include/dt-bindings/soc/airoha,scu-ssr.h              | 11 +++++++++++
 2 files changed, 20 insertions(+)
 create mode 100644 include/dt-bindings/soc/airoha,scu-ssr.h

diff --git a/Documentation/devicetree/bindings/clock/airoha,en7523-scu.yaml b/Documentation/devicetree/bindings/clock/airoha,en7523-scu.yaml
index eb24a5687639..913ddc16182b 100644
--- a/Documentation/devicetree/bindings/clock/airoha,en7523-scu.yaml
+++ b/Documentation/devicetree/bindings/clock/airoha,en7523-scu.yaml
@@ -23,6 +23,7 @@ description: |
 
   All these identifiers can be found in:
   [1]: <include/dt-bindings/clock/en7523-clk.h>.
+  [2]: <include/dt-bindings/soc/airoha,scu-ssr.h>.
 
   The clocks are provided inside a system controller node.
 
@@ -50,6 +51,12 @@ properties:
     description: ID of the controller reset line
     const: 1
 
+  '#phy-cells':
+    description:
+      The first cell indicates the serdes phy number, see [2] for the
+      available serdes port.
+    const: 1
+
 required:
   - compatible
   - reg
@@ -65,6 +72,8 @@ allOf:
         reg:
           minItems: 2
 
+        '#phy-cells': false
+
   - if:
       properties:
         compatible:
diff --git a/include/dt-bindings/soc/airoha,scu-ssr.h b/include/dt-bindings/soc/airoha,scu-ssr.h
new file mode 100644
index 000000000000..33c64844ada3
--- /dev/null
+++ b/include/dt-bindings/soc/airoha,scu-ssr.h
@@ -0,0 +1,11 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
+
+#ifndef __DT_BINDINGS_AIROHA_SCU_SSR_H
+#define __DT_BINDINGS_AIROHA_SCU_SSR_H
+
+#define AIROHA_SCU_SERDES_PCIE1		0
+#define AIROHA_SCU_SERDES_PCIE2		1
+#define AIROHA_SCU_SERDES_USB1		2
+#define AIROHA_SCU_SERDES_USB2		3
+
+#endif /* __DT_BINDINGS_AIROHA_SCU_SSR_H */
-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
