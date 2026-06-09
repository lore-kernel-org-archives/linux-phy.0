Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D53F8CD8CAD
	for <linux-phy@archiver.kernel.org>; Tue,  9 Jun 2026 06:00:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7D8weQMUSp6ubSp1xQvFIOSDGBPg8mc2ibRbY37oF6o=; b=24/U92rar70U+R
	yYI9bYcoBuyTWz2mC6n5eM7nis+zLFOSMkVkGK53RCT3HVxFW+AwjFgF6HqCfKOz5buzmU6La2agp
	o7kT8/X+uODiUn3+FGDsaCSf3xQzX0pgMs9p6eIGvzG2qW6iwk6cXsv+/0FHJ1qLlCV3FzXiuF/t7
	eHdMe2LiX8uiX2z+BoU0/YEJ0SwtoDn+JlrWqc7t8p+iYc2X7cA7OGkE31Kt3JvkflfZaoXRlGWK3
	tx5TqrwKBiFPBbfmnCwyo8j2wFGzWMIC50rXBJLrCD9TY7Cl9wz4BwK9uTmBBxT+CCVBgT3vUy8C2
	y6PNfYOvxwix9hWvpJSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWpVi-00000004mAy-0rnD;
	Tue, 09 Jun 2026 06:00:26 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWpVg-00000004mAn-0qcK;
	Tue, 09 Jun 2026 06:00:24 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 5B65A44073;
	Tue,  9 Jun 2026 06:00:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B93301F00893;
	Tue,  9 Jun 2026 06:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780984823;
	bh=6YEx4I/Sr7vXQXTyMNROcZn4c8xb3Zj7/Z8myQZrk0M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=drjmgkvJM1vlu8xRrW9saDMhI097o+thAO1rGgg4CcKxIYNXkjoai4MOlL67qk0f9
	 ipMD7LKALWNGE3pnFM4Li6P0hW1G74wTbiEIu200rT1tGhc7O+aLWu5B3xIL9inqG+
	 pSiHYT0XfWc4Uv+fsybdjqw5adPkSoavFfeGW3+BZQq2oIl0e1/pNSRD+S4zdvOUQZ
	 GtNTIUuvabK76FdLO5RRZ8hiyJ1yvx6VhcjBbZpBuR5u7OGu2ns8clegh+1sncccvc
	 FsAY514AIekPUpsPIZDhSzDukdLHseCcHmixgB7JWXsJ4PYJ8WRh1Uz8CricT2PHTz
	 1RaRjL6MokItg==
Date: Mon, 8 Jun 2026 23:00:21 -0700
From: Drew Fustini <fustini@kernel.org>
To: Icenowy Zheng <zhengxingda@iscas.ac.cn>
Cc: Guo Ren <guoren@kernel.org>, Fu Wei <wefu@redhat.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	Jisheng Zhang <jszhang@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-riscv@lists.infradead.org, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-gpio@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-usb@vger.kernel.org, Icenowy Zheng <uwu@icenowy.me>,
	Han Gao <rabenda.cn@gmail.com>, Yao Zi <ziyao@disroot.org>
Subject: Re: [PATCH 02/12] clk: thead: th1520-ap: add support for MISC subsys
 clocks
Message-ID: <aier9XppLeCkJydw@thelio>
References: <20260507081710.4090814-1-zhengxingda@iscas.ac.cn>
 <20260507081710.4090814-3-zhengxingda@iscas.ac.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260507081710.4090814-3-zhengxingda@iscas.ac.cn>
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

On Thu, May 07, 2026 at 04:17:00PM +0800, Icenowy Zheng wrote:
> The TH1520 SoC contains a MISC_SUBSYS clock controller, which allows
> controlling of USB related clocks and MMC/SD controller AHB bus clocks.
> 
> Add support for this clock controller, in order to enable USB support.
> 
> Signed-off-by: Icenowy Zheng <zhengxingda@iscas.ac.cn>
> ---
>  drivers/clk/thead/clk-th1520-ap.c | 64 +++++++++++++++++++++++++++++++
>  1 file changed, 64 insertions(+)
> 
> diff --git a/drivers/clk/thead/clk-th1520-ap.c b/drivers/clk/thead/clk-th1520-ap.c
> index 3a6847f1c950f..24f785f0b329a 100644
> --- a/drivers/clk/thead/clk-th1520-ap.c
> +++ b/drivers/clk/thead/clk-th1520-ap.c
[...]
> @@ -1609,6 +1663,12 @@ static int th1520_clk_probe(struct platform_device *pdev)
>  			return ret;
>  	}
>  
> +	if (plat_data == &th1520_ap_platdata) {
> +		ret = devm_clk_hw_register(dev, &usb_suspend_div_clk.hw);
> +		if (ret)
> +			return ret;
> +	}

Should usb_suspend_div_clk.hw instead be registered under
'if (plat_data == &th1520_ap_platdata)'?

Thanks,
Drew

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
