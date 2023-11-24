Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1010C636BD
	for <linux-phy@archiver.kernel.org>; Fri, 24 Nov 2023 08:41:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1MHaEHSAAZujoThRviODNQBYMpJVL+gmlrS0anx4aM4=; b=Tm18pN6IpA2ZHu
	6z5a5cVKozFVkGjT1KKyuS/+LQJVI0eVy65He317z2OIFilzcgDM6IPy4eLp9YdrvnE9zSOEPgeKJ
	KSd8elPrpT5gDtJ+Ds7XrY4VU9I0+I8i7EJIiTASSH1Jov+W/JsgSQtQLLT/TmiQzauCO4z+WpNlN
	Ruu68AuNXwMczQ/ESivbdZYVw7uahzzh7LpkC5cwBkHeoSoMQGBXCqvt5jetkM71JGtMQPUiha8SD
	Czzae1+OCRa+Vw/J47ZJfom3rhcHFH33htrKukKvsaLX8aPskJY7mZCH7M+0lmwCnYvQwOFifH3XU
	BO4zArH8RXGzYoY/dqKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r6Rkn-006Xsm-14;
	Fri, 24 Nov 2023 08:41:37 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r6Rkg-006Xje-28
	for linux-phy@lists.infradead.org;
	Fri, 24 Nov 2023 08:41:32 +0000
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-40b31232bf0so12964715e9.1
        for <linux-phy@lists.infradead.org>; Fri, 24 Nov 2023 00:41:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700815287; x=1701420087; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pmqHf7vG3OgSbkZDuoqTVPYV9KLNSSDAPn0Rr1mvHIw=;
        b=aOUsA9tumDYfXUI21Nj6aqv+5wzXLhajR8qKQbjd/eJSggLJ/MNbf7jA7xuO2NrQfs
         1FduONmJzM2fulGJLVTC6cwkpXOfhcoGPQzj/VRb40BLhoPzdTMaXEZauofqiIq15RrW
         tABgWrl3evT4NAERLVoeRJEsgTofQ6fIro8wv5I1EbULdVFH6/mbe5gu++gUi+5mM3TY
         OMadvaemB4NCX9YM87qZtTVQhawPN9hoaeLfK1H2mWnpYm+DaqFLSSEk4YkJv2mwIaPQ
         hSpPcfTUo4+aWoAexlv6wLUL9oHna+rCB1SPQTDHzArkN9akM0u5lTziCv5jYmdzhUyW
         /CQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700815287; x=1701420087;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pmqHf7vG3OgSbkZDuoqTVPYV9KLNSSDAPn0Rr1mvHIw=;
        b=pUZ599DoKkndbrmN8zm5p1JurZoy4BX8bVGFP75wYehkhRcdooN8FbcYGIYWHuNohF
         tklAPz3gX6N5iSqre729+8oBmT6u88WHxFjcAt7GjYC/51tKfSauioB1xnR1/6xZBd56
         7qUw1sAIPqaeKop7RcTkG5di6wln80sn8jRPueQjVR/Uxr+VAXIvywE5I/69InioyECP
         7eMSw3brWYlwcHpurbmQvjt4eceJxUt7FXXGiynOKExOvKbAnHOT1AY5kGbKGw8k/AF0
         gm4QYV1iSM27TQhQ0Rj8ev3gBJHpMjw7fRQDPAQGRV6UApaQFIIMlLZBd1+kUmXcQ59c
         liMw==
X-Gm-Message-State: AOJu0YxVzrHMpJMme5p7c1kB6W1WblEJb/t12AysE0RATkOWQTntCBSy
	uJQsRpn7BiGorMn+hBCloSe58Q==
X-Google-Smtp-Source: AGHT+IFPKfH4bRgwYLSScdIAX4eq/D8aF5dbD0VbyY0HPbjeV7slo9I4RmgXoBTePe/TnCrXi0Gj6g==
X-Received: by 2002:adf:f10d:0:b0:331:6c3b:4f1b with SMTP id r13-20020adff10d000000b003316c3b4f1bmr1399602wro.6.1700815286963;
        Fri, 24 Nov 2023 00:41:26 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id c11-20020a5d4f0b000000b00332e67d6564sm2534562wru.67.2023.11.24.00.41.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Nov 2023 00:41:26 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Fri, 24 Nov 2023 09:41:13 +0100
Subject: [PATCH v9 02/12] dt-bindings: soc: amlogic,meson-gx-hhi-sysctrl:
 add example covering meson-axg-hhi-sysctrl
