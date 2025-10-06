Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53983CAC5B8
	for <linux-phy@archiver.kernel.org>; Mon,  6 Oct 2025 13:55:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fv9cAXCOPJJ0FyfT3XNtnphR2c+r/lvPmUTGlA9JpsA=; b=MpW/FydOTeATra
	UA2g0SdQ4g+vpfVGz6WeT9fFrzBEvUcWdYJiqPuwNVxD84PGygysbuUBesq76MkN2gYKideo7V6By
	3VygC5ZRMTtA6ZcPuJYLmTxSIRt9BDKQL4b82KL0NjMKkMvFFqWLWhQkzLUuGD/IZzP7Wj7jjiIN1
	CQpHTGow2HPL2XX6OQpqH7xk4EQDIK47Uw9LnK5RIat3BVXbdJL5NRRcEMEzEK5HaoPsJeCF54gcu
	5Bh0ODPlKpk2ocn0jL2Nlk18bw9rUeIBPfbm24t6SwfiAdhED2CDJ/WfB6fJYSzu9paaKmAe+em6t
	sGDoYLzHxoPMsybpPkdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5lgK-000000007hj-49Mf;
	Mon, 06 Oct 2025 13:55:16 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5lgI-000000007gN-3yu7
	for linux-phy@lists.infradead.org;
	Mon, 06 Oct 2025 13:55:16 +0000
Received: by mail-wr1-x42f.google.com with SMTP id ffacd0b85a97d-3ee64bc6b85so3750920f8f.3
        for <linux-phy@lists.infradead.org>; Mon, 06 Oct 2025 06:55:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759758913; x=1760363713; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=P4SGKCFckOQgp39YYXuF7yxGe4SGyUZQGQh+LAC3kGk=;
        b=w2K7MducN21l6bLFWIkSkEcu+GNET+Rz6TZ+amjNR9JKRgmo5wXDiBaf62jFrnm/M6
         biYWI+7BnFxTuPxhntBqKCKN5fOubl/OSfNb1cLt5eRklNTqE5bGArnZozcX+05ga/fq
         L0GAoRZN+hPQiTM/OBs6Qp+bfOqernYCr2PEooJV27/H0OlQaPel5uRvlbqyszzF3dcM
         Y+mecNNMgMfpvsSoENKp5yTDQ6TueXMHmwG0RJTxustaKkV/zNrlM0LcAerw+51eF5My
         z73VCndfKIkAI/lMf+EuDjA4ZNZI+iq4EAmo2f9tTEzsEO+JbeKksnvUKKLEU58MyCXS
         cKyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759758913; x=1760363713;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=P4SGKCFckOQgp39YYXuF7yxGe4SGyUZQGQh+LAC3kGk=;
        b=CmxX9ppjoGbAMJ7mplkaKffUXEmz7TcdPgx+tLhyvDXWYOht4Lk4dxA22mBSoQkFr1
         O2LPpi08WnwVHThVqRrIKZ/dysZjdltw+8js/4it1jDSCXt/7NE3y9/g5XXuaeCqmpD/
         hUt+YjIO80sFWGdNf7pRZm4z+rOaAYyudMbaQy8xn3ZEL1Pkp7CO5J1wm6PBbkPm7HGa
         AZ7S4CniEgvCmZmmU9k0Y8Msw3LCY0OoVLn8xVR3ooWNFU3qqrMR6KiRqdpY2UtaKLfY
         H7vIFi1QlSfRF8K5ZghGwjBhaYJ70DhMZtTGv7Qa3iJgOWZJoqS22EsnbW8wUtR+JyPz
         dTaA==
X-Forwarded-Encrypted: i=1; AJvYcCXlh9tbIZzh6s3Y9fEtq22NZeVXfzxv30s/pD5eTDhOCYbRrOnuK8HUv0wLIKNgGK6HzGSR/kT3vbU=@lists.infradead.org
X-Gm-Message-State: AOJu0YwbIkZ+HW0xOVx+6LCEl+GBbyfSzs+EuPqfojtfUdAHT3XJQqPF
	nLghlpe+j65Qfu6Yg+O9PoUglC3jlooBbk7l+/iqh5eiHLjeKAp3/TA5cJz9elo7CTdQXcL0wQ9
	lNz8VtrQ=
