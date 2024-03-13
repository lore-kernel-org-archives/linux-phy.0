Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A25AC54E58
	for <linux-phy@archiver.kernel.org>; Wed, 13 Mar 2024 00:37:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wlrVOeATNQ5/N6s68MTTcm15LKKrwIpqvu4rofsF8R0=; b=qPwolY6BMdgOtU
	p8WX6cm+nJT2prK6Mq7odYB5UJet2w0rX6lhJmP+SRCLtAh+zF0/I8nymoJDfh0N1QHQWnKuglQGn
	9oQYWjlkzKd+D2kJHVB0Z383O61o0nEBRy6J5joPF0B4sfq9PkRV0Co0FigFvvgMfuEetij/Cz7zs
	i6IwpHv14XZ73yRVhMI3oD6FR//MrytWfxWAYg4Vmb2+HIqQ1HRV3oSqBLRUFq9cAarHLEo6wup4B
	m5Z3pyRt1mDDgUzMDjdjTcWv0L3tq/VUbjz6NsQfqnrKCTpilw58n5I18xhVdJ33cIVnpM4XEijn1
	Gt7VZ0SaYYbz/es7xf8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkCcs-000000089B5-3Dl3;
	Wed, 13 Mar 2024 00:37:46 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkCco-0000000899j-3nXS;
	Wed, 13 Mar 2024 00:37:44 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 0E8A2CE18C0;
	Wed, 13 Mar 2024 00:37:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 897F2C43390;
	Wed, 13 Mar 2024 00:37:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710290259;
	bh=1SnPGZWN0QXG/cj+HeG9fCWJ3nuxPvrSGvhQr+67xqg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PSsvmZeILe0xThjiru4Kga15JP/fW+1l8qlwVKVBHT8jT9Fp1TMJPjJ32D+rWpNIj
	 TEfNf0niIVdNTsssrJJZMJqZf8sUTLRsX6u51ZZMJoDMTNsUST9sBGL46uF38dTZut
	 yYIxBgR7iEq4/24utxzmBLoRYM5KeMkJVLnBGaqtVIvPhK2guawDaFjTtWIALzeaAf
	 rXIu6KCkicc7CKZAgNLjMowqaFsPLAsMBOqOrxAipyIt1fBiVY56oixNsxO8dPEsgx
	 8XdcXgzV2BnhKZCZhGEqybj98lgbIMYZ4KwDamk7r+eLzVrgfPk+qv16gyRo44kGSf
	 vteE9PgDz5PnA==
Date: Wed, 13 Mar 2024 01:37:35 +0100
From: Andi Shyti <andi.shyti@kernel.org>
To: Thomas Richard <thomas.richard@bootlin.com>
Cc: Linus Walleij <linus.walleij@linaro.org>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, Andy Shevchenko <andy@kernel.org>, 
	Tony Lindgren <tony@atomide.com>, Haojian Zhuang <haojian.zhuang@linaro.org>, 
	Vignesh R <vigneshr@ti.com>, Aaro Koskinen <aaro.koskinen@iki.fi>, 
	Janusz Krzysztofik <jmkrzyszt@gmail.com>, Peter Rosin <peda@axentia.se>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, 
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, linux-gpio@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-omap@vger.kernel.org, 
	linux-i2c@vger.kernel.org, linux-phy@lists.infradead.org, linux-pci@vger.kernel.org, 
	gregory.clement@bootlin.com, theo.lebrun@bootlin.com, thomas.petazzoni@bootlin.com, 
	u-kumar1@ti.com
Subject: Re: [PATCH v4 03/18] i2c: omap: wakeup the controller during
 suspend() callback
Message-ID: <z5sitoz6iz34v6nlfzc3ao3yijbzbsw2xxulqee2yuxx7sfnmi@pajsdc473jy2>
References: <20240102-j7200-pcie-s2r-v4-0-6f1f53390c85@bootlin.com>
 <20240102-j7200-pcie-s2r-v4-3-6f1f53390c85@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240102-j7200-pcie-s2r-v4-3-6f1f53390c85@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240312_173743_150556_EF9AD2CC 
X-CRM114-Status: GOOD (  13.06  )
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

On Mon, Mar 04, 2024 at 04:35:46PM +0100, Thomas Richard wrote:
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
> 
> Signed-off-by: Thomas Richard <thomas.richard@bootlin.com>

Reviewed-by: Andi Shyti <andi.shyti@kernel.org>

Thanks,
Andi

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
