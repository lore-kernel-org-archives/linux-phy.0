Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AAF01CF2597
	for <linux-phy@archiver.kernel.org>; Wed, 19 Nov 2025 08:45:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pj+3rkv4/U+6SYAum/gZ5lElCZUnPs+XmFn9OFfJitA=; b=pAHd5+5jFAbOFk
	GwyZmA/QFZqh1F8FZvnAeFRVpzXV7mfwZP/cz0nOvS26dH3l7kCZmI+WjuPY/ifHfC5wVUcgzS+GX
	EqptvN8rIvt+t/l45uBMw3PtxGKjFxk4xy1J6Yj2WHMwygDqcX6Mr7L1+Iv51wW9NAoYyoJZadIai
	fdanQsHE7Zg9myNZp1t9ciOtFqrypL8Mcso9ln4Vki4Z7Ww56lWSwcsKQzAf4bBZkYM9+B9JhtRbY
	FpOxGcX+3Vu4T1EoY4JyN/x4mpJVm4J0M4WQoRzqwrK31BKDqoiFs3uriBErJMMadf9Ui2B0v48Oz
	FoGxronrkC9m7EcC3s/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLdp0-00000002oik-1YY7;
	Wed, 19 Nov 2025 08:45:50 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLdox-00000002ogi-1dDa
	for linux-phy@lists.infradead.org;
	Wed, 19 Nov 2025 08:45:48 +0000
Received: by mail-wr1-x436.google.com with SMTP id ffacd0b85a97d-42b32ff5d10so395379f8f.1
        for <linux-phy@lists.infradead.org>; Wed, 19 Nov 2025 00:45:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763541945; x=1764146745; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KRZnHA1TGMwuASpPE7D+kKGJIb0IcO74PDiT85kyX1U=;
        b=euEPVM2qKeZn/HTDevTK3+idKKisXc5Z9hOxbru3vbChpP1qpMtKpCJtz4dVS6XG3C
         zYuSZowTQZ3Vq25CmxkoziY/LjSYhtz8GVwX5SvKSGGe6CCq8C74XlRgP7nBSkGdF8aZ
         LnYQkYF4+2ITAgkDjq8lAwcw6gX/WhRTvHobNsLz4xkUznDTRNgGeYzbqQ2SD+gNXgIh
         2ipsYrSXPSPBeb1YgFACTgirUR8H4g7TmwfPUAquMVY/0YIN7o9MsLoNBcGqeBXpBYat
         Ob4/hYM3HiGqxQYQzMEC6EJ3T4PmguBVoMIa38ueMG4ANIsYaqYxm4sPvJ0ziKplzWwu
         LhaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763541945; x=1764146745;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=KRZnHA1TGMwuASpPE7D+kKGJIb0IcO74PDiT85kyX1U=;
        b=Im/45NcSG0NxNqSdhWmR8qfuQhM+/jJLnkd3Ch8NcsURRpPHrYKJzRPRkgk2Gl6r0e
         WZ8oM6Y5T6DPB95afHkrsYn2J7FxhmrmnSrvpCZ4qfcMZ0OlZgP2A+eoqhr10wAX0BdM
         9QrG1Kg2PMutqHjz0RQRcRyqgjrF+TgMGTZq00usBNMyrZ7GFos93vNYAH8B+lzi4I7o
         36CGdnbrqvU7ngbNzOyJFGNFyDRnRnXo2SrbScOMGTlBXeSFCaUbnnlK6e0CuPQKUy1h
         iSf/61yYZwihe13M5pzsnsa1KPVI6wpFq/oIPyldsQHoQGmDrZ7kUM25bIBiIXuFlGcw
         Ve6g==
X-Forwarded-Encrypted: i=1; AJvYcCUHMl94t4CI77cvV4bTwpdI1RG3p8Zz0PXW7ghGklEfSEF5bWE18BhCsA8XbKU6JYQnWVWXx4mtQVs=@lists.infradead.org
X-Gm-Message-State: AOJu0YwwDjJfKHPl/eF9yE2Sl9PPpdnLgwRg408AyRDT7j+0NDr+udMz
	zIXobuCiNnm+Qbm6DWezV7EICOIZyvTFNFJejZOKqF+wX6CEU7VsIgE0wDbO6EzAb6M=
