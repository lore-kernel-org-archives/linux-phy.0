Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63998C5DF74
	for <linux-phy@archiver.kernel.org>; Mon, 17 Aug 2026 21:47:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rIV2a61wBhefLJcKId9DF3tHCxFmmYie8Art99Y+rtw=; b=I1nFv6eGkAmXmk
	M3xb073Uia6n4cKWXelpHgZZTr+x5WIslmxc5O+pPOUVP8u+/Or68lg3yqqTO4Gdfjqgmw7gEv31j
	fDd82I32BYCikzBi1MY5qiqkJKKXXerHIXCtNknVVwvhw9HjngUqMV/+VVD8YhjUvmg9tvfBLtcQE
	dnxm6w9DC8Kes1wY2rrTEbwqICB2/g6sOmoBLeYBeVCOd+4uJh1ifY338QK+ZCIbGM+QSZqhd+MaZ
	b3STi7InTuLv3RWYPlzgECAEzSUlYVw6Yevq+Ol6PDpFEBB4jkKxGm0fVpvCpw+bhtZCa5M9+/0Cj
	LIA5XnGRCPQqRwbubLTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1ww5Af-00000006sDj-1ocJ;
	Mon, 17 Aug 2026 21:47:05 +0000
Received: from mail-pl1-x635.google.com ([2607:f8b0:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1ww5Ac-00000006sCp-44YM
	for linux-phy@lists.infradead.org;
	Mon, 17 Aug 2026 21:47:04 +0000
Received: by mail-pl1-x635.google.com with SMTP id d9443c01a7336-2cf49dc28ccso6968045ad.0
        for <linux-phy@lists.infradead.org>; Mon, 17 Aug 2026 14:47:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787003222; x=1787608022; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=p5z2OWZb+kR4j38zraZnYUeMrgnpIkqim6Dck0G9t6U=;
        b=TEzOfL6TPuxClVCV9tRhaRUnf5crOelEh9nd5buF7YmuCNTu469Pw7H9+75j7iUSvt
         b4orQ99h5+2vmN3zmt4O0+Zfk9k59R9FwLOykcvBsPPYkWRXH4XXl6nQKc90c+1jA4rx
         mE/K7lswtMK8vghqyPr40cHkqxl9Cy6Q2c6BJZwFOtAxuiYN8FsmE2lswPhoynRZONe9
         XcT5v3csvb1DT2X1LL2dsEHtvFuzq2TcPr8dtfZGwsVk/tLDiBEnZ3aZyY8NGIyUN2Lk
         hWJRAd/xYyDp6Mx7i/msE2NOH5RKUHYVTC8bWbZzxXGmbhoR+DOyE15WCQAGmhG9wbyP
         fIsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787003222; x=1787608022;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=p5z2OWZb+kR4j38zraZnYUeMrgnpIkqim6Dck0G9t6U=;
        b=JISkNpGFaPNAnMggve2p/YrwxZCQHdEfdlvn1IG7ANBxmUqUcg6yR0AoNPw3M12E+O
         pmVXBL81krNPvIFDisTXNsfkLkwPsuFPkWiGPkixno1Ap1/vePvNzFQIsiZLYOlwygXS
         e/RDj5w3KNmJav7ERz4bW1STVfhosYrL6yqbGdzLOTHUj1oYSAILO7QJURLB/3Q7uPQ7
         Yu38G9ZIV+oa6KDSc36WwmVCK8MrtYLjlDplEJinnRzHsGI+tlslQ3tEvCfzxoCYIdX0
         f79wz+QR0UDUXMr5/twUmZg6Lx2OkZb2WUcY1nBQXUsgv+V8e6s1GB9Wfc7fvq6NnHoZ
         WKWw==
X-Forwarded-Encrypted: i=1; AHgh+Ro4UxmUHrmdqrWSVOObhMOxWnbjdW+oO/7i7bKuJCNrLOZCqXI+WESgfcxnXZZ7VaJO5GmGgKocZNc=@lists.infradead.org
X-Gm-Message-State: AOJu0YygEpqmBdFNHHRNFj8a9rtRNfjExW8N8lV6Q8U5yKVGxfGajWGO
	NrvSy5lHHQO5lE+f3ulXGi3G7ifIzWqFE61ENNmXudhNMe3y5dW7bpIZ
X-Gm-Gg: AR+sD11af1KqHV5nE5ZpqnpxBOQutnEWONf9MjMnFk/kfp++9a587FnozHsOyzT8tdZ
	kzcTCUiRqzEFs6wGQD5HPK8PVQR0IylkbTfWFh6t/JsQpGdLYr6JPPrVAGzgEtv5XKXA3zFb+d2
	9BVzMzvjmfpGLrWoH1PQA56wZIxO775jhwJsUixoVRfk6GQl5wl0flBoYWnAi26oVcEdZwQnDCh
	vtRteOfeH58q61wPbhdtbw67nlB15qOklmMqlelcH8l/lOumzv3rDnV4pyDpF9JdydY3EEZbNG3
	m1PyVlP2guyfDEOToHNgHHuJtODuSAyEnYzvJ1fXUTLLnNh6PXGmdtAQhTCHAuGSdRcyRFqrO25
	MixnybBA7AdUr+PSqT4qUUKPurV2GZwFZIPWpsk9ZmOkYjpWUp+c9h1rdnKhrgkhiTvokgxq3XX
	MeBrpc+94V3EVHQMYKW/10fpEQAIS6gfsP3Xl7UDRqkZRsuQqICBPxiOxUByS/nPw/h4mo87ttf
	RrLEr3MgTOX
X-Received: by 2002:a17:903:1b2b:b0:2ca:de3:15eb with SMTP id d9443c01a7336-2d3b0739429mr214351025ad.0.1787003221574;
        Mon, 17 Aug 2026 14:47:01 -0700 (PDT)
Received: from [10.112.173.252] ([2409:40c2:5053:3384:1c8f:aa2d:e07e:6d3d])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3267c388e3csm10153024eec.21.2026.08.17.14.46.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Aug 2026 14:47:01 -0700 (PDT)
From: Bhargav Joshi <j.bhargav.u@gmail.com>
Subject: [PATCH 0/7] dt-bindings: usb: ti: Convert AM33xx/DA8xx MUSB
 bindings to DT schema
Date: Tue, 18 Aug 2026 03:16:30 +0530
Message-Id: <20260818-ti-am33-usb-v1-0-69ac5f92df45@gmail.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/yXMSQqAMAxA0atI1gZqHfEq4sIh1QgONFUE8e5WX
 b7F/xcIWSaBMrjA0sHC6+IRhQF0Y7MMhNx7g1Y6U0WUo2Ns5jjGXVpM0qQwmtJckQFfbJYMn9+
 tqn/L3k7UuXcB9/0Aaq4XU28AAAA=
X-Change-ID: 20260817-ti-am33-usb-4548f2e570ef
To: Vignesh Raghavendra <vigneshr@ti.com>, Vinod Koul <vkoul@kernel.org>, 
 Frank Li <Frank.Li@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Andrzej Siewior <bigeasy@linutronix.de>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Aaro Koskinen <aaro.koskinen@iki.fi>, 
 Andreas Kemnade <andreas@kemnade.info>, Kevin Hilman <khilman@baylibre.com>, 
 Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>, 
 Ravi B <ravibabu@ti.com>, Kumar Gupta <ajay.gupta@ti.com>, 
 Sergei Shtylyov <sshtylyov@ru.mvista.com>
Cc: dmaengine@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
 linux-phy@lists.infradead.org, linux-omap@vger.kernel.org, 
 goledhruva@gmail.com, m-chawdhry@ti.com, daniel.baluta@gmail.com, 
 simona.toaca@nxp.com, j.bhargav.u@gmail.com
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1787003201; l=2463;
 i=j.bhargav.u@gmail.com; h=from:subject:message-id;
 bh=Xykw9kWsK+/kb/51/R5V3OJ/XpnN89GBPUTt9ZGEA7A=;
 b=PSDiwjCRSgF8tyLL58sgaor0uFp4NOH2lPKDimPZXXZyXBiNYyX/1dUSdCEXV8ObgPylbuCI+
 pKkQcZo2p37BxtEFJZgFjDL7yQXIyz8lq+tWA0sJ/b3S6y3sMZrDDcE
X-Developer-Key: i=j.bhargav.u@gmail.com; a=ed25519;
 pk=IqNDwUZKECEA+n8wXctFLBbYL9NhFstZNbOznm/nX1k=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260817_144703_018321_F0ECE81E 
X-CRM114-Status: UNSURE (   8.60  )
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

This patch series converts the legacy TI AM33xx, DM816, and DA8xx
USB/MUSB text bindings to modern DT schema.

The legacy am33xx-usb.txt and da8xx-usb.txt bindings was historically
structured as a single, monolithic file that documented the entire USB
subsystem (the wrapper, core MUSB controller, PHY, and control module)
all together. This series converts that monolithic text binding into
proper, distinct DT schema files for each hardware component.

Patches in this series:
1. dt-bindings: dma: ti,cppi41: Convert to DT schema
2. dt-bindings: phy: ti,am335x-usb-phy: Convert to DT schema
3. ARM: dts: ti: am335x: Fix redundant interrupts property in USB nodes
4. dt-bindings: usb: ti,musb-am33xx: Convert to DT schema
5. dt-bindings: usb: ti,am335x-usb-ctrl-module: Convert to DT schema
6. dt-bindings: usb: ti,am33xx-usb: Convert to DT schema
7. dt-bindings: usb: ti,da830-musb: Convert to DT schema

Signed-off-by: Bhargav Joshi <j.bhargav.u@gmail.com>
---
Bhargav Joshi (7):
      dt-bindings: dma: ti,cppi41: Convert to DT schema
      dt-bindings: phy: ti,am335x-usb-phy: Convert to DT schema
      ARM: dts: ti: am335x: Fix redundant interrupts property in USB nodes
      dt-bindings: usb: ti,musb-am33xx: Convert to DT schema
      dt-bindings: usb: ti,am335x-usb-ctrl-module: Convert to DT schema
      dt-bindings: usb: ti,am33xx-usb: Convert to DT schema
      dt-bindings: usb: ti,da830-musb: Convert to DT schema

 .../devicetree/bindings/dma/ti/ti,cppi41.yaml      | 108 +++++++++++
 .../devicetree/bindings/phy/ti,am335x-usb-phy.yaml |  49 +++++
 .../devicetree/bindings/usb/am33xx-usb.txt         | 200 ---------------------
 .../devicetree/bindings/usb/da8xx-usb.txt          |  81 ---------
 .../bindings/usb/ti,am335x-usb-ctrl-module.yaml    |  38 ++++
 .../devicetree/bindings/usb/ti,am33xx-usb.yaml     | 104 +++++++++++
 .../devicetree/bindings/usb/ti,da830-musb.yaml     | 111 ++++++++++++
 .../devicetree/bindings/usb/ti,musb-am33xx.yaml    | 111 ++++++++++++
 arch/arm/boot/dts/ti/omap/am335x-bone-common.dtsi  |   1 +
 arch/arm/boot/dts/ti/omap/am335x-boneblue.dts      |   1 +
 arch/arm/boot/dts/ti/omap/am335x-bonegreen-eco.dts |   1 +
 .../arm/boot/dts/ti/omap/am335x-osd3358-sm-red.dts |   1 +
 12 files changed, 525 insertions(+), 281 deletions(-)
---
base-commit: 8d3ae59288f1e7d58d76558a6ee96d533bc5019f
change-id: 20260817-ti-am33-usb-4548f2e570ef

Best regards,
-- 
Bhargav


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
