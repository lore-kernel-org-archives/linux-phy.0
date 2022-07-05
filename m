Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 65DECC43334
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 09:51:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=akTeA9gRuV6rKPwqp+m1AHIZAcnH5CaiRLwN5tEyERw=; b=49vWNi7FpBdEDH
	Bogoy/SWK1a/XsO0cLQrtMhKtH1/ZE71UnVJ7zlVJcg9OVO0XG3KuqJekuG9b/DKmTu88QeW2w0yz
	/KGjVjgiVmqgVVvL7jYBjFYnRDHkolllven7xDTBF5MQFeW987l8Q0SFYaZ1A1TDNPRFdt1YNwEqF
	afmreSRKran66yF3P7/HZsqiyBIeZvYMM/mweD6RrNL1EhmxxE9Pd8sDVdGJdj1iUWukLVwDe8D25
	SucGIHLYGp5KVoDX+upl7ZETeCFyKqex9oCLC6Z6RZc8MRJWFG4n7bV8htdGqt9YYa065QQ2p4aUE
	xVdjiXH9mxlmCyIREfEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fDj-00Gwcc-EU; Tue, 05 Jul 2022 09:51:51 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fBC-00GuVv-TM
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 09:49:20 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 5704761956;
	Tue,  5 Jul 2022 09:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 333B5C341D2;
	Tue,  5 Jul 2022 09:49:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657014544;
	bh=NMdG3JQTVZQsmBPHe3nFjQ3nKf9PlrIsuO3XSeSbWNk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=iV7OLkbQdT6Ro/Fo2D/UxQpfbNQVNh9IUhZXxtF8aYC0t3s+0iBr8AjYIXoZUHJYf
	 73i6jzRiDlqSWt4BUZbvbd+IkVFI8awE0mU77vfxHBrUNkr4R8GuvCExnVX1L7YcRq
	 VGAiOn0tpg4hwfotXATUW1L774+r4ycWBntv1pb9vZ36YsdHBCSgSWezYHMxz0Tmq3
	 6ai/mrxU5mLuOQKAh5GojmkYZmK4zELgJwv43ZiHUrlhkm9ktZWteye/0iqMu/0GGm
	 jQ7A6W0bdyRMFxpZyKm3K4/SNTRUqovnnavOAibaKnWmk6gGYYBwz0NI2kdY52eg2q
	 fhUb5gKG64zLw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1o8fB3-0004YE-3D; Tue, 05 Jul 2022 11:49:05 +0200
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
Subject: [PATCH 29/43] dt-bindings: phy: qcom,qmp: split out USB binding
Date: Tue,  5 Jul 2022 11:42:25 +0200
Message-Id: <20220705094239.17174-30-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220705094239.17174-1-johan+linaro@kernel.org>
References: <20220705094239.17174-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_024915_026721_B2DC064E 
X-CRM114-Status: UNSURE (   9.00  )
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

The QMP PHY DT schema is getting unwieldy. Break out the USB PHY
binding in a separate file.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 .../phy/{qcom,qmp-phy.yaml => qcom,qmp-usb-phy.yaml}     | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)
 rename Documentation/devicetree/bindings/phy/{qcom,qmp-phy.yaml => qcom,qmp-usb-phy.yaml} (98%)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-usb-phy.yaml
similarity index 98%
rename from Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
rename to Documentation/devicetree/bindings/phy/qcom,qmp-usb-phy.yaml
index 04c24f8e4526..8343e24b669a 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-usb-phy.yaml
@@ -2,10 +2,10 @@
 
 %YAML 1.2
 ---
-$id: "http://devicetree.org/schemas/phy/qcom,qmp-phy.yaml#"
+$id: "http://devicetree.org/schemas/phy/qcom,qmp-usb-phy.yaml#"
 $schema: "http://devicetree.org/meta-schemas/core.yaml#"
 
-title: Qualcomm QMP PHY controller
+title: Qualcomm QMP PHY controller (USB)
 
 maintainers:
   - Vinod Koul <vkoul@kernel.org>
@@ -130,6 +130,7 @@ allOf:
       required:
         - vdda-phy-supply
         - vdda-pll-supply
+
   - if:
       properties:
         compatible:
@@ -160,6 +161,7 @@ allOf:
       required:
         - vdda-phy-supply
         - vdda-pll-supply
+
   - if:
       properties:
         compatible:
@@ -191,6 +193,7 @@ allOf:
       required:
         - vdda-phy-supply
         - vdda-pll-supply
+
   - if:
       properties:
         compatible:
@@ -225,6 +228,7 @@ allOf:
       required:
         - vdda-phy-supply
         - vdda-pll-supply
+
   - if:
       properties:
         compatible:
@@ -255,6 +259,7 @@ allOf:
       required:
         - vdda-phy-supply
         - vdda-pll-supply
+
   - if:
       properties:
         compatible:
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
