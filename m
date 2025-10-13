Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB956CCD183
	for <linux-phy@archiver.kernel.org>; Mon, 13 Oct 2025 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oBmcfnUT0EUq1rvhW816sTvjQMPZ0cAAu/fkuPsMj94=; b=F6Ge8AChKkMeEM
	It1yuatSSPhUmX/HXKmBBkwzUiq7mGGtmsdVxeUbu/FpeiVFsC2TOel3XQeljMdzoadve4ALv6Pmu
	tG6Nx46loL/unqeFIE+rwQSH3QLOSnsgeYSB5KfPFN49e+EoLSCpSEYvbJk+yl4fj2nnmEh3xmTWy
	6t/kUbTQrQhKG8Te3e9nobU+I1BcFI8T7HrzXK5IGV87KAgmwUBxwCSvzvPDtRwaenuIxqaje5SAJ
	1vt9a2S97rsmKvLAOMuyVl2qzfmVYvXtEt4UnGe3ib88pd6MieRwnQz4vd6v3Yn4fkfjDbXXQ8S7q
	Iu0Yn6sAAJIHirhOFIlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8ELR-0000000CfNm-29yC;
	Mon, 13 Oct 2025 08:55:53 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8ELO-0000000CfM8-20Ms
	for linux-phy@lists.infradead.org;
	Mon, 13 Oct 2025 08:55:52 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-46f53f88e0bso21509525e9.1
        for <linux-phy@lists.infradead.org>; Mon, 13 Oct 2025 01:55:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760345749; x=1760950549; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ug2JP506jPU6oV9mUJznaehPwlc7SjM420xn2UiJrHo=;
        b=c3+LtQggXQ8ard6A0n/ueMkPt7QxvyNfxVV7uOxATB4uuzTg4T9D2C+4gsCfON+iM8
         Avwgc52v7xb85PJShdMjeAk9jim2L8QyLJ4i8/bi+pmbocOl83PUckjqEZ3ftaB3wbKv
         8t9mP3meZd9N5vbyJgS2uKXILa6wtbvU/yqJdpVLpk7v4mX3xFh0lluuGEL+wE9XxuHH
         HdQNpDzLSx4FC3hgcPsBF7nBvosWZLpxcuegOvnwWciNxX4dyVS5W2qPgyZRQdDVIB4v
         XtCY2BK9cHZK4bYEplhnRGr47fjfdneNwGRfwv951CjE7rDs2b4h+WzJOfcUS0cWCmJc
         G8oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760345749; x=1760950549;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ug2JP506jPU6oV9mUJznaehPwlc7SjM420xn2UiJrHo=;
        b=QgsuweVuzcdIbZ6elN+40ktzSBi+BaCo1JzQWDEKJ2kNBDimNaL/mkHU1m1fA7y1Iv
         DXkoXJIHXLB/QcoTnSSl7e6vQXf7bnEuh+otsweMWdroP9iH9n30L4APrMQ8xq95u++2
         Dbf0U3AlnMevTMHvPnGP0iFPnk1IJ/MmcONZjz9nyYfR6tEahTABYoAp9H58xanpkxXC
         ORzWdtfmYGyDNtq5ivH3KSmv060Hz14h9sGCIWCGhqC4nd5BsDBcTFSf5VZYg4e5VB0a
         w/+w51bsfQbn3rmkLgNvSrszwPij1pD6IIoQC77zE4N+SviCWvRYPnUYwaBX5QmyU5V9
         spwQ==
X-Forwarded-Encrypted: i=1; AJvYcCWqwiYStaOhm2CocV3yrJ0dXSiLieSWPvk2ycxv0REpAQz2obeHk3DYWJjvfwCmVQ3f2qc6eCpYTow=@lists.infradead.org
X-Gm-Message-State: AOJu0YxPTPo2qlLYOxeWpojnxXnGsJJcNSwjSSU3KO4wune8/pQ539kc
	AZOEmRurieiXOHwQTTx7d3A+w+1rrVxn+0/oXdm/HWC4H+ngYyzOgRjuqiM3BjjKti4=
