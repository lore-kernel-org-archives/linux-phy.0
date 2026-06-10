Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F8A2CD98C5
	for <linux-phy@archiver.kernel.org>; Wed, 10 Jun 2026 12:04:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oO4cGYJBS3tdrh0z9ssotXpUjYfXuSK431OHbrAlTDE=; b=drP1TqyyyDOFhg
	qgKW9LjXH6Xme2XVEh6tc7GtJYphNa19AEUCIZiv0ICz/A08WSLnNZN1hx5iSFA0t/XmSiLudnPYV
	PwfUEjmJ25yDl5A5Gwxvi54Tcnwl1MkXFuD7LjP9EhPNEQs/IYVK43YsSqi3AeumjO+gk5k40gajf
	DyFCywqB51yAx0PwW/S74IN2wp4yX1sRe7ogN03H6moZ6erphS7lS+sFlviMM63r0ueb6cNBhpVq1
	4nKQwU80XLPpWPqDSn//r+BqgSL/wqCda+KIMdBVoV2j1KvdXHddrHpLZbhI0IqM7rQrXIEJdKsIf
	WH6GVXTf4363bhd0I1lA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXHfg-00000007c8y-1HAX;
	Wed, 10 Jun 2026 12:04:36 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXHff-00000007c8g-2QxI
	for linux-phy@lists.infradead.org;
	Wed, 10 Jun 2026 12:04:35 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id EB40E42B6B;
	Wed, 10 Jun 2026 12:04:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3FFE71F00898;
	Wed, 10 Jun 2026 12:04:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781093074;
	bh=IGbORZDlP08xL4kOubw+qIvp2KwcZHcpvZwB7+QRpIQ=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc;
	b=KAoGGZGt20loUN3/qjFAufr10x4g2FZO0Mfg48RCmEITdMx1hnhECOkwfGRPBGb8R
	 ISDcZ/DPypOLhg1I8AVkO7pqVWMef2GHrnU20VF5U/xt/USoAQRpUMIp3wPJ9J3SMu
	 gJrzyBTI3EbY4fBKO2015ROTYTs4MOWHEPJ4pxYPrOU3rdbhxvHL7GFVqushInUF/k
	 sFJLRRsqoRYbA+lgKYaA0+hrgNhyBp8DZl1wfqnNSjsXP0nMzds4bkryjXl/CRzgOj
	 QvOAF/X9FdSrD/DZ83cw4yMdhVjJUd8RUuLGabKn/cRbCMUDcQU6A1fZtP06yptNds
	 kEKkfsJiuvvkQ==
From: Konrad Dybcio <konradybcio@kernel.org>
Date: Wed, 10 Jun 2026 14:04:14 +0200
Subject: [PATCH 1/4] dt-bindings: phy: qcom,qusb2: Straighten out SM6125
 and MSM8996
MIME-Version: 1.0
Message-Id: <20260610-topic-8996_61x5_qusb2phy-v1-1-d7135980e78f@oss.qualcomm.com>
References: <20260610-topic-8996_61x5_qusb2phy-v1-0-d7135980e78f@oss.qualcomm.com>
In-Reply-To: <20260610-topic-8996_61x5_qusb2phy-v1-0-d7135980e78f@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
 Iskren Chernev <me@iskren.info>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1781093064; l=2934;
 i=konrad.dybcio@oss.qualcomm.com; s=20230215; h=from:subject:message-id;
 bh=c0LyjotfcFpdJBOn3D1FeK657jniSJjiEt+FZvf/UR4=;
 b=A/bXzo4KUFVVoT2SN7t+ixD9CPwPowrpvPUhn/xtxEKVtI0yJrsjWasjvlCnI9/MWRVmf03CO
 tbnxDSmoVOKDITnkbjdAmps0buLF820oXctOK/GHmm6xUeBJNaqpNFS
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

Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
---
 .../devicetree/bindings/phy/qcom,qusb2-phy.yaml    | 31 ++++++++++++++++++++--
 1 file changed, 29 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
index 39851ba9de43..807d64aee547 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
@@ -30,6 +30,9 @@ properties:
               - qcom,sdm660-qusb2-phy
               - qcom,sm4250-qusb2-phy
               - qcom,sm6115-qusb2-phy
+      - items:
+          - const: qcom,sm6125-qusb2-phy
+          - const: qcom,sm6115-qusb2-phy
       - items:
           - enum:
               - qcom,sc7180-qusb2-phy
@@ -57,6 +60,12 @@ properties:
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
@@ -160,7 +169,6 @@ required:
   - "#phy-cells"
   - clocks
   - clock-names
-  - vdd-supply
   - vdda-pll-supply
   - vdda-phy-dpdm-supply
   - resets
@@ -182,6 +190,22 @@ allOf:
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
@@ -196,10 +220,13 @@ examples:
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
2.54.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
