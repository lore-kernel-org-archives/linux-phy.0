Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6AF2C43334
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 12:19:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SgE3c+E4FbsUEsmR0n7nL+WTqBErtGa0/BXLHip69EM=; b=L0NE8uIjSEXetQ
	WgMV9CT+auuA0v0eVxVjw7ePsxvzHzVjxH9AfA/+u8MM84M73FpG7h33FF1ScZbiumUipmflvtM1g
	ob6rFtTtug6iy6G4JuxEvOVMKrkf7hBgaOCB0yXn+7bFAWjDDrAe6DpSECYlPilRTvnDJUuaMlPeb
	aBc6QZEywXNQ6Rq3+3Ez/Unh+EvDryUkhisUv8Zy/JiYLJaT1qXOo+grGuUVwSF7x2dycVU7vrHSp
	8jBhisQbtv93LVWhNWLNfsQgSCK84g638vb/rcC1XwUnuhyLqGt3yNISwEANNkRXp6zrp4olF0zAi
	WN8a4fwsMOt5oSQys5cg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8hWg-0006zd-3j; Tue, 05 Jul 2022 12:19:34 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fOB-00H219-5w
	for linux-phy@bombadil.infradead.org; Tue, 05 Jul 2022 10:02:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=Lqy1nseGPV/bM14nsynNpEENe8OR6MfzEH7cyCF0wKs=; b=RLeqdsYgo5GD9LFFN2HyXQq3gq
	+wuhoOWNCdcUpwYpDoMkYW+5/U4F6wGcBcYsjbh+d9M4tt/IOeQVsJot0nASYhYJAgVqxgXSKekFr
	8gnJpRyh1gw+Azeg4YgEdj9IrLZzudn6dVM9/M9wFpLHhn9WVDgJkLVXWNaXQC/wtEDBOKQP9BUmi
	FLndYqQIb3XNmU1mGieNLg/flQC+5STiCd++MVxyWN/NjfgKd7nBXtc59N4omZPmLwBOq5cL9Tchk
	FeFJyEjle0YwKxtANsq1BREE+zCGLFeCRcgUOUN8pY4IP/dYD4ewkK8iUf3HJUreujPlO9ZA8lurh
	UsY7MEog==;
Received: from ams.source.kernel.org ([145.40.68.75])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fB9-00HV5c-Ce
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 09:49:15 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id ACD97B81673;
	Tue,  5 Jul 2022 09:49:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1F5D8C341CB;
	Tue,  5 Jul 2022 09:49:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657014542;
	bh=1ywPuUGGmVk88S12Lk0XJfL/+Jy0pPRKtjm1IVstW78=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=c6KZVuLfU3aIE/1QuMLiqqYH1Zkodqo3a9BBQvcecMYItrVqRyyj5npEVkwaTOfjN
	 2UoZAJUyrT6/ZAkZUs5I4WRXWkqEvEYKV1bX43mpsCEMNIPhGDaW7w2TcR0PFHk/hW
	 0KbmfsY8AZIkGDzOvCbrv+yzyW+L+OZtjzVUgVP5MliHCFhthh83u2zWhpl4nrO5R3
	 z5cKmi+4hXBMIPbx6gCcgZnAKwFCLiwISIBaLIz6Mx5QuJFBTuKMCOlCtcwqvSi8ef
	 d7Ac1LSLKZ5iluof8MUzJjCzbXBfv6KmCRkxcO67QHK/ZEtCd6xdjOzuRo5qse/AaI
	 G9IOu60LIkXyQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1o8fB0-0004Wv-Mv; Tue, 05 Jul 2022 11:49:02 +0200
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
Subject: [PATCH 02/43] dt-bindings: phy: qcom,qmp: sort compatible strings
Date: Tue,  5 Jul 2022 11:41:58 +0200
Message-Id: <20220705094239.17174-3-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220705094239.17174-1-johan+linaro@kernel.org>
References: <20220705094239.17174-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_104912_318865_2842A791 
X-CRM114-Status: GOOD (  10.35  )
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

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 .../devicetree/bindings/phy/qcom,qmp-phy.yaml        | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
index f74b3bf34a23..38e0ade01687 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
@@ -38,15 +38,18 @@ properties:
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
@@ -56,9 +59,6 @@ properties:
       - qcom,sm8450-qmp-gen4x2-pcie-phy
       - qcom,sm8450-qmp-ufs-phy
       - qcom,sm8450-qmp-usb3-phy
-      - qcom,sdx55-qmp-pcie-phy
-      - qcom,sdx55-qmp-usb3-uni-phy
-      - qcom,sdx65-qmp-usb3-uni-phy
 
   reg:
     minItems: 1
@@ -277,12 +277,12 @@ allOf:
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
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
