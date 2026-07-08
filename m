Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C53F8C43458
	for <linux-phy@archiver.kernel.org>; Wed,  8 Jul 2026 10:36:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iY3l6WV9249E5mLL/wLevwJKUlI1hp+t4QVkkzEuSNg=; b=qae7DlOqt+Itna
	sM5QnkLzDV/Wg6rcLIqaRQuPrs8keMHzMbFtabrx3RFUDefzDrrpb+qKZ3gKhJYzwIM7kqK+1LwM7
	dXRDRrlYasN8CtDuPLwJOqNof/dIEN8NrUu0nmdVUR3jE9lb3L8+epJQBLSPGkiRa3kd788kR1PUw
	y+sixy/d+50y6yll8Ct2CzN7KSpk3jG9AzEE6PH2Zk6Kqk7wJUnclcBklC7G0UBXSQ7K/N4dCYxcm
	4RGfUiXxr7ETDlz0ODVlUKZX2JbdBzT5BrR5jc3NrzQ6sUHuFXAVsOltFileYbymoPguohigkQeZm
	zgP8NhwM2N//0SM+GMig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whPdY-0000000Guqd-1XeN;
	Wed, 08 Jul 2026 10:36:16 +0000
Received: from mail-pl1-x633.google.com ([2607:f8b0:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whPdW-0000000Gupb-1Xvk
	for linux-phy@lists.infradead.org;
	Wed, 08 Jul 2026 10:36:15 +0000
Received: by mail-pl1-x633.google.com with SMTP id d9443c01a7336-2cac59f8b64so6093575ad.0
        for <linux-phy@lists.infradead.org>; Wed, 08 Jul 2026 03:36:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783506973; x=1784111773; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=EcTCzAOxZhd2+yZYHcQy1edub3AeT6RA/ghrUBqO+Sc=;
        b=Q4w2jvs+7IxwtC2Eui6hywOKeMIHtE/Q+h+Jw7gD4A9GOuCWFE5eruJkAJeJ1zDKrf
         xRNfSKeFFegxYucX3lwNieHDhmfvYHaxsVQWuiK4PW58taI9U7Tj2UPiOqZ/I/tPaGGu
         UC16UWQ/KJhrLNQ7/etixnXh4IjtHdZlMoGIM3Pr1kE6vGPg606Pszdxau4uclmPYb7Y
         jsq9I9yNDhbrsYcdnJ3GhkyB65X+jFwI5Ait0HsBt6sZEAvMNwQYI8oAQK8QL7ezrypM
         fZT95NqY2X5Nzcxrw2ADi1RxeBEnseaLHHepMtP0sw9otykrnQYYd0sYoZ8Mh2bDFduY
         AlHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783506973; x=1784111773;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=EcTCzAOxZhd2+yZYHcQy1edub3AeT6RA/ghrUBqO+Sc=;
        b=s0Tn1fenLXZg3t6NljmHEy6yBlaC0SlOt6Lc8BWVCXe39tE5PdBfQtX7IyDP85Wf/U
         xALD1DFGGknScwpGYMLKR+SdT6gr8lY1aOxXC4TTmdLqBak58ShmVSAdwtZZCa9KQaEE
         jiCfiEn1qtpk0j7Eb/rS19OtIqmSKaG0CZbqNVnO4bmIdwcuyKLKXxVrrodgHR3BJMOf
         B6kiFNj/R9ft6OvoqyLYSgsCIhsQdt0/D9s9VTYMPOqB5Df9fRLIadju4MBgFh/L9OQp
         2x/IaCXC5ZRJf3th6SiijfmLpoN1LWIU/1ChWSNpYrLrKwntGitW/EMaCRMpj+pD0XAi
         +SRQ==
X-Forwarded-Encrypted: i=1; AHgh+Roqxu1LoJXn0KWZrQ5Dvs5+nRikgsv52S2LxE/GXFa9s3p/f3baaXr+r5iWwYqeQLCeuu6v4bbYzi4=@lists.infradead.org
X-Gm-Message-State: AOJu0YyF+5rliPyJfelCATp1Wr4i/awMuVypbcms7vNXAXIqw5vq/MEs
	kZUUZ1yLiL68dDqcBGt9lCAGWE6IhFNj4WcFNR6k/cRXB5UKu9sQNA9vuNx/OQ==
X-Gm-Gg: AfdE7clmsyzIIYYS+E7c64braeeknibqxrZmbVmEyOBvhIUvc2lrA/iHtQc8EG1aLmw
	4om8dYFnKbh6FtqtUYag05QWaUUyPKR3005FbOCEbMZpcqYRLQskg1Bq+jQ8rZLHqUu5vWTS7xk
	Jdg9A/DA6GxM371C3FZ7W0kI5BboijHoOyvmQ4wTjkIvTYMuAIMMYc2Q3rIWhs7pGPEe7xECmus
	WTdEz6KjhdfPdc0Udj15SV8MZmJUIdHK8/nD0g9mTVJfdsEvV0U1YpAn3HJU2uYwdTlNBwZHRF/
	8Cs3/axzB2Nh4JPYa3d2l+PWig2wLCrgwvip+roML+JKXPdKbMWJSCSMOynAPxQ+Npyh9XRkNp9
	RnOX89EzHhok+uIlR/j490I+g9CWML6PlrKfImYSjMSzUVVhjp1gr2lAIq5+EQ7wDdvXhvwc9fA
	NcZPT/FPaeLmFiD7EDoteH4/C6pZluNPbkBD48EN677o/R9efsoMfnP6CiWdCkCcZ92coZa/va/
	A==
X-Received: by 2002:a17:902:d487:b0:2cc:d807:369c with SMTP id d9443c01a7336-2ccea3e6988mr22070025ad.45.1783506973202;
        Wed, 08 Jul 2026 03:36:13 -0700 (PDT)
Received: from localhost.localdomain (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ccc9bdb9a3sm25987525ad.13.2026.07.08.03.36.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jul 2026 03:36:12 -0700 (PDT)
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
Subject: [PATCH v3 0/3] phy: nuvoton: extend MA35D1 USB2 PHY driver for dual-port OTG support
Date: Wed,  8 Jul 2026 18:36:03 +0800
Message-ID: <20260708103606.1462960-1-a0987203069@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260708_033614_409038_F2527918 
X-CRM114-Status: GOOD (  10.75  )
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

Changes since v2:

  - Dropped patch 1 (nuvoton,ma35d1-reset: add simple-mfd and child node
    support) entirely.  That approach embedded usb-phy@60 as a child of the
    syscon node with a reg property, which broke the established ABI for
    out-of-tree MA35D1 board files.

  - The PHY remains a standalone top-level node as in the mainline binding.
    The existing required properties (clocks, nuvoton,sys, #phy-cells) are
    retained.  No reg property is added.

  - '#phy-cells' is now enum: [0, 1] instead of const: 1.  Boards using
    '#phy-cells = <0>' continue to validate and work unchanged.

  - The DTS usb_phy node is a sibling of sys (not its child), retaining
    clocks and nuvoton,sys, matching the original binding structure.

Joey Lu (3):
  dt-bindings: phy: nuvoton,ma35d1-usb2-phy: extend for dual-port and
    OTG
  arm64: dts: nuvoton: ma35d1: add USB controllers and dual-port PHY
    node
  phy: nuvoton: phy-ma35d1-usb2: extend to dual-port with OTG support

 .../bindings/phy/nuvoton,ma35d1-usb2-phy.yaml |  45 ++-
 .../boot/dts/nuvoton/ma35d1-iot-512m.dts      |  36 +++
 .../boot/dts/nuvoton/ma35d1-som-256m.dts      |  36 +++
 arch/arm64/boot/dts/nuvoton/ma35d1.dtsi       |  65 ++++
 drivers/phy/nuvoton/phy-ma35d1-usb2.c         | 279 +++++++++++++-----
 5 files changed, 384 insertions(+), 77 deletions(-)


base-commit: dc59e4fea9d83f03bad6bddf3fa2e52491777482
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
