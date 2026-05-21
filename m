Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66110CD5BAC
	for <linux-phy@archiver.kernel.org>; Thu, 21 May 2026 15:37:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=InfqjtZDZPYV8S55qTxFXZOeugH3Dae3bR/lk2nLnT0=; b=TPBdVW/xRxB7QY
	D3kp3PwwdliBlZWp3M19EfGODl0JVBJbmteQCfV2snnqIuZM6jQaSyPaOYDCQyj2ZBjUl2a9G5ACP
	/Imy7+JEs7Cct9tm/gd3EDQ+tYl3znn8hfXljHgirTPQtFVGrYdYFs41UH2nyAKJaVy0M5ue2cqx2
	mFAYt4pTIRXEeB2ZKiisp4HlhRiR3OZX9YhYy/66Q7lqsbMzGYLB9sGojWYTgnPm5j/fqgCIvDyHQ
	uDvZSM77KJfFlHU+4iRmnZEuLdYAMw1H4rvYHrbWKnR61OQ3QRTfiUePKXJh7bcmRUi0v1foPRFMN
	LEbBj6PpaX4IKeJdUFUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ5SJ-00000008LGc-0SFi;
	Thu, 21 May 2026 15:37:03 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ5SD-00000008LCT-3n80
	for linux-phy@lists.infradead.org;
	Thu, 21 May 2026 15:36:58 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-4903d730b1fso5121395e9.2
        for <linux-phy@lists.infradead.org>; Thu, 21 May 2026 08:36:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779377816; x=1779982616; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=atavLJO9ib3dVO9oXs0ZfRhlR41n5og9pxT0XRvm9dc=;
        b=NEFcbwT39Ey7nTGg1KHptffFBSpGQ+Sp9Xn/lC4kOl9MsDwW36wj3ZL4cEFd3BeNnm
         bsP8Xc4L38348393GYzQ4F3JxJ/0ltMfIwJZCiWuxO09n6vRzDFBmMNn9JJrEtvPFBcC
         nRNxsx62WBlW/2ojuxb9QFFXYstcVfRiykgaXxCyxrFtGDr2LhCEaVx0vM9hub9VjNaI
         QkETTXyF+hr8sJv4imqz3KDxbRSNyNWgDeyqQnkvjt059nVY9JsMok92StlaH0X+5C93
         QCF16hkYzvF0hhHdVjgwPOScY8ZhJVVET77zfIZK7UsfWhB0ctsEj3C7b+o3oUhk0Hzi
         USdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779377816; x=1779982616;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=atavLJO9ib3dVO9oXs0ZfRhlR41n5og9pxT0XRvm9dc=;
        b=ULm0Au9aADVeiSDLXzrFt/VNaiRs9ENImoavm9UZETlq/qWX33y/AM4aOL8/ChzibE
         ZzX9tXBSPtJZj5aQtcWterGc5cQ4QS6JJ156GtFexFdpq/bBnbvFtmh5N9VujXXmg9Vc
         Hjqzdnw6fT+75fxax45nONmD0nX1aoirB6P3WOZ4t1DcaEWj3o+MiV2tU4XDCbLtH1bx
         eBqWqMfwwBX0FALojapQmhLoEoqrQQg5rZZI8EK1gf7dQAkDlnuPhGFMeM2z+WlygADq
         qHyFKL7KePCX0TY5/gqyMmoWWDOyEHIV0xPeuC1CH8wCqspow4b7/9dr715j4eD3P2Hq
         ehsw==
X-Forwarded-Encrypted: i=1; AFNElJ+hqcCqPEt1fqaw5ZuSeL+48iKw6ZU5YJRy+8DUsOz9XL5w40eJyUdFpBi+eKP2SoJKF+e/iflZ8Ps=@lists.infradead.org
X-Gm-Message-State: AOJu0YyIO7efYQtnGplYY4XrCdumsSEX+tGpgB+2jvmIl36PNW446DI4
	ZjGoG7K3lnMcBKem2GDqbiYgmFIdTlUBGrlCGR+4mbHILfadsg6NfUZZ
X-Gm-Gg: Acq92OHP+E6IBg+uc03lAESghOLEaSDz1w4A/q0hLpdA24HFq2h7i0qYLfSSTUWAtFv
	67WpLVnY5Za/4bhRNxr1pCM7ekv/94u9AfsqkkaJP3ro7YFI/IN6Vp/pKZ9/mBDELnQPyMCWNHs
	JNJQmSgkc4l2Gxx0uzA2tkzqhduOwxb9YLMdoyhE75gY/m0YIywDNdHJ7stWaWLajPo3sLTWRLm
	p+I8pWKb5uF97acYXKYvZ2Mf5pF3wG1AQXOvT5nqPY2WENKp4ryuUnhVd8u3ACEEA0uCzerghx6
	lGTQXoF+69GdpIGezEMkjELxUNPoOp4pSixd+YvcUH9w1cZotwTmR1xyKYylDRaayx52mSssf7/
	+Xwj2x0fGBacuH3O+IzTTotfnIVRsaGRtE3/acgx37zmzJLmGb3jR8cSel53xPIYTcN+u0mpbKo
	LIVwxG7yZkguvSVepIA0BQHeC43NHcoIdloe4uka9VBhZG90GKHnhxf3Jpcs16O0U=
X-Received: by 2002:a05:600c:470e:b0:490:3ec9:8711 with SMTP id 5b1f17b1804b1-4903ec98789mr14784095e9.18.1779377815576;
        Thu, 21 May 2026 08:36:55 -0700 (PDT)
Received: from Ansuel-XPS24 (host-79-22-5-99.retail.telecomitalia.it. [79.22.5.99])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-49033d9edcbsm79159825e9.13.2026.05.21.08.36.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 May 2026 08:36:54 -0700 (PDT)
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
Subject: [PATCH v9 1/5] dt-bindings: clock: airoha: Add PHY binding for Serdes port
Date: Thu, 21 May 2026 17:35:52 +0200
Message-ID: <20260521153645.7028-2-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260521153645.7028-1-ansuelsmth@gmail.com>
References: <20260521153645.7028-1-ansuelsmth@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260521_083657_956705_55E8061A 
X-CRM114-Status: GOOD (  13.82  )
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
