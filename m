Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7CD4ACA5FBB
	for <linux-phy@archiver.kernel.org>; Wed, 30 Sep 2026 07:18:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Py+iuOnzRo+VR4gffCdkLIXsHWTmD2bBcZ4td8Q/sns=; b=dH44KvL7ur8plm
	Eypngu/33MkhsNVBAhY0G8EJJhZ1D0YfY6xu3NSSZoHB+HTDbRyD8lMKpo/wm6kTgJq9FZ+x9aB4n
	NV1ZlYr9sIC0sXUgadVM3LapG3+ZOyP/Cofa3EO4JZBG/Bw9pvfqvHPsPv8gSXKPe7Tw6wLu6Figd
	JSFf2/n0ABZEb4HgFywUopl3UMJpZPtOIVaDHtsM3hiCroU6H9rN7V4nXXgO51Mwla9rgwBcjoWo7
	WdpKYHpKIyKeHuu9x3PMoBRmSsoUq0d1X2f2oS1+dPiWMFIDRxqwx0i+h6k9DI8sYYrHu3NbAwQgT
	ySBUWlrNIMh3YfdVyIZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBoaO-00000005FiX-0atC;
	Wed, 30 Sep 2026 07:18:40 +0000
Received: from mail-wr2-x1a.google.com ([2a00:1450:4864:30::1a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBoaL-00000005Fhc-0rUr
	for linux-phy@lists.infradead.org;
	Wed, 30 Sep 2026 07:18:38 +0000
Received: by mail-wr2-x1a.google.com with SMTP id ffacd0b85a97d-4888598e4f9so3457273f8f.0
        for <linux-phy@lists.infradead.org>; Wed, 30 Sep 2026 00:18:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790752715; x=1791357515; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=Y5Ar/J3lXFwxWphKUtD7c9Gh3UMYH3kW8PbvXHpvZmY=;
        b=PKUDgAWCpW6vV5aV7XmIsmI9HsTOW4W+ynEqZgQmxeyqX6HzNm2WhkieYTtorTnJfD
         V8TxW0rr5tDVSmKhQBQQ20aTUgcWs0OigXRcgtHYfNo+zl2oWJAyyRwnaS8tR5bfT0fr
         uG+3/LxFacyiKSwygZP4ASo20FmxxjCucVZzz61OO8cejPi9b6aahi0FmNM6YMEqDIx7
         Zoss0SG2q+aKiqTY8yowIy0xDS937fFNwxn4jroMGZW4detchT724V6wvYuWB4I1nLuT
         N16ynxV19bRZ1vDI443LBpujLsYOaVpuP8T9Y1xLgXBlUATgKSJIWPkuu/vs16EEmUtK
         q9gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790752715; x=1791357515;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=Y5Ar/J3lXFwxWphKUtD7c9Gh3UMYH3kW8PbvXHpvZmY=;
        b=p7HJGAwhY+bMaffB32wJFFHbbOZxBH1cTsyItiqS3v92SEfF5xTsWCPaeajC/G/zOD
         Fr0Woi+o4yphdHLlIQLxeQeOKDSQ6KCOwgOpErSlqVNYdeUUTJkRkyd4BbrnI42d6Lm1
         ps0yMSe3h7L95I8C9TuYgTByRW0wVQpsNvntP43u+bog3Bahxbp6EkFgztiRKt3qar9D
         64fDX7Yh1IQeYmloSTUwgqtUEfNcjwOlb6cX/LyKeEOFRromkcKHZ78OJ0l1hfnRxPIK
         TXQW1dYmZRj9+EVXBiap3f2HExBRi7Swn6+6tC82ww2/7kW61u7j1zxKr5wsdx66m4Ux
         c06A==
X-Forwarded-Encrypted: i=1; AKwUvBwW3E0avsePqevqGN7QKWogc86JvRgsOB474qy7lbpFrcnP33XFn8pqiV66IaIRrDigAH/ypZEMymQ=@lists.infradead.org
X-Gm-Message-State: AFuF++m6PVVotbh1J3qYsNJQrIMI8gNghwpysQaD1d+zshbzqR7m+X2y
	qZqUF1vAeC1PxTm2hyNh+tByEyDoASX95ug/wShEBB01V4ZUE0SKFEVU
X-Gm-Gg: AYBFou0aTmXeguik3IY87Y+woSMQNitmI1f8HMUxp++mGDekMP2pl+J4HBk6R7+BqgB
	gE2P0oVClfAgEkJLs1ryJVID3Fm1hAlN8o1JvR4UeKjju4R7FxDieDvfb/VYDSNE2QrkijE21nw
	1sATxutB/rZI7GANala0jsNufvaiwD70h4fJGWslHgduc6nv2EV02lyUGvCYh+jgnUclvfBvO28
	Q7CjHiujrjf1P7W7WBofQZVH+B7ECx/90bZerS/pNx/UsAzR8OZXRwE12Fd2Cf3iEf1AxBTWxfI
	NGerhzpoZxRG63pn91g6p/DKqXvFmi17bbxNm15kgMQ9otX/O2wpigEMJpJ7eOvGOxFWyYfqexE
	2xZ0opFjGohFpXcFq6ALgrKkq4QR4qDv7wHtIe1OB7RC78CEeZZA3AVBqesI0gDJAeK7C6Hyw35
	Gn8Ji9YAXbJKvUn66qp9fyppigzRLTdRWsnQxldZHC7zcvB5dWlTI2i/SCsRVgIHBY0+lOr7eXI
	4XoJ67TJO/93MxZy6xx7AIK/IBhLju7A90dUnRzpIRXKNiW6laLUJcXHn4mDCGr
X-Received: by 2002:a05:600c:3486:b0:49d:17d4:aff2 with SMTP id 5b1f17b1804b1-4a01ad9847amr4981855e9.1.1790752715090;
        Wed, 30 Sep 2026 00:18:35 -0700 (PDT)
Received: from Ansuel-XPS24.localdomain (host-82-57-191-234.retail.telecomitalia.it. [82.57.191.234])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-4a01b1e79e4sm10590905e9.2.2026.09.30.00.18.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Sep 2026 00:18:34 -0700 (PDT)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Christian Marangi <ansuelsmth@gmail.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lorenzo Bianconi <lorenzo@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v12 0/3] airoha: an7581: USB support
Date: Wed, 30 Sep 2026 09:18:16 +0200
Message-ID: <20260930071826.48811-1-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.55.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260930_001837_276617_56A931E0 
X-CRM114-Status: GOOD (  18.31  )
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

Changes v12:
- Rebase on top of linux-next now that clk patch got merged

Changes v11:
- Remove clk patch and move to dedicated series

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

Christian Marangi (3):
  dt-bindings: phy: Add documentation for Airoha AN7581 USB PHY
  phy: move and rename Airoha PCIe PHY driver to dedicated directory
  phy: airoha: Add support for Airoha AN7581 USB PHY

 .../bindings/phy/airoha,an7581-usb-phy.yaml   |  62 ++
 MAINTAINERS                                   |  11 +-
 drivers/phy/Kconfig                           |  11 +-
 drivers/phy/Makefile                          |   4 +-
 drivers/phy/airoha/Kconfig                    |  24 +
 drivers/phy/airoha/Makefile                   |   4 +
 .../phy-an7581-pcie-regs.h}                   |   2 +-
 .../phy-an7581-pcie.c}                        |   6 +-
 drivers/phy/airoha/phy-an7581-usb.c           | 559 ++++++++++++++++++
 9 files changed, 665 insertions(+), 18 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/airoha,an7581-usb-phy.yaml
 create mode 100644 drivers/phy/airoha/Kconfig
 create mode 100644 drivers/phy/airoha/Makefile
 rename drivers/phy/{phy-airoha-pcie-regs.h => airoha/phy-an7581-pcie-regs.h} (99%)
 rename drivers/phy/{phy-airoha-pcie.c => airoha/phy-an7581-pcie.c} (99%)
 create mode 100644 drivers/phy/airoha/phy-an7581-usb.c

-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
