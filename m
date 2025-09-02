Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 61C55CA0FFE
	for <linux-phy@archiver.kernel.org>; Tue,  2 Sep 2025 09:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mnjjLyAqxWKoGlcUPeateaJ8xZ7l7+rwvtWWKRgsY4Y=; b=VmRK9hzzGpVIp4
	ukkPz5UyArixMXtngY5cAiUZv/5m2xQxW0DSBHwZWcPZOquTYnjzBm7OmNZ/uD5nJ7jbSohw0rk2j
	twYkBpHwQ0IgJXT/UO6laS13i5QfI7gHtnCPe2M/35nYSg8xy5ft4Svpj+Se54pH0QfahGrxNjjwe
	apa6KcOCVBHO5OeJc1pl6d24QWqXjnuNFURiTJGr8+HfyNRrIJ9olkgxJT887CCaLgLK9PBwg2xiS
	ttinkkPpM6nIlL4li9mNTdrY66yMWkNxRScc01BTPY2doKFYq6f1/whSNDzx+mA5VJhGBUaTjuUjM
	14v9Bx884bBKhgd0FGQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utNH9-0000000GM1r-2t3k;
	Tue, 02 Sep 2025 09:26:04 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utMsX-0000000GE8b-3tAf
	for linux-phy@lists.infradead.org;
	Tue, 02 Sep 2025 09:00:39 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-45b82a21e6bso23213985e9.2
        for <linux-phy@lists.infradead.org>; Tue, 02 Sep 2025 02:00:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756803636; x=1757408436; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=d4Gc9lydW9tzAwiGsPKTUOmW13FumVd5+LLitcdezXI=;
        b=cOGOQAWRa1O4/CkzdKyvd/uHsDhxvUTsiS/wPmCLCpE4Un8is6S0GlUCdllzPgDg83
         exJhOVA04LMT/cjeS3mxB22vgV96om9bstW4IB+yRp6mkeECVTKmQ0CfF7/ly89x3uUz
         4qv86xJ6rAek8fKk5BSPmk0zkkLQahU3/6y3nPB2WH9hu7yMxaaHgEVCU/vck67WqsUi
         ceCwKc4rVwOyqAmnhcv9BPWIHi3kE6swPK0UwNDw9fPkHI/5C1Tg+NAzSyBhfTlm1rFD
         X6VMcBU91DH96p85MBqDOKMXBKxdFVS3rUGToRi0cU8U2SVZHhHzNl5ZDANFbHyNCxaP
         OAEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756803636; x=1757408436;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=d4Gc9lydW9tzAwiGsPKTUOmW13FumVd5+LLitcdezXI=;
        b=h/86AY3GP4Kiqwj4N9w+1AM/CWV8Eqd9nbVcyNEyX7zTc0PIttjR/JfV8h/iUxSOtc
         Cv5XBMdbXIi2XSX4sd0JNh48QlWJQZDCQYs2E4ZmLuT7n4pxMz5QYVE1olkJsdxhZYXy
         6zo9yevhL/5Xp6NOTke36IV+48GMWjHE39Ux2v6ElvXDvqMxcQJ4sbrRAM/qm6LPpLNx
         jPxZKN6YIU1wegsGKQhhkzkqXf1onJO+LB0RuklvqrhQZf4gYiQwJcp16UmDur8VKJH7
         +kPgCkrMIcBOHk/Pi+lCxdK3YPn8uoN2bPC5DBQx+v64XK5Vqo8gVz4y91KnYYwq3VUa
         /ErA==
X-Forwarded-Encrypted: i=1; AJvYcCWChJqhv7zuioSCMNXKfaRq9ABZbqEGfZt3emgYusWXmJnanQ/Bqgb2Khb6WtWXGUcp6uRXrc5Ofj4=@lists.infradead.org
X-Gm-Message-State: AOJu0YxgJKq8vNk0wbX1CS7b61gh+SwzfgWdnrSXsKy+unD3fuaiDrpr
	fk+P056/U9cseAdo3uYKvzUpeDPX6PVd6GUI6+Ku5hEEL5NHfiWhQc8sWpcHLpsa0xc=
X-Gm-Gg: ASbGncu1mtrB/9kdxrbZy2L53rtILr2+dRLlyiCRgBKgljWKU5UtiCw8Qfao9aB8df+
	0y0+z3UFQQMeRgmCbGK9UH26LFoM9OWhwwcpsf8cc9ifzJRlqVVQXaXz06aPoLN6WAoJeYV7g+d
	j2OeBIP5G9Q35vZH0BfaVQtXSgAFKPIEFPAKNnrmJkSindSNlY8CG6glOiCW1ABHZRDotNIAhHC
	O2T7AHHuYHNeamXMxohPZyglHZzhptMVAWFxPUsmpLUeBGjzNxGfTiB0aVyKCqRQ1cSzTszt9kS
	YKO92D8+1Bl/rwtHIhS5MB5Wxgn4bSptmlJ12MvCBnFvnfFFgddCP0+x2Ga5yEoZSp+Pds8vP3R
	RBWfzy7j+j/rXFZVgNMUoiILe/6/mFZT5rEfsnDjd7IT4CxjY0pADog==
