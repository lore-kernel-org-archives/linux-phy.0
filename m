Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC763C61DBE
	for <linux-phy@archiver.kernel.org>; Tue, 25 Aug 2026 12:37:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UH/kw6tu3MLY7Yorci7gkYegTIfII9aXfsV8CC95OWI=; b=ZXVr7Bz8e3ZGcN
	JHyct+Ug9ltLoDYmPHyIzkU1epT/Y7NyUt16MpiTv3Z2PpPDabHvN7O7xFpxsxKhsB9xmHGf3PI4m
	/UbRTsBqIzgcA7iLmaUVWbS/niSed7qctEZAytsm3Pq3z2F/qzEjZqDAREqAETDKZvatWvIl49qpF
	9hFRQPLoLhJkRCxG1DPEwYy8G/byOruLytGXueyuer8Q6AGzecXdSEKOUA3g4C+jFOhaZwd48wXss
	dssT/POLLE1pwmpPHyeb8sP5YmUdVcgOEo8i4XZXNE6BGxuGpcd9/yaO5VxRoZ9Z43fGS+zDTBBu0
	8yEtWmrSgWIjG2OrSVgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyqPH-00000000n82-2hhd;
	Tue, 25 Aug 2026 12:37:35 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyqPF-00000000n6j-3rsa
	for linux-phy@lists.infradead.org;
	Tue, 25 Aug 2026 12:37:34 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 775A04401B;
	Tue, 25 Aug 2026 12:37:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0B9A3C4AF09;
	Tue, 25 Aug 2026 12:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787661453;
	bh=tRYW4jdFf4FVjtP/xrG0RKuqoRzNxBH9MyVDZQmNXqI=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=OefE+pqU1/0Dx42MhT9fMWu4rKjJGzSXWE0y41uMVok+J6tUIGwOlI8IGOUELqTaW
	 sSdkzvbW7RxCIpAg3258o13dDg5Mc90Iz0s32bCIxqsL7RO42asdzzit+3WOCeh1xU
	 iVupKXPnyxGZ/yLQWqVTJhUXmV/XR+vj6jym6hgScsS4WSjKYqsHOAT2Nf8No/l7m3
	 DbbARUneyr8FnGdiOcPPIxuclCB9/yJG+GsM4FBjqp8trYbb3ZQcXV5kcooqqKzSzG
	 8riV6N2J230MW2kdE2jO2hTQSg5ejHtNoCbBfAGVgywG2fprYrSSDRV3NUmXUQrMby
	 OmK/ZPlxVuFdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8615C61DBD;
	Tue, 25 Aug 2026 12:37:32 +0000 (UTC)
From: George Moussalem via B4 Relay <devnull+george.moussalem.outlook.com@kernel.org>
Date: Tue, 25 Aug 2026 16:37:19 +0400
Subject: [PATCH v3 02/12] dt-bindings: phy: qcom,ipq5332-uniphy-pcie-usb3:
 Document the IPQ5018 USB3 PHY
MIME-Version: 1.0
Message-Id: <20260825-ipq5018-usb3-v3-2-39be0955a6aa@outlook.com>
References: <20260825-ipq5018-usb3-v3-0-39be0955a6aa@outlook.com>
In-Reply-To: <20260825-ipq5018-usb3-v3-0-39be0955a6aa@outlook.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Praveenkumar I <praveenkumar.i@oss.qualcomm.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>, 
 Nitheesh Sekar <quic_nsekar@quicinc.com>, 
 Wesley Cheng <quic_wcheng@quicinc.com>, 
 Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-usb@vger.kernel.org, George Moussalem <george.moussalem@outlook.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1787661450; l=1847;
 i=george.moussalem@outlook.com; s=20250321; h=from:subject:message-id;
 bh=X92ejnhwDPtga79pHvMyqYjnXONSziO0EJioVCS0ABA=;
 b=m2T5qx7FPQMNTLk6lhedEpBLyrSqTSMrw5CpPDaxTCtZaJUi54zkvLB+c4zokXIz766afBBvE
 7EenPiSHMiUCWe/aRlPY1IDzvQQ59R5jdMNVESIXmlesBZs0nsu2Y2F
X-Developer-Key: i=george.moussalem@outlook.com; a=ed25519;
 pk=/PuRTSI9iYiHwcc6Nrde8qF4ZDhJBlUgpHdhsIjnqIk=
X-Endpoint-Received: by B4 Relay for george.moussalem@outlook.com/20250321
 with auth_id=364
X-Original-From: George Moussalem <george.moussalem@outlook.com>
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

From: George Moussalem <george.moussalem@outlook.com>

Describe the USB3 PHY found in the IPQ5018 SoC so add the compatible
string for it as well as the required resources (clocks and resets).

The PCIe and USB physical pads are muxed and selection is done via a
control register in TCSR. By default, PCIe mode is selected, hence make
the property for USB mux selection required.

In addition, the PHY requires a 5V supply for USB3 mode operation.

Signed-off-by: George Moussalem <george.moussalem@outlook.com>
---
 .../phy/qcom,ipq5332-uniphy-pcie-usb3-phy.yaml     | 24 ++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,ipq5332-uniphy-pcie-usb3-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,ipq5332-uniphy-pcie-usb3-phy.yaml
index 0d9d0fb405b6..1cd5392a1a0f 100644
--- a/Documentation/devicetree/bindings/phy/qcom,ipq5332-uniphy-pcie-usb3-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,ipq5332-uniphy-pcie-usb3-phy.yaml
@@ -18,6 +18,7 @@ properties:
   compatible:
     enum:
       - qcom,ipq5018-uniphy-pcie-phy
+      - qcom,ipq5018-uniphy-usb3-phy
       - qcom,ipq5332-uniphy-pcie-phy
 
   reg:
@@ -93,6 +94,29 @@ allOf:
       required:
         - num-lanes
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,ipq5018-uniphy-usb3-phy
+    then:
+      properties:
+        clocks:
+          items:
+            - description: usb3 pipe clock
+            - description: usb3 cfg ahb clock
+        resets:
+          items:
+            - description: usb3 phy reset
+        "#clock-cells":
+          const: 0
+        "#phy-cells":
+          const: 0
+      required:
+        - vdd-supply
+        - qcom,phy-usb-mux-sel
+
   - if:
       properties:
         compatible:

-- 
2.53.0



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
