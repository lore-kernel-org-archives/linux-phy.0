Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2CFC6CAC5BE
	for <linux-phy@archiver.kernel.org>; Tue, 30 Sep 2025 07:39:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/iVpoBkK33huIT72vSLRmJvbhbTUcu0uQ1+0Kn7WP8c=; b=hyitRUrTv/eCAb
	I70qej6OXNUbpP4XYmSgThVPxp0hpTNxL+s6202W2riOAlkg7Xrf3dIxWhZdeJbQey07Trab7YdiG
	UZzrqVNV3VRlWTYsrzxUSlH63o/1hjt4rbHK377FD+gLEufHtcz+cEfkxOPzPspJi4i+VfRJHDegI
	uHKQ787FPJ32S1p0cDfyJhyXgOH5I0RmWT6S8jtKXub1Cti+cRjWqONoWUqkAipRgoGp/iEmq2dgX
	Yqxfsee9qHeLSxu9jhsmaUP4SbLJ5Jl30tjeKnNMSURoc5wvO0INnlj6zgOMY9LDU63y5DmgDB7MM
	+n09rVEDEDsxNsygpU2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3Uxp-00000004W2W-3S2Z;
	Tue, 30 Sep 2025 07:39:57 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3Uxm-00000004W0i-3ppE
	for linux-phy@lists.infradead.org;
	Tue, 30 Sep 2025 07:39:56 +0000
Received: by mail-wr1-x42a.google.com with SMTP id ffacd0b85a97d-3ee15505cdeso4333094f8f.0
        for <linux-phy@lists.infradead.org>; Tue, 30 Sep 2025 00:39:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759217993; x=1759822793; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Bevp5VT/TRtlfJiqdXPbMhIkDrQAiY44tOo/FEhYED4=;
        b=C1wZn9Dm6v339ATF/Vdev2OxPHtPoxaxZvZJ/9Wlnhrkq8YuglYvM86Dux7LnSolGs
         O342VCfH5NRcH+2O+pbANd0RBYRwVphOuq4D4NJy8vFhLgYNJRN7uYkQUJAR5PpQ4A06
         8ZWujzUzuOM+Kp1/2pCT2SrOCRbA3ToH2oa0v/O9iTBE1AqeYMHFWXIzldlYCnz4f08T
         +mwMg6KGbbZInBv2QfsmRkb+O1oPPySTP3Qo3GaG2hCJkVpjbx+ns7WycoxVNanLspsp
         DnGR6pDJ84XhdUPzWV8g7GSoGvkd5WyhrHqi+YWm40DMbVb6y5U/Q0QVfSgWN3gdl3D8
         R6BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759217993; x=1759822793;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Bevp5VT/TRtlfJiqdXPbMhIkDrQAiY44tOo/FEhYED4=;
        b=nHrsPoAekBh25Gj1wTCtE1ep9hiwu0xbEYzOoEPE0Q7CGCgqr6uGd8c/SqR8Jg/9cb
         c0SzeWrKAti+OfGCdm1FBYnv0TsnbC+hrNJsL4gUk+ktTN5NMHT4gfYaKoIPYTBvUugn
         uuOQ20goSzb1A4g80elm47/Wa2vQFNs+OzwDpAIgZEs8KAw3nafcycYLdjmbhYEe/LtU
         CAhXZ5nsjp/O9gEb8coQX/pogdBP91G+CtshJiBpyzrtM7y7GHSI5EfXWQmGGso0gDl5
         T80BXmKA7Kmd41WGjeJaTJb7jNWdxVBmr55gVr8C8DghKSFSkwV5m3xWKWWsuyK64IKj
         5krg==
X-Forwarded-Encrypted: i=1; AJvYcCUhs/bKlSNV1sb5qajkwVbq1zhm9/f9pSA5k7hvOhL12zyxmJIcJSulPpIKuiVPyfCQTeyAQety1RI=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy1b9R/QLG1NQYY8N1vINShAh8hUJ/VBvyYRmjq9KYsryvc92mM
	0SXXdUg4kI0NJ6sgkhLQSh656D+2zFRRXuWFqSQi3FDtRzzWG3ffRavO3uddeOYFb1E=
