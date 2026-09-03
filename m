Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09034C61DD3
	for <linux-phy@archiver.kernel.org>; Thu,  3 Sep 2026 14:26:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dx4EoO+C5QlIg2OUrjphgIdF4qSkQa82RM8SW1uqKgo=; b=VkYI0ur3KsHMZE
	l9g1bJ/VuckVnxG3sEwSOMfJLcmYd7WSH7Gqq6yaMVSuOGEY4ywT0N5aAN1pt+SDBbYJ1t+r/flvt
	5D1NY9LqD4zWnwLcVerHgNbwzhw+3r/lK/1aSj4yaQce96XNmzsbqIntUvAab8f/7/dzY3pRwyawF
	ymKH1uJT5pCw3K1R5KF6XubIhxLmsQLISkzhT6+WF0rC6XDoIlURLU9K3gUKlc9t2LJdRJUhrTgZD
	zLMf5AXbf2000r+rTbgiDajuktAmOxkbTwZt1MXX4ODl2TrC5SO2+RxTYswBvKidESNjZw+jfQHa7
	f8I9lJuShyFzlwL6z6IQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x28O8-0000000HVkh-1Axc;
	Thu, 03 Sep 2026 14:26:00 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x28O7-0000000HVkP-0StR
	for linux-phy@lists.infradead.org;
	Thu, 03 Sep 2026 14:25:59 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id DABA84166B;
	Thu,  3 Sep 2026 14:25:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5E9E61F00AC4;
	Thu,  3 Sep 2026 14:25:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788445558;
	bh=U1VpKqvp7w9GiUTdyv1Yq5Vmr0sLvhe9R984T66YXe4=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc;
	b=cl70xdrEpL5VuKLph2LJ+QvV+X95eBKCLlPt+OzeaMwAGfG+KtgZ1ERcEKy+3GqQ8
	 dZbbd94hR7Qo1USuzaxTHlIyho8iinrf5qIFg1dc1favbryHQ7MxFJAxHp2cgi2hcC
	 5VObi/FSWHhe9tPziD5IJQJzI5uD58jl6CfC4C90lHK0OyrA0Igo9kND1paN0bNgh/
	 x/pXfnWywuP1WTZhnHi03dZSqzPGxrPtNl+RSDF84gVlSEwz1bfbJvDItIRwK4o1r1
	 0S42vByNKk3I/Nltm7Fqejik5rsJ4ios/WfLlIwD2cNfelbwQmjDZdTsquJI53SuYF
	 1fthe9VyNRxcw==
From: Konrad Dybcio <konradybcio@kernel.org>
Date: Thu, 03 Sep 2026 16:25:28 +0200
Subject: [PATCH v2 1/5] dt-bindings: phy: qcom,qusb2: Straighten out SM6125
 and MSM8996
MIME-Version: 1.0
Message-Id: <20260903-topic-8996_61x5_qusb2phy-v2-1-4c3f980a4560@oss.qualcomm.com>
References: <20260903-topic-8996_61x5_qusb2phy-v2-0-4c3f980a4560@oss.qualcomm.com>
In-Reply-To: <20260903-topic-8996_61x5_qusb2phy-v2-0-4c3f980a4560@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
 Iskren Chernev <me@iskren.info>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1788445548; l=3008;
 i=konrad.dybcio@oss.qualcomm.com; s=20230215; h=from:subject:message-id;
 bh=NVT6i3vnZNQ01gYcWSJoxC0tlXCG33lDuqYHjOCEbe8=;
 b=egkLQxU7TjgcozG9W+GicTgJwQ412eZ2pGoXx24RkzTve/JJ3G7JRkMzzHH+W+/YKiJK0yyXT
 wIcYA2QppljBK3UBxWHQ86CQai6bLYQnvA3KCvs6tPkbXt4OfuyUNgy
X-Developer-Key: i=konrad.dybcio@oss.qualcomm.com; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
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

From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

SM6125 DT currently uses just the MSM8996 compatible (without a primary
SM6125-specific one). This is not only wrong for the reasons of
violating guidelines, but also happens to not be valid.

The MSM8996 PHY is quite similar, although it requies a different init
sequence (for arch reasons). MSM8996 also needs different power
plumbing, as the VDD supply is fed through VDD_MX (which we define as
a power domain rather than a regulator), unlike on SM6125.

The init sequence seems to have been "good enough", but now that the
bindings clearly diverge, add a new compatible for SM6125 with a SM6115
fallback (as they seem to be an exact match from the SW interface POV).

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
---
 .../devicetree/bindings/phy/qcom,qusb2-phy.yaml    | 31 ++++++++++++++++++++--
 1 file changed, 29 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
index 001fd0ccc985..cfc5a1d16b7f 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
@@ -31,6 +31,9 @@ properties:
               - qcom,shikra-qusb2-phy
               - qcom,sm4250-qusb2-phy
               - qcom,sm6115-qusb2-phy
+      - items:
+          - const: qcom,sm6125-qusb2-phy
+          - const: qcom,sm6115-qusb2-phy
       - items:
           - enum:
               - qcom,ipq5210-qusb2-phy
@@ -62,6 +65,12 @@ properties:
       - const: ref
       - const: iface
 
+  power-domains:
+    maxItems: 1
+
+  required-opps:
+    maxItems: 1
+
   vdd-supply:
     description:
       Phandle to 0.9V regulator supply to PHY digital circuit.
@@ -165,7 +174,6 @@ required:
   - "#phy-cells"
   - clocks
   - clock-names
-  - vdd-supply
   - vdda-pll-supply
   - vdda-phy-dpdm-supply
   - resets
@@ -187,6 +195,22 @@ allOf:
         qcom,preemphasis-width: false
         qcom,hsdisc-trim-value: false
 
+  # On MSM8996, VDD is supplied via the MX power domain
+  - if:
+      properties:
+        compatible:
+          const: qcom,msm8996-qusb2-phy
+    then:
+      required:
+        - power-domains
+        - required-opps
+    else:
+      properties:
+        power-domains: false
+        required-opps: false
+      required:
+        - vdd-supply
+
 additionalProperties: false
 
 examples:
@@ -201,10 +225,13 @@ examples:
                  <&gcc GCC_RX1_USB2_CLKREF_CLK>;
         clock-names = "cfg_ahb", "ref";
 
-        vdd-supply = <&pm8994_l28>;
         vdda-pll-supply = <&pm8994_l12>;
         vdda-phy-dpdm-supply = <&pm8994_l24>;
 
         resets = <&gcc GCC_QUSB2PHY_PRIM_BCR>;
+
+        power-domains = <&rpmpd_mx>;
+        required-opps = <&rpmpd_opp4>;
+
         nvmem-cells = <&qusb2p_hstx_trim>;
     };

-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
