Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7C5AC531C9
	for <linux-phy@archiver.kernel.org>; Fri, 24 Jul 2026 13:53:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zaXCjukfy/71CfMYUfIAbuTMqbowBujZK3ky83UzM7g=; b=42Vn8ul3ygwzp6
	KpE6unLnYGaCQayzU1UtZ9aQmek9Ahfo7RULZ9183iDG18bvq7VJwlhSPIgkVZbH1manoO45UIePN
	OE3u4rQSTK1O7kZnAJBZh+E6eA3OklgCQ8d5Vqd1uQEgZIICsVD4Vgc3bonOfysKTJ4AQJPT41jK5
	1DYI3TfmqX0Cy0IRseNeUzH3iJBp2CzamtsRfQbCfAC8zKMKm024w435CrC8zxHTVrQqfDWyTMcft
	9+Y+Q28inWyWW5KyE9qI6pc+41SQnKbc9HEiGjS2XwNQ1CzCpwioOf482G6li3IkNyVwiHlaIqPPB
	2s2silUlV02NL32xFP9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnGLR-0000000GWfc-0WjO;
	Fri, 24 Jul 2026 13:53:45 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnGLP-0000000GWep-2WqS
	for linux-phy@lists.infradead.org;
	Fri, 24 Jul 2026 13:53:43 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id F03C3600AA;
	Fri, 24 Jul 2026 13:53:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 126FA1F00A3A;
	Fri, 24 Jul 2026 13:53:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784901222;
	bh=6BZzUCN9fW6+krujoO8axKf9d6b7Wf+lqhUR4UVRjIQ=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc;
	b=ggBQg7dHU6WDzYuwr9ebf9dNEkeM7yaxwc1yNM3DmxvRy1Hjpjk2RwG+RtY0e4bwv
	 JInTAQ/ou+KKTCkWfa+jeSPTgfCKe5/gIzULoiQe0YA5eTQvaFwKoP6O5LQLe2LoE3
	 WMPqGKOPTFoqd98eqPLvwNiB9MYI+o9FHv8qqpNX9K3pDcAt/Ha1TrCyxErTCtgW0b
	 VxEmnBq4geZRKmFMxfELj9yt+r30tdIcaSNgV/RyMks1hnsSSsYFNQ8Uu3vRD7Cf0S
	 9CUj2IzFlGriDDMDaFZTBU0ZoTbKXI0rIKIRze6W7d+7cJWfziqOyk8hhVORo8xfNt
	 n9GFcn66Vuh4w==
From: Mattijs Korpershoek <mkorpershoek@kernel.org>
Date: Fri, 24 Jul 2026 15:53:26 +0200
Subject: [PATCH v4 1/2] dt-bindings: phy: Add sa8255p USB PHY
MIME-Version: 1.0
Message-Id: <20260724-phy-qcom-qmp-usb-8255-v4-1-a90014fab476@kernel.org>
References: <20260724-phy-qcom-qmp-usb-8255-v4-0-a90014fab476@kernel.org>
In-Reply-To: <20260724-phy-qcom-qmp-usb-8255-v4-0-a90014fab476@kernel.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Maxime Ripard <mripard@kernel.org>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Mattijs Korpershoek <mkorpershoek@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.16-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=2166;
 i=mkorpershoek@kernel.org; h=from:subject:message-id;
 bh=uuWTtc/SqFOv3AXxjSOp2M/zeX/56oTFjsx+ZiFX+1s=;
 b=owEBbQGS/pANAwAKARkNHbRmThk1AcsmYgBqY25gppoXfY1d2PerxT0wu2LqACI8pBTBlFzBb
 Kf8r0ItQEOJATMEAAEKAB0WIQQu6UKnth9qvlMTrQAZDR20Zk4ZNQUCamNuYAAKCRAZDR20Zk4Z
 NUDiB/9B8MDU6AVWQ6cc3w62QUtPZJsDBg5tes3llDBn74a7HB02yIaPfetCqofZ9p/VYxqYra9
 CXuAUvrvPKm18AurGX6AUPxxpaE6Bj1vUkl37MbH6ogtIcn74Fctpep147N+wH0yMuQ2AJTNQW2
 jIfTdeb15rX3i+9OjSzwZMEu5ev9YfrivHIFkACdKSafQegpK5tOzSw/IEW+26xR75fXsmNjjdh
 u0eFBJGbIs9Hg6LiXAwwVG/6AlLzqtrZVq55rpmu4fYnHQ4ZCBmdhdbdRh130JMcxi2/QfNcuIY
 j7nE8jCWXAt2mXj0xucWFxDXh6MujDYxQKCPpm4NpmsV8Tf1
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
the GDSC, resets and TLMM (GPIOs)

Add a new binding for the for the Qualcomm QMP Super Speed (SS) UNI PHY
found in SA8255P.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Mattijs Korpershoek <mkorpershoek@kernel.org>
---
 .../phy/qcom,sa8255p-qmp-usb3-uni-phy.yaml         | 52 ++++++++++++++++++++++
 1 file changed, 52 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sa8255p-qmp-usb3-uni-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sa8255p-qmp-usb3-uni-phy.yaml
new file mode 100644
index 000000000000..c09829c0f2d1
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
+        phy@88e8000 {
+            compatible = "qcom,sa8255p-qmp-usb3-uni-phy";
+            reg = <0x0 0x088e8000 0x0 0x2000>;
+            #phy-cells = <0>;
+            power-domains = <&scmi12_pd 2>, <&scmi12_pd 3>;
+            power-domain-names = "transfer", "core";
+        };
+    };

-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
