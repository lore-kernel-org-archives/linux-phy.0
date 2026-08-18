Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4DEAC5DF7D
	for <linux-phy@archiver.kernel.org>; Tue, 18 Aug 2026 14:29:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QBflu2SpncwPz/sHS2lnTTzyQyIL0WG0MGckMcK/jno=; b=jZa7qBUsyxZPWY
	BC/9GgdDgwQI40wPyNAYL0jdNTKvjmyXVIWsfkV/7sV8Q2wTQyuMkMrXC/YVq8KWF6dzPw+AghmHC
	WUofpZs2QUaOSwM/ZJpDFQhUSj+bKsvOv5kTPS0aLwhEDGESJw0oUnKg2oL1PmKgQr/xMc8C84GIS
	+hXbl7OEgE3YSJVb3Dwh1xRwi0zjR2RBAkTGhaeDtm1ZtCkr+Cl1VEaeLAGyXCsXMJ4fxHHFsc+7Z
	fEsJjXOPDbYwihpYAUp81sDVsVwcDiHm9rLjjcpSHUIIgBCnnv82SxF9TcgZBbwbzyXzTErlBeOY/
	Sba2Ynf1k8glcbSQyDQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwKoa-00000008Agz-1LeF;
	Tue, 18 Aug 2026 14:29:20 +0000
Received: from mail-pg1-x529.google.com ([2607:f8b0:4864:20::529])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwKoY-00000008AgH-1wwp
	for linux-phy@lists.infradead.org;
	Tue, 18 Aug 2026 14:29:19 +0000
Received: by mail-pg1-x529.google.com with SMTP id 41be03b00d2f7-ca8a3a77daaso7080a12.2
        for <linux-phy@lists.infradead.org>; Tue, 18 Aug 2026 07:29:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787063357; x=1787668157; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=ODrlCcCoU3q8OoWZI3Z+F20E6MLxBbiDOF0rGC7y2kc=;
        b=oLvunghpIVWCkUKkVaYdHzenqE4iMlfAE7oOJhm79YQCMjSHSgBwDn8fhu79T8N5L/
         O3dq1oFsBrR6TLdPr1bdqgrMM11XD5LRLJfMeYfyUD2qnoGkvsEt2jcgPTRYGs7ALpYq
         0zrkpFgwQ7wT1nFIYAkgh4eX76jjWBlbwM1MJZof9ODd/3EdQC7LAGHX9IoKH1hodei4
         Th8yTLHPQiHuwcy2JCBFbgWfvXsk4XVNSBSRs/SbiWUc1OE7QZIiyguX1oaSW5GVCOBS
         N3VmXXfCneSKHePP4JVgXOo45BLacfWkaOZFpDsqeJ7+u4Tqqr3fRKlFMSj847l0QsrR
         erjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787063357; x=1787668157;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=ODrlCcCoU3q8OoWZI3Z+F20E6MLxBbiDOF0rGC7y2kc=;
        b=pMTjeGgx6+iAlTgX/ojnZ0y5hnxNHrRP7WFVaS1TzGymiMgPbGR4pXef4DENxq2wnP
         DyYbgT68ZM8Z8aKt/egyUDh/dJLpc4rxfeBdGcQ0CVOhU0d/+RGySiFyurv1b1ez70wQ
         3JBOYl8A9YybqHnqxdTFZm8kyIuTJSZuoY8ch8YPFmZh0sT8B9B1p0fqXfam7/FHW4mM
         gbGN134SgQyuH+eoakYmrDbutdgX1naO03OPO0eaCFpjRB4gpyUfymU+SR5q0OvPHu6W
         FxFfmybfa9/FIKsnOpmPb7ws6kVpi/X2TNVqWUNd8EsmmCM60KSV5c0M7A87zEs2OH8x
         HU1A==
X-Forwarded-Encrypted: i=1; AHgh+RoKWJNRCI7WGQPXLhXLXOjV2uGoEjlf0YzFvvEIVgk2tumzWhvBQEzQgBFk3OF5u+IkJvNVbzduuy4=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxj/5u3Hle51DxbIY7X0t+Op9IGZ340OtJi36N8HzIL0o4azK9w
	wKQ+lJUdvnyEBY1e+TovpaW0iori0xjKHKyxOtrsvJmRGiP/2/Hol2i1
X-Gm-Gg: AR+sD1058W1N2JX9X3QgYdqdgV9LOKwbrr/Jkf3SAX7zsdtLOTfETc35vlqZkPCaWPr
	CvbJQgH+cB1iMlAUt4YmVLKiMNwJBfR+P/EgH6klh4RAzKC+bh+kaUVFR/8R6BLNsptPF3fq80T
	9jNrHwgO6d+Lr/MjiUzy4zicCk/g5K7Ksa0JMLqeHufy/TABRYVYSA6nWjBkh0WMuCtkEQekAPc
	/dsZ0sL+TQLKE63C1uLGZPOKP6cVpI2p+cH2B/E834PXvC70ESj23dM1R2LzlN4myIKHBdMrbWR
	XlWG+htHsYppkbIGM/ybjpn+yACJoc/eyTmmJ75CmZh4Y74/XQYC9Z+G1HUPODrtI+pb6KilZxZ
	oPMRYHDTb9TlF3s8CH4MRmT/tLEIkbX+JHsQKteC/WZIM3v2tk1kBMXQ5PGdEXQAU+jxId0muRb
	Oq9ZTZ9cy2JQNpGx1GqDIJ3e8bC965m5bWnpGQ+c6ZxO6cG3subJigjszu6aVKZgVW/rU0HUV9
