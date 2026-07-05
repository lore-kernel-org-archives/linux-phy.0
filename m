Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73798C43458
	for <linux-phy@archiver.kernel.org>; Sun,  5 Jul 2026 10:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yb5mciT9N/s74mZSdgIb+ZstOrJnTg3+PA7ETYxlO4w=; b=YkYEIlQ3sy0Ftc
	hhY0fdHDToJhwZ2l1H616zwloU3cjRDwJFZ9RYsR4g2cq6e2WRdFqeEK2ALigEyFGMAHKvXmla62G
	5hfeaFNLAlLPokajL2vaIHreVaZceGiPDpIVz8Jzo5VDFz5bPitca6c6hQwnwfjJA9infaLp3zuGk
	IOfKRpjAozQ9CZg6Uwl0xaEvNQ4IE+807e1W4jCWP9voRGiuYfE4g7zDo6PBD4KZ+4U5Vdr6C/EyB
	MPxUnZzppEQFa8AVjaJQCtBwMP6rSucwSHleaJEpc9i8/S0IxvEfBA/GjQoXCwqfNsnqVa9aHYpeV
	rEGyFi95T1znP5acJeJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgJos-00000009E35-2Bpv;
	Sun, 05 Jul 2026 10:11:26 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgJop-00000009E21-10TC
	for linux-phy@lists.infradead.org;
	Sun, 05 Jul 2026 10:11:24 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-493c83474ddso19393085e9.3
        for <linux-phy@lists.infradead.org>; Sun, 05 Jul 2026 03:11:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783246281; x=1783851081; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=KosFoYH7JPzJbGxiLDLiAcfUT9wevKTSADbKnE7NxIU=;
        b=dZSkil3HHhvMqhCfIxPuM3deh4+gD0o9H64XWjxsDAmAeHXcCC8VXAqEvRf8FqC/ot
         7VvCE5XYusaTR1v8it03oylIISAxZXRn6I9z4gxLbTLlodplqJZ7f4LGwbYRGJeqRQUw
         FRWhK8PsFG0YPmEBfyleHmPEDTERSoyUnjM3Yl4zoKnTu0Fw9lmFe4HUfCsL8deFyVz0
         WeLU5sz3bDw9WUwWGJ5S0JlTq36tGRDKf8k5os+bDyi9rt4JGz9imDQ7c5tOyfY8sb12
         KGiLj78bqEfj53eZHlpWMDV0lk3FVXPoYc2gpYn/ARLU5xxlxmX5hrw5vr8ACWc+fBXi
         ZDQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783246281; x=1783851081;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KosFoYH7JPzJbGxiLDLiAcfUT9wevKTSADbKnE7NxIU=;
        b=qIb5jMm0sTR6MbvdL0kHefIylaZyXkphcptYQCJ7UjrCrCBvqoLOnpXr4p7qPMNAY2
         4ARlktU0KqD/7UavkZJAiPgQP7uET0K5NWzjYa4HRw1tHdT9W3M/qx5T/hslWPUYPEz6
         LZHKoOY74i3zbeu1Nab4RGdnUHsRfNnsjxp4tUMDYaJYcc2YNgqFJWfxGlXeBzioJvUc
         SlK2Um8K/x8x57KZQ6HRHh/mfF3mSJYIHwLeiUVCJJ0U64Bu2oWRFfbv3UNNIoHkYYs+
         5EWgcOVut55Oj/a7sQDJZrnr+5FOscR9EKgVhhsJdvXSnjh/CXiLxK1ZdajAK01oBnvQ
         KW2g==
X-Gm-Message-State: AOJu0YyqJ+2KgTjc0pR9cxuFHVN1R9Y6uwQ+HcS5Dm0zPQgS/a9XV1Ss
	XbCgHgrvDuv+MAADKnNVWQwEqqzknqiI8zdQ82fmqUE5q+0xOVm1NWEr
