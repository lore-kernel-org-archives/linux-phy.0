Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85872C7EE2E
	for <linux-phy@archiver.kernel.org>; Tue,  6 Jun 2023 04:05:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rNldS+86Tv9pva1YRDJb6RxrO9G/jbNfgDaiBcoKre8=; b=VN3Y/6P3j3EWDR
	y70shsRczFSA/4q/bM9/XNovXY4W3CIS8UheXiCYN6nTe8Tbqw59u0evZTt5PnONGGa14EHwO2WHy
	tSvTYVdT0oPeWktB9Ehx4Gl5FM9XxcamurtneEIHDzGLognmsALMxPQbxKCrA7BneB2eX+JvvQVEH
	s5SuU7H3FPfKlt6ieGg/3q4iJQ2EOvCNa3n1gt1sk150Hwxu1ZUGz/CKZ09WO2zo/p1wWPirOozcl
	2iCFazGx/Xdi0/gq4zC3JV+XGcGLOebzDgVcBEZVOU9khoiOQzJP+XaixJrTdpv+X7i8QC1Nunbm8
	Yg4wP3mDTjGWAe1cs+dQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6NxF-0005Da-0c;
	Tue, 06 Jun 2023 04:05:57 +0000
Received: from mail-qt1-x835.google.com ([2607:f8b0:4864:20::835])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6NxC-0005BU-20;
	Tue, 06 Jun 2023 04:05:55 +0000
Received: by mail-qt1-x835.google.com with SMTP id d75a77b69052e-3f7fd59bb13so54912781cf.3;
        Mon, 05 Jun 2023 21:05:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686024353; x=1688616353;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kT0moiiobscuB0+NsDGuf/3XRp74J+Z+JV9UAE5BGPo=;
        b=OKQ/uXf9JJggxqFYM381S1YpMl5oMCXwRkIIQCP56TCZKw3J7MxAZx5gk6kHbvpyJE
         GdNOg1HWKFVAhGBRwre3MZKpSzbyyi5lRu5+Cc3TpGV4B6uF0verXrao0AoLb20u/+bZ
         361O3Q7fW0e/xUTL0PClQLK+XBnagwxjMmThespktOkXbh6gidNU8XOb2BEnDLfnkIqM
         bvhjLDeWWzzmGae+f8J0i0sga4dM7hThrVRL+A7XqVCg4C75PX36TMdoMf5lSwg9oHCb
         r2Hw4d2M+GZp+6DWVDzhy2lAwvyMSOwfqKIQTMGETBO8cehcELWGaLOQh4AeTDxTca83
         zOlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686024353; x=1688616353;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kT0moiiobscuB0+NsDGuf/3XRp74J+Z+JV9UAE5BGPo=;
        b=MO1togpdtVKVjtPYtQLTJS6U2hZ92UgyZkUutQqgd+N4NRcQGmJK1T0JeJ7GAjsl2z
         C1AJEHAZJcT++3K9Wj7MM9SKWHGSdfxDUjPi0Z3JeuY4wTPhibbmVKRWS+b+pqI4T+TA
         xMGeKvcncKkehi7Pyvi9fdyprCuqT5mfOZz4Au5uN+tIaGwI1yzTIbDMeAUepbpjgqWE
         9e8bJbyQdzylJ/E+/KOrBXhNuhAyp5iKepTfBcHNBYQgv6MAfnIzh8X2J8Nwm86zPL9e
         tld3HCAGxBHSjXWpI4VbgrKI1KRLgI0aNAMD75+0ZUlfoOGH0hXC/O6Tqw7/W50rRrWS
         p9pA==
X-Gm-Message-State: AC+VfDzh1fg8ilTdcCZQmP96fyedZ0xmQrR93NWzcY4g0xFyWjlDe5GZ
	dO0NMljLlTAKC+62dgakQhYryyKJNbYPTw==
X-Google-Smtp-Source: ACHHUZ7F7AbVrX/UOcT19MIL6WBTFBpTWsjGYcUZEY36uwH1cqqPWN7oyyxvyVw4oDoQxZFPNs5Hlw==
X-Received: by 2002:ac8:7f07:0:b0:3f9:af04:e9e5 with SMTP id f7-20020ac87f07000000b003f9af04e9e5mr743482qtk.57.1686024352689;
        Mon, 05 Jun 2023 21:05:52 -0700 (PDT)
Received: from Latitude-E6420.mynetworksettings.com ([2600:4040:2007:9800:aac8:d62:35cc:958c])
        by smtp.gmail.com with ESMTPSA id e2-20020ac84b42000000b003e388264753sm382980qts.65.2023.06.05.21.05.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jun 2023 21:05:52 -0700 (PDT)
From: Rudraksha Gupta <guptarud@gmail.com>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Olof Johansson <olof@lixom.net>,
	soc@kernel.org
Cc: Rudraksha Gupta <guptarud@gmail.com>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 2/4] dt-bindings: phy: qcom,usb-hs-phy: Add compatible
Date: Tue,  6 Jun 2023 00:05:25 -0400
Message-Id: <20230606040529.122433-3-guptarud@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230606040529.122433-1-guptarud@gmail.com>
References: <20230606040529.122433-1-guptarud@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230605_210554_711189_902F8DB4 
X-CRM114-Status: UNSURE (   9.88  )
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

Adds qcom,usb-hs-phy-msm8960 compatible

Signed-off-by: Rudraksha Gupta <guptarud@gmail.com>
---
 Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml
index aa97478dd016..bdeffb52340b 100644
--- a/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml
@@ -13,7 +13,9 @@ if:
   properties:
     compatible:
       contains:
-        const: qcom,usb-hs-phy-apq8064
+        anyOf:
+          - const: qcom,usb-hs-phy-apq8064
+          - const: qcom,usb-hs-phy-msm8960
 then:
   properties:
     resets:
@@ -40,6 +42,7 @@ properties:
           - qcom,usb-hs-phy-apq8064
           - qcom,usb-hs-phy-msm8226
           - qcom,usb-hs-phy-msm8916
+          - qcom,usb-hs-phy-msm8960
           - qcom,usb-hs-phy-msm8974
       - const: qcom,usb-hs-phy
 
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