X-Received: by 2002:a17:902:850b:b0:2d5:cbd3:8eb1 with SMTP id d9443c01a7336-2d5cbd38f48mr47861085ad.3.1787063357187;
        Tue, 18 Aug 2026 07:29:17 -0700 (PDT)
Received: from [10.90.163.252] ([2409:40c2:501a:6e15:dc3f:c23f:e55e:d03d])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-327b43d488dsm9043527eec.29.2026.08.18.07.28.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Aug 2026 07:29:16 -0700 (PDT)
From: Bhargav Joshi <j.bhargav.u@gmail.com>
Subject: [PATCH v2 0/7] dt-bindings: usb: ti: Convert AM33xx/DA8xx MUSB
 bindings to DT schema
Date: Tue, 18 Aug 2026 19:58:42 +0530
Message-Id: <20260818-ti-am33-usb-v2-0-66fd44d66824@gmail.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/1WNyw6CMBBFf4XM2jGlUB6u/A/DopQpjBFqWiAaw
 r8LGBcuT3LuuQsE8kwBLtECnmYO7IYN5CkC0+mhJeRmY5BCZqKIcxwZdZ8kOIUaU5UWVpLKBVn
 YFk9Pll9H7VZ9OUz1ncy4J3aj4zA6/z7u5nj3fuXirzzHKDArtVG2lI1N1bXtNT/OxvVQrev6A
 bHjDQi4AAAA
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1787063337; l=2756;
 i=j.bhargav.u@gmail.com; h=from:subject:message-id;
 bh=JGfyrv6YsEMW3ySMnbJnC0enIp8myRb40Fox7M1f5A8=;
 b=9giuNSenfwjusCj/dLjQXYCk5quKNspVE/tzT8aHCiTbMgmU5VX0Hd6wozCgezLFxIvzYRC+m
 ezTX+JHv/U7C/ZWvHRReZiDvw2g5pyp+tdnBTdHyWcA5zP/tKO+xt+a
X-Developer-Key: i=j.bhargav.u@gmail.com; a=ed25519;
 pk=IqNDwUZKECEA+n8wXctFLBbYL9NhFstZNbOznm/nX1k=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260818_072918_511967_DED78159 
X-CRM114-Status: GOOD (  10.05  )
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
Changes in v2:
- patch 1: add interrupts as required property for am335x-cppi41
- patch 4,7: add pattern constraint for dma-names
- patch 6: remove deprecated property ti,hwmods from required
- Link to v1: https://lore.kernel.org/r/20260818-ti-am33-usb-v1-0-69ac5f92df45@gmail.com

---
Bhargav Joshi (7):
      dt-bindings: dma: ti,cppi41: Convert to DT schema
      dt-bindings: phy: ti,am335x-usb-phy: Convert to DT schema
      ARM: dts: ti: am335x: Fix redundant interrupts property in USB nodes
      dt-bindings: usb: ti,musb-am33xx: Convert to DT schema
      dt-bindings: usb: ti,am335x-usb-ctrl-module: Convert to DT schema
      dt-bindings: usb: ti,am33xx-usb: Convert to DT schema
      dt-bindings: usb: ti,da830-musb: Convert to DT schema

 .../devicetree/bindings/dma/ti/ti,cppi41.yaml      | 109 +++++++++++
 .../devicetree/bindings/phy/ti,am335x-usb-phy.yaml |  49 +++++
 .../devicetree/bindings/usb/am33xx-usb.txt         | 200 ---------------------
 .../devicetree/bindings/usb/da8xx-usb.txt          |  81 ---------
 .../bindings/usb/ti,am335x-usb-ctrl-module.yaml    |  38 ++++
 .../devicetree/bindings/usb/ti,am33xx-usb.yaml     | 103 +++++++++++
 .../devicetree/bindings/usb/ti,da830-musb.yaml     | 113 ++++++++++++
 .../devicetree/bindings/usb/ti,musb-am33xx.yaml    | 113 ++++++++++++
 arch/arm/boot/dts/ti/omap/am335x-bone-common.dtsi  |   1 +
 arch/arm/boot/dts/ti/omap/am335x-boneblue.dts      |   1 +
 arch/arm/boot/dts/ti/omap/am335x-bonegreen-eco.dts |   1 +
 .../arm/boot/dts/ti/omap/am335x-osd3358-sm-red.dts |   1 +
 12 files changed, 529 insertions(+), 281 deletions(-)
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
