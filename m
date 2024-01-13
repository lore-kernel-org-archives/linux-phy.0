Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0CE2C47DA6
	for <linux-phy@archiver.kernel.org>; Sat, 13 Jan 2024 05:42:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3DJee31ebIFc1QWjinja7CpXx5aqq2az2BS9VIiCZMI=; b=a28oeONI+pcigM
	Y040dmK5rKpIgO2qy740pBeSZ5VYJJAyPApks+XunbGqxlcUL5sosXQ8kFv0QKOYe9xVXwu3dzGM/
	FD8xsKwnX2EXwgwakVpkYXrnic2Nbl7L528REf2c5Qc+JajbMH8+RQmaHi+Nf5m5x8p7ViYrrmUUQ
	77RCj0tbe7AGEnMgNNDp20Q87BLIuQl3AvmlvGinyN3qFBpuUpRLsA3912pK9+jElaAVUL8zgPY+1
	6SnvYvcayxpKkVWpYao0+MvBPTMR/4D94x3NwjOo6ICH302gCwAHBNcgborFInTwg3O36PxCwiVgW
	MXKm+rOd2XR91SiHXf1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rOWnG-004ZhO-11;
	Sat, 13 Jan 2024 05:42:54 +0000
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rOWnD-004Zds-0N
	for linux-phy@lists.infradead.org;
	Sat, 13 Jan 2024 05:42:52 +0000
Received: by mail-lj1-x231.google.com with SMTP id 38308e7fff4ca-2cd1a1c5addso82534861fa.1
        for <linux-phy@lists.infradead.org>; Fri, 12 Jan 2024 21:42:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705124566; x=1705729366; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/K+0DJkKOAkCr/6OujJMFc4kf8wuvqM0qNumbavVg68=;
        b=SIwbDrvckCHxbX4v4D0Q9cC+hn/vdAvtZE1vr7iEAgS6E/SFwWfCTRGO8iN9ktdxjw
         tFCPoAQFTAt9ZjSjUJuMVoy0wvgTaKEQzjYoEdjBF0nzDRrT07Lp9MDs3lNpc96cWcje
         h2GPI7RTEirUU1q3NCpts55YN8mxV9SE1j+z07ACevK4DcyXKPGfUy+K3eXwglCHn8uV
         Xpqd10+c3o/v+Dl57GgvXNjVnSnJ+bUbiIzMxcwgfMm/d4oGHxOPS8c6ucOouJeCZBSI
         hAxFm1EXkU7BJKRon+WqsQJlMN90KkC0b3xnpwFXfoi4ag77aYDvaofYbnXjXDmsRyYr
         sY9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705124566; x=1705729366;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/K+0DJkKOAkCr/6OujJMFc4kf8wuvqM0qNumbavVg68=;
        b=mwwgoPVSxnfTKstXkkPATETCsvPjzJGQZQE4rocZwn7itUPnMqGJYQOUWF9sE18VTc
         9o7R7vFaejCoukxjwOw13X51I4RNKexcUnlncFNrIoqtS7lA7FpYAYvL4osKZXWY6tFx
         4DxeaAw0vCKz28Prsxw1BSjohJFqwkSV1QOJyTvOwT42gJVQmkCmDDiUboAVoeeo7y0d
         jmVGGqLTbZer2VX1nLGXE++fdZCf1QXzM0cMG5/kOqlynUt07jUrJDghnw+GM17totj2
         CQvP+fhmJCLeHve401n8b+aSL5AwotrNuHp06S9LtVXPyahxqnqnOn4gyjVIYXcJACUq
         inLg==
X-Gm-Message-State: AOJu0Ywf4w5gtMrBu8snOs7L1UwaWMdzXb+eS90pivzgMvR9R0+2T7c4
	TLVNpeGSTbYhsPCJU2t9/hTtqG2kmhQYtg==
