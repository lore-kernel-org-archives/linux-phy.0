Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5C8ACD4F3D
	for <linux-phy@archiver.kernel.org>; Thu, 21 May 2026 15:36:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PzNESWiNyLHN71VKJ6nZyb6DhgCqTDcGcZt15mpnG/0=; b=sVuzsOnDDNIQgn
	2hAsod4LthEyWxx5GDFeEtYWenT4HdAxYiKF41Tla6NOPeWKsTim8NFlE06haJrww81uQy6iZIORT
	0sZHN/9ulq9Co6Os6Mvllc7nrOs4ZmKq3sWfA/D6JqjxXUraaSwinFO8QNDJ5WueteNW6/a/wA6Jw
	KUhtHVaIdsCuLiNQ1YW0ENliZLIgyzNRpHCFE76NVu0Lg+MhJYCtTGOEGKeGXAOBK3gl6Zh5BFdAF
	n4R2ZzNmUVO2tl62SXjdIIYsoAew1ZFg1oOZ76ZcLXGxASjH72oCuuEgviKfhvi13sYWEeN2JdD7W
	V0fIhsjRY73vV0mSctPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ5SD-00000008LD0-2bWr;
	Thu, 21 May 2026 15:36:57 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ5SB-00000008LBW-0l6H
	for linux-phy@lists.infradead.org;
	Thu, 21 May 2026 15:36:56 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-488d2079582so60207495e9.2
        for <linux-phy@lists.infradead.org>; Thu, 21 May 2026 08:36:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779377813; x=1779982613; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=yI2KtTIwiuNK+knqFFW8fgG1npheFcqTp4LO6YB2KS4=;
        b=gBRZ8d2b6lNYdC43gIer3VyfGbyWO/+/vum3y3rxa3vUhHDUyBVzAjuABFLUxvvcc+
         /CVxenscn/H/X3Rkj0GUY3+nA248ORYmIDq8gDWCJNrux8xUnBXpDOMQnRBJyg19aUEx
         QO/BOWNYOP/a5Zi3c2EpqBe+rPp0ff6/JRoVt35vXKT9REJ/EzBkT02411tfOtGxDQce
         7lHd7KKJly5Lujxk6uYWynKnm6bJDoLCzE5JS5E0l4RC2lgKvsxDHiG15ANRXMJOhOvy
         SpnYTEwBFHazU/rwSEkZJHNAl997WrwbZYIELj5huHgAdHxiRt3md1BuQA8M4Bw3qQSb
         GH+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779377813; x=1779982613;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yI2KtTIwiuNK+knqFFW8fgG1npheFcqTp4LO6YB2KS4=;
        b=OBeKBlOWNYD22OnuQNMogQtyBnCikwyHdHjTWApeDNtz9mhoMyEXgAIZOud/VxP/JP
         jr2nZaE/Jg9iD8l6a0PXVjLZ08ipygXY+NIbt/837R3dLlp2mgleR/leMko9i0zAkDkh
         4WJvG6B18jRATD/fHI7Al0ZdH4bCHvhPGpy9rSzLxl4SNEb/sfpplNcUQ3PpsmKp59Z9
         rLjBRBSgPE2vSadrODkjhOvkIav1p+3me90KbUHNR5HrzcuZybQfxkhyK9RtCsJ1fM8E
         p/G756OoUzqslKHkXwxPR8AHkyWtG51Bhln2I2NsKHV28BGMdUzBOc1SFwxIyfjylQor
         K5sA==
X-Forwarded-Encrypted: i=1; AFNElJ+7ihgn9HQfif6RuN44CCVZGu2/C+pAIQOaqpQfSxNgm/KuJcczfh/ngig3/PTXnvlXtA8hk6879nM=@lists.infradead.org
X-Gm-Message-State: AOJu0YwOzxw7VGt0NmqAxTOSf26nXIQttjCZ4cQT4hDqLzYKHLYhuIqB
	HWpg5zuQQhAMRzNVguyUMSHNBhmGUE5K5ZXsjboTS5Y9vDlY05naLYyf
X-Gm-Gg: Acq92OFfPxrst72OKihr0J9NZI6hMGlWd5MthUV3HXtrAFnnYqzXY5aP1xxSY3EoTK4
	ZyByPLI932FiYC6OSvO7JejUqR2d9Pi/yGqwlmMkAwTGAqk+R3mrWsLx2AeL9mkU8O9ez7xplTI
	pe010OqpJoozCtwW1gRlFhII3V8wR1ZtY0L3qQx6v0BCbsdOfjOUbn+RIV9fDHKflEQ1K1hl5u5
	Qj2lUEIRv2sqUqyXfIeKZGgp4ZpDvw17oWNaJh1Lfk1GQ3ZbTTq4cXivJ/NapITbxFI6f8yB83r
	cygoiouoteEl2zXnfFOT4yAqCXwmwL/djFn3LaFcCwP4L8pOvaU9IXb+mY+Uo+NqtC3hozEcA7z
	50Ql7EhRpDI1p54bIGhKy6d/xN2rbPSemmKHqyNOGehS7P5h1E7A/hOjxLMFdRlc5kFsXIh/NBp
	9EnWDsAPqbzhoOaxsI1x61Ruja0+83zNFsHZmddGgV3YcVphdh+QkcV3ys2DEE9M2dPEuyMtfDg
	g==
X-Received: by 2002:a05:600c:8b34:b0:490:3d27:94f4 with SMTP id 5b1f17b1804b1-4903d2797c3mr28980425e9.7.1779377812772;
        Thu, 21 May 2026 08:36:52 -0700 (PDT)
Received: from Ansuel-XPS24 (host-79-22-5-99.retail.telecomitalia.it. [79.22.5.99])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-49033d9edcbsm79159825e9.13.2026.05.21.08.36.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 May 2026 08:36:50 -0700 (PDT)
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
Subject: [PATCH v9 0/5] airoha: an7581: USB support
Date: Thu, 21 May 2026 17:35:51 +0200
Message-ID: <20260521153645.7028-1-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260521_083655_247482_0A172294 
X-CRM114-Status: GOOD (  18.34  )
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

Changes v9:
- Add spinlock init
- Add ack tag
- Add review tag
- Add additional comments for phys on USB 3.0
- Add extra logic to make phys optional for USB 3.0

Changes v8:
- Squash header to clk Documentation patch
- Address comments from AI Bot
  Link: https://lore.kernel.org/all/20260520150912.11614-1-ansuelsmth@gmail.com/

Changes v7:
- Rework to double PHY implementation
  (suggested by Rob)
  Now the clk driver expose a PHY for Serdes port
  USB PHY driver selects it
- Rebase on top of linux-next
  Link: https://lore.kernel.org/all/20260519220813.28468-1-ansuelsmth@gmail.com/

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
 drivers/clk/clk-en7523.c                      | 218 ++++++-
 drivers/phy/Kconfig                           |  11 +-
 drivers/phy/Makefile                          |   4 +-
 drivers/phy/airoha/Kconfig                    |  24 +
 drivers/phy/airoha/Makefile                   |   4 +
 .../phy-an7581-pcie-regs.h}                   |   2 +-
 .../phy-an7581-pcie.c}                        |   6 +-
 drivers/phy/airoha/phy-an7581-usb.c           | 559 ++++++++++++++++++
 include/dt-bindings/soc/airoha,scu-ssr.h      |  11 +
 13 files changed, 901 insertions(+), 21 deletions(-)
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
