Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5CBB1C47DA6
	for <linux-phy@archiver.kernel.org>; Sat, 13 Jan 2024 20:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JLdTfUtQd9cNq8vuqZkWnMbePCJid+I4suXGvcUaHm8=; b=UMT4cShe9fGSIx
	DhmQgn9bMU4Stf07gS0np45kR1nFw7truPCoJtNvXjS2xRj03PPQPhPU2Oqi+jt3HBLL6gZQ+4Ww6
	L4vGHDdVq1LtKoE4juOi8WEzrA+8Xkc3+4RU6rgHoqtz/mgNwqI01ikAW07lbVwN2Ry4aKnHZt2ay
	R9xaS4iefc+HMvYFOk29hPs7WBW8jB8NiY2dF6aEUwSaKPVyYVbRPwgoRKORJDAeoc4keL9/01/GG
	yL3CF+lBBKc1SuAx6uqR/SbZ8xKj0GD/1WMcp8+QtS+umYxPNLf4f5WKJhNkOnhde7s9aHo3Bd6yX
	Kds+RZquS+BtMk2hTJGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rOl2y-005gk1-30;
	Sat, 13 Jan 2024 20:56:04 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rOl2u-005ggK-16
	for linux-phy@lists.infradead.org;
	Sat, 13 Jan 2024 20:56:01 +0000
Received: by mail-lj1-x22d.google.com with SMTP id 38308e7fff4ca-2cd703e9014so61969031fa.1
        for <linux-phy@lists.infradead.org>; Sat, 13 Jan 2024 12:56:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705179357; x=1705784157; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7p6gWY0YoqvRhvH4CsaKCkw0XoA/dxUPDgcmLcO++Co=;
        b=y2UCYBOHU//TxJw7GpW2EzwTwOxYmkJVDZtjjpG0RQ/CYMkw1R0sWqYuYnq9suXa4d
         lHPMe3mCshylPV8/YzGTn5sftT844DkcpQJ6/Ju8oR7AbP1KqbK1dMldP8aGPlfBtklh
         eYtvhF2BsD91lknyxOz+iYoFBeOu858F9ojG3IMETfKfpWOZRAgO8BOhAYE7LBQB9LMO
         t4kLeEPkyd2SljX9FvZziLJDSEK+k8/zHQpn7UotImPfEeSggmRv2fVEAqgEtj4/cFCf
         yMvYnIkq2uvxwA4RHSocel0JMiwy8Ibw2y5l2Gwy7jhXL3vOYHi7rtmUmmYg40QpIJJC
         vCmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705179357; x=1705784157;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7p6gWY0YoqvRhvH4CsaKCkw0XoA/dxUPDgcmLcO++Co=;
        b=LFq8u6pVMIHyxOn7SW0FHQFtMV0kZHdvLmsh4H7bfUYkLA4JJC+p77M3ujpn2leXbh
         hjNW/vmtPfZb4RjGpSJA63wnQub8ZBTEWbM1+qblA9eEatdHY+866UYmsIF0adU07wHV
         FBQgzxBAAvYkSxRtXuxewwHktu+qKzMIQtRekDcSQnS1Yd8565tGy5NADui2p6TkzRJJ
         hdQiF2+qFC5uT+JPceXrvtYKxXKCiJzz+P5bC0QwjhEKY/KU7YRhnV8UjU6AOAFU3vVv
         qUOx3PSTO4jF5bb8cO+yzQpDUANPatGgssX653jGSd5r6lOKSMfRPtwO95wWJJCbbLI5
         U2SA==
X-Gm-Message-State: AOJu0Yy6CZJv+DKxbW8SRgHHrRRpyHhTMG1QeO7144zc53//Dimgs7iC
	Fnx/VwwvZxPBP4ogyxSsDV2zBq0B0AHLpQ==
X-Google-Smtp-Source: AGHT+IHbb6Hk424wpmBXA/9fo5agMx0JnS4ckc6EKBxpEvGttdRpEC8T4a1XsFQYTmrfLJQJgkphAQ==
X-Received: by 2002:a05:6512:3a3:b0:50e:ac97:8bb2 with SMTP id v3-20020a05651203a300b0050eac978bb2mr1475688lfp.40.1705179357005;
        Sat, 13 Jan 2024 12:55:57 -0800 (PST)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id p14-20020a056512328e00b0050e9355d7eesm919802lfe.103.2024.01.13.12.55.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Jan 2024 12:55:56 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 13 Jan 2024 22:55:47 +0200
Subject: [PATCH v2 04/15] dt-bindings: phy: qcom,msm8998-qmp-usb3-phy:
 support USB-C data
MIME-Version: 1.0
Message-Id: <20240113-pmi632-typec-v2-4-182d9aa0a5b3@linaro.org>
References: <20240113-pmi632-typec-v2-0-182d9aa0a5b3@linaro.org>
In-Reply-To: <20240113-pmi632-typec-v2-0-182d9aa0a5b3@linaro.org>
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
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-usb@vger.kernel.org, linux-phy@lists.infradead.org
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1888;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=DFAh3NKLCMzL120f+oFd/fyT9CXy+jx6bI/mJAUdqN0=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBlovjW4B6beCENV5/96moOaMSzx2h+m+EJaFunL
 SthbyEEWY2JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZaL41gAKCRCLPIo+Aiko
 1aCJB/91Cw/8WKjyEpSIFaaHXcsRjP6p85e6/a/7FdD7cuRjSfW8kepdL17IrwnUK+i2Q0xwLnX
 xX16b70KjG4G7vkM6zQMZtvR7jTqglUIkIPwxu9pkPnuJBUj7/TImgzzDsaY+z1SVo8hF50iPPw
 KxsrPhgDEIoLOOls1Jqze+HRaqp66PsRl2Qp+Da9bnC6ij1ech7MWsshoiA8R+29ljeH2wcWeqQ
 w+Fik+qyIUtQJEGv7H/y4GiFDtJmkqT9GifaK2QPzq5EIYc8h15LRZtZRaTkgo8zK7sU/UhPRAa
 QCFhZAxajUCLimoZgB4K1iyX3jONmza/VNmI7rgzUooJTPCt
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240113_125600_525887_4BB0717B 
X-CRM114-Status: UNSURE (   8.46  )
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

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
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
