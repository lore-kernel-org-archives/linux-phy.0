Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CBD99CAC586
	for <linux-phy@archiver.kernel.org>; Mon,  8 Sep 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fZntpVT2BNeq0lOPmMOzNRWr4FoOGlZGcRAcX7G4OOc=; b=mf7yRv7e6YGubM
	fJyKvuUPgHBK7r/V4lSKxPiwKJ4VYxqIaTyDCEYVrI9+uP01sgUcEqGKbXPxONMsBbtjI+ZxcaQhI
	IwdddrRdg10EoOH788forh13pdIN4SFBLM1PUAqmLZWFDud6f7a8Xcn8Q+yBdxSycZa4RPkp6AUnV
	qg2SccNoY7carbKuK0YsCBMT3QIJLZXOJZ4dXY/JXS4qkLa4GY1H8a49dpQ9XrR4U7p9zcBDCQqyk
	3wT5eA+d2SuRe13vpGgeo+CREqMFbeAcS31mFOw4KFT3A1eVPa+QfXuFpg/g0c3qeGHTRi2Nv8it/
	FIZBGfmy0nruBvLUr7VQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvfNJ-000000013B0-1HWR;
	Mon, 08 Sep 2025 17:09:53 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvbXp-0000000HErz-2YCR
	for linux-phy@lists.infradead.org;
	Mon, 08 Sep 2025 13:04:30 +0000
Received: by mail-wr1-x436.google.com with SMTP id ffacd0b85a97d-3e7428c4cbdso786153f8f.0
        for <linux-phy@lists.infradead.org>; Mon, 08 Sep 2025 06:04:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757336668; x=1757941468; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=w3lH/JWdCi466yT+Udujas8igi6yje6X10bcnQeYQ7U=;
        b=BzG0oD3fKwRrrIOWMmYcxhnEkdwaCdprAqT9YZ+KUwb4hk7Nn3QnF/lwQjPE9h7lZe
         2M5NbPa0IfuCoZX8Ro9eL9CADi8NHCq0tnOhMUmC7KrtlzuI9cMxiK4smnJOZ+RjMb37
         ZWM5ABsOgNtzci64/C8E0nkMSWTnDRl+dEqz7b0UYb58Ad+UslsjfRCvqr7kKE0fxusA
         mXcR9CDV0PaLndFUG4oUOmf7Ujtos2lmVqwtGMJuTlVSDLZc0y3kIug1vjxuBUeF2uR8
         8l2/ix+Gvxe7pwQA9hcqNNSGeGVh0X+eLMcCfzbV3BtwI3y/tTijk+mub5f6LdzktNIN
         CgCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757336668; x=1757941468;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=w3lH/JWdCi466yT+Udujas8igi6yje6X10bcnQeYQ7U=;
        b=sQifM9BfJct2ApOFotdaB13x9kunc1FgqmVmOzZt8S3FVHZUP2cD4wQ9xeyuI9rJhn
         C1YDhJgKPDGbXhpgrAAm7y9YSn28v9fvmwcJs278i32APrLVg3ZyDShJIlww+c14fv9w
         VYIqFDw3Labg4zGvp+b/Q2Q3k+uKISFUz9QI/WCzwcyUO8lArlKVvm0iwpzbAB4kp+5q
         ColGtR0/dlU+tFhDaTbO8MnpkVHYj5zkkFwG7hej+R2HRtCNjUlPt9uyDBDb3F5DGcyL
         12V7yUtIPnu0A83XMsY9/A+t9l6bB3x9RL2nil/jPyvsgB8dm9OcWjjrdf4inwlV5but
         N/Ng==
X-Forwarded-Encrypted: i=1; AJvYcCWo0d1gtXzJw8nnYTTm6HjGDOYxcRWE7C7r4XLBLmLyoX48symdJ+vPQMQQ9woolDfKClmScMYCAVg=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzr8qm8sYADDETEm3by+b2v7FDfzDXvK2EdUa8Ab9E6UfLx5POg
	lgoji4+xKMAy1g+QRB3Xkjo+mvnJh8hA2LkZlSJ3NTsIbYXHM28KhlrYOse3ykgXya4=
X-Gm-Gg: ASbGncv6/4+b7ezp4GLq5R5VIqqkcHQ7qlftOWUX13EuJnnuJbCCpYaUgyPLM/cZXCQ
	hXpWWEXHuPy/5XWi4PESEsGXWkzxtUlsB3o7pZZvsWQFOGIG8iVjumugWSSX1E0IXrvW+qF4EZ1
	KCq9kHCflvBOyBsfOuj8G5Avo0aMEsthC815nHSJQBXI0mAJNzAfiNDGz68N+hXVH5J8lEJ3/Ns
	AWtq1el9BXzhWYfGiwuMHv2l1y4qMq4NYZjEGqNoK1Kp0WVcDb74A4ruwmtvVT3djOg7GgU8fC7
	yhsaJnXsZUZyLDG5s+Unc7gheSBezlEO94x2f0v/Y/NDwdb0qblwxKFWpHaSGv39bBMiKKeVEWY
	6QsXdvx1yqMvH9Mwhee2HjFu5DiCwUgztDZAK5lFt1gynbdEsBjgODw==
