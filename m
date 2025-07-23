Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 810C0C83F17
	for <linux-phy@archiver.kernel.org>; Wed, 23 Jul 2025 12:23:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IR8KCPy5csN+dAk4zfZyGGTHUPklZCWcIlBIyAiWEmY=; b=e64nnvDzeECQX0
	+V3hjTtVAzcN5rYWmoUPwiHbVLupl1aHqfeV2pR5+KeJHlwQjBUnX8CYCuJc494aKIqfP/JkDG6Y9
	6SJXYw2Hx43kf/AFGCoFoBF4UmTxPr3T7d34udr3L7xh5Cb/G+DKF5YCjQeUEpyrvU6Vv23n9a+hf
	WBlAffBqk8BIArlqa3WNsB3UzTyU/b0m8cMBDIzIDcsujmHu7CKRAzJ9O8XUwFJhcQvdMYKr1Hfan
	hifVqyhnvc+XNXP+worZD7DEv4KOzkzmeiGHj+fyh/C0ofPnJ/VetaoYUmU05pGtn7ttKTbueOe1k
	sazQeRUNPoXOnBUyIkOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueYVa-00000004tgD-4BBy;
	Wed, 23 Jul 2025 12:23:42 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueYVX-00000004teI-2gCO
	for linux-phy@lists.infradead.org;
	Wed, 23 Jul 2025 12:23:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: Message-ID: Date: Subject: Cc:
 To: From; q=dns/txt; s=fe-e1b5cab7be; t=1753273417;
 bh=S3oLltbznTlbaAbBKI9c992XjzDx7TeK4WIwFzqJJ7g=;
 b=UScr2djUk7heAL1OVFY/qpOZBm6JqQIXIIj5S7sn28Cb7FTfj/LOZAGtls9zXKQZUbjj1G1jd
 bSTjN6txHKVPIt8hb2n8hJdj0mzuEtcspIdYr7Cj1bGjWOV3JGYXj18l7r3RzCkoiQwE7q0OUu/
 uY/kh46phEWWrfgzj++SrhjucHJgGda+cSKrkrW8V5BS9r3iTUNIPdeTUih+I6jQfyLzQ0jfE4x
 DFeGKVZn0Kc1GPLuaQRK2D35cZTGGlt0RyDEuNpLE1aiCGLfpe8mDrjCbq1/9S76FdtwR+9xSHv
 rVSiY4hfYUiROd7XDCjI6LHfRSZ3JPsCXrLyyxMDMhLg==
X-Forward-Email-ID: 6880d441cb0ee86f9731a046
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 1.1.6
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Yao Zi <ziyao@disroot.org>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH 00/11] rockchip: Add USB 2.0 support for RK3528
Date: Wed, 23 Jul 2025 12:22:58 +0000
Message-ID: <20250723122323.2344916-1-jonas@kwiboo.se>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250723_052340_021313_7D11B76C 
X-CRM114-Status: GOOD (  12.25  )
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

This series adds support for USB 2.0 on Rockchip RK3528. It also enables
use of USB 2.0 ports on current supported and pending RK3528 boards.

Only Radxa ROCK 2A of current pending boards has a USB 3.0 port, and for
that to work the series "Support RK3528 variant of Rockchip
naneng-combphy" [1] is also required.

Patch 1-2 tries to clean up and simplify use of usbgrf.

Patch 3-6 add support for the RK3528 variant of USB2PHY.

Patch 7-11 enables use of USB 2.0 ports in device tree files.

This series may need the series "rockchip: Add power controller support
for RK3528" [2] and "arm64: dts: rockchip: Add ROCK 2A/2F, Sige1 and
NanoPi Zero2" [3] for a clean apply.

A branch with all these (and some more) patches can be found at [4].

[1] https://lore.kernel.org/r/20250624033733.50197-1-ziyao@disroot.org
[2] https://lore.kernel.org/r/20250723085654.2273324-1-jonas@kwiboo.se
[3] https://lore.kernel.org/r/20250717103720.2853031-1-jonas@kwiboo.se
[4] https://github.com/Kwiboo/linux-rockchip/commits/next-20250722-rk3528/

Jianwei Zheng (1):
  phy: rockchip: inno-usb2: Add support for RK3528

Jonas Karlman (10):
  dt-bindings: phy: rockchip,inno-usb2phy: Require GRF for RK3568/RV1108
  phy: rockchip: inno-usb2: Simplify rockchip,usbgrf handling
  dt-bindings: phy: rockchip,inno-usb2phy: Add compatible for RK3528
  phy: rockchip: inno-usb2: Add clkout_ctl_phy support
  dt-bindings: usb: dwc3: Add compatible for RK3528
  arm64: dts: rockchip: Add USB nodes for RK3528
  arm64: dts: rockchip: Enable USB 2.0 ports on Radxa E20C
  arm64: dts: rockchip: Enable USB 2.0 ports on Radxa ROCK 2A/2F
  arm64: dts: rockchip: Enable USB 2.0 ports on ArmSoM Sige1
  arm64: dts: rockchip: Enable USB 2.0 ports on NanoPi Zero2

 .../bindings/phy/rockchip,inno-usb2phy.yaml   |  44 ++++-
 .../bindings/usb/rockchip,dwc3.yaml           |   3 +
 .../boot/dts/rockchip/rk3528-armsom-sige1.dts |  24 +++
 .../boot/dts/rockchip/rk3528-nanopi-zero2.dts |  29 +++
 .../boot/dts/rockchip/rk3528-radxa-e20c.dts   |  47 +++++
 .../boot/dts/rockchip/rk3528-rock-2.dtsi      |  13 ++
 .../boot/dts/rockchip/rk3528-rock-2f.dts      |  12 ++
 arch/arm64/boot/dts/rockchip/rk3528.dtsi      |  76 ++++++++
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 181 ++++++++++++------
 9 files changed, 370 insertions(+), 59 deletions(-)

-- 
2.50.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
