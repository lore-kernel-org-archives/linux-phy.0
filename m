Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B169ECD4F3D
	for <linux-phy@archiver.kernel.org>; Wed, 20 May 2026 15:09:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wzZlYVkQcjUjCpOS03sGlDDFkZR7AiZu4BWQEXrefWU=; b=XLS3m9oHIy0ISe
	bHJtallayjYDxi5PgcXjZlbpG2BVxX1y9yZA1CgT4GdnwXcF6oOtMaLMyytSW8bG7FCeWJ3PAaOEo
	uZ6n29xhPsw08ZUBSMJrPrxYJ4fJKoVT5Xf+dAVZ/SRBAFBGBCAcFmOj2uBcJMOIBW8TXvPwFl8g8
	A2qsMdGMNvIj2Vv78Z8bULhQgxl9892okUs+HSqLXDNtSCvApAT1Sh7BCtNgWq/CDB4fb/HsPy2gK
	rKSxjWgtl7QYvhoAmWVn8g+lG5eRgOjUdGmkKG83aasNjQUuaHA8xktCtmp2x3/X5sFDC1gEIkpti
	oHUMdqU0dy/Vk6oM3Ggw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPiY9-00000004vOp-0IGD;
	Wed, 20 May 2026 15:09:33 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPiY7-00000004vNU-1Xzp
	for linux-phy@lists.infradead.org;
	Wed, 20 May 2026 15:09:32 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-488af96f6b2so54069825e9.0
        for <linux-phy@lists.infradead.org>; Wed, 20 May 2026 08:09:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779289769; x=1779894569; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=DVZ1aHDip8CwzjzzjcHFHeqEyzf02kvl0N1Yqf9H390=;
        b=IqLpKklcRhQnX5jlL1qbRnfLLr6r19F8gLJ1twThiwv6Wt+j+ayaA9onaRWMnkAHXY
         fTvgjo6zSxYvlGfxKsLabu+9ZFPd0FS17YeK0WvffsFxhOipSz2elX1plMj2WE5t7eDO
         09ZHvSx6XCPBdCZ2gGYIad2gla8fjo3FrTEXFLIleDQj4VcfnkRrHOc/8p5ssNcO7m75
         v7FUQKdCOkvDYuQ9B1tlLp85DEV56MKdlGFn2aB5cj0nUbtBfTprXzYZ26wUVRchavDO
         MGJRaPqh5Cg7Uij23DzvjwgqzfVntwX9Qwayo9fdwy6biKn5qFECN9O432iFuT6mT7xz
         S/ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779289769; x=1779894569;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DVZ1aHDip8CwzjzzjcHFHeqEyzf02kvl0N1Yqf9H390=;
        b=I7aUIPMtg8t+sJpAYc/qnwi0p7ymQXhiRwZhqltgOGn+9Jr0fepGOsLz+IA2aTojOM
         3j0ETksHb20qRfH+zUg6AO7qprDg4BRHGWB45PoF+wOYB9cY9B4a7E1OZb2DqfisYf3A
         498aLVCpUp/j9JFXgfA1/4+6RSQM49XoqhVnf9kHD7C6G2UJeWttQZZ+xBFswxugMOsR
         HFknaSycjwQU0b+YTtJ1cNXzszDmeTynShFdVeTQR1YPPMBEe5GtyL+AH1S874UvmvMR
         Lq/+hjVei/his5KG/YNmswsOhhgiTAOiCNISIEt6u/kxZtshdc3pu5WaFP0FgCyIt7y2
         onYQ==
X-Forwarded-Encrypted: i=1; AFNElJ+HHRlBnU1382aGtwI9STg3/Y3yQ21kDkU5VaRiC6Mh+niVahftf1vJP8cqwF+uWJs+4qH4YDI5spU=@lists.infradead.org
X-Gm-Message-State: AOJu0YxvfDLzbdbvLD1UVhCuiJriiaERHgjWprtdj0AfYdra8Af1tgr/
	ma+kgjXVMWK1JDb5fv8QFuWr25KsLU2bVGwh8JaZa5BXDez2qH64511p
X-Gm-Gg: Acq92OGeseQgHqPcObhfQwWEDq1AF48dn5Dk205dc+FUKwg1IO456bUPYikbR5nDEA0
	oEf3gKGz2zVInrzOBGYiKtn5Bv/jMv0TARKFUB7hzhH5pDVw77YbVxYk7+B9aT8uoOk/uby//ez
	6wulaXfPp8e54C2w76I8gcwgCGP/Z1onyxm+SP0W0BrBNEdQhwBQTBBZJEi3dHtqvQPnUqck5kg
	IXfXnldC/jyHCcNwO6/4cOpduF/2rA85hmA0EQvmyE872YxqhdVuHAKn02yO7JJT9Em+7RM0IPJ
	yq23gDPt9bGcEClGHiDCrOtd+a5/O+OfOQ6utQ/OahqwucozHtFsCtjpcREZLlOfs9v8xnyYbpH
	JYiWpSwCV6Gnk6AMJZIFTOxHW9Ey/xBw9Nzozzf5XCa78U8Z0+d6YTpZRdwgbg/PE3AGZYiLy90
	GKQ7aGxOTWKq9MvI/Tyk06Lfxi9siqk8n4kx7x6M4WS4BzoiU45z20ZwHn2ZXctDtj+kkoyTHAt
	A==
