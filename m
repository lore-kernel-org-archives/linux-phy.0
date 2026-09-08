Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29ADDC79FAE
	for <linux-phy@archiver.kernel.org>; Tue,  8 Sep 2026 09:41:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p8ZmvI8eYlrZ2VbYvdzmuf2vLT5muqh8NiVhzlnZh48=; b=ONtB5KTwChocnp
	BbguKWbvJVqa3mCcaBf0jRT47LsQ7h7DEiBXB2tnVX0L1AVguT3BNL6t1ilyhmKfhrTvIPNl5T9Qf
	vTEmhVv/N/Ln3VgQFmdgI3s0Ti8chvxaam8eg+xZNDzlaJ58kTwdTeVM0maOESb0BQ3cYUrd/DiSB
	RS2ELTZ1vaMLoERms7LzekRahd8OEmCwl6KO2NNjIr/4CREuCYY33Phkhwc7m8CXKpzd3TPKP1ovr
	xCtKULI7NoYOxNNpWTXhhCnj5e+DDl8PC7TEADoRD3v1ZAmvfRd7fdMvqEKeVvczANz6r7KjCNxkl
	FevnYiWlKF1iF5jamBmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3sKz-00000008dsp-36PX;
	Tue, 08 Sep 2026 09:41:57 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3sKy-00000008dqx-2Cjx
	for linux-phy@lists.infradead.org;
	Tue, 08 Sep 2026 09:41:56 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id E148B43D20;
	Tue,  8 Sep 2026 09:41:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2487C2BD01;
	Tue,  8 Sep 2026 09:41:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788860515;
	bh=mVWzArhsIEDBJ9wiE1E60QfHignwoHWXX2KeGyQsvUE=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=Nn/z0Y/V9n/EpHDUTlGH/d9MvUWWu9y6hf8fvhpebsrmhyMvd5CDV9mvsgWEbwcQa
	 aG011T8aQKcIwDx0JchgcctQe86Fj+r/iwDlBEm1of3d8PmxGdpQYtcXv4oK+gdZ7q
	 vu5Hw+5/YcVDFaRuqE+SCHUZ93+prLrgo9+DuAG/domn+ExI13oyE590HJO39AL6io
	 +lRZwez48sg3YBJgPU8T3xqdo2W44N3NCxvOXJ869ONkwbP6TNfxOL3ZFCrAtuFcEV
	 OQ/Ij+oVzjP9cBgV01Dlo9dmhPH0ux/J9zXIuNuPsHMwavSzTTpf1ClfBYTXVRUDnq
	 CuzMFQsFnz/nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 965CDC79FA1;
	Tue,  8 Sep 2026 09:41:55 +0000 (UTC)
From: George Moussalem via B4 Relay <devnull+george.moussalem.outlook.com@kernel.org>
Date: Tue, 08 Sep 2026 13:40:54 +0400
Subject: [PATCH v4 01/13] dt-bindings: phy: qcom,ipq5332-uniphy-pcie:
 Document the IPQ5018 USB3 PHY
MIME-Version: 1.0
Message-Id: <20260908-ipq5018-usb3-v4-1-b789702f0695@outlook.com>
References: <20260908-ipq5018-usb3-v4-0-b789702f0695@outlook.com>
In-Reply-To: <20260908-ipq5018-usb3-v4-0-b789702f0695@outlook.com>
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
 Manivannan Sadhasivam <mani@kernel.org>, 
 Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-usb@vger.kernel.org, George Moussalem <george.moussalem@outlook.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1788860512; l=3216;
 i=george.moussalem@outlook.com; s=20250321; h=from:subject:message-id;
 bh=TqWnP3AC9DE1HL7njHHwCLpEe8r5+8+QRZEW4l8Wl84=;
 b=rVIhYL1zY84VxVREmCywegI2WeRUzTopjZCJlTxsroMvOs/QiM7ybKgi02klpu6I9dmxxhrkm
 sJvHvCB9GPHCunW0NOfPvtmz50S4yY0W4OI3sHypLF32IGItMLwUdGX
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

Describe the USB3 PHY found in the IPQ5018 SoC, so add the compatible
string for it as well as the required resources (clocks and resets).

The PCIe and USB physical pads are muxed and selection is done via a
control register in TCSR. By default, PCIe mode is selected, hence make
the property for USB mux selection required.

In addition, the PHY requires a 5V supply for USB3 mode operation.

Signed-off-by: George Moussalem <george.moussalem@outlook.com>
---
 .../bindings/phy/qcom,ipq5332-uniphy-pcie-phy.yaml | 44 ++++++++++++++++++++--
 1 file changed, 41 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,ipq5332-uniphy-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,ipq5332-uniphy-pcie-phy.yaml
index 6e9df81441e9..f59fa4e88866 100644
--- a/Documentation/devicetree/bindings/phy/qcom,ipq5332-uniphy-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,ipq5332-uniphy-pcie-phy.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/phy/qcom,ipq5332-uniphy-pcie-phy.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Qualcomm UNIPHY PCIe 28LP PHY
+title: Qualcomm UNIPHY PCIe and USB3 28LP PHY
 
 maintainers:
   - Nitheesh Sekar <quic_nsekar@quicinc.com>
@@ -17,6 +17,7 @@ properties:
   compatible:
     enum:
       - qcom,ipq5018-uniphy-pcie-phy
+      - qcom,ipq5018-uniphy-usb3-phy
       - qcom,ipq5332-uniphy-pcie-phy
 
   reg:
@@ -27,9 +28,24 @@ properties:
     maxItems: 2
 
   resets:
-    minItems: 2
+    minItems: 1
     maxItems: 3
 
+  vdd-supply:
+    description:
+      Phandle to 5V regulator supply to PHY digital circuit.
+
+  qcom,phy-usb-mux-sel:
+    description:
+      TCSR register address for mux selection control for PCIe / USB3 mode.
+      If the property is set, the driver will configure USB3 mux selection.
+      If not set, the setting defaults to PCIe mux selection (BIT(0) = 0).
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    items:
+      - items:
+          - description: phandle to TCSR syscon
+          - description: offset of PHY mux selection register
+
   "#phy-cells":
     const: 0
 
@@ -47,7 +63,6 @@ required:
   - resets
   - "#phy-cells"
   - "#clock-cells"
-  - num-lanes
 
 additionalProperties: false
 
@@ -67,6 +82,27 @@ allOf:
           items:
             - description: phy reset
             - description: cfg reset
+      required:
+        - num-lanes
+
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
+      required:
+        - vdd-supply
+        - qcom,phy-usb-mux-sel
 
   - if:
       properties:
@@ -85,6 +121,8 @@ allOf:
             - description: phy reset
             - description: ahb reset
             - description: cfg reset
+      required:
+        - num-lanes
 
 examples:
   - |

-- 
2.53.0



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