X-Google-Smtp-Source: AGHT+IEoCJMvrySbDq5jyk5RqjV0NPwALftNDE3q+qWzdFdOy/QBMsqqG1w+PllPiaKresF5LY8s5A==
X-Received: by 2002:a5d:5f42:0:b0:3bd:13d6:6c21 with SMTP id ffacd0b85a97d-3e2fa64c720mr11205775f8f.0.1757336667919;
        Mon, 08 Sep 2025 06:04:27 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45dd6891d23sm145632475e9.4.2025.09.08.06.04.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Sep 2025 06:04:27 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 08 Sep 2025 15:04:20 +0200
Subject: [PATCH v3 3/5] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy:
 Document lanes mapping when not using in USB-C complex
MIME-Version: 1.0
Message-Id: <20250908-topic-x1e80100-hdmi-v3-3-c53b0f2bc2fb@linaro.org>
References: <20250908-topic-x1e80100-hdmi-v3-0-c53b0f2bc2fb@linaro.org>
In-Reply-To: <20250908-topic-x1e80100-hdmi-v3-0-c53b0f2bc2fb@linaro.org>
To: Andrzej Hajda <andrzej.hajda@intel.com>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3818;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=l4jGjPnr6kkCLH/MgyK2xCnnHwY9L5KdNaTbIaLUKls=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBovtRWHuZlAgozjbJFii6xfRJsDGdI6qiUd5eBIkOO
 gHg1sbqJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaL7UVgAKCRB33NvayMhJ0VO0D/
 wN1IoFM+6iDMczeX69C67hBvvLtrQstZFRcQP2yOXqNzF+BNoOKcHNvVJwlesJ/bhhkmogtc/gYBG5
 4XN3Nh8lpDkzzH0uHemVY143GefTfB9r2huYqAUa9QQS+PHrWvDRPrsZnTlkqgim9ETpSWSY5XaaY3
 H75bzT+NVggBudkNCaMUgqU5MTzpuftNb3q80bQDgNCuzrKdNCwqtGGQ+4GGBKYJvXI/TMHT9tb88A
 zk9Qg7hq0kDunLwjNODM8+iMRPqDsi9VenmJUejjO/4Qv0Id4+4c8SXMx7xNDCGcdmy4X2PhUD+/vZ
 tuBuhdooBoUTXuL1IsBaqtg40K9EUY+pwAlTGfZr4WROgsgdmJ8o+VMsdj8bC3fGxTSAo7d/0H1gpG
 fI9wHZbMZkgvxbFhCWedjMDD0lRymsX9FR6z67Kg24aW7df04l62Sinpn7G+v9f7CwdtqY2z3RruP2
 prGrPv1UHPtK0RYzkdBO8ZNpO82TRCla3tvI79pzi4BQLnM+BkqLiz9IL2/phpG6YpG+GDThG3E4EI
 bUnLnZdlap7QuzJ8beN0t3zc5VHCQo/FN0qn0pJpBow49cDWzRVgbHrJr5i52VwvkUhge/6+4782Nk
 Mrd94O2dUWbZKQtUnToaTfid3nnf2bZZOL0lei1dE1+cP+ZQaM7bYHHRczxg==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250908_060429_656250_FEA87551 
X-CRM114-Status: GOOD (  12.41  )
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

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml         | 59 +++++++++++++++++++++-
 1 file changed, 58 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
index 5005514d7c3a1e4a8893883497fd204bc04e12be..51e0d0983091af0b8a5170ac34a05ab0acc435a3 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
@@ -81,10 +81,67 @@ properties:
 
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
+            description: Display Port Output lanes of the PHY when used with static mapping
+            unevaluatedProperties: false
+
+            properties:
+              data-lanes:
+                $ref: /schemas/types.yaml#/definitions/uint32-array
+                minItems: 2
+                maxItems: 4
+                oneOf:
+                  - items: # DisplayPort 2 lanes, normal orientation
+                      - const: 0
+                      - const: 1
+                  - items: # DisplayPort 2 lanes, flipped orientation
+                      - const: 3
+                      - const: 2
+                  - items: # DisplayPort 4 lanes, normal orientation
+                      - const: 0
+                      - const: 1
+                      - const: 2
+                      - const: 3
+                  - items: # DisplayPort 4 lanes, flipped orientation
+                      - const: 3
+                      - const: 2
+                      - const: 1
+                      - const: 0
+            required:
+              - data-lanes
+
+          endpoint@1:
+            $ref: /schemas/graph.yaml#/$defs/endpoint-base
+            description: USB Output lanes of the PHY when used with static mapping
+            unevaluatedProperties: false
+
+            properties:
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
