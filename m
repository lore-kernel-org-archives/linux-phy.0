Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C99CECAAA1
	for <linux-phy@archiver.kernel.org>; Tue, 30 Aug 2022 12:35:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MJrbrvbH6qh5PNXQcsoyKlxXgT9tgHjI7m7yRp8Sz7A=; b=HelqjZ/88Zkj3x
	wZA9UgaCEYM8cNKo8BgMzG0g64BXyXFC4mCEHg4VsHVMo70OYKlrLaU+BzBrYO4A4j6sIHYhioPTZ
	BVO/tHorHDgSvwj1KUP9vMI+Mc0C7XziKVM8UVUJhuHtawSl87Of1O1Q63epN8+M5Mvi25iVlJJE2
	+9kw7TYNT6RJHTx25Xa6gDONq2qIJKC+56bMPVo9aXVdvpHZNgYSIPK41VZ0C9MRPxdiExR5CNZBF
	8oR3wZGrYJrSZJj3YBqMqFPR8zOKI5SyGiNzqowUM0bKjUSY8nKuoHGUVxbwfw0R+JJOtjPJTo3+j
	GmuVVqQLB40Zf98AApBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oT0SQ-00GrIM-Rr; Tue, 30 Aug 2022 12:35:06 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSzRS-00GZUz-4m
	for linux-phy@lists.infradead.org; Tue, 30 Aug 2022 11:30:04 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 2A4F761552;
	Tue, 30 Aug 2022 11:30:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C7089C43470;
	Tue, 30 Aug 2022 11:29:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661858999;
	bh=3bust5oGCUM98lVWUkt9/98KJ0oRTfGrzsfR30oP7CA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=NwLOBtheWTqVahLo2LLhcsEO5gPHe2M4RSEFtybb/IylL5ZeVVqHtaDNmHjxG4rBu
	 nn2U2iuzagfyIaUfHle4HXV7vkZIeDmXUoIaJcUzPbMNaDfxc2JcB7ADXMY3NP8066
	 g1X+hFb17qpWl/x/I5RPmZWlJ8NWlTtRaDWd2nmWFRE6MDEKZZm9lqg98oo+uLQdui
	 VRRMaOQBdbiZxFVQuj5D3hO2wVAWLRrAalrTeztsbz85oVOc1KzxwNsAHYuHuBvKg4
	 wxppSptdytIzhLIVvIbbZ4+6jPIyMz10ixtJcENFAC1brnLVc0ZrQiQCbmRGEZ7Raf
	 c6mD0qVshP+9Q==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oSzRN-0000zr-1N; Tue, 30 Aug 2022 13:29:57 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v4 02/30] dt-bindings: phy: qcom,qmp: sort compatible strings
Date: Tue, 30 Aug 2022 13:28:55 +0200
Message-Id: <20220830112923.3725-3-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220830112923.3725-1-johan+linaro@kernel.org>
References: <20220830112923.3725-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_043002_352534_B5F84EB4 
X-CRM114-Status: UNSURE (   9.36  )
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

Sort the compatible strings alphabetically to make it easier to look up
entries and add new ones.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 .../devicetree/bindings/phy/qcom,qmp-phy.yaml      | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
index edb53576fc0d..f3976b1585b5 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
@@ -40,15 +40,18 @@ properties:
       - qcom,sdm845-qmp-ufs-phy
       - qcom,sdm845-qmp-usb3-phy
       - qcom,sdm845-qmp-usb3-uni-phy
+      - qcom,sdx55-qmp-pcie-phy
+      - qcom,sdx55-qmp-usb3-uni-phy
+      - qcom,sdx65-qmp-usb3-uni-phy
       - qcom,sm6115-qmp-ufs-phy
       - qcom,sm6350-qmp-ufs-phy
       - qcom,sm8150-qmp-ufs-phy
       - qcom,sm8150-qmp-usb3-phy
       - qcom,sm8150-qmp-usb3-uni-phy
-      - qcom,sm8250-qmp-ufs-phy
       - qcom,sm8250-qmp-gen3x1-pcie-phy
       - qcom,sm8250-qmp-gen3x2-pcie-phy
       - qcom,sm8250-qmp-modem-pcie-phy
+      - qcom,sm8250-qmp-ufs-phy
       - qcom,sm8250-qmp-usb3-phy
       - qcom,sm8250-qmp-usb3-uni-phy
       - qcom,sm8350-qmp-ufs-phy
@@ -58,9 +61,6 @@ properties:
       - qcom,sm8450-qmp-gen4x2-pcie-phy
       - qcom,sm8450-qmp-ufs-phy
       - qcom,sm8450-qmp-usb3-phy
-      - qcom,sdx55-qmp-pcie-phy
-      - qcom,sdx55-qmp-usb3-uni-phy
-      - qcom,sdx65-qmp-usb3-uni-phy
 
   reg:
     minItems: 1
@@ -279,12 +279,12 @@ allOf:
           contains:
             enum:
               - qcom,msm8998-qmp-ufs-phy
+              - qcom,sc8180x-qmp-ufs-phy
+              - qcom,sc8280xp-qmp-ufs-phy
               - qcom,sdm845-qmp-ufs-phy
               - qcom,sm6350-qmp-ufs-phy
               - qcom,sm8150-qmp-ufs-phy
               - qcom,sm8250-qmp-ufs-phy
-              - qcom,sc8180x-qmp-ufs-phy
-              - qcom,sc8280xp-qmp-ufs-phy
     then:
       properties:
         clocks:
@@ -372,11 +372,11 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,sc8280xp-qmp-usb3-uni-phy
               - qcom,sm8150-qmp-usb3-phy
               - qcom,sm8150-qmp-usb3-uni-phy
               - qcom,sm8250-qmp-usb3-uni-phy
               - qcom,sm8350-qmp-usb3-uni-phy
-              - qcom,sc8280xp-qmp-usb3-uni-phy
     then:
       properties:
         clocks:
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
