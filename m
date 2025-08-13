Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 390C9C87FCF
	for <linux-phy@archiver.kernel.org>; Wed, 13 Aug 2025 19:45:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4IPrlnkfBI72S931Pz51gvxv0eHYprhdxEQACEl7Y3Q=; b=s2dtLnWjMSMIoX
	o9JxpA0ca7dh1mbuhf6Wdt7eNOK4emxqyp0vfF+OdmVLABNhLlYYnT3C+ohMgo1mwkllPxfW7VJWU
	2/Jf4x1w4JMg+A3hMdJI0ePvdVVUZx7aOrowZXlsqxC1gGJj2l9O+K4R0WWzNVpTB3JiCJdLCUAAN
	hFMCTAmKeux+f3ocfSIy3l5fkh+gDvRUZFo6DZFJQqfwTowWjO1e9lQzd/e6uFH6fhjms1l+3qfVj
	37k12+sR/A92+J7rxBd8q1mL+DnZ29Iy00EWz8dhIryDzrAQJc1jRHt72l1QHXcGWFnBsbna65bUc
	ZdiR0O0USdmOED+RxoRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umHPw-0000000ErUz-3sct;
	Wed, 13 Aug 2025 19:45:48 +0000
Received: from mail-il1-x135.google.com ([2607:f8b0:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umGV9-0000000EjJe-2iFJ
	for linux-phy@lists.infradead.org;
	Wed, 13 Aug 2025 18:47:09 +0000
Received: by mail-il1-x135.google.com with SMTP id e9e14a558f8ab-3e570042988so1407105ab.2
        for <linux-phy@lists.infradead.org>; Wed, 13 Aug 2025 11:47:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1755110827; x=1755715627; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=KXgtHtogm5A4R/WnbeHN7aFUW9InK5mQEbz2x1R9n64=;
        b=vh1+bj2EP+aqJ1w+RlKa5F8wjNjqX9FkElHese7VjKFzbN2MR94WmwwlMkVCQ25MCN
         f8nH4XiUxF6RoyLAnIC10msbjM84t/KEtm/hJjT+hlM4PrmQmCifKNfXD/JyZd4WwkyY
         5lL2auLT8T7mhpxOc11tc/jkJN8YZus5EF4d9kiwniuq7DUkjzdZby6gmaiLheKVc4JZ
         WOg9BVZr4xgLiRTrI9y43TNhUNPrOJbKA4EpWPw47ibeuBcVoyyoqI+CykxViaFitwy2
         lXTkWKUpcbDzNX3OH2hzqCmwGeowYZ2N4cpXqjkQUOA8sA085PQsLrkcwyJdVCkyekOz
         +r2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755110827; x=1755715627;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KXgtHtogm5A4R/WnbeHN7aFUW9InK5mQEbz2x1R9n64=;
        b=mGjFF6xe0oUWRIgLNyQ94J0I88f10KmVWYwxyVeAjqhJICWYTe8uyvQIdN0X1d5qzH
         tYRn9TO+wPrhsYHoQwKikRYxDu8D8CiTIicwwrZRmcvJfgglAr7rkSUbyztuxqhhX3GT
         7IN55Mgu/Z/GN0JaSh+EBif881EhJoejjueFNwezLB9mA3kKF2gf4htCNUlwYOcKsaNw
         994tAkK7COnOu57DBnZqhkRHGxc42MITD8kLh/kws74SZTAMCKL+NPd64w9HbaoXNbr6
         iBD81aAT0IzC9CrqJS/5yrBNjlLzXChF9zWVHztfAFEJvd/hW6WsvMGdNn8mBM7AW5p9
         Wt+Q==
X-Forwarded-Encrypted: i=1; AJvYcCUVi7paycTEFoi65H7vip2p3H78zZ8zvZ2IT7X19l/BDbxdHUpjHt2DIkA+KYH0v1ChoLKi9HGRESY=@lists.infradead.org
X-Gm-Message-State: AOJu0YwD/+DUAx7U0YlS8voQDZrEr2sJ8ob/MHQ9TYjbdQapdnsZXOGw
	lUjf7Ndu3ZEhGVSA2T2VmuTnnVNnqu6f0iL+GBW25VOPli0gSI+6K5+5k/+cyGcH7zY=
X-Gm-Gg: ASbGncviY+TBBM4zOpdXL+Ji111qWg28Bed6oD5m34XrH6ncDkpFS36H60wDH5Ppamo
	CRP8NKt9MK64bniNod3mF5dh8IYIXPEzdT4EdiGlUGgxB/iJETwt35Vgmy1zCt0laPHFaanRfO9
	Eh9btFalLK1wet8qAV5Wn2aqGSnDiVVpv1FO67lEa3hZktOkARQUjbbbq0KzOv7fqNB+MK75m+3
	qyaeax6fekwuzSLRfdcxg+TcPqKTPs/pDD1LX+rK5Wr6QivkXN+FFQcXl7FUU2nHAh3x7zX72Wn
	DoPEFHBQqGBDigHnMLe34xrcTJikydh9wKblsnfcsD4Mo2zBtVZIyv7xKsVbch+Atl4Rm6fiib2
	hwjO52mGGg9TiuIFnvk9QXDnLXDacv+bJNQg1MIKLpIlWUwb+AZa2sXLksWGmjiz2nQ==
X-Google-Smtp-Source: AGHT+IE4C3i9M8kXUz9O4UxOKjpcYn8lEZvQJ6gg/sXkMzZkGV6K8yFbp3z2/m0TNzRFI95fCD98Hg==
X-Received: by 2002:a92:cd8f:0:b0:3e5:4002:e822 with SMTP id e9e14a558f8ab-3e57091642dmr4986915ab.12.1755110826731;
        Wed, 13 Aug 2025 11:47:06 -0700 (PDT)
Received: from zippy.localdomain (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-50ae9bd89d7sm3933104173.59.2025.08.13.11.47.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Aug 2025 11:47:06 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	lpieralisi@kernel.org,
	kwilczynski@kernel.org,
	mani@kernel.org,
	bhelgaas@google.com,
	vkoul@kernel.org,
	kishon@kernel.org
Cc: dlan@gentoo.org,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	p.zabel@pengutronix.de,
	tglx@linutronix.de,
	johan+linaro@kernel.org,
	thippeswamy.havalige@amd.com,
	namcao@linutronix.de,
	mayank.rana@oss.qualcomm.com,
	shradha.t@samsung.com,
	inochiama@gmail.com,
	quic_schintav@quicinc.com,
	fan.ni@samsung.com,
	devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-pci@vger.kernel.org,
	spacemit@lists.linux.dev,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/6] Introduce SpacemiT K1 PCIe phy and host controller
Date: Wed, 13 Aug 2025 13:46:54 -0500
Message-ID: <20250813184701.2444372-1-elder@riscstar.com>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250813_114707_925945_5F2152E3 
X-CRM114-Status: GOOD (  12.44  )
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

This series introduces a PHY driver and a PCIe driver to support PCIe
on the SpacemiT K1 SoC.  The PCIe implementation is derived from a
Synopsys DesignWare PCIe IP.  The PHY driver supports one combination
PCIe/USB PHY as well as two PCIe-only PHYs.  The combo PHY port uses
one PCIe lane, and the other two ports each have two lanes.  All PCIe
ports operate at 5 GT/second.

The PCIe PHYs must be configured using a value that can only be
determined using the combo PHY, operating in PCIe mode.  To allow
that PHY to be used for USB, the calibration step is performed by
the PHY driver automatically at probe time.  Once this step is done,
the PHY can be used for either PCIe or USB.

					-Alex

Alex Elder (6):
  dt-bindings: phy: spacemit: add SpacemiT PCIe/combo PHY
  dt-bindings: phy: spacemit: introduce PCIe PHY
  dt-bindings: phy: spacemit: introduce PCIe root complex
  phy: spacemit: introduce PCIe/combo PHY
  PCI: spacemit: introduce SpacemiT PCIe host driver
  riscv: dts: spacemit: PCIe and PHY-related updates

 .../bindings/pci/spacemit,k1-pcie-rc.yaml     | 141 ++++
 .../bindings/phy/spacemit,k1-combo-phy.yaml   | 110 +++
 .../bindings/phy/spacemit,k1-pcie-phy.yaml    |  49 ++
 .../boot/dts/spacemit/k1-bananapi-f3.dts      |  28 +
 arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi  |  33 +
 arch/riscv/boot/dts/spacemit/k1.dtsi          | 169 +++++
 drivers/pci/controller/dwc/Kconfig            |  10 +
 drivers/pci/controller/dwc/Makefile           |   1 +
 drivers/pci/controller/dwc/pcie-k1.c          | 355 ++++++++++
 drivers/phy/Kconfig                           |  11 +
 drivers/phy/Makefile                          |   1 +
 drivers/phy/phy-spacemit-k1-pcie.c            | 639 ++++++++++++++++++
 12 files changed, 1547 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pci/spacemit,k1-pcie-rc.yaml
 create mode 100644 Documentation/devicetree/bindings/phy/spacemit,k1-combo-phy.yaml
 create mode 100644 Documentation/devicetree/bindings/phy/spacemit,k1-pcie-phy.yaml
 create mode 100644 drivers/pci/controller/dwc/pcie-k1.c
 create mode 100644 drivers/phy/phy-spacemit-k1-pcie.c


base-commit: 8f5ae30d69d7543eee0d70083daf4de8fe15d585
-- 
2.48.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