X-Gm-Gg: ASbGnctybfvg8xN8Wa1Q559xX4EKAGpcQxAFvwhjE4+WQQRtJH75yaX4/H2kH9N+MT1
	PosF5Uj3yAOojC+pbDVP0jcNyR1isUMbuLCJogdgC59gx9UuJ4ul6VvPIhFp0zykKbxW5PGbbNx
	/Ty7auwjtUP6BSxpMwn1Lf7+68UN30wxNZ/XipWk/BSOAgCnGV1xi/ucEYCBAZOKfGZ+thFQan0
	Jn96QF5HbWfXOTiMemzgzcj8ui0CYgn/gdn95xRZuiDPdq6Bwo2d+2cy5YPsC7AIXQb7Dve4PZl
	bSLFF7BKQr2p5GzRRs4b9NmA0vMu95v3F2Scrq+/9EFk6Bh2jHGGvOP0sZeRN0gacNqa2I2iH9r
	ve7SoTulP0wQUNfahSEXzghYCC4Ws4hfRsiKADzYp1O6BbJ2cPFK97udUGl4CgCMLsIjgHzCQMn
	uok3PDbQ==
X-Google-Smtp-Source: AGHT+IH498SCQSHRD5QBtiH0GzayP2zorpnGqsmS7Xs+r/EO/ywbcVtnGFGeiuDisgdYoPwCAuEGTA==
X-Received: by 2002:a05:6000:310a:b0:425:7f11:3159 with SMTP id ffacd0b85a97d-4257f113337mr1545279f8f.63.1759758912941;
        Mon, 06 Oct 2025 06:55:12 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4255d8a6daasm21291921f8f.7.2025.10.06.06.55.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Oct 2025 06:55:12 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 06 Oct 2025 15:55:03 +0200
Subject: [PATCH v5 1/3] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy:
 Document lanes mapping when not using in USB-C complex
MIME-Version: 1.0
Message-Id: <20251006-topic-x1e80100-hdmi-v5-1-c006311d59d7@linaro.org>
References: <20251006-topic-x1e80100-hdmi-v5-0-c006311d59d7@linaro.org>
In-Reply-To: <20251006-topic-x1e80100-hdmi-v5-0-c006311d59d7@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Xilin Wu <sophon@radxa.com>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=4554;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=ig9cw+e18YkGbrrRMzN7pt/NQWzGPEArmv/nwOMwc4w=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBo48o+B4CiSwu7YrbOdHvfZcOGv5M4a9CHW+igZHX8
 DNr8JL2JAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaOPKPgAKCRB33NvayMhJ0ahwD/
 9Z0aYNK6A9RsTZP8ZIKhV4EhhQy2+Ml9Yyh7IvaphAJwyByCVUSvVD5oWeu9oFnBghX4c7ICldUAbF
 R7QMTt6r205kTteHuZ2gWsinO6k+CGdsvzlNv3laMptrsEfErxAEf7+lB9kzZ34q9aXCrlstxuSqmP
 EZbZ0k/1HQ/zDkvuNY9MgI3LeuZ7lvXjixOzOC6WN7P51mxBRCtNANaNJ6vm7Y1Q9UikBWez7LPDjv
 xGTqKo44vOW7IWdZJTcb0dGbs0dGciXnNVREqBGJoSs3wJ0UJy6EmM58M6UNPXNz8c5EFRBcI9N3ph
 o0GbuMrDUrsKfAcDdV4lMlcdPSwP64qWnStcxEMT13q82gnCf6gsIgw+3EQcupxdZAiR4rdm1mo+iC
 0naPN0CM7/WCkImYjwrypmThNs/wiH2IFdGcCLQKdaS9XHdrI3onZQJfLC3982v9WAQ6da4ZrOdltL
 83+uSHKy6b5iYS81aOj78QcxZfWSv3d1khCqAZ61CfWrkXC/QKgVnXb6jXKneZo4HWVWSUS1nFzQd/
 v+HTy4yRTBnsGWZD8v1nnK2VvPWrpDVJpPjtAZL52VJjbqGRnHz17M/Ausr2paNuL8LQKOLYAXIu9d
 XZ4pEU8FJFt4M8vyxQ+2h9CpUyYEaLdVv3Iooe2RDgaJrNM1bsg9F4IO2rGA==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251006_065515_023222_90C169D1 
X-CRM114-Status: GOOD (  12.62  )
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
 .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml         | 69 +++++++++++++++++++++-
 1 file changed, 68 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
index bdf7894ff84869030252f64f20acb4f920fd19e9..1d7a7f0f356b11e080fc8d6c88a0c97be88a25a4 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
@@ -85,10 +85,77 @@ properties:
 
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
