Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 482AA606A31E
	for <linux-phy@archiver.kernel.org>; Tue, 27 Oct 2026 13:00:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=qpREQiA0;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=k+r+1H0L
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=9dd3lPckBaarL1aYlurerm6HInVEDaCuHv3NR8DDjzQ=; b=qpREQiA0kuojdAPcGD8gUhdkNz
	SE+Elh8NDp8G3bRQW6r4LM3pSlGSYflgTnwMY+4k7lRgJQmnJIhKDMm4gCOG0sU/NRtUU6jtTMz+A
	yIxqrMPdS0i7aPsWdhiVf0RaVUcOrdQO/DQEAhvzF1ofnrtpj1zfdKMi05IGWyXv/eWAK29nR06Ss
	bSdwcSRMlIFTfGD3/bmjBr7VREdPApzOgArgMgd0/10+Z50C40vNZMFof7d6l4kyUS6eHgnP5pFLd
	Vvb2c+afGyjeYmSqDdyeJ7H+A81LH0Rt/f5dsLlNMMHgtr6Y6a7PYHsoP8QgM3eH/X9E6eu+vwqXK
	H0/Xo4kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLgml-00000004jkP-00nO;
	Tue, 27 Oct 2026 13:00:15 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLgmj-00000004jjw-00VR
	for linux-phy@lists.infradead.org;
	Tue, 27 Oct 2026 13:00:13 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 694EF60052;
	Tue, 27 Oct 2026 13:00:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9DBDC1F031E2;
	Tue, 27 Oct 2026 13:00:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793106012;
	bh=0qfi8LcTEIAhkZTnzEbOof9THS6tVPWeE7DMnY79UBA=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc;
	b=k+r+1H0LTEsR8B+HvIaup/Yslb8W4H2jnN45ufxzHytun0x/DjH7LdztmxnBVJMcF
	 lVz8VYLjkVACwjVdjnI7AALvWLEwhGjjWs0p1Zjww17aoxq14JcXigxH6kQPpZQhiW
	 cDTKfdk7J7D86IS9OCO3VmILiJyCS1+wbJmRoxJAvIyvvmWA+O2gNwZF2+4FXF5y3N
	 z/ZdCsPLU15YwcpOxUP6C0Z8hgsg3a275CTIKr9Lna0QvuL3YjRllfHJu2OpmFg2mS
	 yrarjV2BvP9qqD3ntuvBPKljmLrniucPljs4enZPGtwEB7I3Ik4xcHvBiTTLOiBEbO
	 5/jKMh2LgqKAA==
From: Mattijs Korpershoek <mkorpershoek@kernel.org>
Date: Tue, 27 Oct 2026 14:00:04 +0100
Subject: [PATCH v4 1/2] dt-bindings: phy: Add sa8255p high-speed USB PHY
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261027-phy-qcom-snps-femto-v2-8255-v4-1-874023825a63@kernel.org>
References: <20261027-phy-qcom-snps-femto-v2-8255-v4-0-874023825a63@kernel.org>
In-Reply-To: <20261027-phy-qcom-snps-femto-v2-8255-v4-0-874023825a63@kernel.org>
To: Vinod Koul <vkoul@kernel.org>, Manivannan Sadhasivam <mani@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Mattijs Korpershoek <mkorpershoek@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2826;
 i=mkorpershoek@kernel.org; h=from:subject:message-id;
 bh=WXXiGf7OrKyfO4PIIHouxwoXRO3LNHcYNvvxcogFCYs=;
 b=owEBbQGS/pANAwAKARkNHbRmThk1AcsmYgBq4KBXj6yJFXLiGksX0GngPV8JNaccjk0/2ijx1
 zX1EScgugqJATMEAAEKAB0WIQQu6UKnth9qvlMTrQAZDR20Zk4ZNQUCauCgVwAKCRAZDR20Zk4Z
 Ndj7CADq9o8GmPw9W3kx8sBid8MN9/oWsNoON6yz0rZhCRWYnavrQWgzsYljgyq4aVcuYaIFMP4
 +d3b8ViuUuiJcBmatEPTzqT9xMoz/OAvTv3SfEt9BMEvFxayzZEtExok+oNcOxOkulEGwLdaPMy
 GbzqKUN4BxKjSJ9zPTVQCLXhDgyzaLmDQCCcKLImE8JsqMldc2yDo3IFtfB8/e6BI4nCZ99KO2I
 ZytZYNn6/hSJrYk4zsyE/GUsOAtLXc7dSV96MOOQe7vLdx19maQ2ITuRBMCYQRhWCd73jWZmcU2
 RNI2Xlnv0SB7qlo9K0WnlsGqSxUzxJTioTwu2AWxEq86qnoW
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
X-Spam-Status: No, score=-17.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
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
