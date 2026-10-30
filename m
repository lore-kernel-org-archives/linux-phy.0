Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0017606A329
	for <linux-phy@archiver.kernel.org>; Fri, 30 Oct 2026 17:54:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=ebcJYd5P;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=PZBhOQGM
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=wgQ74v0XigpmH3x+1O0Ty+j2pMZpu59udpdl+zyACg4=; b=ebcJYd5PjafrKUiFepzX1Xy+Vu
	Ewb+T6ms/ubEHqsJhsKrvRiD02IwZ6nvY9KmMIY5GmlqJLo1CMtjtzFOUQBxkJPX7lLlQSq9NedtI
	sCAlTHmdRxO29vnonJ1/0cnt5de2eVVUCrK1PQHIBAsrllQFEzeBzMiUpKmILjWtG5GLtY+4wVVS4
	Ehtj5csAOsgFo0xCC+e30jbpQNuJPyXqDGMxw8oyb7AMAxuevJUdyNXvt62K/nfVrKIpwzpXYAknf
	KoJIuN8rOOzG8qfx0FlcOOSubLL7QmJV0YdfbExyptmBRZ9ZIQSqK0RW++wUmljN/1CPuDN43WQjF
	BaTlZICg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMqoQ-0000000CKIw-26nO;
	Fri, 30 Oct 2026 17:54:46 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMqoO-0000000CKIa-2Uem;
	Fri, 30 Oct 2026 17:54:44 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 0C7C360233;
	Fri, 30 Oct 2026 17:54:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6CCB91F00A16;
	Fri, 30 Oct 2026 17:54:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793382883;
	bh=2Swr35UQMEtStvRBDsckhwhaLnsfKwl/Ed2AD30OenE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=PZBhOQGMCKGPWpMKesbTO4ucPaUydLckPJz5FI9KI5T4yfohbMdnbRA9Tr+kvJvg+
	 MwH6hCKvUBGu0nKmwfwgztQLHgtt7zHZL+5c/j0fgXOI4wfnOWiamb5RLt15hpJulV
	 OlsS0rT00gkhg9BoWnZPBDtrGwfMVUXNnJYjQTfhb+GbknIyH7B3LzB6fAx5Mzmtxf
	 dQ6hXmInfvlnyDQSOS3eZcS77M+q9hzOefQnS/vpj6+fK5xaT/2c568K6a4rJm/+5J
	 uqhQ5bhGo0fuRUlJSdYg0//qoZ5VJIPtuOYN1xW0Gzw4ayFQY7p/atDfD8DmNCaZWT
	 lM1qbKPG5373A==
Date: Fri, 30 Oct 2026 12:54:41 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Cunhao Lu <1579567540@qq.com>
Cc: linux-arm-kernel@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>,
	"David S. Miller" <davem@davemloft.net>, linux-mmc@vger.kernel.org,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>, netdev@vger.kernel.org,
	Jerome Brunet <jbrunet+clk@baylibre.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	devicetree@vger.kernel.org, Bartosz Golaszewski <brgl@kernel.org>,
	linux-serial@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-i2c@vger.kernel.org,
	Richard Cochran <richardcochran@gmail.com>,
	Jiri Slaby <jirislaby@kernel.org>,
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
	Linus Walleij <linusw@kernel.org>,
	David Wu <david.wu@rock-chips.com>,
	Jaehoon Chung <jh80.chung@samsung.com>, linux-pm@vger.kernel.org,
	Stephen Boyd <sboyd@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Zhang Rui <rui.zhang@intel.com>, Vinod Koul <vkoul@kernel.org>,
	mfd@lists.linux.dev, linux-stm32@st-md-mailman.stormreply.com,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Daniel Lezcano <daniel.lezcano@kernel.org>,
	Andi Shyti <andi.shyti@kernel.org>,
	Brian Masney <bmasney+clk@redhat.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	linux-rockchip@lists.infradead.org, Lee Jones <lee@kernel.org>,
	linux-usb@vger.kernel.org,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Paolo Abeni <pabeni@redhat.com>, Eric Dumazet <edumazet@kernel.org>,
	linux-gpio@vger.kernel.org, Philipp Zabel <p.zabel@pengutronix.de>,
	Ulf Hansson <ulfh@kernel.org>, Lukasz Luba <lukasz.luba@arm.com>,
	linux-kernel@vger.kernel.org,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	linux-clk@vger.kernel.org,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Elaine Zhang <zhangqing@rock-chips.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Jisheng Zhang <jszhang@kernel.org>
Subject: Re: [PATCH 11/27] dt-bindings: i2c: rk3x: Add RK3572
Message-ID: <179338288072.1036803.16687310470489748099.robh@kernel.org>
References: <20261022-add-board-ok3572-c-v1-0-0b0fd85a31ee@qq.com>
 <20261022-add-board-ok3572-c-v1-11-0b0fd85a31ee@qq.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261022-add-board-ok3572-c-v1-11-0b0fd85a31ee@qq.com>
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


On Thu, 22 Oct 2026 00:11:08 +0800, Cunhao Lu wrote:
> Add the RK3572 I2C compatible using the RK3399 fallback.
> 
> Signed-off-by: Cunhao Lu <1579567540@qq.com>
> ---
>  Documentation/devicetree/bindings/i2c/i2c-rk3x.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
