Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8871EC46CD2
	for <linux-phy@archiver.kernel.org>; Sat, 27 Jan 2024 21:46:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HH0hCsZDLJzKLJ0JW0F9uqCXiRGO6tq0Hci/y1WIx40=; b=GOF4usIIn8QS7K
	QK2ifC74K/fhsjIpGVzVKqeW4qb4dEaZRgoxQ/MRnIl74e0nX/njhIet/I2Em5Kv1zpN8w/PLamEv
	6Ke8R26joKkc5gINBBkBzDblzQYUiR0pyBsz7hY3iT3br3XYxxRFxbGWjVf20UVTLNA91SQO6/Hbu
	rC+uH83fCkYTym9nYAdZDwBoAZgX+HtpJ94CTWOtJBl9C3R+ptr0Pxfrsf8nAW+9+z+3bjKxqmvoO
	oytvIrOcJaKQrVCFTBDifD4xJbMp4eFCuRKCcdtmImxIFeOvTMJ0DBzqxeM7EkJ3JQMW7j1kQH1lb
	tblyHdQLTw3fMLTrM83Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTqVW-00000008Epp-3ev7;
	Sat, 27 Jan 2024 21:46:34 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTqVT-00000008EpI-1tWz;
	Sat, 27 Jan 2024 21:46:32 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 84A29CE38DC;
	Sat, 27 Jan 2024 21:46:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9A7AFC433C7;
	Sat, 27 Jan 2024 21:46:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706391984;
	bh=SErjFBICAWxRTxTFw2so2di/v5LFUPRZOMxTT+5uyqY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BJFqJgRCiVMNZX+V2TC3V0uQ1Q9GGncokLQikLTlsvHbP0c2jzCg/ddXZkWnKWPgT
	 IOIRBPj+Q27jll86wkFQEPd1TlRJge92vUiAgl7pBSYHv/+Wj4HPz5giLUC1xTmpv2
	 S9503BZ29w1y0lBgShOk9pJJ8HdceEEgoUu880ddhkgihwDMg7Mghl9G2pv3s2Fcwx
	 80xY1DDANGPeMGi2OD60DnkG0CGu5sip2JVMW46HYJXEKw6d6SuZMF11yvqVI4/lGV
	 Fau6lNL4FcYxEX72Z59QewSz1lV6swlpJVO998IiQhpvy+UMJ15Ub1sP/Yaasq83ao
	 XXz8oextlma7g==
Date: Sat, 27 Jan 2024 22:46:19 +0100
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
Subject: Re: [PATCH v2 01/15] gpio: pca953x: move suspend()/resume() to
 suspend_noirq()/resume_noirq()
Message-ID: <jwal3js3xjnbx46syf2jldsdx7fp4yv63fvsbnwo5npbbxapdu@n2flwlvsaetg>
References: <20240102-j7200-pcie-s2r-v2-0-8e4f7d228ec2@bootlin.com>
 <20240102-j7200-pcie-s2r-v2-1-8e4f7d228ec2@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240102-j7200-pcie-s2r-v2-1-8e4f7d228ec2@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240127_134631_692336_381957E1 
X-CRM114-Status: UNSURE (   7.71  )
X-CRM114-Notice: Please train this message.
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

On Fri, Jan 26, 2024 at 03:36:43PM +0100, Thomas Richard wrote:
> Some IOs can be needed during suspend_noirq()/resume_noirq().
> So move suspend()/resume() to noirq.
> 
> Signed-off-by: Thomas Richard <thomas.richard@bootlin.com>

Reviewed-by: Andi Shyti <andi.shyti@kernel.org>

Thanks,
Andi

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
