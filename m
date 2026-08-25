Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B3D2C61DCD
	for <linux-phy@archiver.kernel.org>; Tue, 25 Aug 2026 12:37:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9tk2uGqKWzUfVSlnwo9MwD6juInijC3pS2SFu6K/Yj8=; b=sYOY6/kGTcj/DS
	PBm3D0tLqWPkB9pBO4R0MPRRWZVrDmJSG1+moEvocwbkWsuqb6Y5dH5SsGZ1Rn3+eaGq2TNFqdfvS
	ifMzL5uWi+pYljS5wSCuJuXG/sUA37cACsJOxZJF50dyM0MsvA2CBRCBGGEX5j0RJrc2IICp6PAUC
	zi+kUWR2KiI9tQ6wRrc+sAuV14DMNHo4e5TyaeVoQjys21qk6ohrQVbV9kPS0gIwpyA6VTC9x9Bpn
	O7vJ1aEJEFgx4T6hKJreCyqVqcqyZbWzihrQIBMautQtGaD+BRW6RowPMnlBZGX3XAwafgxx7cCJD
	6C6DpBS26Wm/VcFKzQPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyqPI-00000000n9D-0SHS;
	Tue, 25 Aug 2026 12:37:36 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyqPG-00000000n6n-1ej2
	for linux-phy@lists.infradead.org;
	Tue, 25 Aug 2026 12:37:34 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id C2F2560A73;
	Tue, 25 Aug 2026 12:37:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 677E3C2BCFB;
	Tue, 25 Aug 2026 12:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787661453;
	bh=3InrEzqBoL04PndarbQa9vfc8Y03H+tVOBZBHp4kxfk=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=dwgh2aSnJOkT0WZEP6/0yf80ICfw+5qbWp7vcxXmQ7e0tPRLmtZs2oQijr2jE3pq9
	 jS4fkDIsYrYeLRMaEDkFDuZKwpVFydqkk6SwZdcojzMNJLPvdSQf32oAfRLHAw89js
	 v4ZZGFoAaMvHjtRvQN+j+3WM9lyHPEAsEyAJRSGvSslZaHp5Ql8t6+198sA5SKvXKY
	 JEo6zWOcbL9pnK2g85XTfqXjQ4dtwv6y3JnLuTJuqWunVfCuAUF1Udv+AL7P1vc5r0
	 P/a387sVAgOgtdTti7VdsFxyZwMyBmFZvaBUNjIss6zmmzEN81f4GnY8geUqiTOSv2
	 ZA3bkit2q/vww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5375EC61DC4;
	Tue, 25 Aug 2026 12:37:33 +0000 (UTC)
From: George Moussalem via B4 Relay <devnull+george.moussalem.outlook.com@kernel.org>
Date: Tue, 25 Aug 2026 16:37:26 +0400
Subject: [PATCH v3 09/12] dt-bindings: usb: qcom,snps-dwc3: Add clocks for
 USB3 on Qualcomm IPQ5018
MIME-Version: 1.0
Message-Id: <20260825-ipq5018-usb3-v3-9-39be0955a6aa@outlook.com>
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
 linux-usb@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
 George Moussalem <george.moussalem@outlook.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1787661450; l=1506;
 i=george.moussalem@outlook.com; s=20250321; h=from:subject:message-id;
 bh=BrVJTl3Tb6P7JuTScfV3IA2WcKzF+sHcd0AfrYGATWA=;
 b=e7gfZhyd/OCSOtqtMZiVVCph9z+d7pnrX3IBRHUK6oxcqPBmFaPIS+31US8RRgPhyLW8FUaEo
 e+XE+GM8iGbBLl1TyEA5G5+LPz0d4Ap8FcjkM+DRpZb6VS/E1SadlOK
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

Add aux and lfps clocks in Qualcomm IPQ5018. These clocks are required
only for USB Super-Speed support.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: George Moussalem <george.moussalem@outlook.com>
---
 .../devicetree/bindings/usb/qcom,snps-dwc3.yaml     | 21 ++++++++++++++++++++-
 1 file changed, 20 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml b/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
index aa263dfd42a1..97dd0cefd732 100644
--- a/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
+++ b/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
@@ -194,6 +194,26 @@ allOf:
             - const: sleep
             - const: mock_utmi
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,ipq5018-dwc3
+    then:
+      properties:
+        clocks:
+          minItems: 6
+          maxItems: 6
+        clock-names:
+          items:
+            - const: core
+            - const: iface
+            - const: sleep
+            - const: mock_utmi
+            - const: aux
+            - const: lfps
+
   - if:
       properties:
         compatible:
@@ -295,7 +315,6 @@ allOf:
         compatible:
           contains:
             enum:
-              - qcom,ipq5018-dwc3
               - qcom,msm8994-dwc3
               - qcom,qcs404-dwc3
     then:

-- 
2.53.0



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