X-Google-Smtp-Source: AGHT+IEILw7DEldBdS7IGmRLvi+LEZl/gvFjKbfhYpEStds1C/TgZH01vWw4ozqfSAy+3MiHrBhGUw==
X-Received: by 2002:a05:600c:1e8a:b0:456:2b4d:d752 with SMTP id 5b1f17b1804b1-45b8fe2bba1mr31627165e9.20.1756803636238;
        Tue, 02 Sep 2025 02:00:36 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b7271cd01sm261112045e9.23.2025.09.02.02.00.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Sep 2025 02:00:35 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Tue, 02 Sep 2025 11:00:30 +0200
Subject: [PATCH v2 3/5] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy:
 Document static lanes mapping
MIME-Version: 1.0
Message-Id: <20250902-topic-x1e80100-hdmi-v2-3-f4ccf0ef79ab@linaro.org>
References: <20250902-topic-x1e80100-hdmi-v2-0-f4ccf0ef79ab@linaro.org>
In-Reply-To: <20250902-topic-x1e80100-hdmi-v2-0-f4ccf0ef79ab@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2711;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=51R7ntqsrbjqkkbo9tDq8z9uhTW3d/VToQqy1+1C74M=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBotrIvc6t4TujnMpo58ede29xTmJGQdEWRpxV5GSqf
 h17tB6eJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaLayLwAKCRB33NvayMhJ0X+1D/
 4u4YL6Ysgv6k6MFx7QTE9Fi/CP4grEccBzfnrjMyg7+VSuEa694ZowkmTpMf08EX/FuD010Pjs2uhc
 J86s8vHTOcExjUoFmhz3QoDkMDUwn4PBZKxGVRa7xkgsadjEs9rKlnsRc56+X7AxMu6DX1AEu4be7Q
 471IeyJBoikRzPsZMFxKC7ai3e9OtbFoO4lWhnTmkSu5ByuAdm+OTqy9TH2m9rE0h1v4Dfw6L7AKoB
 EgN6WIjsjR/SXOGyPP3lgELCyni4+hPj/PvvGoyhZXXFV9wn4hrRJM+OoKzD0lXdmeb7sDA7+n/keG
 fP6XvhWQL0TOoWukD/8Y42HSn2Mqi6AAcG+sJJkpfXwl9wd4MjDd1LU74fGbd056V5NOPI0M8wIpGL
 As1f4pvje7+YN/eXdWJ0xM/+dKzJ54yw+xp8KdouBwhhu/eTDpMV/ti283/lOnSQIsGXODTIpUL1vV
 5/PMVXQsQ5L9bZJ9f8T2Lp0v/cybcpPvmLCV/frxtWSlR49L4DUfgMcYHrhTZcQrn1xuj7R9j+sYKs
 MDEWrxU+SPBcdvWgAvyHRqaOieELBxKvMCvSSTkrD74KcriI64wy0L/7ZBT3RpuVg7r0m/NyjD6kqn
 bfquLF1jGDVlthmN27a+ZWZngxTya5WD0OD4b3Fz0WfzuYKF27wiV2PU5Tyw==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250902_020038_079946_8D59B501 
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

Nevertheless those QMP Comby PHY can be statically used to
drive a DisplayPort connector, DP->HDMI bridge, USB3 A Connector,
etc... without an USB-C connector and no PD events.

Add a property that documents the static lanes mapping to
each underlying PHY to allow supporting boards directly
connecting USB3 and DisplayPort lanes to the QMP Combo
lanes.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml         | 29 ++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
index c8bc512df08b5694c8599f475de78679a4438449..12511a462bc6245e0b82726d053d8605148c5047 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
@@ -76,6 +76,35 @@ properties:
   mode-switch: true
   orientation-switch: true
 
+  qcom,static-lanes-mapping:
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+    minItems: 4
+    items:
+      enum:
+        - 0 # Unconnected (PHY_NONE)
+        - 4 # USB3 (PHY_TYPE_USB3)
+        - 6 # DisplayPort (PHY_TYPE_DP)
+    description:
+      Describes the static mapping of the Combo PHY lanes, when not used
+      a in a Type-C dynamic setup using USB-C PD Events to change the mapping.
+      The 4 lanes can either routed to the underlying DP PHY or the USB3 PHY.
+      Only 2 of the lanes can be connected to the USB3 PHY, but the 4 lanes can
+      be connected to the DP PHY.
+      The numbers corresponds to the PHY Type the lanes are connected to.
+      The possible combinations are
+        <0 0 0 0> when none are connected
+        <4 4 0 6> USB3 and DP single lane
+        <4 4 6 6> USB3 and DP
+        <6 6 4 4> DP and USB3
+        <6 0 4 4> DP and USB3 single lane
+        <4 4 0 0> USB3 Only
+        <0 0 4 4> USB3 Only
+        <6 0 0 0> DP single lane
+        <0 0 0 6> DP single lane
+        <6 6 0 0> DP 2 lanes
+        <0 0 6 6> DP 2 lanes
+        <6 6 6 6> DP 4 lanes
+
   ports:
     $ref: /schemas/graph.yaml#/properties/ports
     properties:

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
