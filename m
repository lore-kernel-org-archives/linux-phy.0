Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E32DC55165
	for <linux-phy@archiver.kernel.org>; Thu, 30 Jul 2026 13:58:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/oCo3HElgJ+5SzxSXwdrmdEgM2Vu7WMCesqXmqoDffw=; b=rKdXwaclScqgP4
	NOD1lTVayBUX8Kui9EWzNnC0Y2vvPC5wjZZo+BCZQ232WXSHiOkV5WYhHb8f7M58gqso/VoD584bf
	muXMaNASam8iYTqFGx3OJTWcAz/w2llzw3rVXZnHVqCFX5RssnoT+H7yhPHdY4DZ7cB2sVSzIDGBn
	12SUPMRzYfcieCahvm0NKOWLSMVMNj0egoqgniLTgBFcw8ZuNcZZkDqVrAsieTV7DS3glWak7Oh5K
	al03ZAWbRwrAHaP7o3Uu/es4Msp0fuUYYbbIXrwuOmsvsJ5/fZdIZvjyvWnp4GP33ficKH6Ngwwt4
	F8rhcepKJ73ksDKcH5Zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpRHR-0000000AgJ4-18Kv;
	Thu, 30 Jul 2026 13:58:37 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpRHQ-0000000AgIW-12Lf
	for linux-phy@lists.infradead.org;
	Thu, 30 Jul 2026 13:58:36 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 8357360A5A;
	Thu, 30 Jul 2026 13:58:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BC8101F00A3A;
	Thu, 30 Jul 2026 13:58:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785419915;
	bh=12U+DUSkDx6BGVuVzRdMtPQoiRSNmhu8u6e0D+Cp7F8=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc;
	b=aioYcEnxtYcVIi0Gd6cs9oi0V7tLB+boGzU/Oick7jCFDX+illdPev1mmo6S5KcPW
	 o4Gd860VzIe9noe+bUB+53NW03uGPDAH188F1oK6Sc1UZDnBzjA+O5UK085U0SX/sS
	 HFI5grcq2Y47RAdmzFIp1gR6FJYWugKOd1MUPqrsPJc0scO2TBB9/qjzbVxPh8nnMG
	 BOBJKmcXhQoeV5oo4cq3Td76WUJ5mreVl5zkmEIh/wjwormyXRy5++/XSXEckR/5y0
	 KHwZyAsto84zy4thMPautruwa5o5ndkWgRr32U6xHA79+aHsdi7J6bnXL+ubZIWIiq
	 bkPPBRhs+Si/A==
From: Mattijs Korpershoek <mkorpershoek@kernel.org>
Date: Thu, 30 Jul 2026 15:58:14 +0200
Subject: [PATCH 1/2] dt-bindings: phy: Add sa8255p high-speed USB PHY
MIME-Version: 1.0
Message-Id: <20260730-phy-qcom-snps-femto-v2-8255-v1-1-8b8bf5105a68@kernel.org>
References: <20260730-phy-qcom-snps-femto-v2-8255-v1-0-8b8bf5105a68@kernel.org>
In-Reply-To: <20260730-phy-qcom-snps-femto-v2-8255-v1-0-8b8bf5105a68@kernel.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Mattijs Korpershoek <mkorpershoek@kernel.org>
X-Mailer: b4 0.16-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=2083;
 i=mkorpershoek@kernel.org; h=from:subject:message-id;
 bh=vMzm1GvNk819NsoMsDtvkp06j8Bhp7koLWgrnSZ547Q=;
 b=owEBbQGS/pANAwAKARkNHbRmThk1AcsmYgBqa1iFqlP1GmDNTEbou1LNV0oShoDJbFmC5vDdA
 I6XkI30DWmJATMEAAEKAB0WIQQu6UKnth9qvlMTrQAZDR20Zk4ZNQUCamtYhQAKCRAZDR20Zk4Z
 NQOIB/0cRR/t2HZHTsoHQ4WwALj21s/V8LBQ4YKhhTGZgD0H4e1fbl32Qbj7mx9mQ+gfpUSkdLm
 3LFfMDFo1Ho6UwBnZ5eMbR2onGbpAOvpeRddgDzYprJRy2tIHBZaxjUu1L07DXtUzqQMt/SNXDq
 UfTju4bC9tQtUsMAgBv6xmniW7TrV0eXOkJeXPjWV9UOKaHHi4oKfdyHBDXvWvxRMPZcJbxv/Kq
 HhUX1ZVDhNadKXg5XK3lobpjy390cKC2024SZEyYmkZywDovmT7hxQyphU5PzihZMmInDFvGat8
 9VPpSdNWNnduFG7F0D358CSomSuO/8Up9hMOLgMpvdWLWxQw
X-Developer-Key: i=mkorpershoek@kernel.org; a=openpgp;
 fpr=8234A35B45C0D26B31C1A2DA570338B018144F28
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

SA8255p platform abstracts resources such as clocks, interconnect and
GPIO pins configuration in Firmware. SCMI power protocol is used to
request resource configurations.

Two power domains can be requested: transfer and core.
transfer controls clocks and interconnects and core controls
the GDSC, resets and TLMM (GPIOs).

Add a new binding for the Qualcomm SA8255p Synopsys Femto High-Speed
USB PHY V2 found in SA8255P.

Signed-off-by: Mattijs Korpershoek <mkorpershoek@kernel.org>
---
 .../bindings/phy/qcom,sa8255p-usb-hs-phy.yaml      | 52 ++++++++++++++++++++++
 1 file changed, 52 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sa8255p-usb-hs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sa8255p-usb-hs-phy.yaml
new file mode 100644
index 000000000000..09f7ca6e7f72
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/qcom,sa8255p-usb-hs-phy.yaml
@@ -0,0 +1,52 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/qcom,sa8255p-usb-hs-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm SA8255p Synopsys Femto High-Speed USB PHY V2
+
+maintainers:
+  - Mattijs Korpershoek <mkorpershoek@kernel.org>
+
+properties:
+  compatible:
+    const: qcom,sa8255p-usb-hs-phy
+
+  reg:
+    maxItems: 1
+
+  "#phy-cells":
+    const: 0
+
+  power-domains:
+    maxItems: 2
+
+  power-domain-names:
+    items:
+      - const: transfer
+      - const: core
+
+required:
+  - compatible
+  - reg
+  - "#phy-cells"
+  - power-domains
+  - power-domain-names
+
+additionalProperties: false
+
+examples:
+  - |
+    soc {
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        phy@88e4000 {
+            compatible = "qcom,sa8255p-usb-hs-phy";
+            reg = <0x0 0x088e4000 0x0 0x120>;
+            #phy-cells = <0>;
+            power-domains = <&scmi12_pd 0>, <&scmi12_pd 1>;
+            power-domain-names = "transfer", "core";
+        };
+    };

-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
