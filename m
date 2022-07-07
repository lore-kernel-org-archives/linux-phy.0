Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D07A5CCA49C
	for <linux-phy@archiver.kernel.org>; Thu,  7 Jul 2022 13:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Si4AXs52okA2f2N8VjdVmkgt3zHjUAV8Fn8QR9g4CZ4=; b=xHa0D8jjv6s9un
	QYtW6ifUsLdr5OjA7ApMtf6YL16xORThgkmDwvo69gJydVg3n31OiAS1LWnvO3tWbglJBzHFhzJqY
	ANQTlX+ulS+813FciHIVmPSB/u//N9tT3rlM3qCaWdvwnivyt/1JOg0/jeYsYMCK7+tc9KUdTlT8E
	ND6nl8ghaspGFP441Ntje7AA+bhTKID1iexetgcgg5zkR17UdGkv6EzCU7T/cWept4YvHafYcxqBk
	drNG2SwGF5cz3ccE1duKFAqaX3TZmfSYpvSDPp8AlMT3lr7muM3y7S3Ze37819+T8OGU7LZ8o2Y8O
	r+9wNi9OWCOmlYBRjryQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9RrR-00GL18-0K; Thu, 07 Jul 2022 13:48:05 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9RrI-00GKqw-Dm
	for linux-phy@bombadil.infradead.org; Thu, 07 Jul 2022 13:47:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=Cdp3HhMRU3PiTuxMsV4WrxCbYvLDbf+BImxp3y7DuBA=; b=oV79xj1iLOq854fPf5aah+F/JP
	ovIn+rvvLubdgHFIA62ehG60I+q5PY0Cr4+iidAhbDi7fT91y0229RfDX4iHmsPIpbkj9ALYK4ECx
	uq0gCFGY3GZL6ZqC9DENIHexR7pUV5URBxZBP9dq10X10crfhQwFTVEvVPeoW6XN8LAH2Vbx0Pz9Q
	hW+tK9tCbNja9ir37AxIvpD0G9KZci9KkT45L/tfs9q0XI/AlCyu5sv9Bui0tjZ7G8FZOGEWsas9r
	33GPfIxxLq/j4vP/DnDFdwwo0Xh5Fac8+dTcSIAfU8H0bMvSHSfcpuCxY7BAzhC3CI+GZ26OzTEFi
	UIu8cv8Q==;
Received: from ams.source.kernel.org ([145.40.68.75])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9RrD-001IQF-EZ
	for linux-phy@lists.infradead.org; Thu, 07 Jul 2022 13:47:54 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 353DFB82224;
	Thu,  7 Jul 2022 13:47:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3A746C36B15;
	Thu,  7 Jul 2022 13:47:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657201660;
	bh=+nX7/jc0kNZ7/dUGj7tAIPA+Lg7K249hqVXDKEBqrwo=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=g/Y+MVaO9LWF8kzLoO0ME4bJ3cJ+V9yqiwwbIk8MpU6bUXkwjmnubk8Khc40M3g1r
	 4B3YHFpphtohycBTZcu5WDcGtiqDYJLr6CQcvBmL9gtPUXjDRPeyIFwnQXwhTB8w9o
	 moG8acO8cKx7aPRbL7msMCDRQd7BrHZwtLeiqFVPRu3pvyeavFCTr4YrMoQnrsVjpf
	 lvPTSr4JvX2IG2bztsLw5B4PkjcVYfhljGbSPOJw7+fz7qqlfxtD2UFUDgxnUrk0Pl
	 XnpQhkj2s4BBiZfISBXVxSDqTBgqgNCaTuEHXkjaQBD6ROSEQfwyb7pBNkDOFmjBTD
	 rywzXmncYam2A==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1o9Rr5-0000xJ-6Q; Thu, 07 Jul 2022 15:47:43 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH v2 18/30] dt-bindings: phy: qcom,qmp-ufs: add missing child node schema
Date: Thu,  7 Jul 2022 15:47:13 +0200
Message-Id: <20220707134725.3512-19-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220707134725.3512-1-johan+linaro@kernel.org>
References: <20220707134725.3512-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220707_144752_135139_BECE0E35 
X-CRM114-Status: UNSURE (   9.52  )
X-CRM114-Notice: Please train this message.
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

Fixes: ccf51c1cedfd ("dt-bindings: phy: qcom,qmp: Convert QMP PHY bindings to yaml")
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 .../bindings/phy/qcom,qmp-ufs-phy.yaml        | 72 +++++++++++++++++++
 1 file changed, 72 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-ufs-phy.yaml
index 0e76256e5636..6e3c186b9972 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-ufs-phy.yaml
@@ -68,6 +68,19 @@ patternProperties:
   "^phy@[0-9a-f]+$":
     type: object
     description: single PHY-provider child node
+    properties:
+      reg:
+        minItems: 3
+        maxItems: 6
+
+      "#phy-cells":
+        const: 0
+
+    required:
+      - reg
+      - "#phy-cells"
+
+    additionalProperties: false
 
 required:
   - compatible
@@ -136,6 +149,65 @@ allOf:
             - const: ref_aux
             - const: qref
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,msm8998-qmp-ufs-phy
+              - qcom,sc8280xp-qmp-ufs-phy
+              - qcom,sdm845-qmp-ufs-phy
+              - qcom,sm6350-qmp-ufs-phy
+              - qcom,sm8150-qmp-ufs-phy
+              - qcom,sm8250-qmp-ufs-phy
+              - qcom,sm8350-qmp-ufs-phy
+              - qcom,sm8450-qmp-ufs-phy
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
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,sc8180x-qmp-ufs-phy
+              - qcom,sm6115-qmp-ufs-phy
+    then:
+      patternProperties:
+        "^phy@[0-9a-f]+$":
+          properties:
+            reg:
+              items:
+                - description: TX
+                - description: RX
+                - description: PCS
+                - description: PCS_MISC
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,msm8996-qmp-ufs-phy
+    then:
+      patternProperties:
+        "^phy@[0-9a-f]+$":
+          properties:
+            reg:
+              items:
+                - description: TX
+                - description: RX
+                - description: PCS
+
 examples:
   - |
     #include <dt-bindings/clock/qcom,gcc-sc8280xp.h>
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
