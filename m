Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 955FCC43602
	for <linux-phy@archiver.kernel.org>; Thu,  2 Jul 2026 09:38:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=t3l/RxpghAgFM7HsTCNv7D+UJjxo2pJDRVpjMgabXI8=; b=pAT3J2TOKvie7T
	YJHEsfp5x4MiD/Gr4BeVey8aleGYD5PMHPEb9NzMKpi58RaeYBVBLSOmi+04UA7X7nUnUpDNGPgdW
	VPoOiUCTQYI19blJvgC+7RnxGkvTey/r90UPjaRaiO8HYKQs551Ppgcu02FtCYdOuoBEP+ZqqoJMz
	pN8AYoehjpnWHk4MiIBEj3fYMNCPcx7jT8+tBX8Hg8aeod1TXRr6Xxb8FdpcLlmAbTfHMi+me2krR
	y4eAedJAPgUtLwcz2dvJ9Yn0Wp8ebLktizkuArDIOPPaUrD8sV+gMUjXn34L1TyR6SOPB4z6aAnGW
	Mfo9snVor6CsqhHBXjYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfDsJ-000000043ws-09HA;
	Thu, 02 Jul 2026 09:38:27 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfDsG-000000043vU-34cA
	for linux-phy@lists.infradead.org;
	Thu, 02 Jul 2026 09:38:25 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-493c1950518so1895195e9.1
        for <linux-phy@lists.infradead.org>; Thu, 02 Jul 2026 02:38:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782985102; x=1783589902; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=HkRnIfEsm7IYSwoxJF19HITLD0IHtrEiTPGLRE2a3tU=;
        b=OVEsLIPJHPNg5hHTKtOhVyy6g7yP34V6+X7u3gHhyiLh2ZLYHnPgN8G6V4leNFv2Av
         fof1nw/sZdwfr28JskVYT14M2JC2v7ImKB9MgTceUGyzmnYDKpS6ZC1vAg+icA18jtdt
         2kbV/yFGvVJOArZ+dAr9TfDIRra17+5aN19pKQsF87fJRl6oli5UngzT3uxEjxwKbDOb
         awoIAQbm1of1R4g62H4Jz3/9hn637gvPu5DGRCkuz4t9uUqYHEJiK/CZJt0YKmlhMRuM
         pqfYbLKZtqZfO8xWrcS9jRRdwUAIf89eQQwfE2ydvj3QUTNTEe+oZIVLT1RKX+VxWfny
         Gfjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782985102; x=1783589902;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HkRnIfEsm7IYSwoxJF19HITLD0IHtrEiTPGLRE2a3tU=;
        b=pISX/pe8ct4Zj7sgrzyfHuSeKfJeqNgQUfrf3EFKc15XixwOjUCndzot2qZyT335mw
         CKoErZQzY5z+mgSr6rqZOmgGPaVi1YmZzYyj8pt8o8iTElK4gKI6R82zkNjoMB0++Da1
         2J3BkALIY1pTMk/QFMNbzGKoTf0J53CODDfjoIwFTEqivXXDzGXxTSKETzY5XcCModeZ
         qZAEStyxsFjH7wjZDfsljMaO0PW1wmTkYEiUGI/deRYXulQZA1kJRI02r0JdQSuLKrGq
         wSxZwNwyJsm5T+813MxMcjS4i+GFxcrAIS/YxpivHhQBnN3gL5lrwpxNJ2Zq6SQXzJ3s
         wGiQ==
X-Forwarded-Encrypted: i=1; AFNElJ8ENvlsK8OGimxirafpULy2l9vTo7fgz8zo8rjo/5qetDMWbgq9Xzqsdlf5fyQNucUMgKxRqh7D4O8=@lists.infradead.org
X-Gm-Message-State: AOJu0YxEKCu+3gCwFIYPBE3kqGLgATMN6I4PsuBOGwSYWZMXfWpAnbLR
	2GJ5zOVq3+fywBh1aJEDcUVTxxyy45rAU+qDVK0Cep1ztArBLOspV3Up
X-Gm-Gg: AfdE7ckC0ChD3USEWVzQV4M6nGjLwLUUbUaKjqKFJp2p0WWl2tMnv9TuE30Hg9zzTXk
	tyToK5XnYkGpCRqPGEemVEzS9yzY2feJ4K3H9ACGQDK3pdyo9ZTfrDh/sjNmxIlcIrZxUDy4I2m
	/lt0dLEyqCOruoN9AF/lywYGqPU0WuyzSLiPZSBXIBz4i/BMx3OeoAZVRXChhyLCeIGi/mtcGd3
	SzyIBZCOO/QEH6KpOCYhdVhbk1Rq5OEY28SSaY482+mYFn1TnCy119mx/Qvfi0JW2oCqAS6HllK
	mjfFB0keptVqxh84pcU2kV/JqVuxLm5X+JWv68jpCiSO3FLwI/1iobS5vnitq23q+as4UIUgACn
	HN6+X5c++UWMocZJQDu/BKtLtV4l3WOkARqaJZcWxw+RTvsKMfHlzX3T28ZVMkphaLaooJ4rf5+
	HRhLpbSzs/ziFWTz6WKb+YzyjbWlc9ZvA8PC8qJ5Mxz1vVnf4bZ6+Ej+C2n0zEwqdxzhanXFUJm
	YJV9A==
X-Received: by 2002:a05:600c:1d1a:b0:490:5000:917 with SMTP id 5b1f17b1804b1-493c230bc20mr74096045e9.1.1782985102259;
        Thu, 02 Jul 2026 02:38:22 -0700 (PDT)
Received: from Ansuel-XPS24.localdomain (host-79-52-250-217.retail.telecomitalia.it. [79.52.250.217])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-493c636c8b9sm35502285e9.10.2026.07.02.02.38.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jul 2026 02:38:21 -0700 (PDT)
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
Subject: [PATCH v10 0/5] airoha: an7581: USB support
Date: Thu,  2 Jul 2026 11:38:05 +0200
Message-ID: <20260702093812.15918-1-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260702_023824_788107_FF63A188 
X-CRM114-Status: GOOD (  19.13  )
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

Changes v10:
- Rebase on top of linux-next
- Add review tag for DT patch

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
