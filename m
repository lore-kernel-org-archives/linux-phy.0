Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70230CA0EF0
	for <linux-phy@archiver.kernel.org>; Fri, 30 Aug 2024 08:24:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0njuW7k1Gw0qYMBgDUN+xb5ML7AhJSJZ9LAu0sPI5Xw=; b=dkfqpfyNV4Sm+v
	qfMCIiE3Mayc/pZqfSSuRziSI+nAGjvGjbQc2K5X2iC5Aje9uvGlFZmdzF/LnBK9BoEjq2vyM4JZm
	zKj6WXjPeUb4EHFubJvwTts7Kwlm9aih6UCzgm+jwbJoMHjAKvPiLkPJDHV1vMwQyQ+C7DC/Atr+9
	BRk1NLDG+XZNMgRBSOfsCLEgX8+rOrmd22NUdGyP8lInQAJ6FsHM9L+0pm5vjBqMIMlliEgQcV7PS
	4YGy1pWYEao2xSjeZIuIBSiskiykWzTLu7BdhTzBxKzoUG/v+knLBo+wBu1jll6T2rlomXzq7ybCM
	JMazB7PC2xn3t3nIV8xA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjwvr-00000005Kck-3Whd;
	Fri, 30 Aug 2024 08:24:35 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjwsF-00000005JYj-0UwO
	for linux-phy@lists.infradead.org;
	Fri, 30 Aug 2024 08:20:53 +0000
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-5334c4d6829so2011095e87.2
        for <linux-phy@lists.infradead.org>; Fri, 30 Aug 2024 01:20:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725006049; x=1725610849; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NploNZbtHibi2ZJNMh06TTcB1PFBEXr824NaRwcdxH4=;
        b=DPwu4EdmVXNE7N9p7QGRVDtiZ7QQjDLIdhNq1cgmBRS9mc9K/OsM7iGy6SdV24wl8c
         G+vvjUiTo4WVNOjOsKJhYKUElaOtf08LeGSA88Rx4HeKgeZ94MtroQuIKNJlCkJ8lC2S
         dAsmEKaRWk8BWPZsQJVqS21OPYlQ2JKM1AgElZLVZPMwsbfSuBwvynyjiuVx+ip9axJ7
         1E2B4WNYV63KaciJE5E+2YWleKaXycOGQvY6VFnOuqtJ2cKapg/eycv+whZ5Dn2MLLsC
         eGT4delrZFy80aIjveYX2iNTtcACDeQ7dd8XVOISyAHD9S8MyaG7DhVHSV48WikEFfu1
         gfpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725006049; x=1725610849;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NploNZbtHibi2ZJNMh06TTcB1PFBEXr824NaRwcdxH4=;
        b=XYkfjdu094tKpKDKXh9+bM3EzR15UG051mv3bV4rmIGaas87i3EG0O5vZBM/tseBiP
         ra6sSwu+ZG15l9kopOEEVDXgqVBI6DEYvVlKBBN6jlYiaWUSwfkrHBjJJOA2/Y5C2kSQ
         02PZfBfeiZa0TWzlljU3/9BVLHYptC0qAUMmTgtCzfs/LrYIWDbpY1oJ6JR0x7cZiTS+
         vfJyQWZ5uUjrOQLKR5PYcMEGGCLa554FYT91svKmfYJjXrvsmfLVMja/ryMwBGIybuYM
         GEUQvx14cJdpbWklUjc+Zh//u8+Lb2Lbts4x7jLJhi6zT5JgOcVTDSU0mPG86Qv8yfRC
         F2+g==
X-Forwarded-Encrypted: i=1; AJvYcCXNniQhle7KBCWGNrfugg6RpsjT9oO2uTXjijsbZ0AlxlUsbgzZ0v2qT9AF0p+2s2CGhc3NYv29CzQ=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywju8TU9zvvZG89vTUSDlFUKMPvM0Nb7cn7Evzr6VtqFc58P53D
	AhTx/QbEPWcD618q8moxnO8ak3tazz6c2xdDSMPKDzxQUYyi4AjxXr6UD/i7nyw=
