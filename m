Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BECB4C54E71
	for <linux-phy@archiver.kernel.org>; Fri, 22 Mar 2024 09:42:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vr91oIZH8moLA3kTdxw9G05T1EKm4CAt5Kwx7LcbCEg=; b=vKg1I5t/idgHNb
	NL5c6AJHan42OPcIR+gf4Oal28k0Gde+7m33OsSmmDyHmIxW2qWqs+dVnYBXV8tSQsOkmvg+nTrxO
	jchorZunSweIB1vElWB2L+m0bxkFwqaIhzL5YUrnNUH9rf2Ww7Q715Q7TmQO3sBGLdtoEjKDP05q9
	YUg1DTjntpXr6QQj+UFqEnLq+pXX3sDJ7pfCgiwDr1t2jynNnIVvrVwPsaKQs5UKMFGhK1c+XceNh
	+LiVzB6vuNnwsWOZmdEEihoKNQQ4hu9qQCyHcqSTPzDsMQBDTrIy0/NZSbK3fcZ0pjbbV2KoEYxX8
	39nsgy3BcvvqVxwNBv1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnbQN-00000006dXS-1yhh;
	Fri, 22 Mar 2024 09:42:55 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnbQI-00000006dTn-10wn
	for linux-phy@lists.infradead.org;
	Fri, 22 Mar 2024 09:42:52 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-4147c4862caso2909315e9.0
        for <linux-phy@lists.infradead.org>; Fri, 22 Mar 2024 02:42:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711100566; x=1711705366; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HN3oSp+JRbtDFbrldKc94Yfei/E6XtVFhEcK3+4cH+Y=;
        b=ssCE63Z3jGqX0i/3AorIKR386qTM85LdvM35ISS76YjcIKDxjWjvLD4dw1ONjeN1j0
         VdfJy7VxaCAcFELwh1/ZhalIoyEgdKN3krvpXREVp3FCF4antVTqteWA7C3XeWbfiOSL
         MCPgCSFvRqHIaVEUge9nk0qUQfqaf8SWjinHfP+pLTERlPo1ifVJSi1h+mhtx+r+xsxT
         eZfVzN0N+/xCHouZz9JaHZKIgJk10maFSHIMY9RJlpLUlU2W8HNFP+OugWnRbOCzkUZ5
         9vVsiD4cxi9mGXZoIEDN6RVelwdqopTHPhyS/HPV+6yAUm0y6PVG6IPpqQfj5Qco+FVr
         4tuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711100566; x=1711705366;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HN3oSp+JRbtDFbrldKc94Yfei/E6XtVFhEcK3+4cH+Y=;
        b=AYYU2NBD6vk+ISOxbLarnwgZk9QBaLch8nGmRGY4BJ2fAl4zu6/ftZASLalMSpHlid
         f/k9KPAizcf3JFSH9MicTBPOf9pvLyy/NEqB5oXJKacULZGl5KPpNCBRaNrO71dx0u+J
         ssnQwieM4z8ORru542myKhZNQR44M8kWpmaWTkuLQoW+WQL3W5udK1dcVFqWVDYDol9b
         ZwMgi/5ObcYNuJ+iBJnbc/0l1Xl8plOSEbn6+Th5Zz8ougX73Ms8XoPdHzdOBE7MV7Qi
         JEQkYMULF6tAJM2Rq0iWsf+mjfQ2qCm7HV5TU8DT0JuA3m0RN+2q2aROSh3IKtmctjcv
         2Hzw==
X-Forwarded-Encrypted: i=1; AJvYcCW3yKWDhlOLq340cLEThjExv33KeGgzAg3ibySzaC1TKoRzdzq3rS2wroNa69pdXG+979M48SmXn4h8xzf2gfgoU8ebPhNvgKaTaTSOUg==
X-Gm-Message-State: AOJu0YxNYxCTHI6ulh/YvTFlODen+KJaMMFwS2OvBHotLfUrnPr3Xs/l
	Hm8tSZkMQrxmExQGmHgjbvzw2afjjLCSKiW01LFSinL9cNydJx9XMBuyjYKhD7k=
X-Google-Smtp-Source: AGHT+IG7VkUWz6FVtAHIOz/kPgFoX46zbE19qmEXnmSxhaPJzIoQ4SZJmcLQCMdI29EgkuYgV6UqtA==
X-Received: by 2002:a05:600c:49a7:b0:414:5e91:124f with SMTP id h39-20020a05600c49a700b004145e91124fmr1587412wmp.23.1711100565747;
        Fri, 22 Mar 2024 02:42:45 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id j9-20020a05600c190900b0041461a922c2sm2547845wmq.5.2024.03.22.02.42.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Mar 2024 02:42:45 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Fri, 22 Mar 2024 10:42:38 +0100
