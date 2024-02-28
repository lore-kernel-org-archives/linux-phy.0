Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C9E6C5478C
	for <linux-phy@archiver.kernel.org>; Wed, 28 Feb 2024 11:54:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JyNlaIuUMS40rBx2KYnsp4CIqcvPX+DQXJiUHgSPXwE=; b=PGOanz3wdo/ipy
	+vV7JmXCWULJkg2Mq009Pp1iIknkCG8aYILt1PrzjZH6uB9IIFvWRJovUECGMFW8zPQol2VxppPTf
	JM8is8lXo7KXVt0mIseHBx4cgs3fMqlkNU88bLJrOBbq99DpZ2bD9+OxSoBL4QElUS4qSvqUIdOt/
	lHPU/bQIadDn3q8hnORWmDAzmuFGx4b8pgTUfYKmHnvNNqcJps0PDLNCmESKzjzSaeWHwIST43svp
	MolQqBE+uHzqpkKMR6okGAFhebwRBndOFhgKjB3/rz80KrZliXtmiLHG3HXKY3RQn7J/3+xGoDYB0
	XsDOWNn3n8C8CUxQPoug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfIVh-000000098U0-3vdq;
	Wed, 28 Feb 2024 11:54:05 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfIVd-000000098RX-2Vt4;
	Wed, 28 Feb 2024 11:54:02 +0000
Received: from i53875b6c.versanet.de ([83.135.91.108] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rfIVc-0001Gf-2b; Wed, 28 Feb 2024 12:54:00 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 linux-rockchip@lists.infradead.org, linux-phy@lists.infradead.org,
 Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Frank Wang <frank.wang@rock-chips.com>,
 Kever Yang <kever.yang@rock-chips.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Sebastian Reichel <sebastian.reichel@collabora.com>, kernel@collabora.com,
 Zhang Yubing <yubing.zhang@rock-chips.com>
Subject: Re: [PATCH v3 02/10] phy: rockchip: add usbdp combo phy driver
Date: Wed, 28 Feb 2024 12:53:59 +0100
Message-ID: <1891069.1xdlsreqCQ@diego>
In-Reply-To: <20240216170514.75200-3-sebastian.reichel@collabora.com>
References: <20240216170514.75200-1-sebastian.reichel@collabora.com>
 <20240216170514.75200-3-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240228_035401_706829_9886B313 
X-CRM114-Status: GOOD (  16.99  )
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

Am Freitag, 16. Februar 2024, 18:01:17 CET schrieb Sebastian Reichel:
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

Not sure how that relates to me being listed a Co-developer, but this
works nicely on both rk3588-jaguar (real type-c) and rk3588-tiger-haikou
(micro-usb3 as dual-role port and usb3-a host port), so

Tested-by: Heiko Stuebner <heiko@sntech.de>

It would be nice if patches 1+2 could go through the phy-tree and I'd
be able to pick up the devicetree patches after that, to minimize conflict


Thanks
Heiko




-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
