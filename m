Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 020A2C624D4
	for <linux-phy@archiver.kernel.org>; Thu,  3 Sep 2026 07:45:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fG1TNUZsrRwny5RugAjdt2/LRBF9PrRM/K93vdn0yeA=; b=aaqCsxsx4pkZMP
	FOuKihkbWrm9VGSath+rh81J0O+yACYQ1TcNXmblQGwLuVAB1G4N8Hj43EofuUR1Pr3cH6otzjE9v
	PXmmj4fYSpdAQOevHFLuMIM+q3f9RZqSTTWJ99iD3NrNS5oghZXyqmQkE4J1IOsVlOXeDhHJkZOns
	pC2yoKizR62TVG98nurriV83Krsn9BsR9Rnyt/h49/zSwKu+7qMymeOCRgZijz9zYARd1raRthWIi
	YRX3Q5P/WJFqvR3CMaL57Rlxbm7YsJXZwGD26EWu+digiaNTLWmK3WxHrQNzVTq1QxOADW1PM+cR7
	1Ang8Ran6ksWXnJPbYTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2285-0000000GfiJ-34A2;
	Thu, 03 Sep 2026 07:45:01 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2284-0000000GfhN-2CXc
	for linux-phy@lists.infradead.org;
	Thu, 03 Sep 2026 07:45:00 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 27DF4436EB;
	Thu,  3 Sep 2026 07:45:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 72F0A1F000E9;
	Thu,  3 Sep 2026 07:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788421500;
	bh=tI8RHSkImdO0nj3uMq7x9+u6nJ92+6UzBO5q/OyuHcI=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc;
	b=DgMkB5VWYMSVONIMeM1V5oc8r3XnC5ZdojvF4DWESRc0pUOISZpqyHZMCg3Fyrf1J
	 st6/eoMG8cwzatR2Ix+CjqqOUBxkE7++Qq1Fa4RkvAH4kflw2P+5NqTZDq0/3B2Nu7
	 f0oUgtzvRkwMOWINH9JLpDK8OQfNU2oQpH0QW8OxbwSshFbTPPqecY3DUlGr9fCZkM
	 DrKXiNXIK/pyIRR4XomC2h4pJLChTJ6jg8WlAsaxc7Zx8HylA9kS9fxcxKAuYmdcB8
	 WC0Neqs/ojkjFviXcTHggA4bHElQwaEXnB55xI9zF0JcOfVOOIlFk+KjsEGsB+UZ2z
	 t/5K8ZZW6+8ig==
From: Mattijs Korpershoek <mkorpershoek@kernel.org>
Date: Thu, 03 Sep 2026 09:44:47 +0200
Subject: [PATCH v5 1/2] dt-bindings: phy: Add sa8255p USB PHY
MIME-Version: 1.0
Message-Id: <20260903-phy-qcom-qmp-usb-8255-v5-1-e251e22b341e@kernel.org>
References: <20260903-phy-qcom-qmp-usb-8255-v5-0-e251e22b341e@kernel.org>
In-Reply-To: <20260903-phy-qcom-qmp-usb-8255-v5-0-e251e22b341e@kernel.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Maxime Ripard <mripard@kernel.org>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Mattijs Korpershoek <mkorpershoek@kernel.org>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2764;
 i=mkorpershoek@kernel.org; h=from:subject:message-id;
 bh=PzqR8zTEGYRy1cY8mT4aSeOCftOq/lvsV8KrYPv0nLw=;
 b=owEBbQGS/pANAwAKARkNHbRmThk1AcsmYgBqmSV2SCea7lPzissVJExXmIGAVJc2ZVXbzNb1H
 vhD6AWRemCJATMEAAEKAB0WIQQu6UKnth9qvlMTrQAZDR20Zk4ZNQUCapkldgAKCRAZDR20Zk4Z
 Nd7AB/9oJyimK7fPYVgVLN6htoh+EG2H+Gilkkq3kdux/lM8oDpULkpTqGgMjokdkntWubdzOOF
 eNn/AG55bKrPkkfgQfo43N4qPoqtGgbaEZ9xrLp2h6JLNFgTm/XVlIaxM00WRST8kp/AMTHpk3+
 r0/fjdAosqITeqWcHJnrlDOipjUnwwjjyzORgvfR+in3AxasQN9NGSBeS0Ue8qDsSrumc3t/znV
 9CLhUMOTUhhr0G1Z41VpExq+N314wd+GTlqRwbSCnGkheukUeNWHDRhwwyj4UNzglqzrFKHHnTU
 a0YhxjTq8zCf0BvvsWVU/8uUIetjknjLWROQuQ+9GqQgyCS1
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

Add a new binding for the for the Qualcomm QMP Super Speed (SS) UNI PHY
found in SA8255P.

Note: the performance domain (0x13) exposes opaques values (0xa to 0x11)
for which we don't have any information. Since it is not mandatory
for the PHY to be functional, we have ommited it from the bindings.
We can document it (and make them part of the dt ABI) once we have more
information.

Signed-off-by: Mattijs Korpershoek <mkorpershoek@kernel.org>
---
 .../phy/qcom,sa8255p-qmp-usb3-uni-phy.yaml         | 52 ++++++++++++++++++++++
 1 file changed, 52 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sa8255p-qmp-usb3-uni-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sa8255p-qmp-usb3-uni-phy.yaml
new file mode 100644
index 000000000000..90bedb05cb7f
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/qcom,sa8255p-qmp-usb3-uni-phy.yaml
@@ -0,0 +1,52 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/qcom,sa8255p-qmp-usb3-uni-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm SA8255p QMP PHY controller
+
+maintainers:
+  - Mattijs Korpershoek <mkorpershoek@kernel.org>
+
+properties:
+  compatible:
+    const: qcom,sa8255p-qmp-usb3-uni-phy
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
+        phy@88e8000 {
+            compatible = "qcom,sa8255p-qmp-usb3-uni-phy";
+            reg = <0x0 0x088e8000 0x0 0x2000>;
+            #phy-cells = <0>;
+            power-domains = <&scmi12_pd 3>, <&scmi12_pd 2>;
+            power-domain-names = "core", "transfer";
+        };
+    };

-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
