Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD04BC36008
	for <linux-phy@archiver.kernel.org>; Fri, 21 Mar 2025 09:10:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GfvhkGaIoQ2OavugDwGeS/LWjUkcHpW3ZDRPouMiZ3s=; b=AsXTBACTMfBqKy
	UZ8GX7aE5rK1MQ3U1Lh0TbDou/QOcgomr6pkfdoVQ871K3tUFhKb+7kI58m69gLLi3Xyfk79w42Rl
	VNTBwcypdWDVZSBUcht/p41pJkwzXSPwpKFVzx+tsTorZrxg/l3GyZTzMSO7oTPDIa9/STCLnIZxW
	alXfPsy7DtZdtz/OS5QW8EFNzi3tg51WYjelHUhuAoixMu2ZCPZ7xinH/MgRCZis1QVP618kgksFI
	6YVXzm1WgIPC/e35v1q/DXNj64RNnDBH3kmBzvGnFjXqh8kKw1ufRaxoTGgmgNX0E4PruSXN5OXWV
	MrB+C9bHWYxnWwD8bkgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tvYOA-0000000EKeq-2guw;
	Fri, 21 Mar 2025 09:10:02 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tvYO5-0000000EKZT-31EE
	for linux-phy@lists.infradead.org;
	Fri, 21 Mar 2025 09:09:59 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 83CB443AFF;
	Fri, 21 Mar 2025 09:09:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1A53C4CEED;
	Fri, 21 Mar 2025 09:09:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742548195;
	bh=AEpVOJojY5LncFCAY2kbkMkameRzofqryfeEZSY750U=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=CAxmlf5Xa/qA7XQ7NMiaqUlpR4pgwlT8RLoasDkn0wFfMEU5taRStXNCd1Ux6azl5
	 rfx+i7od/apmQh954paJ3W9m57w8yck94UpnvCRltsWykTH/ktIi5ar1JrvX2gn8AL
	 6rNRfQekHVNvUAyme14/nu2DMvsQowKh5BA7gUWLw47tl50EGbX4ksMUxZ4PCaATZA
	 ozUq1uo+m7qNMjQ0WNUCfZj20JL8QjmWyrMvJYRx24uf+e4AoY2f2WSH+SLkmYShqw
	 uz3xIxnRhO9H2L1xrYUry7Lro8o2aWDPZfDVBeMHaDfNFwadl4e8yd6OgDPBFUcFJK
	 8YaeNVGm5NPVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A40EC36000;
	Fri, 21 Mar 2025 09:09:55 +0000 (UTC)
From: George Moussalem via B4 Relay <devnull+george.moussalem.outlook.com@kernel.org>
Date: Fri, 21 Mar 2025 13:09:50 +0400
Subject: [PATCH v5 1/6] dt-bindings: phy: qcom: uniphy-pcie: Add ipq5018
 compatible
MIME-Version: 1.0
Message-Id: <20250321-ipq5018-pcie-v5-1-aae2caa1f418@outlook.com>
References: <20250321-ipq5018-pcie-v5-0-aae2caa1f418@outlook.com>
In-Reply-To: <20250321-ipq5018-pcie-v5-0-aae2caa1f418@outlook.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Nitheesh Sekar <quic_nsekar@quicinc.com>, 
 Varadarajan Narayanan <quic_varada@quicinc.com>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
 Bjorn Helgaas <bhelgaas@google.com>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-pci@vger.kernel.org, George Moussalem <george.moussalem@outlook.com>, 
 20250317100029.881286-2-quic_varada@quicinc.com, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Sricharan Ramabadhran <quic_srichara@quicinc.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1742548192; l=2799;
 i=george.moussalem@outlook.com; s=20250321; h=from:subject:message-id;
 bh=YO1GatpnBlBF8JPXKfKBWyGdUDfdpI2iVibaLGfHwaM=;
 b=G3ZMTZMovwOmJ7mZJScYzhYZC9yCXFTseqlRVRwFCeheCUNU6QbHC2PW4Cvjf9KPhT96gDouX
 7VWIvwdHuOmCZvZ/YBiZAoP7g+ZwzunvqDtklP/lgmyKKqHmmTo8Noz
X-Developer-Key: i=george.moussalem@outlook.com; a=ed25519;
 pk=/PuRTSI9iYiHwcc6Nrde8qF4ZDhJBlUgpHdhsIjnqIk=
X-Endpoint-Received: by B4 Relay for george.moussalem@outlook.com/20250321
 with auth_id=364
X-Original-From: George Moussalem <george.moussalem@outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250321_020957_804682_60953107 
X-CRM114-Status: UNSURE (   7.08  )
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
Reply-To: george.moussalem@outlook.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

From: Nitheesh Sekar <quic_nsekar@quicinc.com>

The IPQ5018 SoC contains a Gen2 1 and 2-lane PCIe UNIPHY which is the
same as the one found in IPQ5332. As such, add IPQ5018 compatible.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Nitheesh Sekar <quic_nsekar@quicinc.com>
Signed-off-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>
Signed-off-by: George Moussalem <george.moussalem@outlook.com>
---
 .../bindings/phy/qcom,ipq5332-uniphy-pcie-phy.yaml | 57 +++++++++++++++++++---
 1 file changed, 49 insertions(+), 8 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,ipq5332-uniphy-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,ipq5332-uniphy-pcie-phy.yaml
index e39168d55d23..580651eba864 100644
--- a/Documentation/devicetree/bindings/phy/qcom,ipq5332-uniphy-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,ipq5332-uniphy-pcie-phy.yaml
@@ -11,26 +11,24 @@ maintainers:
   - Varadarajan Narayanan <quic_varada@quicinc.com>
 
 description:
-  PCIe and USB combo PHY found in Qualcomm IPQ5332 SoC
+  PCIe and USB combo PHY found in Qualcomm IPQ5018 & IPQ5332 SoCs
 
 properties:
   compatible:
     enum:
+      - qcom,ipq5018-uniphy-pcie-phy
       - qcom,ipq5332-uniphy-pcie-phy
 
   reg:
     maxItems: 1
 
   clocks:
-    items:
-      - description: pcie pipe clock
-      - description: pcie ahb clock
+    minItems: 1
+    maxItems: 2
 
   resets:
-    items:
-      - description: phy reset
-      - description: ahb reset
-      - description: cfg reset
+    minItems: 2
+    maxItems: 3
 
   "#phy-cells":
     const: 0
@@ -53,6 +51,49 @@ required:
 
 additionalProperties: false
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,ipq5018-uniphy-pcie-phy
+    then:
+      properties:
+        clocks:
+          minItems: 1
+          maxItems: 1
+          items:
+            - description: pcie pipe clock
+        resets:
+          minItems: 2
+          maxItems: 2
+          items:
+            - description: phy reset
+            - description: cfg reset
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,ipq5332-uniphy-pcie-phy
+    then:
+      properties:
+        clocks:
+          minItems: 2
+          maxItems: 2
+          items:
+            - description: pcie pipe clock
+            - description: pcie ahb clock
+        resets:
+          minItems: 3
+          maxItems: 3
+          items:
+            - description: phy reset
+            - description: ahb reset
+            - description: cfg reset
+
 examples:
   - |
     #include <dt-bindings/clock/qcom,ipq5332-gcc.h>

-- 
2.48.1



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
