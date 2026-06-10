Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E33D2CD8CB2
	for <linux-phy@archiver.kernel.org>; Wed, 10 Jun 2026 11:10:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=glpYvYECY9Zqapl/HyjwRNt830XrKDMCa81R12G2uVU=; b=HUISs5siwlt6Mn
	nRPAAS1V4eJMjITRvuh6NGfy5F7x3pe0vhZcJU2yLLZPCDCSqB5hxYerPnTkTutNNtKEj4GjcbEHb
	IqLdhpPzMNWAlXtJtFziwsl+yiV+R1ES1ssnLY5uLZNHsYgxMiqLLRLYf/4yJ1RcOd3Bw7rotfmW+
	iI2rWAmH1KnJVorc/onEaCnelMdMBE35uGoSt8m87LFGidDaIzaPXu7KtgW4Z/1neHLXFeasEIuEb
	SsKLz1XUrBYLy5+o2zKhv4t9uQniAZ1o4aK/Z8e3Ch0VNVf5KWb4YRfE9dYgNDMimtZVUPlXd2Arb
	x8TIjPQXcJ6K7OPWbjSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXGpV-00000007Ut5-2q23;
	Wed, 10 Jun 2026 11:10:41 +0000
Received: from mail-pl1-x636.google.com ([2607:f8b0:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXGpS-00000007Use-2mGS
	for linux-phy@lists.infradead.org;
	Wed, 10 Jun 2026 11:10:40 +0000
Received: by mail-pl1-x636.google.com with SMTP id d9443c01a7336-2c0c1e0b0faso45615875ad.0
        for <linux-phy@lists.infradead.org>; Wed, 10 Jun 2026 04:10:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781089838; x=1781694638; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8pl4zL6FnCSl3D9yZvxGpHfWt8VIgNStkRi0gondAh0=;
        b=qVyvzyuEfGm20SpCOwI5McC6hCxuolpiaYDH7A0bde6U6P1N4SXwBUyB0+imsp8FdT
         Yw/JsweDIJTHRsozkGdB0yZQgwAFMTtkVdrqW50kk4dSybaVIWeBgB9ggH5u748NU0EI
         aAoOvKabIv/UPikspysjmps/sJf/BvfudOyC4eTG9H4u6/xsoG8Bt+lBE2eoWWrTcB2E
         fibNgRGLcRxM1yesKcR6X1ixJ1H/SrzTmsJuEuhw7qP7pilGERdx04eGu29z301pE0cF
         b5lcLpFPVvO+BXJOAA8U8xLOTA/Fta4P+ldFWtnGg1Kpj5UMVxIpRvBCB+s3JR6+NflG
         xgZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781089838; x=1781694638;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=8pl4zL6FnCSl3D9yZvxGpHfWt8VIgNStkRi0gondAh0=;
        b=iyW+W3cdrxEZJtCgKXqzVgSTBK7TO3NzY4w4CYsU5I8aMNK0Q1sDSsOwtaJaPXFXmO
         0eTvJT232FeLxSqpMRa6Yfdpsy+MSiaooyGb17ErvV2bF/+EV3lypZ79l/KLcUtUeEQm
         nbp0iU+FIFMqswXk11sWd48sioA9dk9WO22aqmWFFe3Cf5kllg/432Odwf2Wk81Fsnik
         yQET4uLWPB8NNeqgpiaKUxpmcS3WzEfnWH6KY7nC3Sod8Fkv6B4pQCqP28t2vZVSdtFO
         nJfnwhFHB2Pr1kp91mXaGE3XlAM9gPhGcad92XECHb7lR8edlEgqKEbSKPmnrKlLKaJK
         gNzw==
X-Forwarded-Encrypted: i=1; AFNElJ8YGrMXawfuThN/5gKiRTtjiOG5wASKNVjI7VCHKXl33sfGV8ApsPHHqKkdTEaQiGGW3SLFzf/8bZ4=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz663+1AV7F46IVM/tG73e5yh1Al/R9liTE7uj41ONvnEf+wgGz
	mz5m8DoASclnkKbBJbyXeQiPXWKQJD4bKwR/RTY3Kog+xa+3UAiNG1Iy
X-Gm-Gg: Acq92OHJduCyVGP8WlOkh5s+zDfrXRJ3F/tsZW6OO0yNMA4Wm0fcX5zG9Pg1Q5bUX0M
	o9Lm9dtHG2Ndrl3RpYL2a4Vp2pqez95P3hiXmvOjuSGFEUkrykqteQVJ1h5XB701EamRlKJshZg
	jvydMVtRlWWYJwLLbBIEw8c2vhPMJXvv3NzPz+uKwOGNBLviZ0iBS4TI2tOCIRFHomuHyT8DVGQ
	ErBypgHRm28eXTlu/Z2DmcXU4Of08BHXo5R2NluExY3lDk7SJJitYFhwq/8hzKty4qTnJKNU7dw
	o8YlvzLCVAtES/KHCX6zzrkckeYJzdbFGnyzgQ+cbEfJUQokyCQWyAmN6b5y/dt/J/hBpe57FD5
	BHRXuCR381Nt7bEqLbasSxZ5fo51TwZ6qi9exybdTO7dWvjC4mQY/pHTgpnBZ0sASHiP7QDnBhA
	uwa8CuMbmkz/VY0HlQhxJznKHB6WksSIDLw/mT0WdyDS3iTw0z
X-Received: by 2002:a17:903:1aed:b0:2c1:69cb:4423 with SMTP id d9443c01a7336-2c1e7e527bdmr282301365ad.14.1781089837945;
        Wed, 10 Jun 2026 04:10:37 -0700 (PDT)
Received: from [127.0.1.1] ([2409:40f4:4111:52c8:138e:8096:a8df:e68b])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c164f6d37esm317175205ad.9.2026.06.10.04.10.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jun 2026 04:10:36 -0700 (PDT)
From: Ramshouriesh <rshouriesh@gmail.com>
Date: Wed, 10 Jun 2026 16:39:27 +0530
Subject: [PATCH 2/9] media: dt-bindings: Add Himax HM1092 NIR sensor
MIME-Version: 1.0
Message-Id: <20260610-a14-himax-hm1092-v1-2-0c9907da47ed@gmail.com>
References: <20260610-a14-himax-hm1092-v1-0-0c9907da47ed@gmail.com>
In-Reply-To: <20260610-a14-himax-hm1092-v1-0-0c9907da47ed@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
 Loic Poulain <loic.poulain@oss.qualcomm.com>, 
 Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: Aleksandrs Vinarskis <alex@vinarskis.com>, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, 
 linux-phy@lists.infradead.org, Ramshouriesh <rshouriesh@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3984; i=rshouriesh@gmail.com;
 h=from:subject:message-id; bh=VWR+UfxFqG4y2XgGqNFvBLcEeTwzUQd31HSReE2GSKc=;
 b=owEBbQKS/ZANAwAKARWVil4RHAXeAcsmYgBqKUYNQ0lDIYKRKLGlAdAaa7mRH+rmFxzbk0An/
 +RFXhSngMyJAjMEAAEKAB0WIQS/0QuzNKVfvUNlNAkVlYpeERwF3gUCailGDQAKCRAVlYpeERwF
 3vn1EACmNQOTttnHuckeeKdueEVCHPwLA9ghWtrqwfH/g7yudqQ4EM0nI2bRq+SuH6BbXS94Oys
 /7pgxfpYKk6w2EFHM9BnrQxaGrfTfCEuP1fXmc4VJ9tjOY+PImPr8DgLJ+xYEGdshXN0jRsjiJn
 rEhgmQyHt5gUj2yDPAw1MFheNT3WOXoI2Ka0ZuE2O9LcW/pPM0eXa06veZM8uBPHz2FZ9PAEbL/
 s95Aqz8vzDRzj6VZqpqkuAKnZXFb9KVQPzvM6nvxs7c5c6UKBzKKz+b20YFi1Utvcmn4ruGvwAi
 K0NU3UqPa7XAR2RokYFn8Roxa0ht5eFcsoOXAbaj8OrrBm9YvjN+hHeRM3SpNggHvmxUG9+OrK/
 SPRRXI8TCZyDQ2bALoGmxlde9tCo5+lAAzz7s/NT78KBLBClDmMuS1/6luPJjpuT6babxRLbmdg
 i+1FvoFDvlGTJDwzrJPr+nzyPELq4Bw5blBniKcQWSe0VFwG31/W0Htf8xKUjyK1+/Rx2lP8oCT
 2dRvK9tfb5dDpjdrm7U3hEgwhu4sNgmD83l2YoEzeJWFVVHCr/oV1YavvYWS0E9/Wsy/IuLMbeS
 1dV+NsYpca1XVMKEdkYKT0czF5whnKZ113PTp3wx6ti1iO7/JzWfzIgWy3KhontbvoDbEXwb379
 KC8OILPPm+CDiBA==
X-Developer-Key: i=rshouriesh@gmail.com; a=openpgp;
 fpr=BFD10BB334A55FBD4365340915958A5E111C05DE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260610_041038_712084_1650EEC3 
X-CRM114-Status: GOOD (  12.97  )
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

Add a dt-binding schema for the Himax HM1092 1MP monochrome
near-infrared CMOS sensor, used as the face-authentication IR camera on
Snapdragon X laptops such as the ASUS Zenbook A14. The sensor streams
10-bit RAW over 1 or 2 MIPI CSI-2 data lanes.

The optional generic "leds" property (video-interface-devices.yaml)
associates an IR illuminator flash LED with the sensor, which the
driver strobes while streaming.

Signed-off-by: Ramshouriesh <rshouriesh@gmail.com>
---
 .../bindings/media/i2c/himax,hm1092.yaml           | 118 +++++++++++++++++++++
 1 file changed, 118 insertions(+)

diff --git a/Documentation/devicetree/bindings/media/i2c/himax,hm1092.yaml b/Documentation/devicetree/bindings/media/i2c/himax,hm1092.yaml
new file mode 100644
index 000000000000..085001493a20
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/i2c/himax,hm1092.yaml
@@ -0,0 +1,118 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/i2c/himax,hm1092.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Himax HM1092 Monochrome NIR Sensor
+
+maintainers:
+  - Ramshouriesh <rshouriesh@gmail.com>
+
+description:
+  The Himax HM1092 is a 1 megapixel monochrome near-infrared CMOS image
+  sensor with a MIPI CSI-2 interface, commonly used as the IR camera for
+  face authentication on laptops. It supports 10 bit RAW output at
+  1288x728 over 1 or 2 CSI-2 data lanes. An optional infrared
+  illuminator LED may be associated with the sensor through the generic
+  "leds" property; the driver strobes it while the sensor is streaming
+  so the scene stays lit for IR capture.
+
+allOf:
+  - $ref: /schemas/media/video-interface-devices.yaml#
+
+properties:
+  compatible:
+    const: himax,hm1092
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  avdd-supply:
+    description: Analogue circuit voltage supply.
+
+  dovdd-supply:
+    description: I/O circuit voltage supply.
+
+  dvdd-supply:
+    description: Digital circuit voltage supply.
+
+  reset-gpios:
+    maxItems: 1
+    description: Active low GPIO connected to the XSHUTDOWN pad.
+
+  leds:
+    description:
+      Optional phandle to an infrared illuminator flash LED strobed by
+      the driver while streaming.
+
+  port:
+    $ref: /schemas/graph.yaml#/$defs/port-base
+    additionalProperties: false
+
+    properties:
+      endpoint:
+        $ref: /schemas/media/video-interfaces.yaml#
+        additionalProperties: false
+
+        properties:
+          data-lanes:
+            minItems: 1
+            maxItems: 2
+          link-frequencies: true
+          remote-endpoint: true
+
+        required:
+          - data-lanes
+          - link-frequencies
+          - remote-endpoint
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - port
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        camera@24 {
+            compatible = "himax,hm1092";
+            reg = <0x24>;
+
+            reset-gpios = <&tlmm 109 GPIO_ACTIVE_LOW>;
+            pinctrl-names = "default";
+            pinctrl-0 = <&cam_ir_default>;
+
+            clocks = <&camcc 1>;
+            assigned-clocks = <&camcc 1>;
+            assigned-clock-rates = <24000000>;
+
+            orientation = <0>;
+
+            leds = <&ir_flash>;
+
+            avdd-supply = <&vreg_l7m_2p9>;
+            dvdd-supply = <&vreg_l7m_2p9>;
+            dovdd-supply = <&vreg_l4m_1p8>;
+
+            port {
+                hm1092_ep: endpoint {
+                    data-lanes = <1>;
+                    link-frequencies = /bits/ 64 <400000000>;
+                    remote-endpoint = <&camss_csiphy0_inep>;
+                };
+            };
+        };
+    };
+...

-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
