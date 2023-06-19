Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E283DEB64D9
	for <linux-phy@archiver.kernel.org>; Mon, 19 Jun 2023 09:13:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m1nkxHdwwn+rXi8zfddprTp1xyxqeu2rVj0DOu583VE=; b=k+n6/GuRSlIhDA
	CnK1IxUFna/s8UtBXKlVV8wGgLjehghfKBssyoFqSblfzyUPvbgY3yEZwNs3Lcykvq5TuWRd3NMNr
	AvJ65Ddc5mlIYGAuObWKrg+DBhRUVs982KDBaI2CpQdNM6tiGpbxqrFBxyLz/qvQMVTCtxmrOhQD7
	M74hO/IJHAMbSHutAMNe7UTEBZ3RthZaImTNQaTfOnxi06WT7RT/l7aTIC5jomHvTbWE0w0pbFN8W
	N5bOBYr5ql5L3meqBFeTED4OJvj9jYle63UDGkP3Yvg2Lh1facQLa1Tk/lPmWF2q0Y+IQZiqqRTK9
	YGonY984AhGpaCX0KjMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBAxJ-007xeB-1q;
	Mon, 19 Jun 2023 09:13:49 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBAxE-007xcK-2y
	for linux-phy@lists.infradead.org;
	Mon, 19 Jun 2023 09:13:46 +0000
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-4f62cf9755eso3983996e87.1
        for <linux-phy@lists.infradead.org>; Mon, 19 Jun 2023 02:13:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1687166022; x=1689758022;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=f/jlXshozPayfgGZVovFzvapxjkBArH5oxzJwkbABuE=;
        b=smPvooVZDMG6/lDx07CAQ9B7NaGB3AL987mVEZR8fMhvsvwiUQe7FnUpQOczc4P79I
         d0LyMjJzgmJOAnqBUWgzDU/PpukuQdirk8x5OH39GJlrTiHW5ep7bXNWe8WXz0/ugg4L
         gY5+W+eixvS6mWyPZ8/o7oPIZtOsaou226x+w3Kf/teuO/bAfSFyZ3dE2r4asorxUZR0
         gs0GPTfaPlZdOf1OZA0UCS3385EIwEf9P+6R3v4yTqDJHb1qWc/8HsjPAOES3HGSrFVD
         ZsmfA8Zl71esltct8+q7H5mTk6On0dUPKq56svoaM1FapfG5hSeAKXRz5dGsJycW/aA1
         63fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687166022; x=1689758022;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=f/jlXshozPayfgGZVovFzvapxjkBArH5oxzJwkbABuE=;
        b=SAxdh41Gk3dSJESXPUhCUQqXYASv6Q+U0571X9lYDY6HOB6SXDMMh0yw6h/Gm63zU9
         ElV/sgmu0HYdxjqvhMxnO1Vt+lKTC4Eyeefg+LIwnf0Emet5PU+aN85vHe4mvt00Hp69
         v+k/Wab8/aNZneqsAqPbQoTzTCk39OD8Sqekw1Eek8rhbLh/FBXm8f9YlQ7xaRddRtyv
         9XO7r+8FLD3swQduWOdhSd2ay2/IRHF86LtePOCO5UMamOdDgH9KV+D2rZizaYSLKfQW
         lTk4KZi2MWNiFyf9CUJXCJe27DtvpiG+E8waoElqiJ1/bZuMn1GXaFOCHSAOh6R1Bp/V
         aT+w==
X-Gm-Message-State: AC+VfDyGX5HhLUW0myJTM1S64ZB0FykG3ZGHKHrTdoDiqT1b3oDix+qJ
	gn7kvt3Xn0kCcmwjdSwEYCmLCQ==
X-Google-Smtp-Source: ACHHUZ4XooL288ZUyMfrNgoXSobChLrzQ7WKm8t5OrAYR/aV6BhbpBu3jmIz3yJrLsi7NTYoVER1lQ==
X-Received: by 2002:a19:661a:0:b0:4f8:418e:1e49 with SMTP id a26-20020a19661a000000b004f8418e1e49mr4791125lfc.16.1687166022604;
        Mon, 19 Jun 2023 02:13:42 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:d9e8:ddbf:7391:a0b0])
        by smtp.gmail.com with ESMTPSA id p20-20020a05600c205400b003f9a6f3f240sm3072993wmg.14.2023.06.19.02.13.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Jun 2023 02:13:42 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [RESEND PATCH v2 2/3] dt-bindings: phy: describe the Qualcomm SGMII PHY
Date: Mon, 19 Jun 2023 11:13:35 +0200
Message-Id: <20230619091336.194914-3-brgl@bgdev.pl>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230619091336.194914-1-brgl@bgdev.pl>
References: <20230619091336.194914-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230619_021344_957276_4BC928AE 
X-CRM114-Status: GOOD (  11.74  )
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

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Describe the SGMII/SerDes PHY present on the sa8775p platforms.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../phy/qcom,sa8775p-dwmac-sgmii-phy.yaml     | 55 +++++++++++++++++++
 1 file changed, 55 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,sa8775p-dwmac-sgmii-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/qcom,sa8775p-dwmac-sgmii-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sa8775p-dwmac-sgmii-phy.yaml
new file mode 100644
index 000000000000..b9107759b2a5
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/qcom,sa8775p-dwmac-sgmii-phy.yaml
@@ -0,0 +1,55 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/qcom,sa8775p-dwmac-sgmii-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm SerDes/SGMII ethernet PHY controller
+
+maintainers:
+  - Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
+
+description:
+  The SerDes PHY sits between the MAC and the external PHY and provides
+  separate Rx Tx lines.
+
+properties:
+  compatible:
+    const: qcom,sa8775p-dwmac-sgmii-phy
+
+  reg:
+    items:
+      - description: serdes
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    const: sgmi_ref
+
+  phy-supply:
+    description:
+      Phandle to a regulator that provides power to the PHY.
+
+  "#phy-cells":
+    const: 0
+
+required:
+  - compatible
+  - reg
+  - "#phy-cells"
+  - clocks
+  - clock-names
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/qcom,sa8775p-gcc.h>
+    serdes_phy: phy@8901000 {
+        compatible = "qcom,sa8775p-dwmac-sgmii-phy";
+        reg = <0x08901000 0xe10>;
+        clocks = <&gcc GCC_SGMI_CLKREF_EN>;
+        clock-names = "sgmi_ref";
+        #phy-cells = <0>;
+    };
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
