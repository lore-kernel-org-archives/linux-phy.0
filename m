Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F628606A33F
	for <linux-phy@archiver.kernel.org>; Tue, 17 Nov 2026 13:04:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=D/0qZMH5;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=pengutronix.de header.i=@pengutronix.de header.a=rsa-sha256 header.s=20260414 header.b=VbhjxJqF
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=u3ojWgvOWEeXJRSQ/Py36jkAv/+8Dmxl6WmWA5IHs2I=; b=D/0qZMH5gWeR9cC8cHyi+/kOYn
	it0mgn3sO4iQIMNzOJOGfEDDV7EQBRyStzAeP70D87JKaGAUPoJEioz5Gdc1a4vtgp04EruQH0WYF
	Xe6hrZIz9oGhUSDDq/jIybqU1WTghe96VHPxHEzMGDR1j/fusXqPLBt42NC1X+JvXMC/w5gB1l5bE
	N/axTaU0BPzCa/4uc8Ren7O2icbuJ4KleP+1FABhHENHB8V+lMmchX89ZLj9flfOtA7P2xi9ygIjX
	SbIGdjaqq3VSY0i4PV63lfWju8uswqwU/xs4mLIztdXzvvy/q4Suk/j34nQBPE+ih8HH6fitABal0
	Yo0SS/gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTIrc-00000005oeW-089g;
	Tue, 17 Nov 2026 13:04:44 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTIrY-00000005ocm-43Su;
	Tue, 17 Nov 2026 13:04:42 +0000
Received: from [IPv6:2a0a:edc0:0:900:1d::4e] (lupine.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::4e])
	(Authenticated sender: pza@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id EF8DE205A36;
	Tue, 17 Nov 2026 14:04:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794920677;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=1mVJ+IOGvZs3+RW9SaqfOzie49O+ezTdrW272wWwJeI=;
	b=VbhjxJqF3tBP20+4AIz4x4IqLigrnrktRbZfzx17lBK073CVeHbRbaif/7onfvnqo4dUzR
	kKx9vYxioKLURYqr27x9J4ZZv4tPuSvWpxRP1voPDPAzo+Uz05Zf9ZiKpdHqqMV0DAjs7K
	RJTP80kW8ROu/C9R9jN3P5SUot3QWkA08bMyW2vHRZhYra+m4gToOxquE1FI+HcLClyNEb
	QIgAwP1qHJMi5t/Qc3lyTROmjVIHg8+O+XcE7aXnJxR1dYzy2m2ykwGsIR/mLTEnHiDvkt
	xiQH4d4csXoEriLVOxce8WmtPcrCmlP+1KLtvfDfgMoI9gI9V7AjfGkjKwsUsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794920677;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=1mVJ+IOGvZs3+RW9SaqfOzie49O+ezTdrW272wWwJeI=;
	b=RvGMQVboS2UQnCQfvoFUciRlrD127ZGmirGjnVOXquq72Y9+0uWWFaVSllJWxR0Aa1x/oI
	wC9/D3PVhpW5zFPzxu9l456WanvKR5OChT/5x4j6rVXugy7DkDX144mXLxWwdbfvo7UrPF
	XOK71AGdNPw5Mw1DdvrGf2LkbfTzWeVAWNE8g9F6xD8Fluw3vkwB9jLdcScGUmnSIveVej
	p8fdzzSBez3bKdtX967EY46Su5kIAWqI2l2O9H9Zg9eKR4WNKEKlFBSMF5fUEOa509Lt1Z
	9PNjyMo+Qri7hNXoBvz+bLvS1PzVvTp113rHAKjksUb/2Y5sjFUlfsKp6vtS7g==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794920677; a=rsa-sha256;
	cv=none;
	b=DetY+6izSOzw5Au7wA4sVtzqFY15Vb6NSJrID3yPpz6Vvf8OviOy+HnXABXrdlOk3jxlsN
	y/mfZXtdzIW9VccH7BFCmVXbv8gjnI3B0rYFjQAbs1BtTwJ4FXVJBJZV9DqcAiIrTznsfc
	8aO6ME23YPPjEoi8ywTceODZ9hlNHhlIybokf2px3upUSo348XO5WM8LPoIVPklYaZ4jja
	30KV0z7dS41+orMx3zCBG/vTdeEBVtAnAACidMxt5AV07P35HqqJIKjc4ELXzJYbb7z8Z5
	nrAdk/aQGpf5elSPN9B8qKB37rTYp9oVVTm1Fx17aI0DzyycRf7J6LNz2hPQRQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=pza@pengutronix.de smtp.mailfrom=p.zabel@pengutronix.de
Message-ID: <614eaf9d3529797eaa6825e3c2226c4e9cf34234.camel@pengutronix.de>
Subject: Re: [PATCH 0/2] usb/phy: sunxi: Assert reset before deasserting on
 init
From: Philipp Zabel <p.zabel@pengutronix.de>
To: admin@roadbobek.com, Bin Liu <b-liu@ti.com>, Greg Kroah-Hartman	
 <gregkh@linuxfoundation.org>, Chen-Yu Tsai <wens@kernel.org>, Jernej
 Skrabec	 <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>,
 Vinod Koul	 <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
Date: Tue, 17 Nov 2026 14:04:36 +0100
In-Reply-To: <20261117-usb-sunxi-reset-fix-v1-0-c2b76e0e84e1@roadbobek.com>
References: <20261117-usb-sunxi-reset-fix-v1-0-c2b76e0e84e1@roadbobek.com>
User-Agent: Evolution 3.56.2-0+deb13u1 
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261117_050441_180215_DCA98432 
X-CRM114-Status: GOOD (  10.54  )
X-Spam-Score: -2.1 (--)
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
X-Spam-Status: No, score=-3.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Di, 2026-11-17 at 13:00 +0000, Roadbobek via B4 Relay wrote:
> When a bootloader such as U-Boot (for example with
> CONFIG_USB_MUSB_HOST=y) initializes USB host mode and boots Linux
> without stopping USB first, both the MUSB controller and USB0 PHY
> reset lines are already deasserted when Linux probes them.
> 
> Because reset_control_deassert() alone is a no-op on an already
> deasserted reset line, stale hardware register state persists across
> boot. On Allwinner A33, MUSB stays wedged in a_wait_bcon with
> DevCtl=0x99, Power=0xf0, and a frozen Frame counter even across
> hot-unplug and replug.
> 
> This two-patch series briefly asserts reset before deasserting it in
> both drivers so USB starts cleanly regardless of prior bootloader state:
> 
> - Patch 1 asserts glue->rst in sunxi_musb_init().
> - Patch 2 asserts phy->reset in sun4i_usb_phy_init().

While you are at it, could you also replace the
devm_reset_control_get() calls with devm_reset_control_get_exclusive(),
to make it clear the driver requires exclusive access to assert the
resets?

regards
Philipp

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