X-Gm-Gg: ASbGncsr9IlZZSMaGyo2UOptiiEdlmNqnZ+qtgJGz3TrLkUJcRZ96cnF1jAGiDfSlrf
	6pQ9YGPW811l4YMYzUQnVbPC+0po9EscZuwRiNV+CuGSZ6RPxDwujwlDC/GbeQUKHz4GurUsIld
	HzmijF0a7VucH+gWxt8p9jZt8z4MxYJIG7opK3R677/rA0jsKePSMlKtZuK78OQ32ziEZ++x+O3
	1rXCBjUZvR5peZ5tXsSrkUjqso6MdFDvFyBfmoI8CWRmxeMSE4YX04yGfCSm9elCW//XjbJBNlZ
	zrZjcqWt3tyde4Do6JXvdDTXeBYcTIUm5qMuPDqWjKO/WSZOYUAgnSild9AbxkxlT+FYtuQ3ECw
	lVST10rcu6uhv4USBGVTIsRpGeQJ1pUCTKcSwGjhA6nvtAzJ/WelRScbrFuW4AXwaq+1vbGmXfq
	9Z
X-Google-Smtp-Source: AGHT+IFkkKhoPoiX2gIHcO200+09cQucP0qOjPbv6Cg43ssSNoNhPTs5o6d4q5dqr00kEd/iN89opw==
X-Received: by 2002:a05:600c:474d:b0:459:d451:3364 with SMTP id 5b1f17b1804b1-46fa9af81d5mr129042165e9.24.1760345748522;
        Mon, 13 Oct 2025 01:55:48 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46fb482b99fsm180016185e9.3.2025.10.13.01.55.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Oct 2025 01:55:48 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 13 Oct 2025 10:55:44 +0200
Subject: [PATCH v6 1/3] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy:
 Document lanes mapping when not using in USB-C complex
MIME-Version: 1.0
Message-Id: <20251013-topic-x1e80100-hdmi-v6-1-3a9c8f7506d6@linaro.org>
References: <20251013-topic-x1e80100-hdmi-v6-0-3a9c8f7506d6@linaro.org>
In-Reply-To: <20251013-topic-x1e80100-hdmi-v6-0-3a9c8f7506d6@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Xilin Wu <sophon@radxa.com>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=4604;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=YInZ7JdDnKm+3ySHIrO7atO1XxJmgScnHOjoMAFRXss=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBo7L6RKFwecC4ug35Nf9hYward7etahAYeYcyqNVfb
 WyPBtqyJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaOy+kQAKCRB33NvayMhJ0YYqD/
 9wLDZpyaY6Fl0ogqJyb8JcMz1Wmfb6Ex0CL1taieTC2xRBP62d76AKVbPFnpQBYdOi9iaA9dkrqq2H
 H5FlIEjiDBGYZ6c3oM7a0WQ4bI03gGc26WYp/QMbLCjtsekQmW/WM6nnkzjh/8ZezAuI/YhmQjjaYc
 iSRCeh1DROCFU9pLwm+UgWgWMCIcLCT7aO9U23ykBuTTe2mojYpiI2y2o8U9KNPkEZOa9U1lHTl2rY
 Z+Va5zJGYehIU6T5G1qPyijQtwiR3u2kK1lWipYvpK0i7Ttx6lCnA7L3mJgRODHv11UvVx4nbACFUA
 BcMryB2WQr/haGK63EP5nNnOQFtjv88Jaj2iJ12LJyNuK1QXUMHkYAkZpelRCt78ltyQJ5FtdY1E+h
 rf/mf/JqF8c/nrBGTjgdpiaCpDSvrjChxiX4onN2SSCaXCE680A8j67nbGAq/zA71E4xV5/baNvqyw
 p/PW033Ur1XYfs+KfVVhuK1GKDGN4su51Tn04JqRmx/UMrYF3WL+PC5cXuAEO+B033nD/3Oq2dY3k3
 PpWHUu3r0+7+ylAApY7bGnnuGvqcThttk/taMtTLhhhxr304zjvj24CakTlv3EZBY2SJqJ6rGTdbkn
 ETILuSIXPhTdMwTKZjqFEs1Sy+Uz4Uq/N884iQeaRqJ/gPa/ptkOT2p8Kxsg==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251013_015550_558056_4CA7C4A7 
X-CRM114-Status: GOOD (  12.54  )
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
