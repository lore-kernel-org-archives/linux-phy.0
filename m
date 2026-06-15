Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18EDCCD98C5
	for <linux-phy@archiver.kernel.org>; Mon, 15 Jun 2026 05:49:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+KHw6JXFwSFDPOGG9BF5aFhGclAMd0z++A1WK4H7HFQ=; b=wS2oGZBeKGUv4k
	i4G97YZ7AKzPzUy0BnRzl28YUTPa20mRCBWYQlk9E8Z1USXplQDCRl/h+sBXv/r7wcib/IlWKUT5O
	DOfLz3P5Q8DcY+UdLwxwIu9CwFlLroURESLHo2z9ztqqzMZTE0CGRj+D8b/YY3q2GVDppFWbeB2/D
	qRH1he4EY6wz2kpp9lvN4g/pVkNgwlgAfsPje8SsfD0eN19kiEATNrYo1LNiLdW/RymCSgAiSr8+m
	Vvr4Es8ny8CxdVURcC35dBjd/VMbuaYpjv3e3Rf8NDAcquRa7MGqwXemPVoFK1kbVRik4dIvJJquk
	SdT8sNZkfAj8kcC3Kw1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ0CJ-0000000DdyR-24ec;
	Mon, 15 Jun 2026 05:49:23 +0000
