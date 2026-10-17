Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 643EECCF2C1
	for <linux-phy@archiver.kernel.org>; Sat, 17 Oct 2026 17:19:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hC+vK0Sx+yUbkzpxr9Kie00irteVQnS0+l4jf6jt7z4=; b=oXAgs8qrMJrGxA
	7VjFohOl4AOmi9lILVd8WUf9w+LIqRVt2LBHScFUIXpLFqKHWq36kqs/i2wRf26mgbO9qyl0SXJk5
	Yh2lTZ2ElfKr1ty2JImDT2F/17NjWtuevH3DeeFUlIbqx4sGEo7xXv0W3BzMj9FkDvwC6Vh873IMQ
	w9ZK+/n8qHsahbfIQhaK6SW5nql3QqZI7qQdFm6GdZcs+SYS44KJRZKYcSLGXYllprf2HnnljbT9V
	nvu8MV80GGbPkzN8AREvihaJ3HrjNgSi570OiiJsCDruDtzIDpzD3quhqH1J7X4szo/2vfOWsCbhZ
	YYILswcgpW3u+qF6ihKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xI84N-00000004zAy-3B0E;
	Sat, 17 Oct 2026 17:19:43 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xI84L-00000004zAi-3fug;
	Sat, 17 Oct 2026 17:19:41 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 0606060AA1;
	Sat, 17 Oct 2026 17:19:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 264491F000C4;
	Sat, 17 Oct 2026 17:19:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792257580;
	bh=ayiCzJ9mh5aEKRmauP0yiNYAQNzqiIVzTfcWMMwTXlk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=k5O4fjFjOoyRHm8BCYYj6yuu+yDtZzt0GJ3pWiMYJ7HHa7xq1GV82Pj2FecYEPgqs
	 ZrfTu1l/QlG3hBUL1ljWKEuMbCKco0so9ARMuNSW9p9DFl7TY5sLxB6AiAFIFoUdFr
	 6Xh8/nheoaB3BpXQIrro8MCa/4oHHwJAswxAIVIi+07JJbxSv3Xf11BVxvNGJBF1qn
	 ilYibFaKQwOKr4esEkPdeGUqO94CC5jueShR67qlnnor7/mkuF2JvQxyvKA8ek8yYC
	 OXxzfiW8plOf/yR2OXiZQcNk42yu+TkuOEUXbUfsQxDeQ1+hckn9js0SNxt522poea
	 hbyAPOD70+feQ==
Date: Sat, 17 Oct 2026 19:19:37 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Jason Yang <jason98166@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Guochun Huang <hero.huang@rock-chips.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Michael Riesch <michael.riesch@collabora.com>, Sebastian Reichel <sebastian.reichel@collabora.com>, 
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 1/8] dt-bindings: phy: Add PHY_DIRECTION_TX/RX
 definitions
Message-ID: <20261017-lean-dalmatian-from-betelgeuse-e2a12f@quoll>
References: <20261016-dcphy-rx-v1-v5-0-e63b49eabe2d@gmail.com>
 <20261016-dcphy-rx-v1-v5-1-e63b49eabe2d@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261016-dcphy-rx-v1-v5-1-e63b49eabe2d@gmail.com>
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

On Fri, Oct 16, 2026 at 04:56:35PM +0800, Jason Yang wrote:
> A MIPI D-PHY or C-PHY can be a transmitter or a receiver. Some PHY
> blocks have one of each and can use them at the same time, so one PHY
> node offers two PHYs. The existing cell, PHY_TYPE_DPHY or
> PHY_TYPE_CPHY, selects the mode of the whole block, not one of the two
> PHYs.
> 
> Add PHY_DIRECTION_TX and PHY_DIRECTION_RX for a cell that selects the
> transmitter or the receiver. The first user is the Rockchip RK3588 MIPI
> DC-PHY, where the transmitter serves a DSI host and the receiver a CSI-2
> host.
> 
> Suggested-by: Michael Riesch <michael.riesch@collabora.com>
> Link: https://lore.kernel.org/r/7425ac83-f6d8-4443-a26e-a47f9306aa24@collabora.com
> Signed-off-by: Jason Yang <jason98166@gmail.com>
> ---
>  include/dt-bindings/phy/phy.h | 3 +++
>  1 file changed, 3 insertions(+)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
