Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12593D489BF
	for <linux-phy@archiver.kernel.org>; Thu, 22 Jan 2026 17:54:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eEjABkJYCqhYaAvpoOrm3e09wnibrVDRYqXl38Nu4Xs=; b=GsWvJSwU0GLu8m
	UfRrJUT6NfQlBOVVqKA3TuidHq7rhau+3j3hPDfaVbKbtHLe98kJYE8qdowryFRCjRExD4ILyOZVp
	8ls64Gvw9zFBV+CKFmNWenNhnS/qgV+ur9lDDcEcsBDuhrK31tx8T5PTdRU/2GXV4fFqZL7+qx87b
	hi7aoHCPnNKXerC8ptb+RDB/piagAR9OZFM9x3ljY+fj2ZAoWYVJcS88G6ImsPw8gin/Xh0C46o5i
	XRHE1O/oOslvUp8INNDvqwGCjAOPM9Sj7shUs4D0MM/EqKt1dc+o4DAJmcGt3C5mVs6J/sRSRkkeY
	SmgsDi/SDO62G9IPG6RA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viyt1-00000007b0y-0SVc;
	Thu, 22 Jan 2026 17:54:27 +0000
Received: from mail-pl1-x62d.google.com ([2607:f8b0:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viysx-00000007azs-3stC
	for linux-phy@lists.infradead.org;
	Thu, 22 Jan 2026 17:54:25 +0000
Received: by mail-pl1-x62d.google.com with SMTP id d9443c01a7336-2a0d52768ccso9737025ad.1
        for <linux-phy@lists.infradead.org>; Thu, 22 Jan 2026 09:54:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769104463; x=1769709263; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=IzyR4xVrpsSybc4UKBr7Yf9UVEuXH3UQn5bgnz7MscY=;
        b=S0So27TmHwZdyXRE1Evrj22FYy6DS0raDSE86CGtN+sVgn3CfNjvaCyqkFtYrAa5ZU
         pQ5ZCLKcFZJ9MDYl2V0h/apjKpdnoS4hTRiUwdQLnOiNzN2Ks2GB2/nPkBZP9unlZBtJ
         hj+f/rOb4ikhdoptRwCxIyNVZDx4n1Jk7145hEj/5t2N6JH7vgoEav7BbvwtDDxfVmgM
         8XyjUyWcD9r+yNZC7bwRnGRqZ5rCW/udvb0OOl37G4t0bBa31qTJelG/61kXhsP5vAMB
         I2vy4rSQCwp1EMhLpD3XBzHaPerfeOfo9uL7u8m5dW7CumvP9rTqmGbj84duKBZJMLdG
         CUBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769104463; x=1769709263;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IzyR4xVrpsSybc4UKBr7Yf9UVEuXH3UQn5bgnz7MscY=;
        b=hsYjOVQRibajusmxcaSKdHhNN3nLSLNnRUKgorWT1AHIZd6MElUdA6r48ifi4dzLaq
         fWRAjf8Udqo0eT02uI80upi3jDuuxICymdgzHhC5pkibkHFkzgOs2PGIpof5jmogbjFg
         VUbP+ibzQwj7YIX8zUjzZujvejerSjluucFKCvQtbi+XyhrA3jUrXJ8/Htk7lfIhrpl1
         bbuo+BXijVfKr5sJAHLLEIBQqGBPPegF9sVLU8qoizbDIkCaKFO1+cxV5DOJ/6pSTibQ
         WyQwkE0fb09hPxF2Qp9wyr3IJ5vkNU2FrzPSQda1KVBK6zHZn7kYzO0mDVoUavvLdKou
         t/PQ==
X-Gm-Message-State: AOJu0Yx2biMzQqyTmz0mZ1dhhWqVl8PXBakyRgHiAr39Tm6ygExboX06
	kSBYlWYdFFIrwJOWdjf37awEvdo2jPzrkNDRNxpBqxG93tQmvXxIxuh4
X-Gm-Gg: AZuq6aKCtKj+PhNnBWPy61Y7UTtJUwfLjoNUpOofIzkW6x47D3UuySVaT1r1k9n3KoT
	SI0i5qc4HFPsoroXjiLq3+vJyhKvqpvGdkmZp1Qy/xbTdeF8+QWL5ZUj/rVKIgvxgxoeYejAxnp
	4lNU8YHG5fhPuISqf/mTfpB8/Nk38P5giouwl35M6ROU9OyHRt7LY9e9/rnpyKM/Z3nOltSSNqY
	a/kEZnRRWaW5qArDCZjUzXWmenUg5oIqR/GiFeu1jy52wXuXWoxA8OhjhtGgOVTIR9SPprO+DYm
	lXll7P81EBfX74dQ9A++UyZxoDFH+1/WyGNQxeHNfqukK9CrF+F6140rUtZ5SXWHaJOubp7o8DM
	HC5TZMBun5rZFKBLMYDsHTiyaYlENXBz3HbEtXkt1Vit+sbO+jGptRWg9LZmmNC5cLbzGPCVrya
	HTPAxZeYSYORQSZbAajr+DjHyUUrXWkXp68A==
X-Received: by 2002:a17:903:2406:b0:2a7:b412:6cbf with SMTP id d9443c01a7336-2a7fe76fd29mr2007125ad.55.1769104462539;
        Thu, 22 Jan 2026 09:54:22 -0800 (PST)
Received: from Black-Pearl.localdomain ([115.99.251.203])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-2a7190eee4fsm187745195ad.42.2026.01.22.09.54.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Jan 2026 09:54:22 -0800 (PST)
From: Charan Pedumuru <charan.pedumuru@gmail.com>
Subject: [PATCH v3 0/3] dt-bindings: phy: Convert TI OMAP control and PIPE3
 PHY to DT schema
Date: Thu, 22 Jan 2026 17:52:56 +0000
Message-Id: <20260122-ti-phy-v3-0-751619729433@gmail.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAPljcmkC/02MywqDMBBFf0Wy7pRMUl9d9T9KFxonOlAfJBIq4
 r83Ci0uz+WeswpPjsmLe7IKR4E9j0MEfUmE6aqhJeAmslBSpag0wswwdQukRV2XpAtjTSnieXJ
 k+XOEnq/IHft5dMvRDbiveyKTKPUvERAQCqNtSsrUTaYfbV/x+2rGXuyJoM5a/tcUSKiQjMpvE
 q21Z23bti8Tq0Qw0wAAAA==
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
X-CRM114-CacheID: sfid-20260122_095423_997238_B83C2530 
X-CRM114-Status: UNSURE (   9.96  )
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
 .../devicetree/bindings/phy/ti,phy-usb3.yaml       | 135 +++++++++++++++++++++
 Documentation/devicetree/bindings/phy/ti-phy.txt   |  98 ---------------
 arch/arm/boot/dts/ti/omap/dra7-l4.dtsi             |   4 +-
 arch/arm/boot/dts/ti/omap/omap4-l4.dtsi            |   4 +-
 arch/arm/boot/dts/ti/omap/omap5-l4.dtsi            |   2 +-
 6 files changed, 239 insertions(+), 103 deletions(-)
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
