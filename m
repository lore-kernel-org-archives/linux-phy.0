Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9669FD74EED
	for <linux-phy@archiver.kernel.org>; Fri, 23 Jan 2026 15:39:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WGwTizs0qLRCa+y3La6zqwcrUT7MYN5P+1KwxghDed0=; b=uUOjaaj6K7bFuO
	+8fUdc/drdUtIIsWZ2Y6sGf2UQwRGfoIxGLiJbbgLAiO8HH/1jGrsUT/25YFOMiWPyLFh8DCT8pdB
	kD20OJ7G4bwXhUx9fITUqrrDVv9PWpkY7MsFhK3GHSixCXHLgWSL+lqj856qASrHRUHc+MNagipfc
	6jgTCifWlbZMOHYEP4Eki9QQbe2Gwiu/jl1mnkwRafxA/n56dVwdZ4aOljb/oaJG4qCmTfgYS08Wc
	7ZLgjXwaDwkLNq1ViW460Lxnp8htA16xcmVyzamBnfUf3Lhd8tBygvgWQBj/SRltuRm5OBvGMA12t
	UGPB1ZYZWZeFzll52ZdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjJFv-00000009702-0TPa;
	Fri, 23 Jan 2026 15:39:27 +0000
Received: from mail-pl1-x631.google.com ([2607:f8b0:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjJFr-000000096zh-3Tsj
	for linux-phy@lists.infradead.org;
	Fri, 23 Jan 2026 15:39:25 +0000
Received: by mail-pl1-x631.google.com with SMTP id d9443c01a7336-2a79ded11a2so14617585ad.3
        for <linux-phy@lists.infradead.org>; Fri, 23 Jan 2026 07:39:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769182763; x=1769787563; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=AN7Bijlws3Yf4aNS4iNAiLjf2TZ2e4vGXijmqIVGBpI=;
        b=aiTKFLTjorDLZNc1SvS9jXGwwv7GbnmKwwG9TqSUkETL50AUinIsVuZ9zflhsMzgc8
         eMvetCsPuix5lGfGjUzYsEWIjp+AWwYHS5vtRuA0wpqnrWWuRHybBzif1voNHJEas5Ij
         afM7gdhOQmdNtfeMYoC+kfFTizG8hyn9GLOvK8jxLMUx8QCkJTsWKOfO7alJLoZ3vrzH
         ATBSEQEz44LMiw8J4K0fSSNFY+9PbVBKkIcibHVxFH1UKapnYiVpSF2I1QnScvcKDSZp
         0nXUj4peFc1twOK3cPWqe7AHVVJNuWmqVjM0DSjo/m0/4g3E8lFH9sxY5sHP8e75v0bn
         fTyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769182763; x=1769787563;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AN7Bijlws3Yf4aNS4iNAiLjf2TZ2e4vGXijmqIVGBpI=;
        b=nxELJF0PeTd9L/2P4/NAbseGdmxeCMpPwSSqiS/e1yoY3m6gf7X29euOJlVRV31KXR
         pO/4hYVTXiim6PeHMVFZIj7b6Nkf/O1HZ/x8atQYzo91FVQ5kz5PJ0I+e6E9jGK6aR8x
         GolICMakSw9bXEFKR0kkwEe+ELuYgetfRUiVpxzuaWRUJEu/h6kSfZBoGaixgPVidg0m
         ybHnIrDHdzS4V4ay1BHIZdvWVwJ0gRGN8yZMVYdRucS5G0UyBU8sA79VzneYEwV4PGjh
         Bsq9xm9rEOo/HlNooMBYyCUuvU39TLHIfP0zueRTqZ5b/RkgDGL2KpaCU7a0HCjSGcqC
         4roQ==
X-Gm-Message-State: AOJu0Yw4UQEU+w80rQTUeNTsFTlnxw74O9Ontz8sYNM9M702m9ME5Hr8
	LcRQ7RyUJUI+A11P370iSsxCymySVtKEH9McYX0Rg6uKvMu5GDe3LrLo
X-Gm-Gg: AZuq6aI0RUZNG4xhjFxWppdwlfa4THw3TXwRQzh8kAEVUZ+eaiZnw1jjaZaoYqDJ9Cu
	yGe+L0rwySk9IcC4u96BIZnIGrFPsctbv0acbspZ/2HW4JsgP7IEhIzOvby/WgGWyhxBOP2zhqv
	gA8k/Sl/QthCQ5emBdTkiYu9Z1oIxA7zEZGU9kslfILpEieflvVdE0+scLbuDRXBcFV5zb8Aqsg
	XzRbR9oO6SJ5/t23Eul0E/rKv+QlmstC9+YAZt/i2OO/7t4XjWzkhrCoxag/EEmbduj0wt9IXYc
	AiM9FRAabouDEOFeBLpuOTsx4Zmin9ZJuc+ctPJyz3UIw3OO21LMEjOd5AbwqzJsbtedS/uKyTw
	4AgyFXUhaa0aRBhDg6Rb9Q5oWJAm78vBdkN3P5EvSZLy6yT9Ag/pi20KE/ORDmnwidMCCoX7+3h
	tbNPIXVCu0ksUj/R2GwlT9sFJcPMpridUgBQ==
X-Received: by 2002:a17:902:e5c5:b0:2a0:b461:c883 with SMTP id d9443c01a7336-2a7fe747425mr32040215ad.45.1769182762932;
        Fri, 23 Jan 2026 07:39:22 -0800 (PST)
Received: from Black-Pearl.localdomain ([115.99.251.203])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-2a802f9769esm23732205ad.60.2026.01.23.07.39.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Jan 2026 07:39:22 -0800 (PST)
From: Charan Pedumuru <charan.pedumuru@gmail.com>
Subject: [PATCH v4 0/3] dt-bindings: phy: Convert TI OMAP control and PIPE3
 PHY to DT schema
Date: Fri, 23 Jan 2026 15:39:01 +0000
Message-Id: <20260123-ti-phy-v4-0-b557e2c46e6f@gmail.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIABWWc2kC/12NzQqDMBAGX0Vybkp2Y4z21PcoPWhMNFB/SCRUx
 HdvFCq2x/nYmV2I185qT27JQpwO1tuhj5BeEqLasm80tXVkggwFIAc6WTq2MxV5VRWa58qogsT
 j0Wlj33vo8YzcWj8Nbt67AbZ1S2QMGP8mAlCgueJGaFRVnfF705X2dVVDR7ZEwLMmDw0poyVoh
 TJlYIz51/hJQzw0HjUpIINCYpHyn2/run4AG9J8JgoBAAA=
X-Change-ID: 20251231-ti-phy-58bb9e38cfc9
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Aaro Koskinen <aaro.koskinen@iki.fi>, 
 Andreas Kemnade <andreas@kemnade.info>, Kevin Hilman <khilman@baylibre.com>, 
 Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>, 
 Roger Quadros <rogerq@ti.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org, 
 Charan Pedumuru <charan.pedumuru@gmail.com>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260123_073923_896998_A6AE97CB 
X-CRM114-Status: UNSURE (   9.70  )
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

This series converts the old text-based DeviceTree bindings for TI OMAP
Control PHY and TI PIPE3 PHY to modern JSON-schema (YAML) format.

Signed-off-by: Charan Pedumuru <charan.pedumuru@gmail.com>
---
Changes in v4:
- ti,phy-usb3: Limit phandle arrays for optional properties to one entry.
- ti,phy-usb3: Use lowercase hex for reg values in examples.
- Link to v3: https://lore.kernel.org/r/20260122-ti-phy-v3-0-751619729433@gmail.com

Changes in v3:
- Change maintainer to "Roger Quadros" for both YAML files.
- dts: Split node pattern updates into a separate patch and align node
  naming with standard conventions.
- ti,phy-usb3: Update node pattern to follow standard conventions.
- ti,phy-usb3: Refine the reg-names property and add constraints for
  optional phandle-array properties.
- ti,phy-usb3: Redefine "syscon-pllreset" dependency on the compatible
  "ti,phy-pipe3-sata" in a correct format.
- ti,control-phy-otghs: Update node pattern and adjust maxItems for reg
  and reg-names.
- ti,control-phy-otghs: Fix the conditional handling for the
  ti,control-phy-pcie compatible.
- Link to v2: https://lore.kernel.org/r/20260107-ti-phy-v2-0-a1ec27401fff@gmail.com

Changes in v2:
- ti,control-phy-otghs: Update commit message to reflect the latest
  binding changes.
- ti,phy-usb3: Drop the obsolete "id" property from the schema.
- Both bindings: Update maintainers list, modify node pattern and improve
  node descriptions for clarity.
- ti,phy-usb3: Introduce new YAML schema with properly defined optional
  properties for the PIPE3 PHY.
- Link to v1: https://lore.kernel.org/r/20260103-ti-phy-v1-1-8c3f5e2cbd63@gmail.com

---
Charan Pedumuru (3):
      arm: dts: ti: omap: align node patterns with established convention
      dt-bindings: phy: ti,phy-usb3: convert to DT schema
      dt-bindings: phy: ti,control-phy-otghs: convert to DT schema

 .../bindings/phy/ti,control-phy-otghs.yaml         |  99 +++++++++++++++
 .../devicetree/bindings/phy/ti,phy-usb3.yaml       | 138 +++++++++++++++++++++
 Documentation/devicetree/bindings/phy/ti-phy.txt   |  98 ---------------
 arch/arm/boot/dts/ti/omap/dra7-l4.dtsi             |   4 +-
 arch/arm/boot/dts/ti/omap/omap4-l4.dtsi            |   4 +-
 arch/arm/boot/dts/ti/omap/omap5-l4.dtsi            |   2 +-
 6 files changed, 242 insertions(+), 103 deletions(-)
---
base-commit: cc3aa43b44bdb43dfbac0fcb51c56594a11338a8
change-id: 20251231-ti-phy-58bb9e38cfc9

Best regards,
-- 
Charan Pedumuru <charan.pedumuru@gmail.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
