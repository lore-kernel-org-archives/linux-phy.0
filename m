Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2A11C4829A
	for <linux-phy@archiver.kernel.org>; Sun, 11 Feb 2024 20:45:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=krVQ5VMVnSr/u4irTEENHItNfy0ulyA3sZMOx3h5dic=; b=geCE1nhGsGpS19
	8h4DvO5mv25phfAo5iADsNivnkfri97TxWOfx1Rol6mHbArWdlkqEAhvDhNFbmZ2VNpGTqAhmJuI5
	rPDa8+F1g0KG5/61MISwwf12S9LeKuaL8zC2VO9zGERUDkFYysRec1kONH2vBasdFXk6UyWeNCydC
	oukCL2KdjjyXqOfTRhE84VjqjjlHNsMwl/akJoxNyRboIbUfvnEeVbJbKssvI0ne1TwWtRgIizI7D
	xghm6Vofs/+TXGwrABsQ3R55EpL+wjeaNvN6ukwP5jJLSuaOxc09/a8eO4w3UR4j6+Qgn01JoR42P
	ssooQlYfe+D4n66mcB/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZGhU-00000003JLI-1XZB;
	Sun, 11 Feb 2024 20:45:20 +0000
Received: from forward502a.mail.yandex.net ([2a02:6b8:c0e:500:1:45:d181:d502])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZGhQ-00000003JKb-0qPm;
	Sun, 11 Feb 2024 20:45:18 +0000
Received: from mail-nwsmtp-smtp-production-main-51.vla.yp-c.yandex.net (mail-nwsmtp-smtp-production-main-51.vla.yp-c.yandex.net [IPv6:2a02:6b8:c0d:2a02:0:640:77d9:0])
	by forward502a.mail.yandex.net (Yandex) with ESMTPS id 5310460D2B;
	Sun, 11 Feb 2024 23:45:10 +0300 (MSK)
Received: by mail-nwsmtp-smtp-production-main-51.vla.yp-c.yandex.net (smtp/Yandex) with ESMTPSA id 5jsT2eIDX8c0-J19H6vkO;
	Sun, 11 Feb 2024 23:45:09 +0300
X-Yandex-Fwd: 1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yandex.com; s=mail;
	t=1707684309; bh=f5rRJR6KNn/eOO0vS9ImbNMvdI5OX8OfzGV14/X6mbA=;
	h=From:In-Reply-To:Cc:Date:References:To:Subject:Message-ID;
	b=SQXWkKNz3llZC3eFqKDPg9fqHM3R23uhtyqwJutAGYubmH2pQpkRSHqigAgGcu4qe
	 sCDOLTytsMsRIgoxeOG11Pr3x2GBRH0d6sGybO9YuXjB/4UIus89bfGVNkMq9vvEeb
	 Qpytfo+H88tyz5U2QjP2emKwvGZQXsH5vS8U/bRk=
Authentication-Results: mail-nwsmtp-smtp-production-main-51.vla.yp-c.yandex.net; dkim=pass header.i=@yandex.com
Message-ID: <bdb92ba5-5ac7-4ae7-ab63-8a7545053988@yandex.com>
Date: Sun, 11 Feb 2024 21:45:04 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 04/10] phy: rockchip: add usbdp combo phy driver
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 linux-rockchip@lists.infradead.org, linux-phy@lists.infradead.org
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Frank Wang <frank.wang@rock-chips.com>,
 Kever Yang <kever.yang@rock-chips.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com,
 Zhang Yubing <yubing.zhang@rock-chips.com>
References: <20240209181831.104687-1-sebastian.reichel@collabora.com>
 <20240209181831.104687-5-sebastian.reichel@collabora.com>
Content-Language: en-US
From: Johan Jonker <jbx6244@yandex.com>
In-Reply-To: <20240209181831.104687-5-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240211_124516_507002_AA00787F 
X-CRM114-Status: GOOD (  12.10  )
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



On 2/9/24 19:17, Sebastian Reichel wrote:
> This adds a new USBDP combo PHY with Samsung IP block driver.
> 
> The driver get lane mux and mapping info in 2 ways, supporting
> DisplayPort alternate mode or parsing from DT. When parsing from DT,
> the property "rockchip,dp-lane-mux" provide the DP mux and mapping
> info. This is needed when the PHY is not used with TypeC Alt-Mode.
> For example if the USB3 interface of the PHY is connected to a USB
> Type A connector and the DP interface is connected to a DisplayPort
> connector.
> 
> When do DP link training, need to set lane number, link rate, swing,
> and pre-emphasis via PHY configure interface.
> 
> Co-developed-by: Heiko Stuebner <heiko@sntech.de>
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> Co-developed-by: Zhang Yubing <yubing.zhang@rock-chips.com>
> Signed-off-by: Zhang Yubing <yubing.zhang@rock-chips.com>
> Co-developed-by: Frank Wang <frank.wang@rock-chips.com>
> Signed-off-by: Frank Wang <frank.wang@rock-chips.com>
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---

For Linux FTRACE filters it is needed that all functions in a driver start with the same function prefix.
Currently there's a mix of udphy_* and rockchip_*
Maybe use rk_udphy_* ??? similar to for example rk_nfc_* in rockchip-nand-controller.c

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
