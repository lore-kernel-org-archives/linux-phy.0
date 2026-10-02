Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC5FDCA5FD4
	for <linux-phy@archiver.kernel.org>; Fri,  2 Oct 2026 09:41:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nvjEDu4RkNgUoNe16yF4p7Xu+Hhzmf2bmBWharAtgzw=; b=mcIWTCTPaHAlum
	cqPbuv1HGKrqDhxEK74bhNf5Zf5UeYdJzfbWEjwzUTCuS4RrrdniDo4bOwBREBCWeMVxKxGLDE+cn
	OdnbHaTZy6MvjI/y89yeXR2rDPWOwfYCPsIpMx647acf1Jw5aSRS2cOvgHgbASOYd2Zp7hn8ofo6h
	LR1zZj7wyoZ3u1YGIzWExhnNibGPvzfIQghkhyZYXKOVw6k5SGdZi9pojdhRCjnrH6kv9urmP2ksl
	nlo18vGXeIKzR15V78D6D1zITCuJEX24skodBR6ZQHhHiu+WSDU1fdwBc2Kl2CTnqtMKxGeQxuiBq
	uGPG6vsDifbuEOOqEDuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCZlc-0000000BBTV-2Q7n;
	Fri, 02 Oct 2026 09:41:24 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCZlb-0000000BBT5-22GE
	for linux-phy@lists.infradead.org;
	Fri, 02 Oct 2026 09:41:23 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id E8EE360A70;
	Fri,  2 Oct 2026 09:41:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2BFB51F00893;
	Fri,  2 Oct 2026 09:41:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790934082;
	bh=Um+7aLzSJSkgZpASIef27exj0PAsx5mMISYhwnx7bKQ=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc;
	b=opkNl1sEuUTQFk4Xmm/bqTd64bJ1+a9q0REaafVUnijCpK8ZDUgU13eclo55rErJa
	 naYHzr5jw6HVK/Eyq0E/JdLFVTOXsmQyZC4BNQ1wtxBCiw4pkU19lXv0655SyGu53j
	 pFr3z/i5H9H8i6WXtOu/38TdV1yMZIMvn+pPoyDGdvTMW0RVJpYxROqZ0eVptnuSm/
	 H0cYNJwJMWWxx1ppFtnC8b5QuTnCbunrKuHW8OK6b403hDNXAxaNgA9I1WDyMl59cK
	 zX/+CDlrS4i5Mwk7yWH7uY8WiEScbHQtEWvI/wC1bHbjhwgtSnhjT3TFD8YX8bHoic
	 /V7EEpPDhWxEw==
From: Mattijs Korpershoek <mkorpershoek@kernel.org>
Date: Fri, 02 Oct 2026 11:41:09 +0200
Subject: [PATCH v3 1/2] dt-bindings: phy: Add sa8255p high-speed USB PHY
MIME-Version: 1.0
Message-Id: <20261002-phy-qcom-snps-femto-v2-8255-v3-1-342542bd9bc6@kernel.org>
References: <20261002-phy-qcom-snps-femto-v2-8255-v3-0-342542bd9bc6@kernel.org>
In-Reply-To: <20261002-phy-qcom-snps-femto-v2-8255-v3-0-342542bd9bc6@kernel.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Mattijs Korpershoek <mkorpershoek@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2826;
 i=mkorpershoek@kernel.org; h=from:subject:message-id;
 bh=21TPCu1CblK3LRZvyFAsCOGs+ekm0TKcdPHfwL6SIFU=;
 b=owEBbQGS/pANAwAKARkNHbRmThk1AcsmYgBqv3w+SjSPXfjx8k50xVExOt5EXyIGeoAprunhX
 lQ1C5P+NMqJATMEAAEKAB0WIQQu6UKnth9qvlMTrQAZDR20Zk4ZNQUCar98PgAKCRAZDR20Zk4Z
 NcciB/4yTZ5lSA9bYw4Vn9gNI42y1TZQlSD5oAYxN01y3xXzj5x6c6Lbp5eOedT4nYrKMc+QgXO
 W6kEfIjOsWCdFeQ1fHwZEYsB8QlomkL3cr1vXR0CYNc1fG/W/9mIrz9ixjAVfp0tjkY+s0NCj+B
 ud89iMx7kDagirkRWI/orFz80QN9csSLtJVB6mrYry8dWeIqE2Fq/qbyMFBbuWqUju158wMOkXr
 JsNBB3eRwYt0kDd+PSAdkOD73Or18M1UFNVCxg5CQDCvhanKkongfsMlQWs029jz+aY+0FWcH/K
 BWpQpJ5WaDOvLsY24PY/XFx/3Z1nI3hHmhUpWuJ9AFUVUisK
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

SA8255p platform abstracts resources such as resets, clocks and
regulators in firmware. The SCMI firmware exposes multiple protocols to
control such resources which are identified by protocol_id.

For this USB phy, 2 SCMI protocols are exposed by the firmware:
* power domain management protocol (protocol_id=0x11)
* performance domain management protocol (protocol_id=0x13)

The power domain has 2 indices: 'core' and 'transfer'.
* core controls the regulators, the clocks and the reset
* transfer only controls the clocks

For example, to power on/off the PHY, we should use the 'core' domain.
To disable data transfer and keeping power enabled, we should use the
'transfer' domain.

Add a new binding for the Qualcomm SA8255p Synopsys Femto High-Speed
USB PHY V2 found in SA8255P.

Note: the performance domain (0x13) exposes opaques values (0xa to 0x11)
for which we don't have any information. Since it is not mandatory
for the PHY to be functional, we have ommited it from the bindings.
We can document it (and make them part of the dt ABI) once we have more
information.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Mattijs Korpershoek <mkorpershoek@kernel.org>
---
 .../bindings/phy/qcom,sa8255p-usb-hs-phy.yaml      | 52 ++++++++++++++++++++++
 1 file changed, 52 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sa8255p-usb-hs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sa8255p-usb-hs-phy.yaml
new file mode 100644
index 000000000000..fff474a8345d
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
+      - const: core
+      - const: transfer
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
+            power-domains = <&scmi12_pd 1>, <&scmi12_pd 0>;
+            power-domain-names = "core", "transfer";
+        };
+    };

-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
