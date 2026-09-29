Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA7DBCA5FA1
	for <linux-phy@archiver.kernel.org>; Tue, 29 Sep 2026 02:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lHiDJC6cJHF7pe2Ha6TKtXhR4gA6nvu+M1AmLz95KtA=; b=X7HLCz4mTBCaQi
	6Ty8U73HEL/XgdtN8INTQAan0UtoVIdoD6WCTwNy7hcC0S8AB1IkUSzmIHyKrE5F3daz2uzOirMu1
	/I/YEqmhPQZzqm+iFfCd3xOgM9r/9i7vFvNquzOBBxkcVNrSLaaINNhJP0QR8lU3NvRC+IVdTD1mo
	8CJn+DXaBK5qKc6wvcPstv9LJWNh3S+K8SyfRszbYXB8dSe3w1Xqph3yFCbRRV5/PJG1YGTTiL4AK
	v0a+a/htJGHY3Qs6lCr7xZ3MvdOuhX4k9lrxjq4fGJfw9xo6pplzvSn64bfDO8zos2Y2OtjvfjiB/
	18b4hX4lfthZXVT6gXmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBNHE-000000026BK-2j8k;
	Tue, 29 Sep 2026 02:09:04 +0000
Received: from mail-pz2-x0c.google.com ([2607:f8b0:4864:3b::c])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBNHC-000000026Ab-0xOK
	for linux-phy@lists.infradead.org;
	Tue, 29 Sep 2026 02:09:03 +0000
Received: by mail-pz2-x0c.google.com with SMTP id d2e1a72fcca58-8805988a200so2313745b3a.3
        for <linux-phy@lists.infradead.org>; Mon, 28 Sep 2026 19:09:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790647741; x=1791252541; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=IFE9LdtdYAs5eAg39qz6yH1XbrxOARGWKf2glnJZAQo=;
        b=MCme9l8ScgYhru7SysAQMtlXOvX2ivblRBQVyPgbiJAjYF6Flk6+lh/r3iwXfv/uX8
         zZLdSHlaDmM77T594ynWe0RNC/XEpva8QlfX57/Y84tLTXELqDqsnYxP3cBSkpP4QtnF
         Sk6oezed70726dbFBCpvZzoJIYq/fP6fhYeLSZ55PbdstJ+kgXax1C5kjmyM3yv4hXTd
         d/s3GBxvV8uPTntPtuICPz8MXsWDW0vRYk0RffMzTyI2sst4OzU/OfHPm2xwtxc75E9K
         i8+NA/8MVqfeJ0SXUnHImJA7ZZnWs+iZ/lgsFXQquW3CJ6ehMghqoB+nTCiOaJ0hYDYI
         LH3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790647741; x=1791252541;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=IFE9LdtdYAs5eAg39qz6yH1XbrxOARGWKf2glnJZAQo=;
        b=0AB4aKAb8wslasp+X0nelWFUDY6jIYkwsuT4t9Hcp7LIAUSeVXV9h9JGBEmxzpeb9m
         olTMymaTowNW3J4gEBWrn08VnBCSWll9UtglGSkoi2O75unE4ctv50rFIPNvdOtRKnxM
         GqLrilhytiR41kkfMtflSs8CTjw/z6Mf1UaurpN7S7AamdluTbXHPn3/+52GF3qt6Gtc
         EEBEpZxNNt9Bo0wdbBl3aO991HgPxJXG338ljKDnmNlw0z8knpuZ0ixPh1ozfWekshHF
         myv5Z0xgMBXj71sv6WBtB7FNSwZT7CWkDgUj4NpUKHZTJrg8WXWFpGGxHZjhtJVXzXji
         Sntw==