X-Gm-Gg: AfdE7cnIUEVinU+0jmNO04RZq8HSAye+XLN/rhm7wOq8OzsnM/t3F5RUluY/Xs3bu1Z
	txtqzFCZlGaGtMH5UoIqCI4MRmo5vCwLKyUHDBNWuTiVa+f7N6FJm0YdoBO0tYZ7bbQxJb8bbvh
	gTT0uK4BlW3eSUjbwJ12fotg6KqivBvKMpwNkbjABPUfGe7X/KkUFkFShwAgqMkhzDhmX8rpUpo
	ZDsqqwILUkwztnmnQeOwvBibvnxgDZtV7MR66WavOIwR12qbgc50q4GVZMTl+aVFKdn+h5to46T
	fwwWU63HEYSIENJCk4DrE2SEz68g4zNe/NctkKayEGw9i1YO8N7sIXZrRX5mLRDV4NiOARpQLKt
	DRUG9LUnniV8A28WPg6YSBOKDQUB6cTzYyN/+9swiRwyoJaWCpA2/4p++TYPDRUF2zV3y/oRHlM
	VmXjrMVl8hbRC/icziOsf1seorL0gkNwYsNw==
X-Received: by 2002:a05:600c:3493:b0:493:d115:d835 with SMTP id 5b1f17b1804b1-493d22abbd8mr58420125e9.8.1783246281032;
        Sun, 05 Jul 2026 03:11:21 -0700 (PDT)
Received: from localhost.localdomain ([95.43.220.235])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-493c637bbcfsm261382715e9.6.2026.07.05.03.11.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Jul 2026 03:11:20 -0700 (PDT)
From: Ivaylo Dimitrov <ivo.g.dimitrov.75@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Aaro Koskinen <aaro.koskinen@iki.fi>,
	Andreas Kemnade <andreas@kemnade.info>,
	Kevin Hilman <khilman@baylibre.com>,
	Roger Quadros <rogerq@kernel.org>,
	Tony Lindgren <tony@atomide.com>,
	Linus Walleij <linusw@kernel.org>,
	Bartosz Golaszewski <brgl@kernel.org>
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-omap@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	Ivaylo Dimitrov <ivo.g.dimitrov.75@gmail.com>
Subject: [PATCH v3 0/4] phy: cpcap-usb: improve charger detection and export cable state
Date: Sun,  5 Jul 2026 13:11:01 +0300
Message-Id: <20260705101105.1798069-1-ivo.g.dimitrov.75@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260705_031123_321720_D015CF92 
X-CRM114-Status: GOOD (  11.09  )
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

The Motorola CPCAP USB PHY contains the hardware state machine used for
USB cable detection. Besides distinguishing USB peripheral and host
connections, it can also detect dedicated charging ports (DCP).

This series updates the Device Tree binding and corresponding mapphone
Device Tree to use the charger detection interrupt, adds DCP detection
support to the CPCAP USB PHY and finally exports the detected cable state
through the Extcon framework.

The existing driver already interprets the CPCAP USB detection state
machine to determine the attached cable type. This series extends that
logic to distinguish DCP connections and exposes the detected cable state
through Extcon using a standard kernel interface. It also makes the idle
UART mode optional, allowing the PHY to remain in its default USB
detection configuration unless UART support is explicitly requested.

The series has been tested on Motorola Droid 4 hardware.

Changes in v3:
- Drop "phy: cpcap-usb: Prevent line glitches from triggering sysrq"
- Fix DT schema interrupts order
- Fix boot cable detection

Changes in v2:
- add chrg_det interrupt instead of replacing se1
- Fix remove() race by cancelling detect_work before hardware teardown
- Restore SysRq state on all error paths
- Introduce CPCAP_UNKNOWN initial mode
- Snapshot enable_uart module parameter

Ivaylo Dimitrov (4):
  dt-bindings: phy: motorola,cpcap-usb: add chrg_det interrupt
  ARM: dts: ti: cpcap-mapphone: use charger detection interrupt for
    CPCAP USB PHY
  phy: cpcap-usb: add DCP detection and make UART idle mode optional
  phy: cpcap-usb: add extcon support

 .../bindings/phy/motorola,cpcap-usb-phy.yaml  |   6 +-
 .../dts/ti/omap/motorola-cpcap-mapphone.dtsi  |   6 +-
 drivers/phy/motorola/phy-cpcap-usb.c          | 320 +++++++++++++++---
 3 files changed, 279 insertions(+), 53 deletions(-)

-- 
2.39.5


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
