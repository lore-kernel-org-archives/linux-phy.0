Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B196A606A31C
	for <linux-phy@archiver.kernel.org>; Fri, 30 Oct 2026 18:15:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=DLHWZD+z;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=U+rTn4qL
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=8V6j6W50XlHvKVkPfNGTr67ZTKtlWpiGACVm+3UBvg4=; b=DLHWZD+zk0ySkIUZND3vMqL9l/
	R8yZejxaUwMUVGdrGXrBQeMApw+vYH7fw2fVOyBPmq8FGcEMneUXDlXwdDlycJX0pO2r1NBLH4xMd
	BOGPq9nhUuHOpZFh4SJVJAnrnOTwGiNKWePC6ofJbJ+Pj9fwrFGCxeoWJM5hBPafES9Sb11VZF1PF
	Xy1WaP8VTpDUa7MaXf4zMaG9fLX9kuMfZZoz9VPAwvmNqHqvaj+5dMLpRXMU59caIt+s00pIoNIFp
	HDAqqAVVMMwgrhOmoEfZmFw0W2Hu9BS1MoueDGxcvEhE7Q4d60kC4KpmelwCF0K2I3zzmhXp9JKuD
	CMxHNVXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMr83-0000000CNgQ-3efj;
	Fri, 30 Oct 2026 18:15:04 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMr81-0000000CNfj-2NqQ;
	Fri, 30 Oct 2026 18:15:01 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id E1E0C43E4B;
	Fri, 30 Oct 2026 18:15:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6BB531F000C1;
	Fri, 30 Oct 2026 18:15:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793384100;
	bh=xX4+/ngw10imxtV7Qx0M5QC+PH9quwicLxr3n+FYyZc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=U+rTn4qL9aKfAqK24WGz11+2HZDRD7OcmjFhcTHsKLHulDk+qJB0jX6OIJTW5dqv5
	 bhAyVUPKMK5g5OPQw6v67tHcs41p3Qz95LDNO30NKVSfbbZD3eI2o6lUAs/JOVicYD
	 Jm0Z882bafmmMiLZkzflj4+qaNReXe8iCQ1DYeO0aFA02mNWCQWjQM4qUDOMCG/1Yc
	 i4G5qRJBWOQ6Tw1D2duEbyG8JIHXPNE4NpMDtyiQ+5vL92riH/rmmdy7Aj9yoY7pcg
	 1wcV0QkSPPYD2Ly9j0vwfbdlNEfnC5IKQFK7Np4Z5BtOmYmlRL2ViMFzgMbRwTJvRF
	 UTUaSSI8/Gxxg==
Date: Fri, 30 Oct 2026 13:14:56 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Cunhao Lu <1579567540@qq.com>
Cc: Andi Shyti <andi.shyti@kernel.org>, linux-gpio@vger.kernel.org,
	linux-phy@lists.infradead.org,
	"David S. Miller" <davem@davemloft.net>,
	Bartosz Golaszewski <brgl@kernel.org>,
	Jaehoon Chung <jh80.chung@samsung.com>,
	Eric Dumazet <edumazet@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	Jisheng Zhang <jszhang@kernel.org>,
	Richard Cochran <richardcochran@gmail.com>,
	linux-clk@vger.kernel.org,
	Daniel Lezcano <daniel.lezcano@kernel.org>,
	linux-usb@vger.kernel.org, Lee Jones <lee@kernel.org>,
	mfd@lists.linux.dev, Jiri Slaby <jirislaby@kernel.org>,
	Stephen Boyd <sboyd@kernel.org>, devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>, netdev@vger.kernel.org,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	linux-i2c@vger.kernel.org, linux-pm@vger.kernel.org,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Elaine Zhang <zhangqing@rock-chips.com>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Brian Masney <bmasney+clk@redhat.com>,
	Conor Dooley <conor+dt@kernel.org>,
	David Wu <david.wu@rock-chips.com>, linux-kernel@vger.kernel.org,
	Zhang Rui <rui.zhang@intel.com>, linux-serial@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Philipp Zabel <p.zabel@pengutronix.de>, linux-mmc@vger.kernel.org,
	Lukasz Luba <lukasz.luba@arm.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
	linux-stm32@st-md-mailman.stormreply.com,
	Jerome Brunet <jbrunet+clk@baylibre.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Ulf Hansson <ulfh@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-arm-kernel@lists.infradead.org,
	Manivannan Sadhasivam <mani@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, Linus Walleij <linusw@kernel.org>
Subject: Re: [PATCH 05/27] dt-bindings: pinctrl: rockchip: Add RK3572
Message-ID: <179338409611.1169964.10654719461707272138.robh@kernel.org>
References: <20261022-add-board-ok3572-c-v1-0-0b0fd85a31ee@qq.com>
 <20261022-add-board-ok3572-c-v1-5-0b0fd85a31ee@qq.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261022-add-board-ok3572-c-v1-5-0b0fd85a31ee@qq.com>
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


On Thu, 22 Oct 2026 00:11:02 +0800, Cunhao Lu wrote:
> Add the RK3572 pinctrl compatible.
> 
> Signed-off-by: Cunhao Lu <1579567540@qq.com>
> ---
>  Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
