Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA111CA6002
	for <linux-phy@archiver.kernel.org>; Thu,  8 Oct 2026 06:06:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jwb2oV1Hq+hNg6HReQfIlKOkaxHV4IT/SdvWG0bVI4I=; b=L588pMUbX29sEo
	utknc5so0q4GuX29up7RkJP4ZEVhQgF/cOHjW+jubC+YLjgt6KIYENJPVXMr2Tr5CklbrVaakxik4
	tULTFP8k/gcJ1G4ks6oZdaKRgPaUn1/hJU3/BMVap3ulV78LXDozeQAO0hQfDzT7aQi3B6TXz7GyJ
	2Aa/b1GZl7YOezTAngzz9pu63WGLM8xmnJxEeVhj8IE0sa1w391YkYH0zLk4K6cRXsO6d1x9tWBEN
	clFhiH5dj72VmJrnDesBpbF/YQvDCd6/obOXsFx4pZqf0CxifasBZYjMQkoF37UZG+lzA+RJrdMQD
	sR0VQTBGkQI2/Ua3QMZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEhH6-00000003by9-0OFR;
	Thu, 08 Oct 2026 06:06:40 +0000
Received: from mail-pg1-x52f.google.com ([2607:f8b0:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEhH3-00000003bxT-478G
	for linux-phy@lists.infradead.org;
	Thu, 08 Oct 2026 06:06:39 +0000
Received: by mail-pg1-x52f.google.com with SMTP id 41be03b00d2f7-cbe6295f05bso195622a12.1
        for <linux-phy@lists.infradead.org>; Wed, 07 Oct 2026 23:06:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791439597; x=1792044397; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=7yznlhzA/LCCyg8VcHmCAqbKM1iwate4R5ON9EtsImI=;
        b=UfQHwrTTy0oetfi4E8FdC8rxuq8MIrn42dECOyKDkso3FsH2am2cqM/ztEoWiPbPYY
         qzBJS8LkHRkUN427yn7kyR4VjUsl9inY6FiEVPQJGZI/xdUpmpVnYFz8nGRLwfC+MaCm
         GR0vtpA/MP5kvJLksy1iplAZyIpHOffGTxfg8VcxqDerWPuUgktqO2NOFynQUghULGFs
         r80YuSmeveYpF5F5NM6plis6/cTjPoPy97Ru2cg0WoiYp6yi2duMKj/dqpopOYiO/kIm
         a+PSzZFVwgpk/LKaDTkre6GCt4ZQKENeLuxmOEAuWezH1h5T+XlLZAjloOu3/mbmKQMy
         axgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791439597; x=1792044397;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=7yznlhzA/LCCyg8VcHmCAqbKM1iwate4R5ON9EtsImI=;
        b=rSEjki7mqB+VxpNqPcUHS1GqW2IOoUuGVxdgBBnYIrpnLzT0AWiyU0Ousmwz4TRPm4
         dl53fqnf5QqaJ/nnOtMiBNbBRv85G8iJfTLdBFx9Dv2uwQYCdq0FFVu/eAuZbf0FmreC
         uWiwESGlSOJrhdya6+fWp0YNsWPFoHqn3Dzb88TcLvteY4KS/fZ2klUu9SMyNQYiV2FZ
         JUjmIpFnuDJk2lRl4nRlRVjk7CG9bRdiv2OAQdIkdTRsnPuSVj/vW2DCVp5WiaL5Og91
         Vc+vSkkiAsdHnj0VSyrBWz1Ut3JJu5GbPs6O5M57syOcF6EUqIAqdhr7AhbvovQRpB+5
         IyGA==
X-Forwarded-Encrypted: i=1; AKwUvBznABBCqdyd5Qob5VJetLCHkRYiy7wI8Ng1W7fgQOIEN4+wnNtHBBMs2wXGdHw18Tt5r8qJUMkWl/c=@lists.infradead.org
X-Gm-Message-State: AFq9FYJEfC0b1qR7WgZ1HBl/OIg9D8zc/3tMbuIQ71hGPKfh2+uviT0w
	5hb/LechHLvFMa/SiztMalIkjAtrC/SIrbW6ZKTw7c4nl1mV/KS6X8Mt
X-Gm-Gg: AYBFou3RdAuM+QrOWnKaL5ln5dgvWPqWD5mzfh3LJ8KlaRNd2ZvFIYvDuVX2gWfaK1S
	/e2NZ9CV9cyMwxtGFoL8/gXOhbgNcOWchjaQ8tmEEaCQYI2HJkeVl+0BbGfDpHg4rIM8JGcbEZk
	BQhF6tXE5pFx3GnDJiMnYUmJ1nNyLbC3IOCek4Av8Nlt+JLT1kkeiyjNi6srMZEhhbdzbxWZQto
	5hCohq235sxYDzgCnFxe4miIIZmLIwEy+TOmPmeYrn8bJ26irheHEkXJDCnkD/uplScmltTPtPb
	tYdY78etvQkeBRoq38c2+NdSvCcnbetA9YOsEDOVOXb9PE3YYhibsyzVSIfOU880P/rnQKqlMH3
	N6FghQ7OTf2F2JsKsutyvpjfr02K8lRI2EkSPa8KqEAkbXaFSQRpVAmAfcKPQoqW8gjQHcG71Ma
	l9R5H44iTICL5Hrbf97Mibhguq1dUoCcDjst9eF3r9dAXDJBl3+BrTY5pR0b03xuHfOYEvhO/vu
	S8wbDBacp1yl1jkJ95uY0HuUIfLOCUmG/foSdqzObLwsPCX+uyJqIo+VxRYkKpzAowYOUSoFg==
X-Received: by 2002:a17:90b:1347:b0:3a7:9ec3:ea0e with SMTP id 98e67ed59e1d1-3aaed7c10c2mr702874a91.22.1791439596767;
        Wed, 07 Oct 2026 23:06:36 -0700 (PDT)
Received: from localhost.localdomain (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3aa0cbccea3sm2632203a91.15.2026.10.07.23.06.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Oct 2026 23:06:36 -0700 (PDT)
From: Joey Lu <a0987203069@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>
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
Subject: [PATCH v7 0/4] phy: nuvoton: extend MA35D1 USB2 PHY driver for dual-port OTG support
Date: Thu,  8 Oct 2026 14:06:25 +0800
Message-ID: <20261008060629.2736806-1-a0987203069@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261007_230638_024832_0E2A19FC 
X-CRM114-Status: GOOD (  10.39  )
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
    USB0 signals to the correct controller based on the USB ID pin state.

  - PHY1 (USB1): dedicated host-only port for EHCI1/OHCI1.

This series extends the existing phy-ma35d1-usb2.c driver and its binding
to cover both ports and add OTG role-switch support, while keeping full
backward compatibility with existing device trees.

Changes since v6:

  - phy: update the copyright notice in the rewritten driver header to
    "2024-2026" instead of "2026", preserving the original 2024 date
    rather than dropping it.

  - phy: split the unused linux/io.h removal out of patch 4 into its
    own patch (3/4), since it's unrelated cleanup that predates this
    series (the driver has never done direct MMIO access; all register
    access goes through regmap via syscon_regmap_lookup_by_phandle()).
    Placed immediately before patch 4 since that is the first patch in
    the series to touch this file.

Joey Lu (4):
  dt-bindings: phy: nuvoton,ma35d1-usb2-phy: extend for dual-port and
    OTG
  arm64: dts: nuvoton: ma35d1: add USB controllers and dual-port PHY
    node
  phy: nuvoton: phy-ma35d1-usb2: remove unused linux/io.h include
  phy: nuvoton: phy-ma35d1-usb2: extend to dual-port with OTG support

 .../bindings/phy/nuvoton,ma35d1-usb2-phy.yaml |  44 ++-
 .../boot/dts/nuvoton/ma35d1-iot-512m.dts      |  36 +++
 .../boot/dts/nuvoton/ma35d1-som-256m.dts      |  36 +++
 arch/arm64/boot/dts/nuvoton/ma35d1.dtsi       |  65 ++++
 drivers/phy/nuvoton/phy-ma35d1-usb2.c         | 286 +++++++++++++-----
 5 files changed, 390 insertions(+), 77 deletions(-)


base-commit: cee9395acd8043be0644b25c34bfa86623f2b935
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