X-Received: by 2002:a05:600c:4504:b0:48f:d1b8:9a9c with SMTP id 5b1f17b1804b1-48fe60e14bamr359822535e9.7.1779289768965;
        Wed, 20 May 2026 08:09:28 -0700 (PDT)
Received: from Ansuel-XPS24 (host-79-22-5-99.retail.telecomitalia.it. [79.22.5.99])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-45d9ec39806sm53639804f8f.9.2026.05.20.08.09.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 May 2026 08:09:28 -0700 (PDT)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Brian Masney <bmasney@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Christian Marangi <ansuelsmth@gmail.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Lorenzo Bianconi <lorenzo@kernel.org>,
	Felix Fietkau <nbd@nbd.name>,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v8 0/5] airoha: an7581: USB support
Date: Wed, 20 May 2026 17:09:05 +0200
Message-ID: <20260520150912.11614-1-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260520_080931_425530_A51C48E8 
X-CRM114-Status: GOOD (  18.24  )
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

This is a major rework of the old v2 series.

The SoC always support USB 2.0 but for USB 3.0 it needs additional
configuration for the Serdes port. Such port can be either configured
for USB usage or for PCIe lines or HSGMII and these are configured
in the SCU space.

The previous implementation of a dedicated SSR driver was too
complex and fragile for the simple task of configuring a register
hence it was dropped and the handling is entirely in the PHY driver.

Everything was reducted to the dt-bindings to describe the Serdes line.

Also the property for the PHY are renamed to a more suitable name and
everything is now mandatory to simplify the implementation.
(the PHY are always present and active on the SoC)

Also other unrelated patch are dropped from this series.

Changes v8:
- Squash header to clk Documentation patch
- Address comments from AI Bot

Changes v7:
- Rework to double PHY implementation
  (suggested by Rob)
  Now the clk driver expose a PHY for Serdes port
  USB PHY driver selects it
- Rebase on top of linux-next
  Link: https://lore.kernel.org/all/20260306190156.22297-1-ansuelsmth@gmail.com/

Changes v6:
- Fix kernel test robot (sparse warning)
  Link: https://lore.kernel.org/all/20260306190156.22297-1-ansuelsmth@gmail.com/

Changes v5:
- Add Ack and Review tag from Connor
- Implement Ethernet support in the USB driver
  (testing support for this Serdes on a special reference board)
- Use an7581 prefix for USB PHY driver
  Link: https://lore.kernel.org/all/20251107160251.2307088-1-ansuelsmth@gmail.com/

Changes v4:
- Rename PCIe and USB PHY to AN7581
- Drop airoha,scu (handled directly in driver)
- Drop dt-bindings for monitor clock in favor of raw values
- Better describe the usage of airoha,usb3-serdes
- Simplify values of dt-bindings SSR SERDES
  Link: https://lore.kernel.org/all/20251107160251.2307088-1-ansuelsmth@gmail.com/

Changes v3:
- Drop clk changes
- Drop SSR driver
- Rename property in Documentation
- Simplify PHY handling
- Move SSR handling inside the PHY driver
  Link: https://lore.kernel.org/all/20251029173713.7670-1-ansuelsmth@gmail.com/

Changes v2:
- Drop changes for simple-mfd
- Rework PHY node structure to single node
- Drop port-id property in favor of serdes-port and
  usb2-monitor-clock-sel
- Make the SSR driver probe from the clock driver

Christian Marangi (5):
  dt-bindings: clock: airoha: Add PHY binding for Serdes port
  dt-bindings: phy: Add documentation for Airoha AN7581 USB PHY
  clk: en7523: Add support for selecting the Serdes port in SCU
  phy: move and rename Airoha PCIe PHY driver to dedicated directory
  phy: airoha: Add support for Airoha AN7581 USB PHY

 .../bindings/clock/airoha,en7523-scu.yaml     |   9 +
 .../bindings/phy/airoha,an7581-usb-phy.yaml   |  62 ++
 MAINTAINERS                                   |  11 +-
 drivers/clk/Kconfig                           |   1 +
 drivers/clk/clk-en7523.c                      | 216 ++++++-
 drivers/phy/Kconfig                           |  11 +-
 drivers/phy/Makefile                          |   4 +-
 drivers/phy/airoha/Kconfig                    |  24 +
 drivers/phy/airoha/Makefile                   |   4 +
 .../phy-an7581-pcie-regs.h}                   |   2 +-
 .../phy-an7581-pcie.c}                        |   6 +-
 drivers/phy/airoha/phy-an7581-usb.c           | 554 ++++++++++++++++++
 include/dt-bindings/soc/airoha,scu-ssr.h      |  11 +
 13 files changed, 894 insertions(+), 21 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/airoha,an7581-usb-phy.yaml
 create mode 100644 drivers/phy/airoha/Kconfig
 create mode 100644 drivers/phy/airoha/Makefile
 rename drivers/phy/{phy-airoha-pcie-regs.h => airoha/phy-an7581-pcie-regs.h} (99%)
 rename drivers/phy/{phy-airoha-pcie.c => airoha/phy-an7581-pcie.c} (99%)
 create mode 100644 drivers/phy/airoha/phy-an7581-usb.c
 create mode 100644 include/dt-bindings/soc/airoha,scu-ssr.h

-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
