Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F387CA0FFE
	for <linux-phy@archiver.kernel.org>; Tue,  2 Sep 2025 09:26:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=prxEq+9oCTR9dFRZdk6kzRlzk20Hw0VG7MS+eFkPLc4=; b=VsU2iLFQ2KzLru
	B2HHRGdbPtXDaZCSkM64P3agvW5lkYtquu5kSN70vxlJxWhhpXnb2Ls2DrFAITGZTZAf6OGdUPuJI
	7Gfw1ea9OkiRmBciN6KLsYhTfTfAk7KIkUhdq9sgOkvfcznnyVJigNroj882GA7eXktOGnAuwETL3
	khTka3efp/jZMsrtHJxi/BhtKKr7pQQvcxF6A/v45uP7YAOhI9fxnKDVo5ZaBImSKMXP1iYMYCe15
	fOKmM4i8Uz/YIOpM1ktYhrfZV6SN9fHRUD46GdTWE1jVlGPHRXxW1qV/kdrwmySLPXq532H/U+j6b
	ROZ0DxPnCkw6+CDCU8QQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utNH8-0000000GM18-4453;
	Tue, 02 Sep 2025 09:26:03 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utMsW-0000000GE7k-00fb
	for linux-phy@lists.infradead.org;
	Tue, 02 Sep 2025 09:00:37 +0000
Received: by mail-wr1-x42c.google.com with SMTP id ffacd0b85a97d-3dad6252eacso128494f8f.1
        for <linux-phy@lists.infradead.org>; Tue, 02 Sep 2025 02:00:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756803634; x=1757408434; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NZJp+xAbTo2+0/zDtOg8BIzlYFDkHgZ1HyTvcor0XRg=;
        b=G/iJ+ulqJuivcMmriuT9C+V1xQfjHLakQ8xRqXQktJKz5Cq1JI2nGaexqhZSOtkwBF
         RiVuypQtdMcdV/lzWmAwzo97wKpn4A/Sa4EW4Eb0u7h39Bqk3Rlr3QoJPwV2JHxsIR9P
         ADq8sPtR6mmMRa1tUEdEIMuyWsyt1BTFnl6RROQANKnvA69woqmsxuLBnnRDsXFNS7jg
         XE9V4fkcLwW+fn+d6EMkMBnsVjdeINaZWiL8C8AvMbxAFi2kcZ96Pm53/wGhk8RXwAHr
         JYSmdZ5jrWznvtm5MPdKAhC22YNWobof5AuQXtSUhFR0Rq4QyFgy5M8XErHTpKKjazZI
         vmiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756803634; x=1757408434;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NZJp+xAbTo2+0/zDtOg8BIzlYFDkHgZ1HyTvcor0XRg=;
        b=Fu3b1bWcAxGBqGQVRwlIsB1SK3bi1FMIFj7wotsT6Qf1xc1+L16vyaEcijuoh9Gmo0
         ESStX0Z1XW+EfOmKBzPliz9uB3QhyUTw3lAVujk6RR2jG4/5XfZIW8xYzqctDoxoE4WX
         f4pRZ+8aAvHNS2ZA59cO1I/VlQApP+NMLZR5iMtalO3LacxPEyR1R6gjexA6KwNhADnT
         /J42u8EIYHCzSDJUq++W2kSMY6m9idj8fCgSC51RvuEnDx+ObZBojXDTMBR9oKU1xiJ/
         1YW0DFZcWTeQ8jv0+AwbVBlToJBctAColRCq1sASum/pslOcZ2LdIpq3HiwioxS3W2TC
         YlLA==
X-Forwarded-Encrypted: i=1; AJvYcCVeAkID1/p2Ffw7eTW+6I2bQsglOcvLZqpN0k8rm7tcxgadvEbLOs16TrrZ9o9xCMvl6tIopHl9aJM=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx/YDt6jeKpT0LoMnRpLneiAJJv69OFGQXWx5+jnKxPVenFQl7h
	XTVCfvJDyKj/mAVQOuG4eaZoXhFdfrzjw8Uv6Jysq0PrS9vmZJd4UeLoujRx5ZfsYRw=
