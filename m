Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26F7CC433EF
	for <linux-phy@archiver.kernel.org>; Wed,  8 Dec 2021 18:55:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lZb7GCPqFgfOuDKIlilVxFCyP2h1lau+S453XX9HGu0=; b=cVhOnFATJbsqSI
	c6dHuWOyqNlx1ASwMyT6l4lAzM/kyaLukRshDyVS2EcgFLLn2dK9jtzvlYkJKaNUa4+3sbkznXE+8
	XgyovML4I4RscKLRo3h+BY5TmJsWtf7B+vT14fY94wHd5fyxFpLWpJgLmWk9yGdmSYfwAChMCJAOC
	pityDAEwiLywuDNHRxjJ1TxhIX+fHtQDCNFoHEBuJzyajB4Ia68kCGzJc7NFvf/o+p34pyBxoUDng
	OdTWK19GoL+AndWGbJkWdQnrm/PdXJ24bFSKOgeildHid6tQprdmUvWdnAP8pKRtuQ2e0d1E0qhoX
	Ouxpc/MOCxdmXJ8dnYUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mv25p-00DwLl-FS; Wed, 08 Dec 2021 18:55:05 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mv25m-00DwJd-A2; Wed, 08 Dec 2021 18:55:03 +0000
Received: by mail-ed1-x532.google.com with SMTP id y13so11486356edd.13;
 Wed, 08 Dec 2021 10:55:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=bnPHoPGFbiP7HW6F6zOKM0rgVaYMVXPavRbOAOjdXS4=;
 b=YWUipWbNKn+WE4X1AJBFj6SdUdsfpJqfWH6KTGw7YQhc/rEDxoiDdvt28tCKJq22vt
 ihppBznyw20mhvOswtn5Dp7/zLuf/4KdBBeQAEgpEAyS2bHI8Y3DQ2NmyoCy9pFrSL+g
 jNJBapMSBkC6ewyy893GUlJMxa7MTJvW46aITAD2ItCH4DpwDGTO9T7/Nd4uXlcmqdjL
 E186Psi3QOmIclSqydJjkygbITDeFwK1nGsWVZy1jgMol+rY6X72Nlp8FqmRHa4GkYdW
 tAwOO+0UJfh6RIFAwQ3eNCs//f7aSI7tt9rzSYH9RjHHN+Mn5A9yXF8wKme2Z19xclgx
 HOxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=bnPHoPGFbiP7HW6F6zOKM0rgVaYMVXPavRbOAOjdXS4=;
 b=UvtR6JZ+sSa28fJr7QGW+5kbbue01iY4j24gI5HofUYTMzSDpjuKlAKh3jYZwPGYGF
 cpazyhiWM5Z8eONIoklYwOFk7D2lzOcDpfqytMB/zEA/HgXHD4Frx7GYJzd7v5ENf5Mb
 DBHRARx7RhJ0pnWyVPOlR2ng4jeMfi/S1J6928cs5CueYerqHkzI++JBAcUO1K5T6r2K
 cxWGTTuCL/aG6Q1X8w/yrIlJhfYngEK4vtzhDyh+9vSmGwXaxOTxC3os5hpcba28XR8N
 5SovQLCiW0ePPHkFWbbSGMHPaYSPhH8YLi2nvzdrg58rHfEhp/F4vDUYOxebFRDzWIZC
 jXOw==
X-Gm-Message-State: AOAM530h5R+O8O8mihdHYxNjv5UlpA5AgxoIw6+9ouNtF8XmAFBo01zs
 P1B0huhzB50gb0KKBbgkePCG14GxF5ygVQ==
X-Google-Smtp-Source: ABdhPJznVmQ3VvZ89Mh6gdPWTlgjs19404uNVgYQF8HGSOYkSiNmrgRb9fWkKB9AG0atjUTx1+KUog==
X-Received: by 2002:a17:907:7ba8:: with SMTP id
 ne40mr9599335ejc.391.1638989701002; 
 Wed, 08 Dec 2021 10:55:01 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id g18sm1862273ejt.36.2021.12.08.10.55.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Dec 2021 10:55:00 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, kishon@ti.com, vkoul@kernel.org,
 p.zabel@pengutronix.de, yifeng.zhao@rock-chips.com,
 kever.yang@rock-chips.com, cl@rock-chips.com,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [RFC PATCH v4 0/4] Add Naneng combo PHY support for RK3568
Date: Wed,  8 Dec 2021 19:54:45 +0100
Message-Id: <20211208185449.16763-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211208_105502_378924_B239EA47 
X-CRM114-Status: UNSURE (   9.60  )
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

This phy can be used as pcie-phy, usb3-phy, sata-phy or sgmii-phy.

=============================================

Changed V4 by Johan Jonker:
  TEST COMPILED ONLY!
  Driver not verified with hardware!
  Produced in the hope that we can get some review progress
  with this serie for the documents and driver.
  Use at your own risk!

  restyle
  add devm_reset_control_array_get()
  remove clk structure
  change refclk DT parse
  change dev_err message
  add dot to phrase
  add ext_refclk variable
  add enable_ssc variable
  rename rockchip_combphy_param_write
  remove param_read
  replace rockchip-naneng-combphy driver name

  rename node name
  remove reset-names
  move #phy-cells
  add rockchip,rk3568-pipe-grf
  add rockchip,rk3568-pipe-phy-grf

=============================================

Changes V3:
  Using api devm_reset_control_get_optional_exclusive and dev_err_probe
  Remove apb_rst
  Redefine registers address
  Move pipe_phy_grf0 to rk3568.dtsi

Changes V2:
  Fix dtschema/dtc warnings/errors
  Using api devm_platform_get_and_ioremap_resource.
  Modify rockchip_combphy_set_Mode.
  Add some PHY registers definition.
  Move phy0 to rk3568.dtsi

Johan Jonker (1):
  dt-bindings: mfd: syscon: add naneng combo phy register compatible

Yifeng Zhao (3):
  dt-bindings: phy: rockchip: Add Naneng combo PHY bindings
  phy: rockchip: add naneng combo phy for RK3568
  arm64: dts: rockchip: add naneng combo phy nodes for rk3568

 .../devicetree/bindings/mfd/syscon.yaml       |   2 +
 .../phy/phy-rockchip-naneng-combphy.yaml      | 127 ++++
 arch/arm64/boot/dts/rockchip/rk3568.dtsi      |  21 +
 arch/arm64/boot/dts/rockchip/rk356x.dtsi      |  47 ++
 drivers/phy/rockchip/Kconfig                  |   8 +
 drivers/phy/rockchip/Makefile                 |   1 +
 .../rockchip/phy-rockchip-naneng-combphy.c    | 608 ++++++++++++++++++
 7 files changed, 814 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
 create mode 100644 drivers/phy/rockchip/phy-rockchip-naneng-combphy.c

-- 
2.20.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
