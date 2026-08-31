Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 810EEC61DE2
	for <linux-phy@archiver.kernel.org>; Mon, 31 Aug 2026 09:31:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZggVEu9nA/YmG3MikgdKJ7uvDycQVyKAg3l/Hpo8czU=; b=xHmm+bFRt+FsWF
	lNTWdLDHYYGtlTG5plDOhWZ1nX2K+OQ82iI0DccMX0sezfdV8fXT8MxxW5E+gvbavAMow2kzX/XMO
	DlIIC/4Bn8lT6rMrK7+k+dz/AtSBwR79ji2kaXl8aWmWhKFjQt4x0pjeJimfg/lGzyGHuz/heHQf0
	GX+bnSiaVhq84Ttn7p/moaXg5R7X/J2uVpq29w0OAsxY5w0n1q16MRu7M/bnFNX5bJeN+DbhRZXbS
	9+mbH/Yz2ydfVuCMIWMHnH6WwUrwIEcp3m2p9EElmG+SMtYbOCWb8SEy56HZNj+eMVXyHuStxcR5e
	OpF2bXXaXLR+PmVT2dZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0yMZ-000000091SQ-3Gos;
	Mon, 31 Aug 2026 09:31:38 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0yMV-000000091RX-3QC9
	for linux-phy@lists.infradead.org;
	Mon, 31 Aug 2026 09:31:33 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id F16C360202;
	Mon, 31 Aug 2026 09:31:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 031B01F000E9;
	Mon, 31 Aug 2026 09:31:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788168690;
	bh=GLiBEoEDVdWz7B9/oM3Z4DBrql9BwJ5kz4e26G6SP/4=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc;
	b=Ri+hEUGWnZxD3+wKBpXFSfRBVENDPIEljRNNQuyP1oBBY6k4IfAmGXnHkf1zI2dBw
	 10d59Q5i1yBbbMMOabFfgwxhun2kdWbp1Fu07KINKU7DWrg71zuVxVHMluA6/XRfx1
	 8ZFpoQL85BKCw42/kO61VfIGOHBI/YzV+whEbSmDAWh/F/zSYRCoaB0ep36T3eDGTE
	 SveZ7LU0DT3yP53cBFhG51KBaCcWA2b6kRqe4Te0EibuHuWs5cKfMu5skchlcmZ2oj
	 f+mojMhwaW81lgDWwbcVrQeaSIrLpgP+BJ+2USctc8SoALq1woCuRk+vh3eaTCzyD3
	 SvGaW8KAghroA==
From: Mattijs Korpershoek <mkorpershoek@kernel.org>
Date: Mon, 31 Aug 2026 11:31:21 +0200
Subject: [PATCH v2 1/2] dt-bindings: phy: Add sa8255p high-speed USB PHY
MIME-Version: 1.0
Message-Id: <20260831-phy-qcom-snps-femto-v2-8255-v2-1-dc6197ffde1b@kernel.org>
References: <20260831-phy-qcom-snps-femto-v2-8255-v2-0-dc6197ffde1b@kernel.org>
In-Reply-To: <20260831-phy-qcom-snps-femto-v2-8255-v2-0-dc6197ffde1b@kernel.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Mattijs Korpershoek <mkorpershoek@kernel.org>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2753;
 i=mkorpershoek@kernel.org; h=from:subject:message-id;
 bh=lmymNw9vRwFG8RLd1ooeMOy0Pe+zb0TvI05tu3fq76Y=;
 b=owEBbQGS/pANAwAKARkNHbRmThk1AcsmYgBqlUnslx12Sfd7huEnIP1amezkYgjK1AzT4Vz9t
 93peOJoDQeJATMEAAEKAB0WIQQu6UKnth9qvlMTrQAZDR20Zk4ZNQUCapVJ7AAKCRAZDR20Zk4Z
 NRcAB/9vlUeBgvfJYEvc/SmDoTKe7bX4/9c11+6LP4Ogzb7wmtKaNd9vDzWrzokvRsrh2nChHOG
 4HdpO1z6kdAaNHlQ/urVGG/Kl9/B4Sb4iFNCj3Zzbbxr0V9jkxthtX7wHqmRaGwyHOlUOVP5TQi
 qHabwDartwW+asTblqRb9Ix3rTyVCWP2pEz/Ogr0zKb2lpjVGOfzPXg0ZGTyHljAO83bm368FNV
 pn4kYbQh04GxJeDO89IXbMTKhqJ+ZvAEmsjlD7PoK0+nVQFQ7/0Qq3sS2+MEFkq6b4U7lqJ96Ap
 Fi3KO7l/njHtE6JNc+NQLTkBW5Y0IZQMTkZsvvfwxZpbaWUm
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
