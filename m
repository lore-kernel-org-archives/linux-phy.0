Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8EF34C54798
	for <linux-phy@archiver.kernel.org>; Tue, 27 Feb 2024 22:05:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0LwrJ8OosK8YYocEjQVmYmjN7+bA7qPXzUDtUjAD2Xk=; b=13qPPzmNxABMRi
	esA9DAHvCtk3SrRbIfB/kz4W9SpsLlnsxvu24e2Q05RoTbtBJVjdh501rK2O3iQXgFEnzvALgrQGN
	HyuXHTos5kV5qmP9pvq22euTN4juuxeVXaYbfP0nMjYEOQWbTbBWhMyCR4oLDMKoS5VQ9ArPEZn0v
	dRwzwMXU5Kpo18sZ1G59hkOciehYzjopMPoe/oU0dLUYPJNhiKBG0bOneTa+nSJ9k3WF0oO+p2DKx
	GiYCxYLPB9Jqqd/TX+e2ftFcn1TDUcTivWdL4CKUppf6FiSYzIYaOgSk+0wJMWv82ki8SsJLk5Hg/
	h6j9GH3fhYAu11+3ijsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rf5Zc-000000070Wd-0SXW;
	Tue, 27 Feb 2024 22:05:16 +0000
Received: from mail-qv1-xf2f.google.com ([2607:f8b0:4864:20::f2f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rf5ZN-000000070Q5-2buV;
	Tue, 27 Feb 2024 22:05:03 +0000
Received: by mail-qv1-xf2f.google.com with SMTP id 6a1803df08f44-6900f479e3cso19342336d6.0;
        Tue, 27 Feb 2024 14:05:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1709071500; x=1709676300; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ENJCVwViqySP78QQC22e16vdfpVFUmVF6XiIGfyzNm8=;
        b=Kd+7F/OTAzDA9gjEo05A0GKHMd8OdUO+5rb7weD5zf1kUsUYHplGbDJiHyXxK7WMNE
         9ADuX0CY5fPrUkQb2qYqS4EibwtVJ/ZAto6s5ZYgoGrZoV9HwFrxv3OBxg/Fc1xcmNoo
         vzoLGIfaUHFEztgKSqry470pXJ5PwUnVbEdDtNTEsw3C4LavvyTZDEJPM+vlcLDVp3mu
         CIeK8UPWq+S8+2+RjakK+o73Wa1D2cjzQ4blh36hzht9Jrqoy1qi0sxaOMWrGVChwuT6
         N/T78J3WVfzJaYuS+Bgu3opPhP0H4rX/C/4tndyqyai1eFRrDUgUOSwdwuTBHPg8gkWn
         aNVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709071500; x=1709676300;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ENJCVwViqySP78QQC22e16vdfpVFUmVF6XiIGfyzNm8=;
        b=h3Y/Z2wXn9mapTTBj3RDADsFqeVVViOdQqlv/CXJd5/veI1TGmT3/vfPTRS//CP73m
         k2NeatJ0KMiALxxfvU9dQJTxdH1BiR7vvDqSh0j0tHdJJp39JcIuzYjb4F/gaggTifhD
         hq8rKCvA86vWubccERL/Y3eD4qLksHOYlZ7P25KFOfCLPjmenK2I02mFO4WJyqZlpqr3
         uzK5rp6OYuAdV9p92EKnEZ3pRK3yo4S5z7Dny0MG/N7h46WeYptjCO5vUpJHIljNUpY3
         ykl5C4prsCgMqwto5OmZnl9CJBpgzl1jv3J+fTi2gOF3ZZeGDAXuyBk46GCOAi4v1Qtz
         zm5g==
X-Forwarded-Encrypted: i=1; AJvYcCVlIGoCAmdpVyjbAzvSAPxn+MB85ygDjV1DM1ZDZ2gkdG5tVaFzysHBoGdJDBJkdfM3s7SdiQOoJQginO/bIqPPJfcFES+39D8E43BpyQ==
X-Gm-Message-State: AOJu0YxkbLSyMUr9F+855OqVwDlayd1I0QUNIuaQyPzfjWtDaIXa0xXR
	CEhEslxwrSvAyo4+Ctfp2pi7W1/3LTxu9wd6S7f3jSoorM89FVNyZPYzrQAmkFZllbeu
X-Google-Smtp-Source: AGHT+IEpZQhtRi5w5yIbBlDmAdFLeORFRaXPwFhoPznALYLBHwR3eVYMv/pDmm9JMFJsmDcE9UXAiA==
X-Received: by 2002:a05:6214:518c:b0:68f:fe7f:abff with SMTP id kl12-20020a056214518c00b0068ffe7fabffmr3307878qvb.19.1709071500273;
        Tue, 27 Feb 2024 14:05:00 -0800 (PST)
Received: from aford-System-Version.lan ([2601:447:d002:5be:9ee3:b2ab:6ca:180d])
        by smtp.gmail.com with ESMTPSA id c12-20020a0ce14c000000b0068fc55bcf6asm4569556qvl.119.2024.02.27.14.04.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Feb 2024 14:04:59 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org
Cc: aford@beaconembedded.com,
	Lucas Stach <l.stach@pengutronix.de>,
	Adam Ford <aford173@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [PATCH V7 1/6] dt-bindings: phy: add binding for the i.MX8MP HDMI PHY
Date: Tue, 27 Feb 2024 16:04:35 -0600
Message-ID: <20240227220444.77566-2-aford173@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240227220444.77566-1-aford173@gmail.com>
References: <20240227220444.77566-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240227_140501_668552_EC6D7221 
X-CRM114-Status: GOOD (  15.76  )
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

From: Lucas Stach <l.stach@pengutronix.de>

Add a DT binding for the HDMI PHY found on the i.MX8MP SoC.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
Signed-off-by: Adam Ford <aford173@gmail.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
---
V6:  No Change

V5:  No Change

V4:  No Change

V3:  Removed mintems at the request of Krzysztof and add his
     reviewed-by

V2:  I (Adam) tried to help move this along, so I took Lucas' patch
     and attempted to apply fixes based on feedback.  I don't have
     all the history, so apologies for that.

     Added phy-cells to the required list and fixed an error due
     to the word 'binding' being in the title.
---
 .../bindings/phy/fsl,imx8mp-hdmi-phy.yaml     | 62 +++++++++++++++++++
 1 file changed, 62 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/fsl,imx8mp-hdmi-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/fsl,imx8mp-hdmi-phy.yaml b/Documentation/devicetree/bindings/phy/fsl,imx8mp-hdmi-phy.yaml
new file mode 100644
index 000000000000..c43e86a8c2e0
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/fsl,imx8mp-hdmi-phy.yaml
@@ -0,0 +1,62 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/fsl,imx8mp-hdmi-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Freescale i.MX8MP HDMI PHY
+
+maintainers:
+  - Lucas Stach <l.stach@pengutronix.de>
+
+properties:
+  compatible:
+    enum:
+      - fsl,imx8mp-hdmi-phy
+
+  reg:
+    maxItems: 1
+
+  "#clock-cells":
+    const: 0
+
+  clocks:
+    maxItems: 2
+
+  clock-names:
+    items:
+      - const: apb
+      - const: ref
+
+  "#phy-cells":
+    const: 0
+
+  power-domains:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - "#clock-cells"
+  - clocks
+  - clock-names
+  - "#phy-cells"
+  - power-domains
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/imx8mp-clock.h>
+    #include <dt-bindings/power/imx8mp-power.h>
+
+    phy@32fdff00 {
+        compatible = "fsl,imx8mp-hdmi-phy";
+        reg = <0x32fdff00 0x100>;
+        clocks = <&clk IMX8MP_CLK_HDMI_APB>,
+                 <&clk IMX8MP_CLK_HDMI_24M>;
+        clock-names = "apb", "ref";
+        power-domains = <&hdmi_blk_ctrl IMX8MP_HDMIBLK_PD_HDMI_TX_PHY>;
+        #clock-cells = <0>;
+        #phy-cells = <0>;
+    };
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
