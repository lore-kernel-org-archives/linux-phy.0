Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71B78CD4F3C
	for <linux-phy@archiver.kernel.org>; Wed, 20 May 2026 15:09:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m8MP6T9qmjxpg7fSp+yXReuyj+1grH3cMu7vWsV9dPA=; b=x2jbVFMv5ghrkT
	Wv8pUFvyUMAj9vgRD/N9By/F4NerTFRu+defbpHQ5Nz8CTADgNfyTJwBpjnhE8zGRUnHnSztfJupR
	uM53qFnEbsyNmdN0z/4fEhmgc9Czc7JwyATUD5tEe7bWSAFP8N8Cv01sSppHq5Dit9AN0lCmvH/fU
	xWfxzMFbJ442OjeH7Ap4/OKnRpyUppTavuUZ+XC+20l7Kppxa9r5HPTWfgq6sAdK/MQXDZlRku2aO
	dBrUG6Yy+070FVqWczoCccdfojNiV5/MXQ2tGoGuIsvJUuK07MPNWXwYY25kMxRSZhIk+/Mm01wnK
	oWCzxNDs7cGc4vmFe97w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPiYA-00000004vPf-0rUr;
	Wed, 20 May 2026 15:09:34 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPiY8-00000004vOC-2fQU
	for linux-phy@lists.infradead.org;
	Wed, 20 May 2026 15:09:33 +0000
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-449d6c68ed8so2184486f8f.0
        for <linux-phy@lists.infradead.org>; Wed, 20 May 2026 08:09:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779289771; x=1779894571; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jNa4hPs6+EpEb0GIRuEgBVkSu+eNRa7QDRsXvqoVr38=;
        b=if7ukkzvj3xgEOrh3/m0AHs/0q42dSb7XK/VsF6JfNTHyhoh5a6SexPtz8pfiKEZjo
         aEoHNOP6yjqvToaMmPiRJOrShaq7fkCh9My82MfuzLmzWRs7tcrePAuQjpOdthsoX/am
         2sriLuAFGvLZ8TqsiIiLQzkMqFIrqRX+VrgCPdkpvnI/NmNxluH6oy0Y2zCIV62YrYYX
         nAMkblcSmh9RiG91+3vxN5Fw7wcEWK6rlrpdYWhiIEOjzr3q47YCndupo3mcA9hWzjDu
         1yEvK5eFUGwuAKzJHqdB/IclS6I+i7zGBPZuwZWQK2b4EDCPlW2bUCS7yef2vS1EpKf0
         zHLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779289771; x=1779894571;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=jNa4hPs6+EpEb0GIRuEgBVkSu+eNRa7QDRsXvqoVr38=;
        b=p4sAr4VFThzN+aHO5MKrG/VQHS2DO/L5EBEe7EYZJlDtFb5Be+pgXBczpwo2DwXeez
         RLuhdrM5qoLZTjc1takz+qMXcBrmdsq1drqHXvS2WvMUQ6qPu5m/ecZArZucR5scrVpA
         uvJ878oWbY/OFIzSEBAOhZBKsawLw77VKjBU9aT+y3tKfRhEuphm+O0DasVds3tn+MtH
         42+cQkEhXkqU5lhqekmOqAAe/CZsoD3Co5xsMJFJiqWOyR4uamTbJkztOhLaNJDQgPr7
         Ae41vIY/vQ6SmLILMX6fuFohngYXN5JVk6P8r5WkaoMJsbKImCV4v/dYShO8Rdbqy4hk
         JQdw==
X-Forwarded-Encrypted: i=1; AFNElJ95O46gL0nbHvSs5p7A1u6JPUDOX10L+h6ItwUjpU5rOXsUY3+tJuw6A79uav5Dmzx0T8F2TwEfEQc=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw99dBzJlrL4DoAZIzhB441s/N4qJeQFTrk8wXNV/gkN7GjXr0f
	JXNF+B0ys8+j+8qjI7XsH6CTK09pYyEPyWcucOsZ0Iv/JRna84CapQd4
X-Gm-Gg: Acq92OGUZwB+v0Tx9l6WbYhiv1BGRK3jNbhexP+8fXY5TanDUGuKgAdBesOAGlh5VDO
	vqT97Ze08IAuSz3UFj4/kmXrFlTX2f6fXFJjyk0w76sOjaCURHYxDv9vjik5hoxECn5/tAYL1+a
	P8nbmNnhN1o2vV1sdqEJt1rxpUUyaee/uc4dN+m32FXV7SUhDFyil4VApWX+k4uDNQwg46KoO0X
	VtN7nd0zpItXkm5vFBwsTXO6Upgk6+WWB8btTcyfJUkbTo4vmCX0N0eJUFMEhKWmHkeV8vRnQ+q
	QNSpnX3ZIL/j6SErodafdQvvIejB/Rg5iEvopOAy1vAhOSZSsoOJ8QCZp0N0YCmtn+3nxuJ/OZH
	P3mm+q2S1APxG8IxSHv+h3ruYUTQBc+qNoV19md+NrwsNmTlAFnXwVuPrTJ08HBlOuDVZSWlkvZ
	4efaHdCpTyGvWNip5H3ffmADaWnsW4GwbCTB3Jup7wZbWTxMTS+qEhQO+hG0hNjW2fIlCJvm+5E
	g==
X-Received: by 2002:a05:6000:2503:b0:43f:e43a:f4a6 with SMTP id ffacd0b85a97d-45e5c35e7bdmr39357421f8f.6.1779289770707;
        Wed, 20 May 2026 08:09:30 -0700 (PDT)
Received: from Ansuel-XPS24 (host-79-22-5-99.retail.telecomitalia.it. [79.22.5.99])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-45d9ec39806sm53639804f8f.9.2026.05.20.08.09.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 May 2026 08:09:30 -0700 (PDT)
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
Subject: [PATCH v8 1/5] dt-bindings: clock: airoha: Add PHY binding for Serdes port
Date: Wed, 20 May 2026 17:09:06 +0200
Message-ID: <20260520150912.11614-2-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260520150912.11614-1-ansuelsmth@gmail.com>
References: <20260520150912.11614-1-ansuelsmth@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260520_080932_688699_D5BAA97E 
X-CRM114-Status: GOOD (  14.15  )
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