Received: from mail-dy1-x132a.google.com ([2607:f8b0:4864:20::132a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ0CG-0000000Ddx7-0k5H
	for linux-phy@lists.infradead.org;
	Mon, 15 Jun 2026 05:49:21 +0000
Received: by mail-dy1-x132a.google.com with SMTP id 5a478bee46e88-304f590dd91so3279793eec.0
        for <linux-phy@lists.infradead.org>; Sun, 14 Jun 2026 22:49:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781502559; x=1782107359; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=fxO3SIwr8zcTEZ8tP4gC3esK2bDmRkRY2LStbTjG76k=;
        b=Udc/At7hfOaFGKyK2+xl9VIgqlNl6VPtn5KIr/KsVxPtS6nO6rmnnYnV/qWRnq2aRD
         OqNz+1xv36Sa5fSWsGcbziDBt/Vfqy9IDWcIE/MiHObJTGgPvqXeAcptvjFcWd6s9UZK
         SHXBjS/akMkZpZdfkB+uwsQp2G3gNO55OtBsejVodVl96YKh90hRnJGztXgPBmZvBgk0
         tsJZV370vaDoTu5FKXFC93GoEbggh5nNrvBIJuIRTWn3PxLv+1hXrh1RcowhKfekdQdp
         16s5LgcLVPi9Dvc/6GHZCFckCi1cV7u6NcF11VBodZFM4Zmoh9fyO6FMFuFZbkjoGfGW
         J9gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781502559; x=1782107359;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fxO3SIwr8zcTEZ8tP4gC3esK2bDmRkRY2LStbTjG76k=;
        b=hHYwayHHNniuOse0evu/Y9lZmZuGiCppgr17vJb3vWOIiUFTNPhjfJJOmXgr9t95bh
         sttiQDf40bRntjZy6lO4MFMA9AcohCSRhce23ZasFEqlCdb+irJMDtlp3etEDVEjA7WZ
         HNJWz1s897brEvEOo+1cYpisWlCLSeKYDXj/ymSAAYg8v7ZlMppUhdSyNO+VNHsZfUuy
         TYzvX+a+dHaXEEm51S1sofq3nB64dUDFf8CjjMloJKMX2zxTALiceVRnf7hXu1EAnn0i
         oqkatiS55gXdybUL1D8k8Ljch2adtMiFWzZ6lbU1pOqzQ1fbu+f++y5AuGBXldigkzf7
         a8/A==
X-Forwarded-Encrypted: i=1; AFNElJ8hAZbHizUuZSQ1uu8ilJNj2ou5CaY+b2oJMK2/7ZmiRWpjT/pYN3J+fC3/assBpNizxR4e59RM2qA=@lists.infradead.org
X-Gm-Message-State: AOJu0YwjCOJKns1o76pJILsNxB+Kvn17ChYOtaDwuRkdgQfl3rLlxlM2
	ikdLRb6C6p6zJSm63TEfObPjTt3RBHI7ejeTF0C57CCvafENUNz9I3U67dyyIQ==
X-Gm-Gg: Acq92OEfs6BUuE3rETPltZ9XQyUWzAr9e4+RseTCmo+a6an/1tXiT/MwaIvienxS/nj
	+qfzflhtWwB20fGykIFCsyz8buFdE8JEVy6oFk/C+YLtgLI/TObli4X2WCTWih5gpqAcJd1nU8i
	kC6nBrEE/NRConzWcXTHPEjMxvng2oBX2ISyEcNsjnMOuiNytSt1GKoU3t93O8LDOHXU0JKHnIx
	Q2HEJsMkN7zKWNH5ay2AToFMF9H5bCjztGNUFQ70rROEufmeGTyxOq9K/+nW2bjKQ7UDO5sV89S
	6KuJu+rP1kLfcmN2sEd3HyoADrUVte2lZkptPHyd2qHzx7KAdvulpP954JhPFSxevbSBko2tjmb
	sdePh2RANEnEFw9bBaRa9HlBNFDcMbzhLsawbhuio9g0CtrzcWiDEmNn4oI6FPEl3raYuQzK/HF
	8dODyZhbZraypqNnRCSoCmXfnScls6aaseAOaBXs5bn9bhOwFjiY/MPd7Q1FnVoGOqNtWtt4Zlq
	4jL49F5wMwK
X-Received: by 2002:a05:7300:7496:b0:2ed:e14:e956 with SMTP id 5a478bee46e88-308200c4e8emr6796107eec.32.1781502558263;
        Sun, 14 Jun 2026 22:49:18 -0700 (PDT)
Received: from localhost.localdomain (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3081ddaf69asm14295300eec.0.2026.06.14.22.49.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Jun 2026 22:49:17 -0700 (PDT)
From: Joey Lu <a0987203069@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Jacky Huang <ychuang3@nuvoton.com>,
	Shan-Chun Hung <schung@nuvoton.com>,
	Hui-Ping Chen <hpchen0nvt@gmail.com>,
	Joey Lu <yclu4@nuvoton.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Joey Lu <a0987203069@gmail.com>
Subject: [PATCH 0/3] phy: nuvoton: extend MA35D1 USB2 PHY driver for dual-port OTG support
Date: Mon, 15 Jun 2026 13:49:08 +0800
Message-ID: <20260615054911.48821-1-a0987203069@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260614_224920_212565_0B825852 
X-CRM114-Status: GOOD (  10.20  )
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

The MA35D1 SoC has two USB PHY ports managed by a shared hardware block:

  - PHY0 (USB0): OTG port shared between the DWC2 gadget controller and
    the EHCI0/OHCI0 host controllers.  A hardware mux automatically routes
    USB0 signals to the correct controller based on the USB ID pin.

  - PHY1 (USB1): dedicated host-only port for EHCI1/OHCI1.

A previous series [1] added a separate phy-ma35d1-otg.c driver for this.
Following reviewer suggestion to reuse the existing phy-ma35d1-usb2.c
driver rather than introduce a new one, that series has been dropped and
this series instead extends the existing driver.

Changes in this series:

  Patch 1 updates the nuvoton,ma35d1-usb2-phy binding: the PHY node
  becomes a child of the syscon node (reg = <0x60 0x14>), nuvoton,sys
  phandle and clocks are removed, and #phy-cells changes from 0 to 1
  for per-port selection.  Optional nuvoton,rcalcode and
  nuvoton,oc-active-high properties are added.

  Patch 2 updates the MA35D1 DTS: sys gains simple-mfd, usb-phy@60 is
  added as a syscon child, and DWC2/EHCI0/EHCI1/OHCI0/OHCI1 nodes are
  added.  Board files enable the nodes and add HSUSB pinctrl.

  Patch 3 extends phy-ma35d1-usb2.c: a loop creates two struct phy
  objects; a unified .init handles both ports with parametric register
  macros; clock management is removed (each controller gates its own
  clock); a read-only USB role switch is registered for PHY0 reporting
  the USB ID pin via PWRONOTP[16].

Link: [1] https://lore.kernel.org/linux-phy/20260604101220.1092822-1-a0987203069@gmail.com/T/#t

Joey Lu (3):
  dt-bindings: phy: nuvoton,ma35d1-usb2-phy: extend for dual-port OTG
    support
  arm64: dts: nuvoton: ma35d1: add USB controllers and dual-port PHY
    node
  phy: nuvoton: phy-ma35d1-usb2: extend to dual-port with OTG support

 .../bindings/phy/nuvoton,ma35d1-usb2-phy.yaml |  67 +++--
 .../boot/dts/nuvoton/ma35d1-iot-512m.dts      |  36 +++
 .../boot/dts/nuvoton/ma35d1-som-256m.dts      |  36 +++
 arch/arm64/boot/dts/nuvoton/ma35d1.dtsi       |  68 ++++-
 drivers/phy/nuvoton/phy-ma35d1-usb2.c         | 263 +++++++++++++-----
 5 files changed, 378 insertions(+), 92 deletions(-)


base-commit: 254f49634ee16a731174d2ae34bc50bd5f45e731
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
