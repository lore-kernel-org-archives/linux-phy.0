Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8CDF1EE4996
	for <linux-phy@archiver.kernel.org>; Sat, 19 Aug 2023 03:17:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wEiu96eY0LKFECC8ZUvhhVuodoyJh4/Woh9uJSe1cZA=; b=4xPhRCNI0cNdnk
	HAg0cfts5s5ZYzZdFidnQGoxqJSF2gB0TTIpsX4/I2ltyM7cksRIw1ahggw1+renBBRK5WZkGLiaE
	fssrOFm9ZepmCFSx11gWwWuyZJXCn6eplkZ0bDC/F5yNwVx5fnt4syFTlslg+RVIxuizusq8e9Uii
	WMKp6ryeLdrgnZ/oFFiL8TGxm1IDyA9yKiy/CgcXjrkpJfaxXAu7sl4QxAM1ZhO40AHxrdDQScGvF
	4nu2mqjewFKYaTdlSYdMdhIVwv2qqmCGyGee7XPFNmCvAN/+HeLyOTC6rkIpP8KO79h+fAKa+JCGq
	ZsG902xfcqROcwc4cWuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qXCT4-00AKef-2u;
	Sat, 19 Aug 2023 03:17:38 +0000
Received: from mail-ot1-x330.google.com ([2607:f8b0:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qXCT0-00AKcV-1n
	for linux-phy@lists.infradead.org;
	Sat, 19 Aug 2023 03:17:35 +0000
Received: by mail-ot1-x330.google.com with SMTP id 46e09a7af769-6bcac140aaaso1258282a34.2
        for <linux-phy@lists.infradead.org>; Fri, 18 Aug 2023 20:17:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692415053; x=1693019853;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=terWZwySlnATmuJMOqlx8HX9SM+9JePulFK7w3bJmCk=;
        b=uzjnUdmBIA+M9L8UZ815q/Hme4Tyj4IIPDcJIxvfc9JIAjGh2xQs/+apf6waiQbTQf
         1GGjkprqSGhXZwyF7wf2UuyUJj/c/3Pp/XUeEx+LvJTK1ymI28NmKaZynCuJCLOMVXyj
         2T/PAHrzx/dhxdOsU0YhoalSUHh4ItTqRdNp4YvyiP335Sn7vEfQMrdJkTc3eDF6lwyy
         MmIlgjNxgD68asVA9VDblH5IJeuEkqjQyp6504HV0GB2svmgH34FxP0CTqL5+2VCGV0t
         wLlqfyHQF6ycsrg44Pgw2srVBbEdbOFlyHu/KV0eJgksLhpMKmkfkg8hHkxng5yKV03+
         Fw8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692415053; x=1693019853;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=terWZwySlnATmuJMOqlx8HX9SM+9JePulFK7w3bJmCk=;
        b=U3erg6j5waxJoVXchVxstyZUzeDGX5eMdpRA0WX4L5Lq4HYC3RdwwkjvEct34Hh85R
         HIHkTDhgVY/ll26mMyRscu478tg6w7H3R6sQwOopUBP/b5T9YdTFBNrDy9akbHu6PwiZ
         PVjYiXXKuGtn9MUTq8rviqw3MsSPUJySauAxEe9hWorCuG4x0xmo+KD8ouRuS1DNSKsS
         l1XrgjOJkf8bZ03G9MXcgToOmqUSNpw0AKm1pTXA7s8UvOmesgPbX1NeXXfiIfvkbMsf
         E4K08qP7x4XQfxF5VqhSjn8o5nJnaNxbN9lSoQqiiQCoH7RUBHvUX7Y3Ru3Wfa5scvcR
         WxFQ==
X-Gm-Message-State: AOJu0Yw/krjaRaRDvl8OTOeS27/oDVa2YHF9D3qlgiZ+eAqb5iqVVxIx
	2gHsqdeNmOo4FKf9t/PKKwrGWw==
X-Google-Smtp-Source: AGHT+IE9p0fUrSh0BRemD6/2a57NfR3EO4r8wsYb4VaF67YNneCxT3TlxARU9Tja4q4pBzykKbc+LA==
X-Received: by 2002:a9d:4d8e:0:b0:6bc:f85e:ab0 with SMTP id u14-20020a9d4d8e000000b006bcf85e0ab0mr1464160otk.3.1692415053415;
        Fri, 18 Aug 2023 20:17:33 -0700 (PDT)
Received: from localhost ([136.49.140.41])
        by smtp.gmail.com with ESMTPSA id a1-20020a056830100100b006b922956cecsm1447686otp.25.2023.08.18.20.17.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Aug 2023 20:17:32 -0700 (PDT)
From: Sam Protsenko <semen.protsenko@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>
Cc: JaeHun Jung <jh0801.jung@samsung.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Marc Kleine-Budde <mkl@pengutronix.de>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org
Subject: [PATCH 1/8] dt-bindings: usb: samsung,exynos-dwc3: Add Exynos850 support
Date: Fri, 18 Aug 2023 22:17:24 -0500
Message-Id: <20230819031731.22618-2-semen.protsenko@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230819031731.22618-1-semen.protsenko@linaro.org>
References: <20230819031731.22618-1-semen.protsenko@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230818_201734_628394_8315ECA4 
X-CRM114-Status: UNSURE (   9.12  )
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

Exynos850 has dwc3 compatible USB controller, so it can reuse existing
dwc3 glue layer. Document a new compatible for Exynos850 and its clocks.

Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
---
 .../bindings/usb/samsung,exynos-dwc3.yaml        | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/samsung,exynos-dwc3.yaml b/Documentation/devicetree/bindings/usb/samsung,exynos-dwc3.yaml
index 42ceaf13cd5d..fc9a425be5fe 100644
--- a/Documentation/devicetree/bindings/usb/samsung,exynos-dwc3.yaml
+++ b/Documentation/devicetree/bindings/usb/samsung,exynos-dwc3.yaml
@@ -15,6 +15,7 @@ properties:
       - samsung,exynos5250-dwusb3
       - samsung,exynos5433-dwusb3
       - samsung,exynos7-dwusb3
+      - samsung,exynos850-dwusb3
 
   '#address-cells':
     const: 1
@@ -101,6 +102,21 @@ allOf:
             - const: usbdrd30_susp_clk
             - const: usbdrd30_axius_clk
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: samsung,exynos850-dwusb3
+    then:
+      properties:
+        clocks:
+          minItems: 2
+          maxItems: 2
+        clock-names:
+          items:
+            - const: bus_early
+            - const: ref
+
 additionalProperties: false
 
 examples:
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
