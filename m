Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7FB6BCA5FC4
	for <linux-phy@archiver.kernel.org>; Fri,  2 Oct 2026 09:40:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f1063G2vF6DciCss2BzrKv4N+AywUNc+yN2raneNb7k=; b=pGgeV4mRYV1ouw
	UBKumvVhZFMAgJgyMct/0Uqt3owb895av0sfaOlGZNL1I85/x1YDu8H8qLZcC1kSfRA1EwNUbsMpS
	O5mCVocVQHqVDDAIntBdAEjEifzTgS8BATd/DiJtRyXXIF43b2sM6c6tUdyb1WIuR6sfzmVxaHD8d
	IXVEdo7mS7CV2pWkrMxd6NiE/yX8iHiNMTJEgz2YJuSu3ALvuWaoH8m5Fy9uCqsHGTOCMjUGnAPqa
	XGB8PTfx5zMY4MirnZDp06yw6D0PGI2zutDjZe74y7J2wsuXSjmsvwG91/cIsezFlNHN3jyiPjmgj
	fw12Oi1Ufu4M2U9F4ceg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCZkL-0000000BBCy-0SHM;
	Fri, 02 Oct 2026 09:40:05 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCZkK-0000000BBCP-2kGr
	for linux-phy@lists.infradead.org;
	Fri, 02 Oct 2026 09:40:04 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 39947447A2;
	Fri,  2 Oct 2026 09:40:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9C95C1F000FF;
	Fri,  2 Oct 2026 09:40:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790934004;
	bh=zlihqHzEBJkzDcVvQjjlh/eiRm5TdeNxJq/TBnQS294=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc;
	b=UgpD+0ikiJQZryH5nLvYl0mpe14a0FoZ9/7vMRWVX2aI/9myhzQ7zJgASyQ+Osagx
	 2LunWQ23s/1dXOM9Iv6/+gl3wuI1GxVd2laZVFC4G1cjadUdh7AZByfYcx6LKT0deT
	 ePX2iLGfjgRL7pMpInxUqiJJqW8XCeXufLpyb+BD0PuC8DVS9THgz9p6MUabStOrXZ
	 B10muqdy8AJsm6CZxMGOqOFqZ26mIuejshqPoAvQVjZJkFRpRhNNP8N6FZtCv7ZZx1
	 LYr6D7seUEx8df2Uu4hthtAY36O3LDZ8eU2cmnjvqT38i2XhFf4IzfUopGdZmT+Tcj
	 mmDhnhHGosQxg==
From: Mattijs Korpershoek <mkorpershoek@kernel.org>
Date: Fri, 02 Oct 2026 11:39:37 +0200
Subject: [PATCH v6 1/2] dt-bindings: phy: Add sa8255p USB PHY
MIME-Version: 1.0
Message-Id: <20261002-phy-qcom-qmp-usb-8255-v6-1-bb7dfc5636b4@kernel.org>
References: <20261002-phy-qcom-qmp-usb-8255-v6-0-bb7dfc5636b4@kernel.org>
In-Reply-To: <20261002-phy-qcom-qmp-usb-8255-v6-0-bb7dfc5636b4@kernel.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Manivannan Sadhasivam <mani@kernel.org>
Cc: Maxime Ripard <mripard@kernel.org>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Mattijs Korpershoek <mkorpershoek@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2837;
 i=mkorpershoek@kernel.org; h=from:subject:message-id;
 bh=dMdsEeC6kiAPcd6ogrL89hvZoqetjO2ex9YRuS1bgk4=;
 b=owEBbQGS/pANAwAKARkNHbRmThk1AcsmYgBqv3vva3uDB2eDs8PzHLBuzbBSM6nWxqfUiXRsD
 PawuZv1JlGJATMEAAEKAB0WIQQu6UKnth9qvlMTrQAZDR20Zk4ZNQUCar977wAKCRAZDR20Zk4Z
 NTc9B/9f5U20NOJ2fqnvNIh0JHdASSPzuyExHYeJam9O1UJMn850H+HACrvmZjO9Ksz/nLy3Moj
 pL5vJkb7LJpslKaUcu+IBBonQ+a1Pf2RRyGinD9KNmZqIevznwkx5qswxF4JN1JaAPUDur+Cp87
 K34L4ohSysQu9rwEB/FOBIbsE7vP9lXh7z3/wmRAln0N1nOmC93R2GzmANIPVEshg4YUQJ0HejL
 2Kc4i1DXprOJtowxeVK9mbTAyRXZj/PQfkygc3ESmjqlaPCBZpnDF1YdW/0mCyCoB9SPXypxfvV
 x26ajMI0hX44qMeRiViqakHx6AH145V+WrGE4tFXqOzbf142
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

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
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
