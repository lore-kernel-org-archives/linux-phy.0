Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2E5FFC46467
	for <linux-phy@archiver.kernel.org>; Mon, 16 Jan 2023 20:21:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:From:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hYzUu2XmJg+bPiEF6qGMBcSrvHQnGk6OviD41xzzbWU=; b=GqwHmteDc2C5iX
	SH3Ze4NOH1K6kJKHIz90CIrLGSjXru/O3Tje5EJdKLU9Qr3ksQ9Yt4pJ+SprG2ufgFj8etJsXiuZL
	JVDHMCgEvnnQKospFjVHZcBCOvaYe5VYRMBnNAx/T36h3sgCOj95W7VDyaRz+2K4y1llc+70NeIEW
	a4BjGepVLn8y5NRvYGfjNy2nWZ6bmcxaUP9d4YhcoJgh0zMjjn9TvtVL+OGlylWETXWa805+dCOXj
	nBc03bzszz67yM+fse4UU3hshFmfcyUX2eRLzALkNPXhqDd+H6JVaMauq/R/U3uHtMwOOuT4TjqxW
	7NTBtTWsRNuTRW9PH81w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHVzC-00BxoI-H3; Mon, 16 Jan 2023 20:21:42 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHVz1-00Bxl7-Sz; Mon, 16 Jan 2023 20:21:33 +0000
Received: by mail-wr1-x42f.google.com with SMTP id k8so14076279wrc.9;
        Mon, 16 Jan 2023 12:21:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WHkIkbVKLCXvEDsaxHuzRlYTaDc9U7AuFKwcOpzQ0R8=;
        b=ghAAysYYXNEWrVsfssS1FzZcLJVvOTDCTIyFshsJemsW2mMVcVF7W70T1ihTGxvbTA
         7vzYKk121j04xKHhhn7UlY/WcrfRCUsrJmMGCXGa/3iZ2NOFMOccweI60d2COpOjDwr+
         jQrPGnnIwZxJtuUn5Wbkwi3qMGWTSf5G1NeNiiKUNr3045iqJpjaFo9DwhfrR+PfLEWI
         OJVscHPBPMTCL2dp57s7OgYgoM//s0jM6ycSFa535pV+xoQxaFFG3iPbPFrDEPA2E1jN
         LyrlP8ocY6bkTEt8gcDbFZ5eObuRUy+ZREeOrnOGY8GZgjL05jV+UoklQmlRMXoCC39V
         hO1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=WHkIkbVKLCXvEDsaxHuzRlYTaDc9U7AuFKwcOpzQ0R8=;
        b=RK+U7jSRm0XFgCsU5n4NkGE0YIADK79P0bCSwo3l8bPpD6kC0w8jOLvChg88rDNZPN
         8dg+7EL51DOwdD0XHretTG/h35SOVkTPRdDXwNJ+KeODyGis0z8+4S3wenZ3Y/LMNFXR
         7PfHG2xvafma3mYq7GwGYsLlMpJ0JNtoC5QmuxZGQTIKlkmY/rGTDJ/aZpBQQJbe1NmI
         zmZXSk1WiEDp2Ab9Kbz0f272V69Rttj4WHGSLi8xNURFGXTVtieKdtu2MVBIig7NUwzB
         3JrXACniTSuZGbL5W7YBzl/v5g/dqEx+2NMxn0FP7IuThnyqWMte4KBUDfKqt1bgVq6z
         V1Ew==
X-Gm-Message-State: AFqh2kqK3hy2rR9oUlwRkSLQudJWAxcOifF2X/z44WZZ+HEok0BUlbgJ
	hXExqcWLtbt0dIrBFt8ySyo=
X-Google-Smtp-Source: AMrXdXtcq2IlBvdXggAVobFYX1ii8S0eaeQ+Xgf82n3t8pt0yUGs609GaF/R1EFd4XsHG1d1LLEj1A==
X-Received: by 2002:a5d:55c1:0:b0:2bd:dabe:b60a with SMTP id i1-20020a5d55c1000000b002bddabeb60amr585620wrw.36.1673900488398;
        Mon, 16 Jan 2023 12:21:28 -0800 (PST)
Received: from ?IPV6:2a01:c23:c4bc:ff00:1041:a2b8:3c58:ba6d? (dynamic-2a01-0c23-c4bc-ff00-1041-a2b8-3c58-ba6d.c23.pool.telefonica.de. [2a01:c23:c4bc:ff00:1041:a2b8:3c58:ba6d])
        by smtp.googlemail.com with ESMTPSA id n13-20020a5d67cd000000b002bdcce37d31sm15412076wrw.99.2023.01.16.12.21.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Jan 2023 12:21:28 -0800 (PST)
Message-ID: <0a82be92-ce85-da34-9d6f-4b33034473e5@gmail.com>
Date: Mon, 16 Jan 2023 21:19:03 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
From: Heiner Kallweit <hkallweit1@gmail.com>
Subject: [PATCH v2] dt-bindings: phy: g12a-usb3-pcie-phy: fix compatible
 string documentation
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: linux-phy@lists.infradead.org,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230116_122131_972532_11107DC4 
X-CRM114-Status: UNSURE (   7.57  )
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

The compatible string in the driver doesn't have the meson prefix.
Fix this in the documentation and rename the file accordingly.

Fixes: 87a55485f2fc ("dt-bindings: phy: meson-g12a-usb3-pcie-phy: convert to yaml")
Cc: stable@vger.kernel.org
Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
---
v2:
- align $id with new file name
---
 ...a-usb3-pcie-phy.yaml => amlogic,g12a-usb3-pcie-phy.yaml} | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)
 rename Documentation/devicetree/bindings/phy/{amlogic,meson-g12a-usb3-pcie-phy.yaml => amlogic,g12a-usb3-pcie-phy.yaml} (82%)

diff --git a/Documentation/devicetree/bindings/phy/amlogic,meson-g12a-usb3-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/amlogic,g12a-usb3-pcie-phy.yaml
similarity index 82%
rename from Documentation/devicetree/bindings/phy/amlogic,meson-g12a-usb3-pcie-phy.yaml
rename to Documentation/devicetree/bindings/phy/amlogic,g12a-usb3-pcie-phy.yaml
index 868b4e6fd..129d26e99 100644
--- a/Documentation/devicetree/bindings/phy/amlogic,meson-g12a-usb3-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/amlogic,g12a-usb3-pcie-phy.yaml
@@ -2,7 +2,7 @@
 # Copyright 2019 BayLibre, SAS
 %YAML 1.2
 ---
-$id: "http://devicetree.org/schemas/phy/amlogic,meson-g12a-usb3-pcie-phy.yaml#"
+$id: "http://devicetree.org/schemas/phy/amlogic,g12a-usb3-pcie-phy.yaml#"
 $schema: "http://devicetree.org/meta-schemas/core.yaml#"
 
 title: Amlogic G12A USB3 + PCIE Combo PHY
@@ -13,7 +13,7 @@ maintainers:
 properties:
   compatible:
     enum:
-      - amlogic,meson-g12a-usb3-pcie-phy
+      - amlogic,g12a-usb3-pcie-phy
 
   reg:
     maxItems: 1
@@ -49,7 +49,7 @@ additionalProperties: false
 examples:
   - |
     phy@46000 {
-          compatible = "amlogic,meson-g12a-usb3-pcie-phy";
+          compatible = "amlogic,g12a-usb3-pcie-phy";
           reg = <0x46000 0x2000>;
           clocks = <&ref_clk>;
           clock-names = "ref_clk";
-- 
2.39.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
