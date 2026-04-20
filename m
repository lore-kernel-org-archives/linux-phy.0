Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 010E5F5A8B6
	for <linux-phy@archiver.kernel.org>; Mon, 20 Apr 2026 19:25:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5P/qo5v9FjkVfn2moltU70R/tGtePGP3oHZVmF/opUQ=; b=HczjC+4LT+QhI8
	2G5BtU/d6zdZyMcWMJ5wDdWlXfVnBjTQHLVtcbQsYSQjKskNa55aOlv21udja01xPXja79XmLj7mX
	uTrQU/NQ3fC2+ydmAZtZGRlCkt7dW5jA2g5lElkXbl8V5c/6LGnBR5obio7FasTTesG2cpCeNpaoN
	SqOglw5bBDwn8DCdTTg82IDE8VmZBcbDQgPrN+C8jmXp1IfSwIKYPpAMcTw4/oiTW5mosyQAnYoNZ
	mV7abXAMFfZFncTVYX3Au6p7M66UaMxT7ojREN2wOki5oUMlWxYVcxKTJJmtxvkTaKvs+BB/r5bEQ
	SfNGuPJf78aIcrkMpstQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wEuFb-00000007aRh-2p1Z;
	Mon, 20 Apr 2026 19:25:43 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wEuFZ-00000007aRI-0LUY
	for linux-phy@lists.infradead.org;
	Mon, 20 Apr 2026 19:25:42 +0000
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 92412268AA;
	Mon, 20 Apr 2026 21:20:07 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pvCkL8zNxL38; Mon, 20 Apr 2026 21:20:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1776712806; bh=xJFP8XOtSI4JqArA2dTYZ3WsgBDOe/KT5mW+ndQHPps=;
	h=From:To:Cc:Subject:Date;
	b=ZCOrWLgAxjQJunogBwfFM3W17YpqpoFDJntd5bGYrXm/vuInteJfXNjoWAluwKi6f
	 sHrSOBxjpiy78ewcPlOARYgoaDOFiaZSJsIUReeS/XimDdsBLt1QbxgBP+83ctIT1C
	 Fs6DgoWUu/ItIgS3wpHMLx7O6did/vs+6uuVdrLBQI6pszl5QQZb8JfU71Jcy7z+hx
	 XSFJZIAH9lFCrTj4vJNByBymZukei94gOoEBNTqUQF0w0ZRgPN1+OsJkBpVLMPTh2E
	 CL6R2nt0jYuSE+o8qL1+FP1r79Oh26GpmNq+Enm7OQtybjmH6Ln/KqAfybF7FjbT5j
	 W8kTFTz99COnQ==
From: Rustam Adilov <adilov@disroot.org>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Stanley Chang <stanley_chang@realtek.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Rustam Adilov <adilov@disroot.org>
Subject: [PATCH v5 0/6] phy: realtek: usb2: support for RTL9607C USB2 PHY
Date: Tue, 21 Apr 2026 00:19:35 +0500
Message-ID: <20260420191941.81834-1-adilov@disroot.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260420_122541_264709_CDAD5759 
X-CRM114-Status: GOOD (  15.89  )
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

This patch series for Realtek USB2 PHY driver adds support for RTL9607C
USB2 PHY.

RTL9607C is a big endian MIPS CPU which is quite far from RTD series SoCs
supported by realtek usb2 phy driver, but the phy initilization is found
to be very indentical in most areas.

Most of the code was based on the Realtek's usb driver from the GPL tarball
in [1] and adjusted to fit into the realtek usb2 phy driver code format.

The patch series was split into smaller patches that add/change something
in the driver that are not exactly related to RTL9607C and that also
helps for easier review. That also means, patch 5 depends on all the prior
patches that come before it.

USB2 PHY on RTL9607C is primarly used for its internal OHCI/EHCI controllers.

[1] - https://github.com/jameywine/GPL-for-GP3000/blob/main/linux-5.10.x/arch/mips/rtl9607c/usb.c

---
Changelog in v5:
Mostly addressing LLM review
- Patch 1
 - changed int to u32 type for new_reg_req and vstatus_busy data fields.
 - changed comments in rtk_phy_read/write from PHY_NEW_REG_REQ to phy_reg->new_reg_req.
- Patch 2
 - explained readl/writel native endianess issue in more detail.
 - explained why vstatus register doesn't need byte swapping.
- Patch 4
 - moved reset_control_deassert to rtk_phy_init function to keep it outside of for loop.
 - changed msleep(5) to usleep_range(5000, 6000).
 - explained why reset_control_assert is not needed.
- Patch 5
 - explained readl/writel native endianess issue here as well.
 - explained why FORCE_DISCONNECT_REG doesn't need byte swapping.
- Link to v4: https://lore.kernel.org/linux-phy/20260406181228.25892-1-adilov@disroot.org/

Changelog in v4:
- Patch 2
 - moved the le variations of read/write functions to Patch 5 where it is actually used because
   otherwise, it results in unused errors when only Patch 2 is applied.
 - updated the commit message to to point the reason for le32 wrappers around readl/writel.
- Patch 3
 - added "Reviewed by Krzysztof Kozlowski"
- Patch 5
 - updated the commit message to include the addition of little endian read/write functions from
   Patch 2.
- Link to v3: https://lore.kernel.org/linux-phy/20260402154414.196012-1-adilov@disroot.org/

Changelog in v3:
- Patch 2
 - renamed phy read and functions to "rtk_usb2phy" to not collide with networking API functions
 - fixed the sparse warnings by creating intermidiate "tmp" variable and then pass it to writel
 - sligtly adjusted commit message to instead use "default read" not "default phy_read"
- Patch 4
 - added the check for reset_control_deassert() just in case
 - changed mdelay(5) to msleep(5)
 - changed dev_err and return combo with one dev_err_probe for phy_rst
- Patch 5
 - changed mdelay(10) under force_host_disconnect to msleep(10)
 - removed struct fields with false like force_host_disconnect and more in rtl9607_phy_cfg
- Patch 6
 - updated the #endif commend to now include MACH_REALTEK_RTL to reflect if on top
- Link to v2: https://lore.kernel.org/linux-phy/20260327160638.15134-1-adilov@disroot.org/

Changelog in v2:
- Patch 3
 - removed the line about OHCI/EHCI controllers from description.
 - set the resets to false for RTD SoC devices and changed the
   commit message to reflect that.
- Link to v1: https://lore.kernel.org/linux-phy/20260326193419.48419-1-adilov@disroot.org/

Rustam Adilov (6):
  phy: realtek: usb2: introduce vstatus/new_reg_req variables to driver
    data
  phy: realtek: usb2: introduce read and write functions to driver data
  dt-bindings: phy: realtek,usb2phy.yaml: extend for resets and RTL9607C
    support
  phy: realtek: usb2: introduce reset controller struct
  phy: realtek: usb2: add support for RTL9607C USB2 PHY
  phy: realtek: Make configs available for MACH_REALTEK_RTL

 .../bindings/phy/realtek,usb2phy.yaml         |  25 ++-
 drivers/phy/realtek/Kconfig                   |   4 +-
 drivers/phy/realtek/phy-rtk-usb2.c            | 191 ++++++++++++++++--
 3 files changed, 195 insertions(+), 25 deletions(-)

-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