X-Google-Smtp-Source: AGHT+IFjoXVe7FHll2U5M0piT4wcA911NawXP/5Kjk9sBE49dz+SZpVtOH1da/Ghu5j7P08Cy1gpAw==
X-Received: by 2002:a05:6512:b0b:b0:52e:fd84:cec0 with SMTP id 2adb3069b0e04-53546bc38cdmr988847e87.52.1725006048563;
        Fri, 30 Aug 2024 01:20:48 -0700 (PDT)
Received: from umbar.lan ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5354084e00asm482623e87.271.2024.08.30.01.20.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Aug 2024 01:20:48 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 30 Aug 2024 11:20:45 +0300
Subject: [PATCH v2 1/2] dt-bindings: phy: add NXP PTN3222 eUSB2 to USB2
 redriver
MIME-Version: 1.0
Message-Id: <20240830-nxp-ptn3222-v2-1-4c6d8535cf6c@linaro.org>
References: <20240830-nxp-ptn3222-v2-0-4c6d8535cf6c@linaro.org>
In-Reply-To: <20240830-nxp-ptn3222-v2-0-4c6d8535cf6c@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Konrad Dybcio <konradybcio@kernel.org>, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1871;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=LfGF/Co2ZJ3EMAUZRj7r68zzJQIEdxPhr4ofALXrn2I=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBm0YDfXFp9G/36L62vW481XT0BRm68dKHQdFAsR
 zkKyC7wuKKJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZtGA3wAKCRCLPIo+Aiko
 1VyrCACHueN76NHtu8a869ncODgddH+cdhywW4JZQSPDYK7ZfowB3kQgVAHxG8CNd+CSFz5HWF1
 0BZcatkQY/H52lZKGemBtg0MFxKLLxWXHne1VUDINy4rEEW+SwO1jejRBZ0ZuCkH0/Fz6aAoCx7
 bPLauJCDdAqDbGS2tE4Sk6Cexo3yHW2uO3Mc5n7wbxH926MfGgiQEb8g9RGhH3+im5+0KNY3TCl
 NQEdcIUNJ0w6+RWyDabyK/ZlRBOsaJH22CgPR+CnbOVkWuVYm7pt6c9PmnOu53XOasuwa4yRZ6w
 O1O7m2w9JEFicIxStltOCVcjjOk2gUBaM4VV00KlrqAysmpI
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240830_012051_239999_B0ABA946 
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

The NXP PTN3222 is the single-port eUSB2 to USB2 redriver that performs
translation between eUSB2 and USB2 signalling schemes. It supports all
three data rates: Low Speed, Full Speed and High Speed.

Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../devicetree/bindings/phy/nxp,ptn3222.yaml       | 55 ++++++++++++++++++++++
 1 file changed, 55 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/nxp,ptn3222.yaml b/Documentation/devicetree/bindings/phy/nxp,ptn3222.yaml
new file mode 100644
index 000000000000..acec5bb2391d
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/nxp,ptn3222.yaml
@@ -0,0 +1,55 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/nxp,ptn3222.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: NXP PTN3222 1-port eUSB2 to USB2 redriver
+
+maintainers:
+  - Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
+
+properties:
+  compatible:
+    enum:
+      - nxp,ptn3222
+
+  reg:
+    maxItems: 1
+
+  "#phy-cells":
+    const: 0
+
+  vdd1v8-supply:
+    description: power supply (1.8V)
+
+  vdd3v3-supply:
+    description: power supply (3.3V)
+
+  reset-gpios: true
+
+required:
+  - compatible
+  - reg
+  - '#phy-cells'
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        redriver@4f {
+            compatible = "nxp,ptn3222";
+            reg = <0x4f>;
+            #phy-cells = <0>;
+            vdd3v3-supply = <&vreg_3p3>;
+            vdd1v8-supply = <&vreg_1p8>;
+            reset-gpios = <&gpio_reset GPIO_ACTIVE_LOW>;
+        };
+    };
+...

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
