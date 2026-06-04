Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F0FACD6E57
	for <linux-phy@archiver.kernel.org>; Thu,  4 Jun 2026 10:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gZu3IYanmX3Fzc8s33LGlyhsIijEGxRJprQw9fWh2L0=; b=xfmBQCh8MADYuo
	u+wbrmYolIbpzldmg5CvVnjnSe0Fb1kRXfGm9GKhsgKdSxxD7pmZg5J5e6jroJFbLF5z8YKY7Ruhj
	InfSuaNj2a3DhcERp2KvvIAh38Pq5pzmwUFzr0xakYbLW1eVqxXVVpzVvDkv4gAAdmAQL/kKqqyVv
	mOAaauMzL+U9G7EzVUFr0Ow5ZR74cUBEddI+UgmDmj/Zcj2q/eEQdAVB9OCgEUX+AplaOIzWXE4QX
	T3Q/rWSmMJQXQpfVdCn5zKt4CKVld6YtG+2KnJ2curpOUfpH3WW7/w4RwQ6xY4WHfYnXtb73oG+OD
	Ba5U6yyuKB01k/LLi8mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV53w-0000000GYAU-2mgt;
	Thu, 04 Jun 2026 10:12:32 +0000
Received: from mail-pj1-x102c.google.com ([2607:f8b0:4864:20::102c])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV53t-0000000GY9C-38yT
	for linux-phy@lists.infradead.org;
	Thu, 04 Jun 2026 10:12:30 +0000
Received: by mail-pj1-x102c.google.com with SMTP id 98e67ed59e1d1-36ba285e98bso507611a91.2
        for <linux-phy@lists.infradead.org>; Thu, 04 Jun 2026 03:12:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780567948; x=1781172748; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=o8iQzsybxThr4vBjL6O/h0dJfugpHWY8oKYxnchHSCA=;
        b=c+OoHPpKczVY1AGpbE8fiZZVYBCwYSxk7G7yeC+xnsXb+94+cd0tBVASsx87B1lpHt
         2NCsf/uZBKlH5S8Jeqkr9vsKxn/zTBkGcgEZmd/5AhBYIOmInCXeLqvMBnfo0omorSFq
         rC0q/rShiI49Ec3LO9ibMkJ65EbMcqI6WPuptGIbirhgOKAs4HVOcA2NJ4pQirbB8u0X
         q0BBGa/zfv1NOwhADP2EV6uLl8Cf/rszCqRTteV4wnVDK0u4Dp3pHO+vGJNlBhNdNBTK
         wSZAdcf5cEJTTft+v1Epyptc9f014vX0cswPZI+UQFYIiz4pYDSJdFCeYCKPfj3Ycxbb
         DYzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780567948; x=1781172748;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=o8iQzsybxThr4vBjL6O/h0dJfugpHWY8oKYxnchHSCA=;
        b=BfBTRYkOuofPQpQ/QBUex0VQzhUD5g6aGk2FYDqnVKtmgqE+btwGXxXzCFX0ySkmX6
         3urpddkXOJRIBKajoIxmFCEwaDFJ2EYI0bprlNeAd1GtA5yhwOrWY8XM1XVi1+c22QdE
         RHaBca9Rsu0XkJGebJT6mZLOpS54NTvM+lgdsYclCSeiwWywgwDwJGj0SuCTzG/hfrji
         oHhUwmIM0UICq/CrUvwsiKc5SoBHqMFG6d8vYZgVirbkkG4stCPkFKbaWglDDT0tWmJ6
         4OMkX2CyLXAFbCf7qsLAjdIUJKoW9bGf2GptTAsOGJpawT603RRvManT+4c6HKQ/sLop
         mwlQ==
X-Forwarded-Encrypted: i=1; AFNElJ8WiIaqtfDdE17SEsvGMb7FRDLF+bOgCU0/ldlRwi2XWH88Luyu3rY+rwxoFLLrrsLXTXwgWkVzzrQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YxOyz9bBmfQnJkrPaVCCy/Lth/OrItqmSKSCNE2aA73NlvvYJH/
	rzY2TlRxa9kGBzu7dUmTIDst6GbC2Ss/g0nXCKWr5DGaW8+Ufqj1OnR+