X-Forwarded-Encrypted: i=1; AKwUvBxHA0UuwucEFI+UgUQF7odrmME/sfXY6eVr/cfdmGPojQ2iBKv7IiabKxrfHcu14AkU4Bo1lhtHiL4=@lists.infradead.org
X-Gm-Message-State: AFuF++nN9Wr4D0lenZAqGLvsXy1aYBgSrX2o8EdlWTuV5P2u4DbrxYzA
	vOrCoWVPEL0arS3fEbdky68xHyo4w9Rva1eN7zq86iMUUXHUgtTCJLT7
X-Gm-Gg: AYBFou1ukHcYxcCceyv9aW1lsmTrwGMQ0DyMDjFWMafnB/lnereZIIbPqNelEZFbdoj
	jewc4zA4r8aK+8XuCFlLlXvkOJo283QSUIZbEQ8iXt5A3RIk/NTwJ8dvN0/QE3DnK+scZhHZs3p
	bzriArxSIJWM0JCA3H3/jQZuDKGFygbUMnl6YBpRp/4tuambu01AaM3a1GOm3E0rNTWYu6ZFoJQ
	6TTSZrMCWP4Qh5IpjUTsC0YK2mujQbQd5br3Oe87WTF4o4+ClJ/So5WJ5EBALoXI0dPK66P+t96
	rHAfxcwBhrGeW1G9CU+VeGzEqzBhB1DlBhMhrswM/vodtBoeZ3zW6hS4AHvKATpHa3aXcySxl/e
	M2VC29T0XUQJef4t+wabJPGUN2BwfvDvH2UgwHmvXnsYL2rKlTKi3u0KhEWzcMRwLb3J0Wg8SrW
	iu2H8bPlM3SA8em2mkLX5A/GbdX65amLTFgIHftOkLeSQQEdPH4pzLByXxh5MrwYwp1SPJqFcyq
	R7lUAbxrCGqTYOXPeDcnnZhbLOFWQY2alMNaX6rQyOLx36S1WAXnTObbeupcmGO
X-Received: by 2002:a05:6a20:6f03:b0:3cd:3e77:1dcd with SMTP id adf61e73a8af0-3de0e6f42a6mr15736585637.1.1790647741047;
        Mon, 28 Sep 2026 19:09:01 -0700 (PDT)
Received: from localhost.localdomain (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-cc78796cf39sm5448596a12.32.2026.09.28.19.08.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Sep 2026 19:09:00 -0700 (PDT)
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
Subject: [PATCH v6 0/3] phy: nuvoton: extend MA35D1 USB2 PHY driver for dual-port OTG support
Date: Tue, 29 Sep 2026 10:08:51 +0800
Message-ID: <20260929020854.1282339-1-a0987203069@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260928_190902_295204_004A5385 
X-CRM114-Status: GOOD (  15.53  )
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

Changes since v5:

  - dts: rename the hsusb pinctrl group node to hsusb-grp.

  - phy: keep the clock-stability polling when SUSPEND is already set,
    per review comment:

      > +       if (val & USBPMISCR_PHY_SUSPEND(n))
      > +               return 0;

      Please keep the clock-stability polling when SUSPEND is already set.

      If the initial polling times out, SUSPEND remains set. A subsequent
      phy_init() call will then return success here without checking
      whether the PHY clocks have become stable.

      Skipping the reset sequence for an already-enabled PHY makes sense,
      but both paths should still check the ready bits.

  - phy: clear MISCFCR0_UHOVRCURH when nuvoton,oc-active-high is absent,
    per review comment:

      > +       if (of_property_read_bool(pdev->dev.of_node,
      > +                                 "nuvoton,oc-active-high"))

      The binding defines active-low as the default when this property is
      absent. Please also clear MISCFCR0_UHOVRCURH in that case, so the
      configured polarity does not depend on the state left by the
      bootloader.

  These are pre-merge fixups to patches 2 and 3, which are net-new code
  in this series, so the commit messages are otherwise unchanged.

Joey Lu (3):
  dt-bindings: phy: nuvoton,ma35d1-usb2-phy: extend for dual-port and
    OTG
  arm64: dts: nuvoton: ma35d1: add USB controllers and dual-port PHY
    node
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