X-Google-Smtp-Source: AGHT+IFj9k9Z8RKCkHf+7mKSNLWGDLEp7aTc99Eq1DEglfVpyZ2uICLKxezJVxvpFHENnYxP1bVnXQ==
X-Received: by 2002:a05:651c:332:b0:2cc:e3ae:1ca9 with SMTP id b18-20020a05651c033200b002cce3ae1ca9mr1077728ljp.1.1705124565809;
        Fri, 12 Jan 2024 21:42:45 -0800 (PST)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id r22-20020a2eb616000000b002cc71e9168csm677719ljn.129.2024.01.12.21.42.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jan 2024 21:42:45 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 13 Jan 2024 07:42:41 +0200
Subject: [PATCH 04/13] dt-bindings: phy: qcom,msm8998-qmp-usb3-phy: support
 USB-C data
MIME-Version: 1.0
Message-Id: <20240113-pmi632-typec-v1-4-de7dfd459353@linaro.org>
References: <20240113-pmi632-typec-v1-0-de7dfd459353@linaro.org>
In-Reply-To: <20240113-pmi632-typec-v1-0-de7dfd459353@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Guenter Roeck <linux@roeck-us.net>, 
 Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Bhupesh Sharma <bhupesh.sharma@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-usb@vger.kernel.org, linux-phy@lists.infradead.org
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1828;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=0IxH6ZQ/pvgkQeQ5Scy9Fo++yLl5788lBeDWb25jTG0=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBloiLQOENnNbCH86sIYE5VOHPTdZ2MUd2+oUBiu
 crA6iwxntGJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZaIi0AAKCRCLPIo+Aiko
 1RZGB/sFpJMDyj17cqJovnDxY1d2S70NXPtcQKawv5DDgI+yRR2rf5JTyFT/MkNIks2BndUh6JQ
 Z3ziloHRvLkxYqrzefaNBuQLymPa07JlD4zVET8FzP2r20MPcOwfoWZBcaHw1LPGgmJF3TqRsQ0
 b+OpA2gNyZqiK/Zf91sOaSxvTbI6rmUX6F6XBKN+hDrWljgvHqxisA/Kw9pABV2J5A0hta4FSLA
 iTetdQ1tY9jz2ay6mMd5uZb30CUAdBz//YMmoNbTqQT2DbiwiYebLltUcLdnG0V1pv05HHc3v58
 LaDenRPqj6o/IPnbxgoOBhoc8QJi3j62TEVxdmZrAQWM22tA
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240112_214251_151243_87EA9445 
X-CRM114-Status: UNSURE (   8.52  )
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

Extend the Qualcomm USB-C QMP PHY schema with the USB-C related entry
points: orientation-switch property and USB-C connection graph.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../bindings/phy/qcom,msm8998-qmp-usb3-phy.yaml    | 39 ++++++++++++++++++++++
 1 file changed, 39 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,msm8998-qmp-usb3-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,msm8998-qmp-usb3-phy.yaml
index 868fabd44d72..da5d4cbca24c 100644
--- a/Documentation/devicetree/bindings/phy/qcom,msm8998-qmp-usb3-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,msm8998-qmp-usb3-phy.yaml
@@ -50,6 +50,22 @@ properties:
   "#phy-cells":
     const: 0
 
+  orientation-switch:
+    description:
+      Flag the PHY as possible handler of USB Type-C orientation switching
+    type: boolean
+
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+    properties:
+      port@0:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: Output endpoint of the PHY
+
+      port@1:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: Incoming endpoint from the USB controller
+
 required:
   - compatible
   - reg
@@ -129,4 +145,27 @@ examples:
 
       vdda-phy-supply = <&vreg_l1a_0p875>;
       vdda-pll-supply = <&vreg_l2a_1p2>;
+
+      orientation-switch;
+
+      ports {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        port@0 {
+          reg = <0>;
+
+          endpoint {
+            remote-endpoint = <&pmic_typec_mux_in>;
+          };
+        };
+
+        port@1 {
+          reg = <1>;
+
+          endpoint {
+            remote-endpoint = <&usb_dwc3_ss>;
+          };
+        };
+      };
     };

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