X-Gm-Gg: ASbGncvuFTtygwvokzDbCHDfpXja0CHoR/kqgMh/LAzuC0QshJCXwYgwWKDYz0ZT8bu
	GGSAUJ52mhuqGFxaOk/68E8dLAjj5r/TcU3NXsbXGZ7lRGqwikeAa8us9CDbtPffhizZYQaODPy
	XAQrP/SDTM3EXbE21ziAU94sdujZAjWf/WaRxh+AOR90nD5BDtUAhUenHHgIzXWwq33JJFrJMUH
	qtrGyruU9/pPCMqs0s+WNScPM5yVw98TSIkCQT2V4MZYfj6AKjTnWe5UzgIrxQKVvrVndm7VQeG
	k/NHlm3rJeXXWO8GqCSdD3U1Thjs9leUG75qItSYkslFo7529j+GWO5L3hh+vXBs0AVC4/g8tND
	2Sl+6PEBKA4Rn4K3AbkxRcqUUIq1w3pPKLwHbEQvLBlo8wbpBwdcc7WSppsEoQttTIgeKR8rQ7H
	kmmxBb4Wc+EN4myQn9h2wv5+FxcT9AzNSruugkPoCyQg==
X-Google-Smtp-Source: AGHT+IEw4Q1mHxyV0GK0EF0R4D5Pe/ENQZYPBdBr/G/MCcXd/j+D5Ah/WQX+wudmSP9Pop/xn4L6Dg==
X-Received: by 2002:a5d:4482:0:b0:429:b21e:49c3 with SMTP id ffacd0b85a97d-42cb2221330mr1506316f8f.26.1763541945401;
        Wed, 19 Nov 2025 00:45:45 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42b53f0b894sm38132306f8f.26.2025.11.19.00.45.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Nov 2025 00:45:44 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Wed, 19 Nov 2025 09:45:40 +0100
Subject: [PATCH v7 1/3] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy:
 Document lanes mapping when not using in USB-C complex
MIME-Version: 1.0
Message-Id: <20251119-topic-x1e80100-hdmi-v7-1-2bee0e66cc1b@linaro.org>
References: <20251119-topic-x1e80100-hdmi-v7-0-2bee0e66cc1b@linaro.org>
In-Reply-To: <20251119-topic-x1e80100-hdmi-v7-0-2bee0e66cc1b@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Xilin Wu <sophon@radxa.com>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=4548;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=Wwhv46WDe0N83GsQcFn0TZLW8DtrCuNOWijlSA0+FNo=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBpHYO2n8E2xlNYMqA/vWrlycejY8XU+ct7sH6PtbHN
 /QFQdl+JAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaR2DtgAKCRB33NvayMhJ0clkEA
 CJJ1xBSkwbhKBqobEnJeg2Ffxcs8KjAGRW6ahppQTQkOnVDD5ju3l/aJdhj3RFJT5OQQ4xSTKVrGr3
 5NstALKqjtkMw4CQIuZHBJZIB9uYQShPCY5koRh4dNTLzCZWm02VvGAYwiwB2Y8nYODf9iZYc48fUw
 0txVzBsPT66ICYsF5CdY67molSRvFPUO25LTyAeYBndWLc0LIipqTKY+Ktxe2lETgWrCdv2Qc3Am2F
 FlDeDDZ+q9gzdfvuDd0vb2UuCBlW+fs41+TZmTxEgUd7jWvlwZXtOV90isO158jCOm1bd+G++6MXmO
 GRLBMnTB85QzwobTo7WwdB2T/mPudYiF2CvPoV0fdQKkRiSuCoxOdpHpTRIqDVgXcvj2yhUCRY+x2h
 HWQXIlHLYoburfnA3anl2vtG+H9Q55qYr6+30HBPENQJJoR3+YFV7YIojyqyOk+TBvznUoW7hh5kjn
 9YcceGUb1F0Yu37ztPn65+Q4/Gob1pMdlcBGXM0R7ED6ohMjL5Bz5vVVM8qzkq8gKjsqGOfXEWMfrz
 0mS7tnEEWkn7E+CP9ouBZUKcQOcdGpNkVkEd200qB9FcLk/0rJugj+ps/74tWDVxoZp63ts7xR+RG8
 B7Scz44SzpLCCorqQpqNzdk/2Igjd1RpPBtWnxw2vKOUcwpkdqG+AxunFTnw==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251119_004547_471979_78D6AF58 
