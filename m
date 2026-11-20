Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AC7D6074CD9
	for <linux-phy@archiver.kernel.org>; Fri, 20 Nov 2026 13:56:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=hmks6rPZ;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=P+RdDfrp
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=dBL0syhcroVO+n0tWEzSap0Ih8Vv9XWMD1RCwgW3Xos=; b=hmks6rPZYMBsBRCvy7ygseZtPo
	aZ9UAt5fZCdRNDVaM9SVW0kqbTA3/CgVy0Lihbuq7PF1YFoN16D0Yk36H7lYDpdvo8M6AK+LU0g17
	XDDAMCW/m6feemGWnr9QoxcBEuZcOZETcjzTyA8sTWnmI0IDGYvp0NkG71IAzkZG/Nd7dD7xtuTLB
	+iPRQs5zHd6r6HMC2TuQvuIyeixRl+I9WYZ0dSvy71XSEZQ+e+EAySQpqQsyzjqfTP68xiK3MwpH7
	u03vPVnVNe3ncwx152VmZY4eXbUDBi3VMFZZ7l+FJ7jyWUKp5iqW7uWM+G8y4HIcDRI6TxpMXQpnI
	PfFQSa5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUP6J-0000000FC5s-03fo;
	Fri, 20 Nov 2026 13:56:27 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUP6E-0000000FC4f-46H6
	for linux-phy@lists.infradead.org;
	Fri, 20 Nov 2026 13:56:24 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 803EB43319;
	Fri, 20 Nov 2026 13:56:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C4F6A1F0093E;
	Fri, 20 Nov 2026 13:56:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795182982;
	bh=KmAc3T9mWrH7swBNo0EglWG6ricFEmcz6t+LpSrqQD8=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc;
	b=P+RdDfrpbaDcBgMKYTpiIBnfseY6vmGZQO1xSAb3Isnjkl8HLABo4o/po2+ETAaTe
	 2mPV3JRZbo4nCQM1jpfgy/xk1fjtWKaVKo+DxWeMsD0daIXmWonkW5fhZ8w9fnvJRs
	 ZlTKAUWBJN/XFoa7VbDD7CYC6xnS1cGKGCxpNrSYx9xEtw3wTGdsFYvu7UlOxIbfPj
	 ShVe+1UpBQ2a9hEIeIMEOOhMRsUPcclaX3n0sG5Y2iQxvXCO/0ryjqNTE43JkiX6MZ
	 GwaVmnSP4OGLvltuaIWRnthbWeN8pDztSh2yN/8JpBe0+6Zp4yxIFybclbKidPlh9E
	 Jepz5OQoeHBQQ==
From: Mattijs Korpershoek <mkorpershoek@kernel.org>
Date: Fri, 20 Nov 2026 14:56:04 +0100
Subject: [PATCH v5 1/2] dt-bindings: phy: Add sa8255p high-speed USB PHY
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261120-phy-qcom-snps-femto-v2-8255-v5-1-86a9880ee5a5@kernel.org>
References: <20261120-phy-qcom-snps-femto-v2-8255-v5-0-86a9880ee5a5@kernel.org>
In-Reply-To: <20261120-phy-qcom-snps-femto-v2-8255-v5-0-86a9880ee5a5@kernel.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Mattijs Korpershoek <mkorpershoek@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
 Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
X-Mailer: b4 0.17-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=2903;
 i=mkorpershoek@kernel.org; h=from:subject:message-id;
 bh=+iqdwQcNJL4/e62aoHyHmgjIrFNlesW9mTuXz0wcwEE=;
 b=owEBbQGS/pANAwAKARkNHbRmThk1AcsmYgBrAFGA12KAP+Eu97PQ5RLJLiYBMe0bqt09cz6gl
 CgYOfcmCAKJATMEAAEKAB0WIQQu6UKnth9qvlMTrQAZDR20Zk4ZNQUCawBRgAAKCRAZDR20Zk4Z
 NfNwB/9Sk8DO60b6vCOrlGTrbB7iCe+oWNnd8KpYXR+Py8c1wH7f0jpHC8lrbRzahFX8xQ71pTK
 RejVPVAD557D9IKyTM5SBifyhdRtMzqK+ZlRNhOmv6AX98KN2LJmFqEZtctj/tp66auNKkTTY9S
 rNuqyX+mCJms0g6PL0vASmmoX+F905mOC1fBJMIytUnibYEljhLv/aqr6VqO8RV2mmlJwzj40oK
 G6Rg/hbgYIdZiHzLv9GKf5s+cToJgyfTpd2IyxlGcgZ8NU5EK5MB61n6rJ8z5k85YZHcA0/pbaI
 Q5/GwrGFq2+jmM/mDTa2hekGGiaExlNOTbKlu3PCIJ7hZ8xY
X-Developer-Key: i=mkorpershoek@kernel.org; a=openpgp;
 fpr=8234A35B45C0D26B31C1A2DA570338B018144F28
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

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
Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
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
2.56.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