MIME-Version: 1.0
Message-Id: <20231124-amlogic-v6-4-upstream-dsi-ccf-vim3-v9-2-95256ed139e6@linaro.org>
References: <20231124-amlogic-v6-4-upstream-dsi-ccf-vim3-v9-0-95256ed139e6@linaro.org>
In-Reply-To: <20231124-amlogic-v6-4-upstream-dsi-ccf-vim3-v9-0-95256ed139e6@linaro.org>
To: Jerome Brunet <jbrunet@baylibre.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Jagan Teki <jagan@amarulasolutions.com>, 
 Nicolas Belin <nbelin@baylibre.com>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Remi Pommarel <repk@triplefau.lt>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>
Cc: linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org, 
 linux-phy@lists.infradead.org, Rob Herring <robh@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1847;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=KQGG1ytiHBIC5JgUp3eMPUlMvnricP4K9ae8Hqw91b4=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlYGGuRHAkz/o0FoARcM/nBhaSVY4S5HKY2Q4xPPDK
 g0HXtl+JAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZWBhrgAKCRB33NvayMhJ0SoJD/
 40QaN+xss8YhXmbPd7kcRXbNr00DUi9YXy17gL5d+nQzAJClUpXWM/LHE9EckZTKnrONy8hm8IyTsm
 +Q7v99Ma/k1BhRTuMLsWwfwFdFNoAm7OTDjKTKX3C8XSRZsYU+fUgVCAk9mLi0ILxo3unQMKEakNSO
 dE9rb6fvsHrXEVu4hEJRwGyxCKaj3v/DHp1F3CJPhnYNbdk+GJFAYD9mL6/Rquv7pfpR3IjTM6le/R
 CteRqtCWIuTLlnxJ2PR3bb6vtUGOpsAkWvdE95r40uUkhGJ5c4kZUY26dxnxstVIwWFeG2s7oL8t3S
 ZVlS1l/hLzSrpaeHiYKZfwxv5nccbZ/0qhpFqor44I2oPPA1T3HykRL+qs0mIMrBmmmK6W5gikOwrA
 GZifoZAOOG3AChGpZamhVtFHgvVgLP/SvPLmJamG2uSYLX4M7Wu2blhSuoHw/L2HdKB+d3880wK096
 fdWsEuUVgv8fRo95lxdriQPJb69/AHXgHKL4NQcNFjTNqOJ8YkkAquQwhf/yOaDIcnW3ERUKxybg5+
 2lm/rhZbQ1IYLlYT1bip3o4J/rw6V6TvE6LtKHhjvs31uK1MH2UwobR7GUv+a6sJR+vtVHbwzC+9YM
 iNd8dCd57nIB+Awkk1LFT+YJgUoJCMyAh8AI+tTF+Y4Vrb1wSxd8bt5jIWKQ==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231124_004130_736130_75FD94FE 
X-CRM114-Status: UNSURE (   8.26  )
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

Add a third example covering the meson-axg-hhi-sysctrl variant and more
importantly the phy subnode.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 .../soc/amlogic/amlogic,meson-gx-hhi-sysctrl.yaml  | 33 ++++++++++++++++++++++
 1 file changed, 33 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/amlogic/amlogic,meson-gx-hhi-sysctrl.yaml b/Documentation/devicetree/bindings/soc/amlogic/amlogic,meson-gx-hhi-sysctrl.yaml
index 16977e4e4357..c6bce40946d4 100644
--- a/Documentation/devicetree/bindings/soc/amlogic/amlogic,meson-gx-hhi-sysctrl.yaml
+++ b/Documentation/devicetree/bindings/soc/amlogic/amlogic,meson-gx-hhi-sysctrl.yaml
@@ -158,3 +158,36 @@ examples:
             };
         };
     };
+
+  - |
+    system-controller@ff63c000 {
+        compatible = "amlogic,meson-axg-hhi-sysctrl", "simple-mfd", "syscon";
+        reg = <0xff63c000 0x400>;
+
+        clock-controller {
+            compatible = "amlogic,axg-clkc";
+            #clock-cells = <1>;
+            clocks = <&xtal>;
+            clock-names = "xtal";
+        };
+
+        power-controller {
+           compatible = "amlogic,meson-axg-pwrc";
+           #power-domain-cells = <1>;
+           amlogic,ao-sysctrl = <&sysctrl_AO>;
+
+           resets = <&reset_viu>,
+                    <&reset_venc>,
+                    <&reset_vcbus>,
+                    <&reset_vencl>,
+                    <&reset_vid_lock>;
+           reset-names = "viu", "venc", "vcbus", "vencl", "vid_lock";
+           clocks = <&clk_vpu>, <&clk_vapb>;
+           clock-names = "vpu", "vapb";
+        };
+
+        phy {
+           compatible = "amlogic,axg-mipi-pcie-analog-phy";
+           #phy-cells = <0>;
+        };
+    };

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