X-Gm-Gg: Acq92OHpvqKSUmU78yBw3jS/bG4e9o6qCUaqHIlVr1lR4Oi2uRRFAO+PrqPL9VmSnJ2
	YQXrF1yOedPd7midi3EKaC/Sd0zKhmNMe1VnUeCE3gwB1M75qiPaU90HqDyuLogwtV6dx/spA1N
	O41C52CTX+BOFfNG4TNBoL7FIZYFr3uiNPszL/22c/CzOeaV8TDTVmofstN4i0zTvEKwKJFTlsZ
	URjoLSi9V3PixWMU6I7VbeaPNyNz1PWNVrFEuEJyvGradsbK5e0+KC0NMAw7KeSWQJrMqcMD9U/
	wB4F/k62scU2yZRWZxDiMBaXqhSliwUb79F62MG3HZXU4SNgAlvePxZejShgC8rQacnva7n2zIf
	ObP/p8NFOKOgp/RgCvyaOiag2fm9L338SBRsS0s4j2qj6R66VPY1PFIC/U65mpTalogvvDW136l
	2D7cPlHQM24m6/KHzyHnfsqZm9pJ0I86KHm9LRHw5zbpL8Z6oUOuehA68V+RMf1aBP2mWi3TNlN
	95+BwPaobO7S1jLeJ/viWc=
X-Received: by 2002:a17:90b:3f90:b0:36b:71e6:3de8 with SMTP id 98e67ed59e1d1-36e34770907mr7588205a91.24.1780567948238;
        Thu, 04 Jun 2026 03:12:28 -0700 (PDT)
Received: from localhost.localdomain (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-36f70a29cd6sm2483385a91.11.2026.06.04.03.12.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Jun 2026 03:12:27 -0700 (PDT)
From: Joey Lu <a0987203069@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jacky Huang <ychuang3@nuvoton.com>,
	Shan-Chun Hung <schung@nuvoton.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Joey Lu <a0987203069@gmail.com>
Subject: [PATCH 0/2] phy: nuvoton: Add MA35D1 USB2 OTG PHY driver
Date: Thu,  4 Jun 2026 18:12:18 +0800
Message-ID: <20260604101220.1092822-1-a0987203069@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260604_031229_786986_990C2D8C 
X-CRM114-Status: UNSURE (   9.82  )
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

The Nuvoton MA35D1 SoC has two USB 2.0 ports:

  USB0 is an OTG-capable port.  Its physical signals are routed by a
  hardware mux to either a DWC2 gadget controller or the EHCI0/OHCI0
  host controllers, depending on the USB ID pin state.  The DWC2 IP is
  device-only in hardware, so all host-mode operation on USB0 is
  handled by EHCI0/OHCI0.

  USB1 is a dedicated host-only port served by EHCI1/OHCI1.

About this driver:

  - Runs the PHY Power-On Reset sequence, with a guard that skips
    re-initialization if the PHY is already operational.

  - Supports optional resistor calibration trim (nuvoton,rcalcode) and
    over-current detect polarity configuration (nuvoton,oc-active-high).

  - For PHY0 (USB0) only: registers a USB role switch that reads the
    hardware ID pin state from PWRONOTP[16] on every query.

Joey Lu (2):
  dt-bindings: phy: nuvoton: Add MA35D1 USB2 OTG PHY  binding
  phy: nuvoton: Add MA35D1 USB2 OTG PHY driver

 .../phy/nuvoton,ma35d1-usb2-phy-otg.yaml      |  79 ++++++
 drivers/phy/nuvoton/Kconfig                   |  15 +
 drivers/phy/nuvoton/Makefile                  |   1 +
 drivers/phy/nuvoton/phy-ma35d1-otg.c          | 264 ++++++++++++++++++
 4 files changed, 359 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/nuvoton,ma35d1-usb2-phy-otg.yaml
 create mode 100644 drivers/phy/nuvoton/phy-ma35d1-otg.c

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
