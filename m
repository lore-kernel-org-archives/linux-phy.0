Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B52CAC47DB3
	for <linux-phy@archiver.kernel.org>; Mon, 29 Jan 2024 22:48:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ptAfbzxNtt8HfAs/TuMitPbFOK+JSWkLFhv5ebjTBxo=; b=BR4UQYkP7HD9jd
	T8pD4S7Pox7VEDbWtlqX7Egh37Olk/jcWB8omgktl/a0wiZAnel/RFc2y+oOuQfKH6XzgTszeYMc1
	I/5Uz41H0p+FgobZhbDDtqmuI8Q7TnSgZ+qDEB9ALWvyIhM9VIIsNKk6Fvo/V+jcExCKhWo7LLTL6
	IR4qMkKknXANRwNIJDdDes0Eu3XYcMciBhyQKO9dQnVvm5HbLugpIxGum52X+lYuuCEYQhvBl92w0
	eMyRfat/65oRXVosPFdJI5RAjouIlC7iUVMzyFakJ7PLoGr+706WU7bTu6EuOLTe8bUmdSx4fY92N
	gci/a8TY+gmHkEQPP7KA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUaQi-0000000EW1b-1khn;
	Mon, 29 Jan 2024 22:48:40 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUaQf-0000000EW0U-11DU;
	Mon, 29 Jan 2024 22:48:38 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 1E5EB6246A;
	Mon, 29 Jan 2024 22:48:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1A3B2C433C7;
	Mon, 29 Jan 2024 22:48:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706568515;
	bh=kVVU8d5o65JZFsimVCb2pBkQsxY72Ge4/C4lukxkvOg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nkQd5MmfZEazNpa5yxrTCMe6/ENEkMSEWwyRORyr4/kRiCZ1zI5Rg0F0pJ4TStpyV
	 5YGPyR/c3WBcnr2Kxsr4Nb8MFEUyZR36dsCmM8159BbeWiGVLDATkTWfSBlC1YjMjP
	 +FAbIXkMdDdB7Srf7KKBSr54jCy6KQOU20r3vlo7wfSWJnzWbM195ITmc6bCzpYA7m
	 R1XpQ8EEUkrCkIUFNr9uUTWcGsj229dcYhui52WQvik92HvnVttz4MqqHpRZLwz24x
	 l5/OKmYnZ3o36W5AitPDJRGIlyNhzdfOQGNXpTnWeGQBOKtd9TanUZpJAi2v1LYYkO
	 cC9C0dJqSjBLw==
Date: Mon, 29 Jan 2024 23:48:27 +0100
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
Subject: Re: [PATCH v2 03/15] i2c: omap: wakeup the controller during
 suspend() callback
Message-ID: <hqnxyffdsiqz5t43bexcqrwmynpjubxbzjchjaagxecso75dc7@y7lznovxg3go>
References: <20240102-j7200-pcie-s2r-v2-0-8e4f7d228ec2@bootlin.com>
 <20240102-j7200-pcie-s2r-v2-3-8e4f7d228ec2@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240102-j7200-pcie-s2r-v2-3-8e4f7d228ec2@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240129_144837_397348_D6695095 
X-CRM114-Status: GOOD (  22.97  )
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

On Fri, Jan 26, 2024 at 03:36:45PM +0100, Thomas Richard wrote:
> A device may need the controller up during suspend_noirq() or
> resume_noirq().
> But if the controller is autosuspended, there is no way to wakeup it during
> suspend_noirq() or resume_noirq() because runtime pm is disabled at this
> time.
> 
> The suspend() callback wakes up the controller, so it is available until
> its suspend_noirq() callback (pm_runtime_force_suspend()).
> During the resume, it's restored by resume_noirq() callback
> (pm_runtime_force_resume()). Then resume() callback enables autosuspend.
> 
> So the controller is up during a little time slot in suspend and resume
> sequences even if it's not used.

Looks good, can I ask you to put this in a comment below? It's
not completely straight forward.

Thanks,
Andi

> Signed-off-by: Thomas Richard <thomas.richard@bootlin.com>
> ---
>  drivers/i2c/busses/i2c-omap.c | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> diff --git a/drivers/i2c/busses/i2c-omap.c b/drivers/i2c/busses/i2c-omap.c
> index 42165ef57946..cc9841cb08f1 100644
> --- a/drivers/i2c/busses/i2c-omap.c
> +++ b/drivers/i2c/busses/i2c-omap.c
> @@ -1575,9 +1575,23 @@ static int __maybe_unused omap_i2c_runtime_resume(struct device *dev)
>  	return 0;
>  }
>  
> +static int omap_i2c_suspend(struct device *dev)
> +{
> +	return pm_runtime_resume_and_get(dev);
> +}
> +
> +static int omap_i2c_resume(struct device *dev)
> +{
> +	pm_runtime_mark_last_busy(dev);
> +	pm_runtime_put_autosuspend(dev);
> +
> +	return 0;
> +}
> +
>  static const struct dev_pm_ops omap_i2c_pm_ops = {
>  	SET_NOIRQ_SYSTEM_SLEEP_PM_OPS(pm_runtime_force_suspend,
>  				      pm_runtime_force_resume)
> +	SET_SYSTEM_SLEEP_PM_OPS(omap_i2c_suspend, omap_i2c_resume)
>  	SET_RUNTIME_PM_OPS(omap_i2c_runtime_suspend,
>  			   omap_i2c_runtime_resume, NULL)
>  };
> 
> -- 
> 2.39.2
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
