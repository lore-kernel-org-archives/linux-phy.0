Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F938606A324
	for <linux-phy@archiver.kernel.org>; Fri, 30 Oct 2026 18:18:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=gkzeZnyn;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=C2XEOoC4
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=7qFYWFQ+nU/5JDUa4lKOSlG1kK4S7gx9GGAwJjqTxPE=; b=gkzeZnynBEiHuxENxRD+H+UNpP
	hjvj+6JoMT7wqa7SFtRgEWK8NQ8xaN7oW5to6PAw6CK+Q8Le4z1qDxa4izKh0Qn5Ml0dtjtSktMmf
	FLt8xzwn9fBLHwcYH/HfvjO+Kimgyscsnq8J0yanvNqYPym4rs713jaKmUNH3ixH6Au7f47ksoBcO
	WIGBN9cd/2d8uPa8Xr9CalrgUTauJ/ETT8aHXqIXktre7eKAA+nteJZ81FLhcpJQts6TVn+9dDIiZ
	9oHwu8vqbFzM1FlMBxLn0Oek/C2/xfrtApPPjYRO4S9BTCkUCkM9BaVlG5IxmUygYpaQ9gckzx3f1
	wyAxwNwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMrBT-0000000COHs-0Mnu;
	Fri, 30 Oct 2026 18:18:35 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMrBQ-0000000COHc-1W39;
	Fri, 30 Oct 2026 18:18:32 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 4909160202;
	Fri, 30 Oct 2026 18:18:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A61031F000C1;
	Fri, 30 Oct 2026 18:18:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793384311;
	bh=+TpGUdvhMV3H/GhPEjCy0KY1DV4UXmx7Z3C1Se8S5rI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=C2XEOoC4/BSj8bC2Vu8/6qSa2+3P6tl/x9wMN1O1BFLnunwIM+EChoHB16Q5MMtzG
	 7l5AqUGD5cL52WYqeUPE8Utz4CzvFdVp1g/fG5vr5UzrPhlxo4d6lTVwMcd8FPtU65
	 wdfJx5q3ZejJR+xHCzWqPg7nIFQ0Z7lSPFGQQyhHKNZXX/geWpMjVKZEXNmshKY5Cj
	 8hu1BUDk1Lo1wYqkWA9mIkGmKp+LnIB23JdzAj4xkgO20ZzqC1qNSjrmIwlKVg+EAd
	 03obfjx8NJ7MyYrWfyq0XFxAg0kecvPlRnmLA9U9Aspdo50AGXyNZTJUEzjTQzghVK
	 DMRLa4VUCrxqg==
Date: Fri, 30 Oct 2026 13:18:27 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Cunhao Lu <1579567540@qq.com>
Cc: linux-mmc@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
	linux-clk@vger.kernel.org, Shawn Lin <shawn.lin@rock-chips.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	linux-stm32@st-md-mailman.stormreply.com,
	Jiri Slaby <jirislaby@kernel.org>,
	David Wu <david.wu@rock-chips.com>, Paolo Abeni <pabeni@redhat.com>,
	netdev@vger.kernel.org, Daniel Lezcano <daniel.lezcano@kernel.org>,
	Stephen Boyd <sboyd@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Eric Dumazet <edumazet@kernel.org>,
	Jakub Kicinski <kuba@kernel.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Jaehoon Chung <jh80.chung@samsung.com>,
	Lukasz Luba <lukasz.luba@arm.com>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
	linux-serial@vger.kernel.org,
	Jerome Brunet <jbrunet+clk@baylibre.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Elaine Zhang <zhangqing@rock-chips.com>,
	linux-kernel@vger.kernel.org,
	"David S. Miller" <davem@davemloft.net>,
	Linus Walleij <linusw@kernel.org>, linux-pm@vger.kernel.org,
	linux-usb@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
	linux-gpio@vger.kernel.org, mfd@lists.linux.dev,
	Brian Masney <bmasney+clk@redhat.com>, linux-i2c@vger.kernel.org,
	Richard Cochran <richardcochran@gmail.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Zhang Rui <rui.zhang@intel.com>, Andi Shyti <andi.shyti@kernel.org>,
	linux-phy@lists.infradead.org,
	Bartosz Golaszewski <brgl@kernel.org>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Jisheng Zhang <jszhang@kernel.org>, Lee Jones <lee@kernel.org>,
	Ulf Hansson <ulfh@kernel.org>
Subject: Re: [PATCH 06/27] dt-bindings: gpio: rockchip: Add RK3572 GPIO banks
Message-ID: <179338430620.1192537.10304827355794981405.robh@kernel.org>
References: <20261022-add-board-ok3572-c-v1-0-0b0fd85a31ee@qq.com>
 <20261022-add-board-ok3572-c-v1-6-0b0fd85a31ee@qq.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261022-add-board-ok3572-c-v1-6-0b0fd85a31ee@qq.com>
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1


On Thu, 22 Oct 2026 00:11:03 +0800, Cunhao Lu wrote:
> RK3572 GPIO banks have four parent interrupts and a separate debounce
> clock.
> 
> Signed-off-by: Cunhao Lu <1579567540@qq.com>
> ---
>  .../bindings/gpio/rockchip,gpio-bank.yaml          | 24 +++++++++++++++++++++-
>  1 file changed, 23 insertions(+), 1 deletion(-)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
