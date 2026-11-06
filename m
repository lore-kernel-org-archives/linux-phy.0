Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFBBD606A326
	for <linux-phy@archiver.kernel.org>; Fri,  6 Nov 2026 08:42:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=3J9wIyny;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=pengutronix.de header.i=@pengutronix.de header.a=rsa-sha256 header.s=20260414 header.b=XwTvp2Hj
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=ZRhSoOrAvepnQzyOfrcTCU9Ccnj5QNAfjpsocLvyQRs=; b=3J9wIynyLtmU95sE6bzOLryCF+
	yBxYFbgMHncBfP7Dy4nbeHDWgSSJ4sPf6nvXHez6WILPy+cA0LI5AJ3nHKU1SRKt0LQhXb5WOGPhT
	Fbvk1EzePAKdxpeoePAC+NrlsNH6+LeFghF1FZRt0ZZyynbYnqCFS2iafIRDZ6ny1dO1g72dePVJ8
	vR9BGpw7m+9n5zdoI1reOX7HDxbnG9UWVPk996v6gKSnfbZkzacmomVbTmVtlEJLQWHtSZfElp6MN
	gOr20bGc7bkqcpekr38ZkOljt+VT+KJMGB8QsIca7goa5Eyd72tzBzP3/OovLSMwE8Y5KJXf9gdjC
	lsRcL5hw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPFXH-0000000BcLw-2vZs;
	Fri, 06 Nov 2026 08:42:59 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPFXE-0000000BcKa-3I7a
	for linux-phy@lists.infradead.org;
	Fri, 06 Nov 2026 08:42:58 +0000
Received: from [IPv6:2a0a:edc0:0:900:1d::4e] (lupine.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::4e])
	(Authenticated sender: pza@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id E78F3200681;
	Fri, 06 Nov 2026 09:42:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793954574;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=//BhGWhocoXqTGm5cl7oYST4gdbyKm1YGtkrcPDoUdg=;
	b=XwTvp2HjcxbbKHLX+rAlFM0I48XMYXfdG9kKIqRRNsNo5AS8gbBGidEzchpwjMWNqcJTkV
	QwYnUyFICNvgRV3HVlpOGwP9cnnCUFVHks4t3e5xbI89WX+72Rqow6er/5Dup5qY1TRNUH
	o05lnjD1V9Aucc/cAWPNg882EajYDC+03IMs4UfVZrqfeerofvftrPLahw5/JZxJmrKZnU
	8veaBx4PWjlckXZNzoBopagLeAfiQcoeHEbVzTRbwZNjeRY+RWpyPmBSMYVsfT/+u85eUZ
	VCCR7N2Nc5LxyfcjpK5jaz6V7DUNM4ABewpW42XxjRrmx4rMAgetSfWjBV8kDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793954574;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=//BhGWhocoXqTGm5cl7oYST4gdbyKm1YGtkrcPDoUdg=;
	b=eDb6HCn7SjdnhBJx3QsJ8qPZy9CkatDumvnznQbh8RtAFxfB+S5FtgmLMpEKOpt2A3VMea
	xXP1at0nh1FjsEMcCkzOjS1SEo9opHXg3iYD71L89pgyKC5BIH2OU+Ellr9yoe9Ctg7S+o
	JKaN0kIHRzGQW/ZWIo+Jb2W0KwbgXU5uzB4+2wLZxRa75r3HwpnvudTfuuIcnWXsoJXFS7
	DeggLSxyDHwelLTGE8Eoj/KnsFRhP9vNs33UJtCxJFmpWPRrv/w0MYCgQCRncBe4ZrBGfD
	OpkGcbrXSzJ1CZxyshNw+gkVHWNIUZzDSMOKYwqTB7JsDvOpIueHqcmh6TjWQg==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=pza@pengutronix.de smtp.mailfrom=p.zabel@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793954574; a=rsa-sha256;
	cv=none;
	b=ImQ8CWpS/K1U4zYKJOUdfiVGehkW1YFe17FPfwrUkqTWPYEB8Q2/mlZQUeylEICiT+uIzt
	FM6SBZDclWm/qvYWPGl73CQn0DcEw4ftLXjGAJS9t9SdL7tRps6wiEl9ZdxJ8DSW32cSx5
	LAJbh3zRvpUhcp2Sl3Aeje6iJdgQ3R3gwlZKwWpGAOoukszU+PQDZu+uPsG3n7LrLqeauW
	+/Lzubr4yBPaFbZpwLwMY9BPyQSBFL6f23UTV3uNTiKHV6jEeCcNcNmmSY1va/P/FnfeZa
	sgsP8gIDDqHUEPpOhaAZ3BtUxjFLCcm+9li1UO4eQhKZ9ceNg9TROL2jb5sMzA==
Message-ID: <d3c3dc464510db5b603e578a976ffde4364cae70.camel@pengutronix.de>
Subject: Re: [PATCH] phy: ath79-usb: support the analog reset
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Rosen Penev <rosenp@gmail.com>, linux-phy@lists.infradead.org
Cc: Alban Bedel <albeu@free.fr>, Vinod Koul <vkoul@kernel.org>, Neil
 Armstrong	 <neil.armstrong@linaro.org>, Manivannan Sadhasivam
 <mani@kernel.org>, "open list:ARM/QUALCOMM MAILING LIST"	
 <linux-arm-msm@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>
Date: Fri, 06 Nov 2026 09:42:54 +0100
In-Reply-To: <20261106014254.544923-1-rosenp@gmail.com>
References: <20261106014254.544923-1-rosenp@gmail.com>
User-Agent: Evolution 3.56.2-0+deb13u1 
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261106_004256_977836_889F0102 
X-CRM114-Status: GOOD (  14.88  )
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
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Do, 2026-11-05 at 17:42 -0800, Rosen Penev wrote:
> From AR934x on, the analog part of the USB PHY has its own reset. The
> old platform code released it after the PHY reset on AR934x, and left
> it to the bootloader on QCA955x.
> 
> Take it as an optional "phy-analog" reset, release it after the PHY one
> when powering on, and assert it first when powering off. This is the
> reset handling OpenWrt has used on its AR934x, QCA955x and QCA956x
> boards.
> 
> Signed-off-by: Rosen Penev <rosenp@gmail.com>
> ---
>  drivers/phy/qualcomm/phy-ath79-usb.c | 33 +++++++++++++++++++++++++---
>  1 file changed, 30 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-ath79-usb.c b/drivers/phy/qualcomm/phy-ath79-usb.c
> index 8e9565846b2f..1e7868fc0b5f 100644
> --- a/drivers/phy/qualcomm/phy-ath79-usb.c
> +++ b/drivers/phy/qualcomm/phy-ath79-usb.c
[...]
> @@ -78,6 +99,12 @@ static int ath79_usb_phy_probe(struct platform_device *pdev)
>  	if (IS_ERR(priv->no_suspend_override))
>  		return PTR_ERR(priv->no_suspend_override);
>  
> +	/* AR934x and later also hold the analog part in reset */
> +	priv->analog_reset = devm_reset_control_get_optional(&pdev->dev,
> +							     "phy-analog");

Documentation/devicetree/bindings/phy/qca,ar7100-usb-phy.yaml only
specifies "phy" and "suspend-override".

regards
Philipp

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
