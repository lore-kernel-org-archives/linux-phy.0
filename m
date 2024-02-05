Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C568C48291
	for <linux-phy@archiver.kernel.org>; Mon,  5 Feb 2024 11:26:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XC9PhMTYYCY7UFgtUwezZQEyhBHgY2M2f2+OMKsZ71Y=; b=i08SAUJimQu70G
	bI8fGXXPoPoGxeuEXaYOQRCK7BV+DnDIZHL4u2x9Bw5fQmY6XuxpvvBceD9JS1JKwiyXZ1QhOyxV/
	uV8bcig8iYYsmgiMupRhIhYmBXp6yAD53Cn+z7vL/G4aG8rLUCONkOZWGz6f4XR+fyNAScnUTF4yN
	yaoJaXdnENrcc1b2UuNDVquoVN3fs5NIopZKTaRu/bmCoGzVgay88rQCWUHa+fAQVpehwQGmE17eb
	jmlqfTjWvCm9MXqvb+niR/JGDyAQrR4tLPnmuHmy5Lqv9CNbqsjwkEMejfAe7V1jhc4YjIqos+9aa
	6yQT3FYolSe3dGjzdqLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rWx74-00000002ytE-3EMv;
	Mon, 05 Feb 2024 11:26:10 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rWx6z-00000002yqF-1anI;
	Mon, 05 Feb 2024 11:26:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1707132361;
	bh=HEFTrisHcwP/RUwGwlzUD3rlgftR0EEubBnkx8n5Y6o=;
	h=From:Subject:Date:To:Cc:From;
	b=TgPAjrgSt35SPVjCcqmmPj/tSXqjAbk4HD7ypkMPNnq4uEeG5UaPfN8sK25450VLM
	 9ilvuQHdgHWsdP8Ex2CLGEJ4muZ5Wqg5mdflZpGZmexoLCZljKlu53z3UcVKAzI6t+
	 M4Vd2668bc2SY90W4XseI8Kch8rde3ufYGM1jq7scSs0zRf850H4NSeDiZSiDw7puZ
	 xjbw/jXIwYAXG271YafuGuMxXYrI3nKU+VtyP9Ljy2a9UL4y6nIOGbGSI2Qa4I7Q6G
	 m9l0P16ACm/R2HsCIOEz+Edk+360NJ/4F4ntM0cmC3mS3cEBSZerJV7kW/JwzhnxXt
	 MeVQ3O2adLQkQ==
Received: from localhost (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id F1332378107C;
	Mon,  5 Feb 2024 11:26:00 +0000 (UTC)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Subject: [PATCH v2 0/2] Add support for RK3588 HDMI/eDP Combo PHY
Date: Mon, 05 Feb 2024 13:24:23 +0200
Message-Id: <20240205-phy-hdptx-v2-0-a7150814c047@collabora.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAGjFwGUC/6WOQQqDMBBFryJZN5JEkdhV71FcjHFsBtTIREQR7
 97oqvsuHzze/4eIyIRRPLNDMK4UKUwJzCMTzsP0QUldYmGUKZU2Vs5+l76bl01aqC20leq0RZH
 8mbGn7W69m8Q9h1EunhF+CrrWdWFVlWtVKKNLqaVjigvBlDsKDoYF4eXCMEAbGHIXxqvtkxJ4v
 2+u+lr4o9ec5/kFnws8avkAAAA=
To: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Johan Jonker <jbx6244@gmail.com>, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>, 
 Sascha Hauer <s.hauer@pengutronix.de>, Andy Yan <andy.yan@rock-chips.com>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Algea Cao <algea.cao@rock-chips.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-phy@lists.infradead.org, kernel@collabora.com, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.13-dev-a684c
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240205_032605_774209_293FEA1E 
X-CRM114-Status: GOOD (  10.41  )
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

Add driver and bindings to add initial support the Rockchip HDMI/eDP TX
Combo PHY found on RK3588 SoC.

The PHY is based on a Samsung IP block and supports HDMI 2.1 TMDS, FRL
and eDP links.

Please note that currently only the TMDS related functionality has been
implemented.  This has been tested on Radxa ROCK 5B and Rockchip EVB1
boards.

Changes in v2:
- Rebased series onto next-20240129
- Removed patch 'dt-bindings: soc: rockchip: Add rk3588 hdptxphy syscon'
  already applied by Heiko
- For consistency with SoC TRM, replaced all references to DP with eDP
- Updated PHY schema per Krzysztof's review; also collected his R-b tag
- Dropped FRL, EARC and 10-bit color depth functionality until the HDMI
  configuration options become available in PHY API
- Squashed lots of regmap_write operations via regmap_multi_reg_write
  (Sebastian)
- Introduced parametrized {CMN|SB|LNTOP|LANE}_REG() macros to replace
  the long list of register defines
- Optimized handling of the config arrays by using ARRAY_SIZE() (Sascha)
- Link to v1:
  https://lore.kernel.org/r/20240119193806.1030214-1-cristian.ciocaltea@collabora.com

---
Cristian Ciocaltea (2):
      dt-bindings: phy: Add Rockchip HDMI/eDP Combo PHY schema
      phy: rockchip: Add Samsung HDMI/eDP Combo PHY driver

 .../bindings/phy/rockchip,rk3588-hdptx-phy.yaml    |   91 ++
 drivers/phy/rockchip/Kconfig                       |    8 +
 drivers/phy/rockchip/Makefile                      |    1 +
 drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c  | 1040 ++++++++++++++++++++
 4 files changed, 1140 insertions(+)
---
base-commit: 596764183be8ebb13352b281a442a1f1151c9b06
change-id: 20240128-phy-hdptx-8a98ab60d18e


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
