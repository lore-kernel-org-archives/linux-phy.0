Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA261C47DA9
	for <linux-phy@archiver.kernel.org>; Mon, 29 Jan 2024 22:54:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jy2c64HSN28ZJL2MMMlW15eMMx1rzpFoQxk/zG9BLEU=; b=IGKWr0BX9grmF6
	fxbJCNKGIsUSbB+1MWQQeWSk/3lS8TtFnWvS+oa/vicEcMeLwWyuFs3P0wijNA563oCZW9jKtkmt+
	n/5q31eWMj+PnCctIhAwF5Gkff6jKNt7gzgaUcvQ5gK07GddT2u4pJ4U4ZtZOVzknHtwYp6gnIqud
	EyuUPDok+siuV8U9TkmNUdGQuJBM2OXyzT5dqSxrew8JC7hD9lEUY/QSYmpAsWRAYUYWMGhflrkCs
	LnLBd5z1cjy36hBcWKdF5YgeBe5211iStAw+Mk9dHvTZheZO2b04SPcvmk08yz87q0XHC2P6VlAFD
	+GN79TDCvSMQyAqspnZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUaW8-0000000EWcL-28un;
	Mon, 29 Jan 2024 22:54:16 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUaW5-0000000EWbe-1Mne;
	Mon, 29 Jan 2024 22:54:14 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 30730CE1810;
	Mon, 29 Jan 2024 22:54:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1B11EC433C7;
	Mon, 29 Jan 2024 22:54:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706568850;
	bh=FFstQCaEVYebwCAk5V39FByioEwYLF/w48Zz+jZSaII=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pK0cD4MADvaFzA0ck6IPeG52COc8b/urvJi/DKU2XRlElEZ9KresXMpci4SWXtIYi
	 CsjFjzqYZlDBhCJKWSeDpKsHtticcP8LuNVybQYdT9HxLQd/h6QuO1H1/4pCyqTDQ/
	 gmXLjVBvr4E9gsYzpxOpRmcFlEvfgVz3RWf9mhbz9CQ7+BqFOcLtcfb8QCgZkcGyxU
	 ZhfRWt7MiVh5puFO9IFA9U4VzQLkYp6WGLaIfuEgDDhduw6u80kXt6OUmuJPNDZsBx
	 llVsLkgI82ECXkZA0NsQPC/ddz8bGPgR5oh29AMmfuQdHLCxx9rCDHNg3W2pvsSmrB
	 WNzItk1Hv+eIA==
Date: Mon, 29 Jan 2024 23:54:03 +0100
From: Andi Shyti <andi.shyti@kernel.org>
To: Thomas Richard <thomas.richard@bootlin.com>
Cc: Linus Walleij <linus.walleij@linaro.org>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, Andy Shevchenko <andy@kernel.org>, 
	Tony Lindgren <tony@atomide.com>, Haojian Zhuang <haojian.zhuang@linaro.org>, 
	Vignesh R <vigneshr@ti.com>, Aaro Koskinen <aaro.koskinen@iki.fi>, 
	Janusz Krzysztofik <jmkrzyszt@gmail.com>, Peter Rosin <peda@axentia.se>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Tom Joseph <tjoseph@cadence.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, Rob Herring <robh@kernel.org>, 
	Bjorn Helgaas <bhelgaas@google.com>, linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-omap@vger.kernel.org, linux-i2c@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-pci@vger.kernel.org, gregory.clement@bootlin.com, 
	theo.lebrun@bootlin.com, thomas.petazzoni@bootlin.com, u-kumar1@ti.com
Subject: Re: [PATCH v2 04/15] mux: add mux_chip_resume() function
Message-ID: <g2ikrrzfti3qu2n75f4wdrg5hxdvsgwol5uibaem7btksxce3c@vh6qvabzs44p>
References: <20240102-j7200-pcie-s2r-v2-0-8e4f7d228ec2@bootlin.com>
 <20240102-j7200-pcie-s2r-v2-4-8e4f7d228ec2@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240102-j7200-pcie-s2r-v2-4-8e4f7d228ec2@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240129_145413_560971_B90EBE1E 
X-CRM114-Status: GOOD (  13.24  )
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

Hi Thomas,

...

> +/**
> + * mux_chip_resume() - restores the mux-chip state
> + * @mux_chip: The mux-chip to resume.
> + *
> + * Restores the mux-chip state.
> + *
> + * Return: Zero on success or a negative errno on error.
> + */
> +int mux_chip_resume(struct mux_chip *mux_chip)
> +{
> +	int ret, i;

you could put this 'ret' in the innermost indentation part, which
here is inside the 'if (...)' (or inside the 'for (...)' if you
follow Andy's suggestion).

Andi

> +	for (i = 0; i < mux_chip->controllers; ++i) {
> +		struct mux_control *mux = &mux_chip->mux[i];
> +
> +		if (mux->cached_state != MUX_CACHE_UNKNOWN) {
> +			ret = mux_control_set(mux, mux->cached_state);
> +			if (ret < 0) {
> +				dev_err(&mux_chip->dev, "unable to restore state\n");
> +				return ret;
> +			}
> +		}
> +	}
> +	return 0;
> +}
> +EXPORT_SYMBOL_GPL(mux_chip_resume);

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
