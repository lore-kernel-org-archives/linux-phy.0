Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D95FC77B73
	for <linux-phy@archiver.kernel.org>; Tue,  2 May 2023 09:37:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oS/d35g/eWmrdXOdfxbZIyOm0aUl9RqKSRF3+h1xcp8=; b=3bebsQUsvmDMIl
	lDtnDBYOXu0uw1VGa7LxuxL5MQpi/i+i8PlWDAz8Rd7s93VDlzsjNp14fDhUqmaKD1EV0ID+aijyq
	F3YLBCj1evj9QgOXtFBmvJvKDyvgURd33l4peLACaXFS+xBTxWpC80vW0owHGurulX9gz9kZ4HpSt
	5sD3X8WRk8PSOU8lhwgbL8R8f+Dt97FMYusW3teGGSplwfC8ay3PwrCWXduaN7+WK2V1KAlTb9Gy+
	vympUAa23CEQ2YcFCaMEjsETimrQUi3VUX11Dq7wNFDCazQAga6hrfPPQBY/pvGuAdTSOlWdSbHPk
	5KldPv1EDzuywRsIJLBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptmSD-000nEn-0k;
	Tue, 02 May 2023 09:37:49 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptmSA-000nDv-09;
	Tue, 02 May 2023 09:37:47 +0000
Received: from ip4d1634d3.dynamic.kabel-deutschland.de ([77.22.52.211] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1ptmS7-0006ji-PC; Tue, 02 May 2023 11:37:43 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
	Vinod Koul <vkoul@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	kernel@collabora.com,
	linux-kernel@vger.kernel.org
Subject: Re: (subset) [PATCHv2 0/7] phy-rockchip-inno-usb2: add RK3588 support
Date: Tue,  2 May 2023 11:37:42 +0200
Message-Id: <168302024879.773217.112764704871308038.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230403202307.120562-1-sebastian.reichel@collabora.com>
References: <20230403202307.120562-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_023746_082638_699EFF20 
X-CRM114-Status: GOOD (  12.54  )
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

On Mon, 3 Apr 2023 22:23:00 +0200, Sebastian Reichel wrote:
> This adds RK3588 to the Rockchip Inno USB2 PHY driver. I have tested this
> with USB2_0 and USB2_1.
> 
> Changes since PATCHv1:
>  * https://lore.kernel.org/all/20230331163812.6124-1-sebastian.reichel@collabora.com/
>  * Added patch simplifying phyclk handling
>  * Added patch simplifying matchdata handling
>  * Added patches for reset handling and PHY tuning; after doing more
>    testing I noticed my previous patchset does not support hotplug and
>    USB devices need to be plugged in at boot time (more specifically
>    in PATCHv1 it had to be plugged before the PHY is suspended). This
>    fixes the issue.
> 
> [...]

Applied, thanks!

[1/7] dt-bindings: soc: rockchip: add rk3588 usb2phy syscon
      commit: 980cb53be481a6900fc08e6bbb77a6fe2986b211

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