X-CRM114-Status: GOOD (  13.15  )
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

The QMP USB3/DP Combo PHY hosts an USB3 phy and a DP PHY on top
of a combo glue to route either lanes to the 4 shared physical lanes.

The routing of the lanes can be:
- 2 DP + 2 USB3
- 4 DP
- 2 USB3

The layout of the lanes was designed to be mapped and swapped
related to the USB-C Power Delivery negociation, so it supports
a finite set of mappings inherited by the USB-C Altmode layouts.

Nevertheless those QMP Comby PHY can be used to drive a DisplayPort
connector, DP->HDMI bridge, USB3 A Connector, etc... without
an USB-C connector and no PD events.

Document the data-lanes on numbered port@0 out endpoints,
allowing us to document the lanes mapping to DisplayPort
and/or USB3 connectors/peripherals.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml         | 69 +++++++++++++++++++++-
 1 file changed, 68 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
index c8bc512df08b..e0ec45b96bf5 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
@@ -78,10 +78,77 @@ properties:
 
   ports:
     $ref: /schemas/graph.yaml#/properties/ports
+
     properties:
       port@0:
-        $ref: /schemas/graph.yaml#/properties/port
+        $ref: /schemas/graph.yaml#/$defs/port-base
         description: Output endpoint of the PHY
+        unevaluatedProperties: false
+
+        properties:
+          endpoint:
+            $ref: /schemas/graph.yaml#/$defs/endpoint-base
+            unevaluatedProperties: false
+
+          endpoint@0:
+            $ref: /schemas/graph.yaml#/$defs/endpoint-base
+            description: Display Port Output lanes of the PHY when used with static mapping,
+                         The entry index is the DP lanes index, and the number is the PHY
+                         signal in the order RX0, TX0, TX1, RX1.
+            unevaluatedProperties: false
+
+            properties:
+              # Static lane mappings are mutually exclusive with typec-mux/orientation-mux
+              data-lanes:
+                $ref: /schemas/types.yaml#/definitions/uint32-array
+                minItems: 2
+                maxItems: 4
+                oneOf:
+                  - items: # DisplayPort 1 lane, normal orientation
+                      - const: 3
+                  - items: # DisplayPort 1 lane, flipped orientation
+                      - const: 0
+                  - items: # DisplayPort 2 lanes, normal orientation
+                      - const: 3
+                      - const: 2
+                  - items: # DisplayPort 2 lanes, flipped orientation
+                      - const: 0
+                      - const: 1
+                  - items: # DisplayPort 4 lanes, normal orientation
+                      - const: 3
+                      - const: 2
+                      - const: 1
+                      - const: 0
+                  - items: # DisplayPort 4 lanes, flipped orientation
+                      - const: 0
+                      - const: 1
+                      - const: 2
+                      - const: 3
+            required:
+              - data-lanes
+
+          endpoint@1:
+            $ref: /schemas/graph.yaml#/$defs/endpoint-base
+            description: USB Output lanes of the PHY when used with static mapping.
+                         The entry index is the USB3 lane in the order TX then RX, and the
+                         number is the PHY signal in the order RX0, TX0, TX1, RX1.
+            unevaluatedProperties: false
+
+            properties:
+              # Static lane mappings are mutually exclusive with typec-mux/orientation-mux
+              data-lanes:
+                $ref: /schemas/types.yaml#/definitions/uint32-array
+                minItems: 2
+                oneOf:
+                  - items: # USB3, normal orientation
+                      - const: 1
+                      - const: 0
+                  - items: # USB3, flipped orientation
+                      - const: 2
+                      - const: 3
+
+            required:
+              - data-lanes
 
       port@1:
         $ref: /schemas/graph.yaml#/properties/port

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
