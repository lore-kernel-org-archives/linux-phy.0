Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0F1FC83000
	for <linux-phy@archiver.kernel.org>; Thu, 29 Aug 2024 08:21:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yLVnONH4xqsNUssVF9g6t7BKjoMofCuZMf6nmWoDLFs=; b=VUaJ4a36uBhpHW
	xb/7CU47GndRCcIh0zsF3GGRunkeNMsTcvv7CyfKKuW/FQg02IBXboz0Sl1+YThVJu14sieoLkEIj
	yYb1N1+IdXebELYbool5S3SfbtW3/D62EcuI3J0piHT52Ruc84bZwdEnPGJqanRQbovi+cuXyskFp
	qzoDgXCmQODQhdexCgRkFCVtHZRTE7pwIge4VeKb2SyyOUQIRigiN+z4LLdaPGWRWC/UfR//jXMk1
	XMGbkxGq2k40aF90u7TWmxg7l+Ea+JveKNZKcVORUhxz+bV65blbJptwKTmYllF5c8RwLkzYMyJMH
	J+dCZKTs9BJZEjFFPHrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjaPE-000000017HH-1k4P;
	Thu, 29 Aug 2024 08:21:24 +0000
Received: from mail-lj1-x22a.google.com ([2a00:1450:4864:20::22a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjaP9-000000017Dm-0isx
	for linux-phy@lists.infradead.org;
	Thu, 29 Aug 2024 08:21:22 +0000
Received: by mail-lj1-x22a.google.com with SMTP id 38308e7fff4ca-2f4f2868621so4338041fa.0
        for <linux-phy@lists.infradead.org>; Thu, 29 Aug 2024 01:21:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724919677; x=1725524477; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6rRlnDUQ62hVEyyi6Zzf8hyKbeo68gurNoPgtGYPUfQ=;
        b=gEVOSlhNCwXHCkF/KjzSl9ZQEveq223hpFSx8kpvdfoqTbY9Xir/v5+C99VbHEkCAu
         4/1lWORUhNcX9bHq66h/UPToW56odi2lLaBGcezvURSy24wvauaCWUg18H+EVN/23VAt
         H3IKZFQXAeuIRrjz+LlZyThiDKUZJRjdMrbgOI3AspFN5uCJjeOAcgQKkYLd/W+qLTez
         p/oa1l3TenWBarZOjJfSQP4GYecrPSeirrFErRupA9bfO2RvDCzpn1UWEAWuuNHkIUSS
         wLUtCYZ2F5aecFVwdXWCDOvQXt+3ELdnXa66HRM3ah1mE6FmN4J89NA94T34kFpWXFKO
         AHUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724919677; x=1725524477;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6rRlnDUQ62hVEyyi6Zzf8hyKbeo68gurNoPgtGYPUfQ=;
        b=uxHCTe1siMmTQx38e//uj29Cj56qIY0qlCialRHV2FxAEW8uGgDoblnMdC7T5plEqi
         ddmSbohD6b7LIlUrLyMlmYOBqsj+2G2SEIiOLT1gMpmG+OyIsxrgW5pufXvxgXZrq5Jt
         8d8+Q5t/CQM9sKyEo5rYMVJcNLZE785130gOnkEiseUVjZ8J8LoFNkX39YISs4chl0Py
         1Yc9+PI/SjOfso6hbU8zVvStaXhRlAAgMI1QpSd720v6ErR4a4EsQDfE0naqsndt7Cx4
         A9WH3T32Ods833a1dJRM8vbQOSLt8e/f7VDnYyZA4aCWqWyMQFcO0t/gUSqxzGQq9pxU
         OC8A==
X-Forwarded-Encrypted: i=1; AJvYcCX6z2JHoLhhKX6DbBQyGandLCD94cK+YDtrH9Xz326hA9f5+0sD0RqKHqHsQQ21uzHPZ+a/Sh+MC5g=@lists.infradead.org
X-Gm-Message-State: AOJu0YxOJur5rtLsz2eMiyhbckP+XQ32LOUggR9KZy3hQPIMHwbeqZhd
	56E4lnIXIUuP7zrZ2knnpHMU6mwCKCEk1U6dAWK0Q1XxD92p00LLkwdHa7FLvqE=
X-Google-Smtp-Source: AGHT+IEdfiG8wdAXUjLPn9PNPt905p1RpCSOc6/eqVSv+Bplproc2OyIXIw1yR9abz+N9kBoKVLYHw==
X-Received: by 2002:a05:6512:3a84:b0:533:d3e:16f5 with SMTP id 2adb3069b0e04-5353e5b7b4bmr1095192e87.38.1724919676455;
        Thu, 29 Aug 2024 01:21:16 -0700 (PDT)
Received: from umbar.lan ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-535407ac333sm90243e87.70.2024.08.29.01.21.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Aug 2024 01:21:16 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 29 Aug 2024 11:21:13 +0300
Subject: [PATCH 1/2] dt-bindings: phy: add NXP PTN3222 eUSB2 to USB2
 redriver
MIME-Version: 1.0
Message-Id: <20240829-nxp-ptn3222-v1-1-46906bc4747a@linaro.org>
References: <20240829-nxp-ptn3222-v1-0-46906bc4747a@linaro.org>
In-Reply-To: <20240829-nxp-ptn3222-v1-0-46906bc4747a@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Konrad Dybcio <konradybcio@kernel.org>, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1815;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=Rt1zyvmsStyMEQ7Imc4AIEo/xzosFjgkb3d1LP7dDzw=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBm0C96aYenMsYK0ZYEgfvXPWoICoZVsrGBXo0iW
 z+iZUBuB+uJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZtAvegAKCRCLPIo+Aiko
 1Tk1B/9OMMF6fU5VWjCowzP29snvZdmDtWqZY+FDFZ35Ppw4BggT8bS7oxc8bgDQ3r0lgdUxmzY
 3b2Gi8YriCNbt71qpS7N3d88BEEPm6PwU+0ANEpU5IvYLA7RNkP3Sa/MhRrwAZjgXCUsTm5kK9c
 sbBjRkmJFuwEU2/CPbgu2zn8ighHiAiHxHM9bI3YJpRZj/M+isyn31Yi13lw/mDBcNRsT/09PSn
 Y1gcNNqolJldhIR6svu+SJIc4rSiLVkajGk+8dEP9HVX2dn553GQTkIMegD3Tmiz6A95CY/F4V/
 8sxKLU8BThWm1ph1LvDnRhOpsHcnSlncRyOesjUD1N5Bm83h
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240829_012119_273258_8C2A5646 
X-CRM114-Status: GOOD (  10.46  )
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
