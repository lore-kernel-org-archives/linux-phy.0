Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1792F606A31E
	for <linux-phy@archiver.kernel.org>; Fri, 30 Oct 2026 17:56:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=LBUsl4LZ;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=EgLXCoI4
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=8b9ktnHpe5wT75pDslJgIBOR7t5qdtEjBYfXAv2DhBY=; b=LBUsl4LZdHb/hoivfP13gaKZt8
	jnQIdMzWFDdqpBr5UA+lX57NwTYpaHnPjhYSj9ZY8Hg70JAL6bTqNxs7OrOsGhtygyOYvlTeEKzv1
	aIhgQ3HDfW/gWpYGrTFKCGefaVVphiRSAObW3R5eoF34AnIizuSebld+ld4c5CFMSZkfRlkVCvrrT
	Y7Cb7kCnELRfC/44Dq6pkvJORa7sB6+OoMDbAZdBgYrtAqiy7HTbq/VTUf/akmtbDl+auTJnWwsPD
	QtMkNWaH1SESxhS76slGZvnnqJDQ7R8rOr2Ot3oK7cd2c1LXducsN2A4km1Dfeh0ZjlGDWX3NqyZt
	4FRtQrYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMqqT-0000000CKhL-3Ebq;
	Fri, 30 Oct 2026 17:56:53 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMqqR-0000000CKh3-1nE2;
	Fri, 30 Oct 2026 17:56:51 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 64765601F8;
	Fri, 30 Oct 2026 17:56:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C28521F000C1;
	Fri, 30 Oct 2026 17:56:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793383010;
	bh=8cdpE6839eJEKckHSdgRiQPzZZ0j8j5oYXi5kHAbloM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=EgLXCoI4Qk0dMcWa6J6QvneHF9GqIKBJBKus+6bWJzYDAwW+VhWj0aXYNNitIDBNS
	 p11jQYP0/HbO9NK/jb+9EOE3UxPLRpSnrbNSdpltBcjz9Cpq7DI3M7VZUA/z0Tzkay
	 b6oCBLaDa8fWV/kezv6Ey0X+XjxQ/Rde8PV/jYhNRh1OiEIiyP7lXFKhHDKtGRa53H
	 RAgWiTihRMGHC3rfX8N8XfQot3oE6O/PQYhofsRQ20dC8WbNVJ8NgHINzvNYfe/cD4
	 HxiiKYAbjV/Xd7fTN8X2ncDBfpQSZIxRX/X0BbYv+bSDI/LvQtg7ZoZ6gGzPgRnTp0
	 qcbC5uDSZ30kw==
Date: Fri, 30 Oct 2026 12:56:46 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Cunhao Lu <1579567540@qq.com>
Cc: Paolo Abeni <pabeni@redhat.com>, linux-usb@vger.kernel.org,
	Shawn Lin <shawn.lin@rock-chips.com>, mfd@lists.linux.dev,
	Eric Dumazet <edumazet@kernel.org>, netdev@vger.kernel.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Jaehoon Chung <jh80.chung@samsung.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
	Brian Masney <bmasney+clk@redhat.com>, linux-gpio@vger.kernel.org,
	Richard Cochran <richardcochran@gmail.com>,
	Jisheng Zhang <jszhang@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	"David S. Miller" <davem@davemloft.net>,
	Elaine Zhang <zhangqing@rock-chips.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Lukasz Luba <lukasz.luba@arm.com>,
	David Wu <david.wu@rock-chips.com>, Lee Jones <lee@kernel.org>,
	linux-phy@lists.infradead.org, Andi Shyti <andi.shyti@kernel.org>,
	linux-clk@vger.kernel.org, linux-pm@vger.kernel.org,
	Ulf Hansson <ulfh@kernel.org>,
	Jerome Brunet <jbrunet+clk@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	linux-rockchip@lists.infradead.org,
	Bartosz Golaszewski <brgl@kernel.org>,
	Zhang Rui <rui.zhang@intel.com>,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Linus Walleij <linusw@kernel.org>, Jakub Kicinski <kuba@kernel.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	linux-serial@vger.kernel.org,
	Neil Armstrong <neil.armstrong@linaro.org>,
	linux-stm32@st-md-mailman.stormreply.com,
	Daniel Lezcano <daniel.lezcano@kernel.org>,
	Vinod Koul <vkoul@kernel.org>, Jiri Slaby <jirislaby@kernel.org>,
	linux-i2c@vger.kernel.org, linux-mmc@vger.kernel.org,
	Andrew Lunn <andrew+netdev@lunn.ch>, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 18/27] dt-bindings: phy: rockchip-inno-usb2: Add RK3572
Message-ID: <179338300613.1049771.15100889276507832651.robh@kernel.org>
References: <20261022-add-board-ok3572-c-v1-0-0b0fd85a31ee@qq.com>
 <20261022-add-board-ok3572-c-v1-18-0b0fd85a31ee@qq.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261022-add-board-ok3572-c-v1-18-0b0fd85a31ee@qq.com>
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


On Thu, 22 Oct 2026 00:11:15 +0800, Cunhao Lu wrote:
> Add the RK3572 USB2 PHY compatible.
> 
> Signed-off-by: Cunhao Lu <1579567540@qq.com>
> ---
>  .../devicetree/bindings/phy/rockchip,inno-usb2phy.yaml     | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