Subject: [PATCH v2 1/7] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy:
 document PHY AUX clock on SM8[456]50 SoCs
MIME-Version: 1.0
Message-Id: <20240322-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v2-1-3ec0a966d52f@linaro.org>
References: <20240322-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v2-0-3ec0a966d52f@linaro.org>
In-Reply-To: <20240322-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v2-0-3ec0a966d52f@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=2562;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=c1g+yc7zI9maix5fpYJ7QOTQi0BGTOzrNoya3sqaYyw=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBl/VKQPPVHn83qKZmKU5a42tPZYhmeiWh1Tb7K51SQ
 fIFCcqGJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZf1SkAAKCRB33NvayMhJ0aQKD/
 0WoGrEk5PCnTh5wshSN3AG4/GTZZa3TCtIjHOqnp4tTYGh1UpEUVYmozXoh9xcB2JzUykASy9gChBD
 mYzBtOUNoyIMi0hdM3SEtRncIL6D+6ijJaugNzIZN/KnOnTTL5D746DD2cSLi3yVGEeffOlcuKdG8g
 cGREHJsWXeJwuBIeGjh2ceVVqBMv4WUYbGTgmY2P3NHARRKzFmf+kKVDGMXueMz0+gvFZ2mpKst2QH
 dw96UNpSBcpjgHlPM7DkhxNHdyAPyWH8FeNyZPL7Nm78myAY98179dVpm6RKBZ4YSH4+g9K7lkeiII
 52N5pGM7IgfUQ+TLypND+mDOX87ExdrepHW5ugoD59vTeBORxRQ9kyGNf4trW0Objx7FPcyoJqR7DF
 zPx2dPR+i/vkrKfBsHE8+ebgOPbXDIqP+axLP2a93K5a0O6irPmNZTKDyKXV3uCgLtgpmxBpmapGmb
 Ja3PgogUrAnR99k70cuZJQUASADE7pImF4LfSJcDK5Vw75YYL1hy8/BP57QKo5won8UP/sgID0Y32A
 YihhzzuPOvAz5JGHVBFlND0adUUiAALypPNBYSOu5P1Q5dDsly+UwYUDTpuEa9L8dnOUyHvHoHRm2H
 /BnwRf9Z3nBLI7D0DST9DA01jY6eBIv66tCOgWEYMWsB+yEaWOM5w3z3Chmw==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240322_024250_319552_AAD7CA18 
X-CRM114-Status: GOOD (  12.13  )
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

The PCIe Gen4x2 PHY found in the SM8[456]50 SoCs have a second clock named
"PHY_AUX_CLK" which is an input of the Global Clock Controller (GCC) which
is muxed & gated then returned to the PHY as an input.

Document the clock IDs to select the PIPE clock or the AUX clock,
also enforce a second clock-output-names and a #clock-cells value of 1
for the PCIe Gen4x2 PHY found in the SM8[456]50 SoCs.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   | 27 +++++++++++++++++++---
 include/dt-bindings/phy/phy-qcom-qmp.h             |  4 ++++
 2 files changed, 28 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index ba966a78a128..14ac341b1577 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -88,11 +88,11 @@ properties:
           - description: offset of PCIe 4-lane configuration register
           - description: offset of configuration bit for this PHY
 
-  "#clock-cells":
-    const: 0
+  "#clock-cells": true
 
   clock-output-names:
-    maxItems: 1
+    minItems: 1
+    maxItems: 2
 
   "#phy-cells":
     const: 0
@@ -213,6 +213,27 @@ allOf:
         reset-names:
           maxItems: 1
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,sm8450-qmp-gen4x2-pcie-phy
+              - qcom,sm8550-qmp-gen4x2-pcie-phy
+              - qcom,sm8650-qmp-gen4x2-pcie-phy
+    then:
+      properties:
+        clock-output-names:
+          minItems: 2
+        "#clock-cells":
+          const: 1
+    else:
+      properties:
+        clock-output-names:
+          maxItems: 1
+        "#clock-cells":
+          const: 0
+
 examples:
   - |
     #include <dt-bindings/clock/qcom,gcc-sc8280xp.h>
diff --git a/include/dt-bindings/phy/phy-qcom-qmp.h b/include/dt-bindings/phy/phy-qcom-qmp.h
index 4edec4c5b224..6b43ea9e0051 100644
--- a/include/dt-bindings/phy/phy-qcom-qmp.h
+++ b/include/dt-bindings/phy/phy-qcom-qmp.h
@@ -17,4 +17,8 @@
 #define QMP_USB43DP_USB3_PHY		0
 #define QMP_USB43DP_DP_PHY		1
 
+/* QMP PCIE PHYs */
+#define QMP_PCIE_PIPE_CLK		0
+#define QMP_PCIE_PHY_AUX_CLK		1
+
 #endif /* _DT_BINDINGS_PHY_QMP */

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