X-Gm-Gg: ASbGncvP+oKzlKsr3lr4/4H4qCsY4mrD0/Sa006x5csxwRjHQ5P92TnOZ6jzWVOqbS7
	SYHr5foLEIMrIJQCMNXxpAroQY33arb3TFU3CxzCd382CFRH3EaixaNMzUeJ8mHNa4zTuhDx604
	SmjkIlPrV9qNZ2tCxmJgZ8+cup1elAkMMfu71aDkjnf6ikVVAX+RKf0sm0ujubVHqs3BvaFGPUP
	gPWTPCof73a7HCIgHPQk8BZAcMHCk1zRkHJGKAADXcV2vY2PAzpg7z4yeluC3+WSI+0DdlUSlef
	0ja3ZPK4xUyZvJdwGvpkWwF3ZFC+6HZAmkTnUR5TUuc5pBsHt9+Uu5VAMk+/KmzGnR991ktxKxK
	7nSu7wYlNn9WvtQ63Ex1HqfD2WG7mX//8VODkaMbo9Kk=
X-Google-Smtp-Source: AGHT+IHfb9W6Hc9fhkbvwOEzR7R4xuMQPNSMx9xL8H2MM97h3jF8v3/LInCLpQSqbnItnP4BCrQ1Ww==
X-Received: by 2002:a5d:5846:0:b0:3cb:62c0:1eea with SMTP id ffacd0b85a97d-3d1dcf57a13mr8399840f8f.25.1756803634361;
        Tue, 02 Sep 2025 02:00:34 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b7271cd01sm261112045e9.23.2025.09.02.02.00.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Sep 2025 02:00:34 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Tue, 02 Sep 2025 11:00:28 +0200
Subject: [PATCH v2 1/5] dt-bindings: display: bridge: simple: document the
 Realtek RTD2171 DP-to-HDMI bridge
MIME-Version: 1.0
Message-Id: <20250902-topic-x1e80100-hdmi-v2-1-f4ccf0ef79ab@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=992;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=KZG8o0WJ9Re/vKN3NPbu9QOtsOJJZv2uJocpkewtdKA=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBotrIuFgDKkYXOkTv1ihPBQVWU3sfYnkAYl82ek1nL
 ewBnoz2JAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaLayLgAKCRB33NvayMhJ0QzUD/
 9PMMy7AWl6efzDwVsG2jN0BEPfR1VI0fDO66I+6cU1tzE956HxCK+S5gajlWS4xawEEpMPGBP5WiEi
 e8LA1Qmnluy/AhBl4u9se3ZMQVXsordhS9sx/hpyzTNGoG5B2TfvYpp6tgiAkYwmqvspdegzKlv3Be
 Koo4hkRtxDo29dsV/wgyzdAcFk+uEIfVoEpfoCLzJqoywPYKLkfERA4y9X3i7ESZR4wPxN8UVamYlf
 fogG9RyGVGCOC5058UeQXY53LBoucMVj6D/edxlmBU1wrIhStDqk2WJpDuuf/fHUB/xL/WavDzW37k
 pGuj0424q4aflRUXcL6iBwQErUmovyP7Z+Pef8kznH4Pn6LXP/D9p4DgxyKLWq0E4bhBKkHQfyMLLz
 TMggt5ae3Z6coBtLcG6HhtXIQs+2oR6XU9RmvECIF2I00/CxPyiNQ0cZNVrOZKv9J1F9v0knlPkGM/
 TlHVG29OZd6o/n4C31kVQQI1O/gaYnt1lRDUM1GZSn/oNQvJ+De9DnSblO+6r9l0N4Yn2XYpCMCuKN
 46XiFIXtChk0WKr8c5de7O8RP2rSq6OLQkZu3qHiGflTCPpL4XXc+UCp4B2Quc7daok6pkRkq2PCGJ
 M+WMYwH8t0KsZF7SXtHzYkYLoe6GK8UuG/hYq4+j0AHSJtgi14XxcHSS8Z2g==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250902_020036_111327_891A24E3 
X-CRM114-Status: UNSURE (   8.35  )
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

The Realtek RTD2171 chipset is a transparent DisplayPort 1.4 to
HDMI 2.0 bridge.

This chipset is usually found in USB-C To HDMI Adapters and Docks,
or laptops to provide HDMI display output.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml b/Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml
index 43cf4df9811a5897843685727a49fd5a90096391..003a1c934f863864400d689cd784990cbc1de3de 100644
--- a/Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml
@@ -28,6 +28,7 @@ properties:
       - enum:
           - adi,adv7123
           - dumb-vga-dac
+          - realtek,rtd2171
           - ti,opa362
           - ti,ths8134
           - ti,ths8135

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
