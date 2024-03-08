Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1F74C54E4A
	for <linux-phy@archiver.kernel.org>; Fri,  8 Mar 2024 08:40:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EuckJyayDE4Tm6CtJoUd8eys62oGsN6f10uusA0c0kk=; b=eiqWgPuuDBnsLX
	MvAv7lkhf/mMTs5B0sR0kIsA1OitTjA3F9yZX/LdNLGr24In7bXmZONbgh6hSFXWVzZM3pHGQ5sBz
	OmVVJthuSZTusWvMzdAbwphshJxLHQkzwt/XoWF2PoUIy0FSKTi3tw/Hj95Ah1hX8eEsVL8C3251W
	fWaK6FzbQ7XwTJ6rJ83Z2Kpz+XugLZWiHIHNqSBl13kycyhAuqxYIqbBtBsD5Hb3XW+ufI8VAJOvL
	4ubmCNR/gR+lSonCXCWOyUMNpjSyOhZrkGf5SJMMviiMzVrnSnn2r3wVvUOqjPqOAtloAF46/4n6L
	BxI9U9NpGAxiodJLOnvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1riVmb-00000008Mtd-1utm;
	Fri, 08 Mar 2024 08:40:49 +0000
Received: from mail5.25mail.st ([74.50.62.9])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1riVmW-00000008MrY-3GMX;
	Fri, 08 Mar 2024 08:40:46 +0000
Received: from localhost (91-158-86-216.elisa-laajakaista.fi [91.158.86.216])
	by mail5.25mail.st (Postfix) with ESMTPSA id AEFC16042D;
	Fri,  8 Mar 2024 08:39:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=atomide.com;
	s=25mailst; t=1709887242;
	bh=wpah1BRPoth5v+GfqPF7IPIPtr3RuwlZdH6pWroKFH8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=REZmszDWTvKT3lidocsf8OEGV1gZqMg3JFWg8YtDu7y1r5CBWQW3tOVT40RmE4b3b
	 YePLWtD4jQkdWkq5sEqYBHRLDQ19FC+AY8v6nRBdOMFfUsWOq2KODnA076fO4sRyDh
	 aVW3DWFaXAnrlMCugWxKXoKPEqjO1uFLoPDNEDlP4VLHZQLOOIiyF6xM791j7YUTDf
	 lx1ba9yyCls15dtwMOFe5GHhnQVGuOV0LTID+cEbF0dINp6nxBV0DlDufkgUlXF4VU
	 dRbJyxTNe/d/fLrFVPW/nuBrIvsj//vrjsqIXidb7LfQ9Js1kMNRTL580aZid11iSf
	 1XI2Un6qVopOg==
Date: Fri, 8 Mar 2024 10:39:40 +0200
From: Tony Lindgren <tony@atomide.com>
To: Thomas Richard <thomas.richard@bootlin.com>
Cc: Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Andy Shevchenko <andy@kernel.org>,
	Haojian Zhuang <haojian.zhuang@linaro.org>,
	Vignesh R <vigneshr@ti.com>, Aaro Koskinen <aaro.koskinen@iki.fi>,
	Janusz Krzysztofik <jmkrzyszt@gmail.com>,
	Andi Shyti <andi.shyti@kernel.org>, Peter Rosin <peda@axentia.se>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-omap@vger.kernel.org,
	linux-i2c@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-pci@vger.kernel.org, gregory.clement@bootlin.com,
	theo.lebrun@bootlin.com, thomas.petazzoni@bootlin.com,
	u-kumar1@ti.com, Andy Shevchenko <andy.shevchenko@gmail.com>
Subject: Re: [PATCH v4 02/18] pinctrl: pinctrl-single: move
 suspend()/resume() callbacks to noirq
Message-ID: <20240308083940.GJ52537@atomide.com>
References: <20240102-j7200-pcie-s2r-v4-0-6f1f53390c85@bootlin.com>
 <20240102-j7200-pcie-s2r-v4-2-6f1f53390c85@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240102-j7200-pcie-s2r-v4-2-6f1f53390c85@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240308_004045_028062_727F3048 
X-CRM114-Status: UNSURE (   6.63  )
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

* Thomas Richard <thomas.richard@bootlin.com> [240304 15:36]:
> The goal is to extend the active period of pinctrl.
> Some devices may need active pinctrl after suspend() and/or before
> resume().

Reviewed-by: Tony Lindgren <tony@atomide.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
