Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60959C44536
	for <linux-phy@archiver.kernel.org>; Wed, 22 Jul 2026 13:45:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PhB9DjVOD0AovhavMeRiw15KnlIJ/oGEzXYS5XC2QIE=; b=RQSkhpHqt5pqje
	o4TJdLHHefNktlJGbpGGr8GeN4/fxlZXobNy3pghoa2dKQjfF4IZ3G9qNTDvCaWY4yrioa3ugwI/m
	x/FFDnPPclG1ecxl3ayHSTNhNIoEk+eTQDzcRac1IoN2h6x9nOVfMUszb5zwcUn4IM2icLu9TrJJz
	WvoSLWzkJhMI/GLsljaUYNLlg3lXCL/WjEd+b8iG6ig7zxF6wFRkCDASWjEMbunJtGzfesoIVR72G
	3w1cNtIzQsLYSiBql75LAs37L7c7lctQKZgaX3AaXZrsvshbZNII1vyoiF8cdJ3hLnPhrw57DMi1X
	DMBJEFf7PGJ20TyloZ4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmXGo-0000000BwOO-0MmJ;
	Wed, 22 Jul 2026 13:45:58 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmXGn-0000000BwNs-0OxV
	for linux-phy@lists.infradead.org;
	Wed, 22 Jul 2026 13:45:57 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id C806740AD9;
	Wed, 22 Jul 2026 13:45:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 378381F000E9;
	Wed, 22 Jul 2026 13:45:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784727956;
	bh=42bI6S7OB18sBS+H73AC5+tOmPTkN6hTu7pc311WTww=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc;
	b=H7UPShWPfjwciQQKgtRxBnt5/u3Rx+FGHPO6bxLcC/t3OFi23e3OxOP5UdiZLJ8AR
	 3xCI0RwAc6Io+juDmHE76DO8AO+F/qR95/FCGexEFng94rDt5fVsGCdp6BTFiFeP76
	 OqPRNArmRnb5ahRp6GoYGyy9I12QJwYqaYH6tpEi8RPwX0swH0ftv4+ptD4/zg2PkJ
	 02/ieZA3+Km2axjKUyrIBH8N2wtk3gqhZjNJSxTiPzhhAJm80kJECkn29gIIYaOwSQ
	 MNvxnQfTAKpIECbsGBdL3q0srsTDRXYyfO6+zSnCDqN7Gjqy8UbLKwJv9faTmMV0Nt
	 kK9T3kiPiB6yw==
From: Mattijs Korpershoek <mkorpershoek@kernel.org>
Date: Wed, 22 Jul 2026 15:45:44 +0200
Subject: [PATCH v3 1/2] dt-bindings: phy: Add sa8255p USB PHY
MIME-Version: 1.0
Message-Id: <20260722-phy-qcom-qmp-usb-8255-v3-1-e789070b48f7@kernel.org>
References: <20260722-phy-qcom-qmp-usb-8255-v3-0-e789070b48f7@kernel.org>
In-Reply-To: <20260722-phy-qcom-qmp-usb-8255-v3-0-e789070b48f7@kernel.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Maxime Ripard <mripard@kernel.org>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Mattijs Korpershoek <mkorpershoek@kernel.org>
X-Mailer: b4 0.16-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=2094;
 i=mkorpershoek@kernel.org; h=from:subject:message-id;
 bh=72+93u2x1FJX/Wrk9jq2RGNs2uk35TLneVVzVanyQd8=;
 b=kA0DAAoBGQ0dtGZOGTUByyZiAGpgyY+ipwsLK3Uo0/lpxqy9xNmBgqkcqJja+rHzntzS0ksPl
 okBMwQAAQoAHRYhBC7pQqe2H2q+UxOtABkNHbRmThk1BQJqYMmPAAoJEBkNHbRmThk1VRkIAOYF
 fKH6MVhvcIRn0U0G6hFmzKVuKqcKtr9KqrQiGrIUVIxFK7gQhSQfma6kGSpi8l6h63H7wCxmNdN
 iY0mnt+Lu1pLO03bwTZO2vbFGkpWeUDrfPYaenjNCnI9dyUY8vu77W1Em/x3vVwnp65zEh/d5E0
 XnSfIp+c7eMZXRTk//iEbEj15NpK4+Iqh1Ix1huUOJXV049Mss4Gx9ygZ54AwY7HS7FdWgXoX5h
 wYqE7l8Mx6v1Y1b8E2ef11xOrTacRwCzvTleHl+IgbZY5NSuI32/XqrDujt4xEe4fKsJxgEpXn5
 sCi4cgwmIa+v5ZORng3tlA/a75VpXybDhqPfrog=
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

Signed-off-by: Mattijs Korpershoek <mkorpershoek@kernel.org>
---
 .../phy/qcom,sa8255p-qmp-usb3-uni-phy.yaml         | 52 ++++++++++++++++++++++
 1 file changed, 52 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sa8255p-qmp-usb3-uni-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sa8255p-qmp-usb3-uni-phy.yaml
new file mode 100644
index 000000000000..d274d500fc9c
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
+unevaluatedProperties: false
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
