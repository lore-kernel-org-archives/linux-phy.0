Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7AB37C5AD5A
	for <linux-phy@archiver.kernel.org>; Wed, 12 Aug 2026 09:34:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gyHrcJE4dK1pJvroyl6EzvmqALnPGezt6ZFOdETQieg=; b=RqmGOwVoa/PT/U
	QMzIprVtkiGpPemwqYOtW7qmfMK59mQSnqbXoxW4TScIdilk6XU54jF/ua7dje0YO1BPebd5TAnI8
	e4NEvRBuo1UFGrZ+3O0L8QjR0YXLcVoO2FVA2X9PagBwNUrtAkI3OVTEJ7YYJwOhAfqfUJe7Twgsy
	885RstO7L8es6OGLGcaS8YbEv7YXR7UvkQvANv2lFTW8VZIeGY6lQ2DLiH2/pi4OMJtbxR3WWfzQ3
	P6hGiz+8wcVl78iMWTXpKlQIBzALu4vxfqrXe9l7ZHzdcolAt9itVkBsbFP5wIOZ3KsRa7mQLd9eG
	XaZIqso6WAHuLwWzlw2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu5MJ-0000000Flhs-0JcF;
	Wed, 12 Aug 2026 09:34:51 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu5MD-0000000Fler-3JB1
	for linux-phy@lists.infradead.org;
	Wed, 12 Aug 2026 09:34:45 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 31E3644FC6;
	Wed, 12 Aug 2026 09:34:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4F65C4AF09;
	Wed, 12 Aug 2026 09:34:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786527284;
	bh=pOMw1Eu8wnhIdeSjF6BvWPDaMBzo8BAut94HrKLQWS4=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=FvRtW7DPlnsCVvoDoL/fPQi0xcpURitW+9klX2ztdf0JOXDC7VDslMRkaUZIzdKJh
	 Fsq6cnhggdUaTcpME1EFDgTfaKcRB5G3JzH5Eg3MOHKmlhSoGonsEdsYKgokILPuPE
	 6R7HX+RSrk9F7jSt00xr/zxBY/n8+ygQ8uNWPCUwTr0Mj2qP8tlQhHH2wDqYt15sZ+
	 4iJqXkhUtR7pqM2zayaVjdruP2E1AmluiMtKx3q/4FC/t8Vjc7j9i3YJbxTQkEwRDj
	 ZXPG0RoHAi1psv26Sqx6Z08WbzS4jQRSb/7MNJUfCGAQVN2CqMhyaJJ73BaoQvCgmi
	 /nUMCoc1ePk1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF884C5DF61;
	Wed, 12 Aug 2026 09:34:44 +0000 (UTC)
From: George Moussalem via B4 Relay <devnull+george.moussalem.outlook.com@kernel.org>
Date: Wed, 12 Aug 2026 13:34:41 +0400
Subject: [PATCH v2 06/14] dt-bindings: usb: qcom,snps-dwc3: Add clocks for
 USB3 on Qualcomm IPQ5332
MIME-Version: 1.0
Message-Id: <20260812-ipq5018-usb3-v2-6-8f355d7ff0ef@outlook.com>
References: <20260812-ipq5018-usb3-v2-0-8f355d7ff0ef@outlook.com>
In-Reply-To: <20260812-ipq5018-usb3-v2-0-8f355d7ff0ef@outlook.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Praveenkumar I <quic_ipkumar@quicinc.com>, 
 Varadarajan Narayanan <quic_varada@quicinc.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Wesley Cheng <quic_wcheng@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-usb@vger.kernel.org, George Moussalem <george.moussalem@outlook.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1786527282; l=1443;
 i=george.moussalem@outlook.com; s=20250321; h=from:subject:message-id;
 bh=FrZ92+JY6xObNWk+ENo3Z1dORVi7W/FDONI5nxpufY0=;
 b=k7TduvLaDJNt/6eSZS3/emidYhD1YnKCkfcymUxouaifQGrT9SFN+TVO3CTGf7/uexHa9FQtk
 ATA5CChM5R8AEzasy2DuWU4neWkDIkEQB8OV7UUIPt6hMoqxEgDq6mn
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

From: Praveenkumar I <quic_ipkumar@quicinc.com>

Add aux and lfps clocks in Qualcomm IPQ5332. These clocks are required
only for USB Super-Speed support.

Signed-off-by: Praveenkumar I <quic_ipkumar@quicinc.com>
Signed-off-by: George Moussalem <george.moussalem@outlook.com>
---
 .../devicetree/bindings/usb/qcom,snps-dwc3.yaml      | 20 +++++++++++++++++++-
 1 file changed, 19 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml b/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
index ea60f7220afe..ce36109f5df7 100644
--- a/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
+++ b/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
@@ -173,7 +173,6 @@ allOf:
           contains:
             enum:
               - qcom,ipq4019-dwc3
-              - qcom,ipq5332-dwc3
     then:
       properties:
         clocks:
@@ -185,6 +184,25 @@ allOf:
             - const: sleep
             - const: mock_utmi
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,ipq5332-dwc3
+    then:
+      properties:
+        clocks:
+          minItems: 5
+          maxItems: 5
+        clock-names:
+          items:
+            - const: core
+            - const: sleep
+            - const: mock_utmi
+            - const: aux
+            - const: lfps
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