X-Gm-Gg: ASbGncth9/Rs26sMgaJkzPcgGHvBHb8mzSYxdowk4YiAvN3pCWOVYY6FKnowlfSi1Zu
	lE+Z4sMefpolxjAkzIAe0xhxeO7No8dds8UvpAfjwEFz3DRID4OvXEKHyTsiD1x7bRE0Vv9VW21
	A7BPDusvkqx8T+Iftf86CS4vpFWgMmP2a/w8lc+ZjQWVym2J3pomqpdXoKoQR1Hz7ZL0iPWmc4i
	+JwU3wGbMg075an3y+av/denycY4bUF6zWbdR+5QXnTZfu8xJaDqIrsMj9euv3Admihs/S0vSvJ
	1TVM9dUHt3p5SK3sLromtfloBf0B7+VzSqRsnlvpS0ZxSCVJIlW7dHtkUxnibNlr0Jhya5d7Rp2
	bzD2R/BuR3hlWyBSQ7SQyRPFtZ6cnC08qNa4k4LIBZ3fsEbymUhm1ug3A1PsOd9wJErc=
X-Google-Smtp-Source: AGHT+IE7hIk0wvVkAHlNIuDFtcjEsBPWJOnmAhnOqI3tMojyJ8Y37GTaD7IqC3smkjWIgPnmjHUK2Q==
X-Received: by 2002:a05:6000:200e:b0:3ec:dfe5:17e8 with SMTP id ffacd0b85a97d-4240f261a60mr2762483f8f.6.1759217993068;
        Tue, 30 Sep 2025 00:39:53 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46e5707c1e7sm44021125e9.21.2025.09.30.00.39.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Sep 2025 00:39:52 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Tue, 30 Sep 2025 09:39:47 +0200
Subject: [PATCH v4 1/3] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy:
 Document lanes mapping when not using in USB-C complex
MIME-Version: 1.0
Message-Id: <20250930-topic-x1e80100-hdmi-v4-1-86a14e8a34ac@linaro.org>
References: <20250930-topic-x1e80100-hdmi-v4-0-86a14e8a34ac@linaro.org>
In-Reply-To: <20250930-topic-x1e80100-hdmi-v4-0-86a14e8a34ac@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Xilin Wu <sophon@radxa.com>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=4284;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=FkhxJ0co19Kqoym1h5+3BxapnZugQIYyqqBK98X5Rdk=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBo24lGLsSZyGGb5W8YJGfg2/QqMxhY23dJb2LoEJ1e
 w2+0S1WJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaNuJRgAKCRB33NvayMhJ0cBFEA
 CPjn5+pwXIaZ9w2EM5eYffs0aL8n2Kk2kmge3sdfDzpy8mcRX7rE8T23AZiLAudCVDLIKxoZ7SsGtg
 FOAU78mvgSA4M7wtED4zVKZTu9Ytj2w0bbB+0ti+mcX8e/TJcPuitJ5ryzFEE00pB9rc+2zGaDhzOc
 Ce06/GOp4aDIo5zLu3rr9yjkH5ok9D+LSPX6i4i0lX55LN0BqO43Tq+d8WOaxRhDzzEUneUsZG9SJP
 T2LXBddf6ut3MFJzrTHjNyOnQ9bUaOjt0Ctp+X22ytlEG5RFWU4W0inBm1D9vDVBhdMuZA69mSWAWN
 JI0/r4lpWYXZDqgN4AstVC5F0mQV5HmJFi1ussMP040phXUOtaiMVzO+QQpSLnZN0aHqQwGKPyMy0l
 8onKaypSr6wxGGmhNdizB9/p34ir6q+8AiHeEt5/BixB//hr5/DeYhhUWVtwoHZUs5tU5jJ/STY1pg
 kJ3O+DYD70TXUePPZ7iLoFyxceB6bL5w+Xt1MMdovI2USqDe3GpYOFSXBLAyWXwDDq2BnKL8OVQDtt
 xZfqr744C94O3MZDzUz+z0Kl4ThhPgAZAYYpvRBqqxOpubOFokhhfDhRSyvfSVdbcwxlM70NYtuQXU
 518xOIlrKcIvYlBRsvVt+mJwvn0jUEkPSX7KCSMhXsjn949ot2DGQdxGYr4g==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250930_003954_986681_5CD546A0 
X-CRM114-Status: GOOD (  13.14  )
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
 .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml         | 67 +++++++++++++++++++++-
 1 file changed, 66 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
index 5005514d7c3a1e4a8893883497fd204bc04e12be..ac9a307675bc4e86f7693ba260c75b7b88d992ec 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
@@ -81,10 +81,75 @@ properties:
 
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
+			 The entry index is the DP lanes index, and the number is the PHY
+			 signal in the order RX0, TX0, TX1, RX1.
+            unevaluatedProperties: false
+
+            properties:
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
+			 The entry index is the USB3 lane in the order TX then RX, and the
+			 number is the PHY signal in the order RX0, TX0, TX1, RX1.
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
