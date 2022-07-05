Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28007C433EF
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 09:51:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DsDUJtPDJyruqC+zX1arBh54k8jTynkpqny/x8TOlio=; b=xN1EibH8Yf3SfB
	jMky4D7JTXyDUTWFuLoEgzAV9yqk0iNrnbPGL7LvZGYasFeiey2/KZKC1a3IXnlI3Eb7i1IcUwqfa
	EdFLVQtr7qcoIzkVglkjOlMxfL2N8gUi7JndBfCPftzUR26YRt4Y7KNm8RHjp9ofZgBL88xFtaFPA
	qwjUmnKqkips+3ySt9DmgDcwHV4t9FIUZRB+/8u9kGTQbMaYUNQo8gtXlUEC1JOfSufpMhDy5/xSf
	cfPKVKlkK3Az99H/MnFZuBnE9KUKuZs6nYxMTmLQLzN9XB/kFVaQo7/Ho+EfTKx/HUBBk98WxhzSl
	kdsXOcWAaWE3zQPnh/cQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fDb-00GwUB-4x; Tue, 05 Jul 2022 09:51:43 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fB7-00GuVv-9N
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 09:49:14 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 6FEA761946;
	Tue,  5 Jul 2022 09:49:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1E43AC36B0D;
	Tue,  5 Jul 2022 09:49:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657014543;
	bh=O9KkrHVAnzuQAnWNP5LQhMy3imM3btu6fVBNuFDOHhY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=N13QWXPnsai1JxPCWabuUFUO8LdKjY+j+9WaMSySHoZwnRFzKm+XLZc5oXacl1+Jg
	 52NCvoGaBouaqt4RFZUtIpK7YVIOR+cOoxqEd5I62v9Q4ejT49nKw7FrkX9ylmB7hs
	 rM1skunEounUXKTWQM0z4cHhJ8zlprBwzZMClw4yIyBa/Tl726kTXVe68B26mZapiC
	 nIPpUNw16+hw1ezGy79dqkbZ/J0pnrHyflv2TGoau97EPTEoSsjlXrqg+jaByu/qeL
	 bSnSonxfRQfmzUjSvbp+H1dpb/Vc1fYT8PWywpe+cLNHi14snGv1dyr9X6/qcFFxam
	 lfOUCWvhjg96A==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1o8fB2-0004Xe-1m; Tue, 05 Jul 2022 11:49:04 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 17/43] dt-bindings: phy: qcom,qmp-pcie: add missing child node schema
Date: Tue,  5 Jul 2022 11:42:13 +0200
Message-Id: <20220705094239.17174-18-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220705094239.17174-1-johan+linaro@kernel.org>
References: <20220705094239.17174-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_024909_462967_E72655F5 
X-CRM114-Status: GOOD (  11.18  )
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

Add the missing the description of the PHY-provider child node which was
ignored when converting to DT schema.

Also fix up the incorrect description that claimed that one child node
per lane was required.

Fixes: ccf51c1cedfd ("dt-bindings: phy: qcom,qmp: Convert QMP PHY bindings to yaml")
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 .../bindings/phy/qcom,qmp-pcie-phy.yaml       | 88 ++++++++++++++++++-
 1 file changed, 85 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy.yaml
index ff1577f68a00..5a1ebf874559 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy.yaml
@@ -69,9 +69,37 @@ properties:
 patternProperties:
   "^phy@[0-9a-f]+$":
     type: object
-    description:
-      Each device node of QMP PHY is required to have as many child nodes as
-      the number of lanes the PHY has.
+    description: Single PHY-provider child node.
+    properties:
+      reg:
+        minItems: 3
+        maxItems: 6
+
+      clocks:
+        items:
+          - description: PIPE clock
+
+      clock-names:
+        items:
+          - const: pipe0
+
+      "#clock-cells":
+        const: 0
+
+      clock-output-names: true
+
+      "#phy-cells":
+        const: 0
+
+    required:
+      - reg
+      - clocks
+      - clock-names
+      - "#clock-cells"
+      - clock-output-names
+      - "#phy-cells"
+
+    additionalProperties: false
 
 required:
   - compatible
@@ -180,3 +208,57 @@ allOf:
       required:
         - vdda-phy-supply
         - vdda-pll-supply
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,sm8250-qmp-gen3x2-pcie-phy
+              - qcom,sm8250-qmp-modem-pcie-phy
+              - qcom,sm8450-qmp-gen4x2-pcie-phy
+    then:
+      patternProperties:
+        "^phy@[0-9a-f]+$":
+          properties:
+            reg:
+              items:
+                - description: TX lane 1
+                - description: RX lane 1
+                - description: PCS
+                - description: TX lane 2
+                - description: RX lane 2
+                - description: PCS_MISC
+    else:
+      patternProperties:
+        "^phy@[0-9a-f]+$":
+          properties:
+            reg:
+              minItems: 3
+              maxItems: 4
+              items:
+                - description: TX
+                - description: RX
+                - description: PCS
+                - description: PCS_MISC
+      if:
+        properties:
+          compatible:
+            contains:
+              enum:
+                - qcom,ipq6018-qmp-pcie-phy
+                - qcom,ipq8074-qmp-pcie-phy
+                - qcom,msm8998-qmp-pcie-phy
+                - qcom,sdm845-qhp-pcie-phy
+      then:
+        patternProperties:
+          "^phy@[0-9a-f]+$":
+            properties:
+              reg:
+                maxItems: 3
+      else:
+        patternProperties:
+          "^phy@[0-9a-f]+$":
+            properties:
+              reg:
+                minItems: 4
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
