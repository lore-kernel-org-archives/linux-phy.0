Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5E657C43458
	for <linux-phy@archiver.kernel.org>; Sat,  4 Jul 2026 07:39:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SC662SO0ryWD31da0O+t8HPA1/fsOh4ga9sbmjvs0Rk=; b=wU+yFVtF2bnAiC
	1EXp2TitP7IA5W9pv6SpyOKbE9AR6xO0GmML1EFLdlz0Jqs2kpyimSps3RpEnhRx6o5pDSV6RRKOK
	KKG7AxtP5bkVRbHz/3cLWoTHuUyXJwlR1fHMwBiNgEhW+2fTl1RFMMCLDBx37fcB5K7URHeW+VL2J
	UKXerfb8mnSS8Rioyhkzxo4EuMsa8crnfqN2hkMF9ZTQNiD1HeA5AVL04WY05Cng6SZnjZrHBPphz
	IvAxhRyiw04xokPW804qpBJUSnN0q3ZqfpwlEChR6xjNa7lnecMUYwk27O+KiTb13ey+8oXTFPOFs
	eK62cOKsGJx3HJ2dONbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfuy8-00000008GPI-0tJG;
	Sat, 04 Jul 2026 07:39:20 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfuy5-00000008GOR-1zsR
	for linux-phy@lists.infradead.org;
	Sat, 04 Jul 2026 07:39:18 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-493b7612475so11534875e9.3
        for <linux-phy@lists.infradead.org>; Sat, 04 Jul 2026 00:39:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783150755; x=1783755555; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=DVufXZv3C9nTTbjjeAadD32Z+/uBgkpYSXQtGIeK46U=;
        b=dMx6EroBjriS62j3FxrAxBAAtZzpcaxC33BGeezZQoC8MzTl/S7MfVz1/p9szO76oj
         CfZwaki2ee5d18I2DY6S7jP0gzqFH02NiXrqnEApaNBQQWPRBPUwxlZMCTKsjbcCdoeB
         gC9NlXRDfR0nxZ42KAQI7ByhEfV/NAoTwASbMIBiOjMblwpkfklEB3grWVN5xprEXtBv
         EElEH2BSZTyJeqIDUnWHVrUfzBFSHfm42MjorkFLxI6RjOBhzXQ8LMMRd788XTfqJrHB
         i4au42u8n3pWvIV9Cr/u1Vi7N5n4OPsNrlOBzDvBX4/at/NnB4OrK4eYFe55Liwj3A3h
         ZQNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783150755; x=1783755555;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DVufXZv3C9nTTbjjeAadD32Z+/uBgkpYSXQtGIeK46U=;
        b=ic53Ul+E8PO7ld/OUe5JbRAPUBe1APSIlcUhkOhAmBU/4CXQbfoOdsXm+P7sW0RRsh
         Q3f74/ATKG1Gv/NjSe1O34T50MP5bsKzSakEHC9pbYuFmxxAojXcfodajHNq3t0vfmKP
         E5jF3XBZYXFEHLBwuCQzV5QntQk8AG509EAGBnSai0AY/EaZBIn3jNuW2EF+II7eUVp8
         Zu4LhxrLEdlrOrdaj2qoD9nfpkBggJXFbifrQR6kJjOm63qi4nZdFuHHgneDQN73fMwD
         nTM+t1uJV3697YFGZVrOuojvvRet0CWBwONArLUQa1TvLFcmWacsTZoj4E2dKLY7D78T
         cPEA==
X-Gm-Message-State: AOJu0Yxio/mK3gg05YgxPvBKPZaFwLetdVN1wN69IVAaNYNy5nyPGE/x
	3QTjHjgNbv5OpLHHsGyLwynU6DV7TIjbFIfsLEc+BfLkLnTrBtnxd7mJ
X-Gm-Gg: AfdE7cl30MVIuot/fsWmRJAkXKBibjAhyiv1RaaCsOzBFYTjMeBgGqBnhWjRfcUK/Fn
	zHTIs/W14diUwrIDseNECYCS/QO0RVzTqTRPDvwpkRPL1Lk78Dk+AL5Eui36qut4bNiCKWLvXl2
	omcyblLTxqANkRzFEKn/oGy7pPVo62RC3ucTEFJc92Z/Yjl9qRZlX+XIfBsQjQKGZbxiH2DlYL5
	aSBwuYflhjxkKUzU2jaLkr00Kph8K6sZFY8xV6Pey/M2DnN3kywEJnwsU4IbXD5q0jOLjS266l9
	Wiu0mdtT5c6xHxcwIo5P6jq/BR01BlytH+dxD6wEpDmVmnG5jzFiZWOpyJkT2+TmWT9HNpShA8W
	Wqb1laD0GuVXLRBsjH+UX6zp594yKTdim/JebrtVpAPfqMxYcN5cKi0X9nSVaVhychmcKvm6DES
	HnwM6JpxxoAjfy4WOhL3CgND3hL8v8KshL9g==
X-Received: by 2002:a05:600c:c166:b0:492:63c3:8eeb with SMTP id 5b1f17b1804b1-493d11fe04cmr24840475e9.35.1783150755151;
        Sat, 04 Jul 2026 00:39:15 -0700 (PDT)
Received: from localhost.localdomain ([95.43.220.235])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47a9de1e736sm6565488f8f.7.2026.07.04.00.39.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 04 Jul 2026 00:39:14 -0700 (PDT)
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
Subject: [PATCH 0/5] phy: cpcap-usb: improve charger detection and export cable state
Date: Sat,  4 Jul 2026 10:38:38 +0300
Message-Id: <20260704073843.1750458-1-ivo.g.dimitrov.75@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260704_003917_532954_557AF3CC 
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

This series starts with a prerequisite fix from Tony Lindgren to prevent
spurious SysRq events when switching between USB and UART modes. It then
adds DCP detection support to the CPCAP USB PHY, updates the Device Tree
binding and corresponding mapphone Device Tree to use the charger
detection interrupt, and finally exports the detected cable state through
the Extcon framework.

The existing driver already interprets the CPCAP USB detection state
machine to determine the attached cable type. This series extends that
logic to distinguish DCP connections and exposes the detected cable state
through Extcon using a standard kernel interface. It also makes the idle
UART mode optional, allowing the PHY to remain in its default USB
detection configuration unless UART support is explicitly requested.

The series has been tested on Motorola Droid 4 hardware.

Ivaylo Dimitrov (4):
  phy: cpcap-usb: add DCP detection and make UART idle mode optional
  dt-bindings: phy: motorola,cpcap-usb: replace se1 interrupt with
    chrg_det
  ARM: dts: ti: cpcap-mapphone: use charger detection interrupt for
    CPCAP USB PHY
  phy: cpcap-usb: add extcon support

Tony Lindgren (1):
  phy: cpcap-usb: Prevent line glitches from triggering sysrq

 .../bindings/phy/motorola,cpcap-usb-phy.yaml  |   8 +-
 .../dts/ti/omap/motorola-cpcap-mapphone.dtsi  |   4 +-
 drivers/phy/motorola/phy-cpcap-usb.c          | 312 +++++++++++++++---
 3 files changed, 274 insertions(+), 50 deletions(-)

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
