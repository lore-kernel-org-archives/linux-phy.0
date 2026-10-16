Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4247BCCA462
	for <linux-phy@archiver.kernel.org>; Fri, 16 Oct 2026 08:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=a5MkxIOHPj2ojpXaAe/MJFzVQhaH5Liw4OIQKX6XvRg=; b=lq/QcPW9unV/Dt
	jp5Dd8sOoBVb76lIfx0uVY/HS0QH3f5uHwTdVDJb8G8hf85dl3gncEDHcjMN1wMLFpJoYJBL6Qtqt
	Y6w/06vhhcn/M5WgkOUc1dbu+Vz/KtISwoQ9zakwLYORyD+UB0Q0pOwfXgZd829LloORm84CZnmB7
	msviChdgx56OjvY4nZ39gqrpGh3MnQ7TQwL8ukYekUjpe0aXHQ1F1UFR9w+jzUwytKqL+A/SxBkFa
	qkGvFZLN/5V58IDQrtHeuYHuYAXClZngtqw82dBM11+n7XLmlI2yWN4mkWdxaT93L0bDiQMsQurfX
	8Px6AkB2CL1FdabpsfPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHdkB-00000002O3v-3oKa;
	Fri, 16 Oct 2026 08:56:51 +0000
Received: from mail-pl1-x632.google.com ([2607:f8b0:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHdk8-00000002O2U-1Tje
	for linux-phy@lists.infradead.org;
	Fri, 16 Oct 2026 08:56:50 +0000
Received: by mail-pl1-x632.google.com with SMTP id d9443c01a7336-2e56e420f5dso4015015ad.2
        for <linux-phy@lists.infradead.org>; Fri, 16 Oct 2026 01:56:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792141007; x=1792745807; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=fdiQVOV9kGikp3BjxuFAHEh6NTE83RldKRLkuMUOTzA=;
        b=ChC5UJ7vay0fOGL27VGpS3quZ6ZSc4E0oCmy4hxhdkf6ERsqwR6bQdufKtZsXk9l/c
         0tp54skZdFKg9JaRrKNW6dBj5c1Lgj5S6qpYRTiy4JBWJNc6C9E43MTvIJvCpJ9hPHGJ
         j3hN1wuYWyDJ5yzliWBQRV4rH585xt4dG2aFk633bmq0Ra4p7aoHJtNJni4Rxn4KSPDe
         WVcn2CyvMEF1hYnSecLuC1f2pkTRKPrhyd+Y8L2N48VpcHXSnD3K1Aa9OfM6N3AJ1Uiq
         SR/pLcD5qPLG435Vlr5J0nHUD1SH6kw/p+6KB2v8hVWNE+sZr5q6czb4sEF05TEIR7Va
         SFig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792141007; x=1792745807;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=fdiQVOV9kGikp3BjxuFAHEh6NTE83RldKRLkuMUOTzA=;
        b=Al3lBlNvVpM2PB/qluO39F2ChZw5J4J+dQNcdWXv+o/Re9kRRvqEfWHVzTZaYLawc/
         u6wFZOLJQPOYlQaR48tdFXon3y0nQwmUlFavj3cDCrHW9U/PjdI+MLn2gyAtyYALt1Zy
         Diz4NWm7cP5jK9kuOUpbxfBjOBbliaBj7mFZagw9UlgyTWd+0K1zpWVUH4DHdVLT5Q3O
         /unDUWo1txKHvyiGO5LjowEnBSYR3wr7zW7nMO7f2GVAA7g3bi5uSdkp3eTzvB4vgMPP
         onEmPgpTZr3Om5TJg0Hf87c/D1U7FPUBfQ8VHrWM1OXYLq1ekFVZu2BrKPIK8J9y1M6U
         GLJA==
X-Forwarded-Encrypted: i=1; AKwUvByN51Ljh5HJS42R05Y++xKmo2LDtPf63ROMR7af6iElr4Ghlur/tnN/UQS+31vvraAzDoF2p2WElMc=@lists.infradead.org
X-Gm-Message-State: AFq9FYKVob4hv0ypi4bvMeP506EH5HhRUBd+toEUkmwFoYetFf4xbIx4
	ONXvll4nfIDTXFayqTUuCFSpqj9MmgG9M/kAGeG7nous9WBn6CGB365Y
X-Gm-Gg: AYBFou3TIcP1SE04EWP5xjwnInse1znVMZe0clPtOhUhACH1Zw8UEFNimoaXYfzDJrM
	DE0t/pjhT4jo/AZB6jLCBVLIeKHnDj20ES2N8Xb+DUVm841sltcHglpp0hMRwV6OomUJ4AWPB++
	OW37fAmtWhhlDJSkJe/stXyDKHgxN8Zj8vwTSJt3SY/vXUwyRV5PyJmJeYUi2rTyiib5EDOPQY+
	E0CSP/zCz9hLQTIZ3JMVwfxeJcfkCqlnBIcf/r5mqFbm2cFD3Sh2fzNorZlRWxhF/wYKClG5JVP
	5/3X9bifKlpx+7odi3I80HcMaTTC50lxL/nv/62strof02nidQCa4BdvNnE9f5IuN9Ni25Znm/n
	NqZQXqgSMuLAIfe5FB2dGWr/kJAmVAox65L1qdu3oKm3W+sBxxgEGBtA+mVSiEPty8wFcJ27iof
	qGIUVruzDu9CbS5HHsaLjslC2yO+aWt1wzhhHa6tMnluxFGrVHg5tRtlPfuq/OVeYqIt3M9Dvz0
	ewknpY5+EwP6uGAS+76tpm7iEqQeQ==
X-Received: by 2002:a17:903:2f92:b0:2df:8ab7:fe3a with SMTP id d9443c01a7336-2e842abf30fmr328222235ad.4.1792141006559;
        Fri, 16 Oct 2026 01:56:46 -0700 (PDT)
Received: from [127.0.1.1] (211-23-39-77.hinet-ip.hinet.net. [211.23.39.77])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2e97e882a20sm6971025ad.62.2026.10.16.01.56.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Oct 2026 01:56:45 -0700 (PDT)
From: Jason Yang <jason98166@gmail.com>
Subject: [PATCH v5 0/8] phy: rockchip-samsung-dcphy: Add the MIPI D-PHY
 receiver
Date: Fri, 16 Oct 2026 16:56:34 +0800
Message-Id: <20261016-dcphy-rx-v1-v5-0-e63b49eabe2d@gmail.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAMPm0WoC/23OSwrDIBSF4a0Ux7Xo1TzsqPsoHchVE6F5oCUkh
 Oy9JpMmoeDkXPh+nEm0wdtI7peZBDv46Ls2jex6IVjrtrLUm7QJMMhZAZwa7OuJhpEOnCrtssI
 Ja5xRJIk+WOfHrfZ8pV37+OnCtMUHvl7/d9JjVDosBTJEjepRNdq/b9g1ZO0MsLf50UKy6BSik
 Fpy0Gcrfrbk7GhFshoMZAhKG4dnK3f2/GeZrOOFKnIhQQizt8uyfAFK5X41WgEAAA==
X-Change-ID: 20260721-dcphy-rx-v1-9af57f3edfd9
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Guochun Huang <hero.huang@rock-chips.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: Michael Riesch <michael.riesch@collabora.com>, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Jason Yang <jason98166@gmail.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1792141002; l=5449;
 i=jason98166@gmail.com; s=20260721; h=from:subject:message-id;
 bh=grCjE6G8S4b3gnfZy+Q41OvGbpz8ziNIO6eKpGz6Ia8=;
 b=j3Hwnfcg9m7EnEJ19LuhgpVq8+zNnvVw4z6NbYtbJo0vjsl/Hy2288Wbn0t6aqMsriZIhX+rj
 C/X7Nqx2Wq8BkaPRwSJancYIlQWfIxzhi086JSEKmpcTFwbEApFXsul
X-Developer-Key: i=jason98166@gmail.com; a=ed25519;
 pk=xQmD001Q/ooHl39PxyQtusbUQmgbOsSfpFryRVWZ/k4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261016_015648_395132_50C35C30 
X-CRM114-Status: GOOD (  17.83  )
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

The Samsung MIPI D-/C-PHY block on RK3588 and RK3576 has a transmitter
for DSI and a receiver for CSI-2. Both can be used at the same time.

Mainline only supports the transmitter and models the block as a single
struct phy. The PHY core refcounts power_on() per struct phy, so the
receiver cannot be powered independently of it, and the single
devicetree cell selects the mode, so the provider cannot tell which of
the two a consumer refers to.

This series registers a struct phy for each of them, adds a second
devicetree cell with generic PHY_DIRECTION_TX and PHY_DIRECTION_RX
constants so that a consumer can select one of them, and implements the
D-PHY receiver. A single cell keeps referring to the transmitter, so
existing device trees are unaffected.

  1/8  adds PHY_DIRECTION_TX and PHY_DIRECTION_RX to the generic header
  2/8  allows a second cell in the rockchip,rk3588-mipi-dcphy binding
       to select the transmitter or the receiver
  3/8  moves the block-level setup to runtime resume
  4/8  names the transmitter helpers and ops (no functional change)
  5/8  registers the receiver's struct phy and takes the second cell
       in of_xlate()
  6/8  implements the D-PHY receiver bring-up
  7/8  switches the RK3588 DC-PHYs to two cells and lets DSI select
       the transmitter
  8/8  adds the MIPI CSI-2 receiver nodes on RK3588 and connects them
       to VICAP

Testing
=======

Tested on an RK3588 board, with a DSI panel and an IMX219 camera on
DCPHY0, and an LVDS panel behind a DSI-to-LVDS bridge on DCPHY1.

  - The transmitter and the receiver run at the same time: with 7/8
    and 8/8, both panels light from boot, and the camera stream is
    shown live on the DCPHY0 panel.
  - The two can be powered independently: the DCPHY0 panel is turned
    off and back on during a 1200-frame capture, and the capture
    completes.
  - The receiver does not need the transmitter: with dsi0 disabled,
    the camera alone brings the block up and streams, which relies
    on 3/8 moving the block-level setup to runtime resume.
  - Existing device trees keep working: with a single PHY_TYPE_DPHY
    cell in dsi0 as before 7/8, the DCPHY0 panel lights.

No WARNING, underflow, "Internal error" or Oops in dmesg in any of
these.

Not covered: the receiver of DCPHY1, the 3- and 4-lane receiver
paths, and RK3576.

The DSI panels only light with the U-Boot SPLL fix [1] applied:
without it the bootloader leaves the SPLL at its 351 MHz bootrom
default while the devicetree describes it as a 702 MHz fixed clock,
halving the rate of both DSI hosts. The receiver path is unaffected;
the camera captures exercise it independently.

[1] https://lore.kernel.org/u-boot/20260804002643.2308515-3-jonas@kwiboo.se/

---
Changes in v5:
- Rebase onto phy/next. The runtime PM fix this series applied on top
  of is now commit 261e84f9278f ("phy: rockchip-samsung-dcphy: Enable
  runtime PM at PHY core level"), so it is no longer carried here.
- 1/8: use PHY_DIRECTION_TX and PHY_DIRECTION_RX instead of
  PHY_TYPE_DSI and PHY_TYPE_CSI. (Michael)
- 2/8: use PHY_DIRECTION_* for the second cell and rewrite the
  description.
- Drop v4's 5/7: it has no benefit over the switch, and it moved a
  DC-PHY shared function into a D-PHY helper. (Michael)
- 5/8: rename protocol to direction in of_xlate() to follow 1/8.
- 6/8: use a switch in the receiver's power_on() and power_off(), as
  the transmitter does.
- New patches 7/8 and 8/8: switch the RK3588 DC-PHYs to two cells and
  add the MIPI CSI-2 receiver nodes.
- Link to v4: https://lore.kernel.org/r/20260821-dcphy-rx-v1-v4-0-f1797634233d@gmail.com

Changes in v4:
- Put the second cell back: the first cell selects the mode, the
  second the transmitter or the receiver.
- Drop the private use count and mutex; the runtime PM usage count
  does the same job.
- New patch 3/7: move the block-level setup to runtime resume.
- Split v3's 3/5 into 4/7 and 5/7.
- of_xlate() rejects a mix of D-PHY and C-PHY consumers.
- The runtime PM probe-order fix is now a separate patch [1] that this
  series applies on top of.
- Bryan O'Donoghue's Reviewed-by from v2 is not carried over; that
  patch was rewritten.
- Link to v3: https://lore.kernel.org/r/20260810-dcphy-rx-v1-v3-0-a2d25c29adfc@gmail.com

---
Jason Yang (8):
      dt-bindings: phy: Add PHY_DIRECTION_TX/RX definitions
      dt-bindings: phy: rockchip,rk3588-mipi-dcphy: Add a cell to select TX or RX
      phy: rockchip-samsung-dcphy: Move block-level setup to runtime resume
      phy: rockchip-samsung-dcphy: Name the transmitter helpers and ops
      phy: rockchip-samsung-dcphy: Add a second PHY for the receiver
      phy: rockchip-samsung-dcphy: Add MIPI D-PHY receiver support
      arm64: dts: rockchip: use two phy cells for the rk3588 mipi dcphys
      arm64: dts: rockchip: add mipi csi-2 receiver nodes for the dcphys on rk3588

 .../bindings/phy/rockchip,rk3588-mipi-dcphy.yaml   |  20 +-
 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi      |  76 ++-
 drivers/phy/rockchip/phy-rockchip-samsung-dcphy.c  | 529 +++++++++++++++++++--
 include/dt-bindings/phy/phy.h                      |   3 +
 4 files changed, 580 insertions(+), 48 deletions(-)
---
base-commit: 8f56fdf3d8cb9f1dbdc93bf9ac816698aa6f70b7
change-id: 20260721-dcphy-rx-v1-9af57f3edfd9

Best regards,
--  
Jason Yang <jason98166@gmail.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
