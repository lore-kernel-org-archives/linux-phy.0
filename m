Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29455606A31D
	for <linux-phy@archiver.kernel.org>; Sat, 24 Oct 2026 17:36:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=vn6A53Fw;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=goldelico.com header.i=@goldelico.com header.a=rsa-sha256 header.s=strato-dkim-0002 header.b=LcYwIb+J;
	dkim=fail reason="signature verification failed" header.d=goldelico.com header.i=@goldelico.com header.a=ed25519-sha256 header.s=strato-dkim-0003 header.b=65wHernY
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=kfLDZoBxI0LYfiur1xNsqk1hQ9+mkvLYNXY/JlLiVLg=; b=vn6A53FwDvO9GF9EUpjtua4dji
	El1B5psw5XIjUzVvqe1Thy5pwcEEi3Gkmmh4OFsusIdO9SsfGcS/pCz1RuBSFYSk4p0Zw9icPPaIT
	qZ18ACCwSzidXgp+LszX25W1g2o+8xeViSwekV8LNmH5ZcJOS9OtnHX0t9K5hrPfhClkm4788WxjE
	FHQolQm2SlGprm1WECmCqvLiyYrkF02G7rnBDVSlJlnzMlzJpAtHmxGXRTQ+XtFM9Qs7XKgTr13jf
	ZmqNIs1OQGg4+Sq3cvUxcKI7Iy/B4nxzPcwQKZQ3RjoRuyyt0We/aWhPpC1cmM3ehXxTyaux+lbPj
	O9zwjHZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKffJ-00000000P7G-0KWD;
	Sat, 24 Oct 2026 17:36:21 +0000
Received: from mo4-p02-ob.smtp.rzone.de ([85.215.255.81])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKffF-00000000P6u-3H47
	for linux-phy@lists.infradead.org;
	Sat, 24 Oct 2026 17:36:19 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1792863353; cv=none;
    d=strato.com; s=strato-dkim-0002;
    b=Dgzug3TYpPnYdMxgGoiR1tl4HMjQQvtjgq7Twa6BM0f8HMM8KxHJ5V8LsmqnGEq9XY
    etB9K/HEV9AR8PjLYBb2NnSD0W2BLXAkB0pN3Irc2yTZXEbS0UUPxFFDE+G1cqXNdO5n
    zzP5Z+erwesur7q7nmtrNcqqnor5ygBSoU+0t91zvhhAF4ct8yk29JBDBcV5heQt87hX
    xYaQtiAOd5JGry6J9vF50OHsDgrxPKxFRsdCx7rXvGhr6/0DSRQcx6GAk8VP0w68EuEC
    6IomIeS75DjpVA5UHf2pGO5TWYiZUJRQDmFsoRektam7PTzIXbLT2i53LExAFYlEg5dW
    vZbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; t=1792863353;
    s=strato-dkim-0002; d=strato.com;
    h=To:References:Message-Id:Cc:Date:In-Reply-To:From:Subject:Cc:Date:
    From:Subject:Sender;
    bh=p5jayUxTP7IY8XdUHRGrcXP101RoUTE+t/udRo6ELVE=;
    b=BVXotKZ6CtPjoRg3MP4OaRsrNuHAEtqZqoqAe7zlgumxVu2n+kxe3MpeqRmGN+0SW/
    SmAmahlttuzZGaGrza1K0QiLY2bMbr2PRdOD1+r4E+i4jt7PHRdW3Mtgeg6yMyHe1+T3
    ny+sAx6dNDcSawfpobIWH/dsW8EDkhPZNoPBp5w4sR34V9s/ixdq2+j+gP/5OhCGKjbO
    jXfaThmJL86nwcvCDTTEMMF4Epp+AQ9zmVvSGopg49qQUJ9nUgzN9uJYAmD7rUwuv1Pc
    6L7OsYdTJEJIZSkojMNAxoWuXDtN69rvkoIzRts+YfSI2eQfsgSgiCDOMunqSDeTznbh
    yD2g==
ARC-Authentication-Results: i=1; strato.com;
    arc=none;
    dkim=none
X-RZG-CLASS-ID: mo02
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1792863353;
    s=strato-dkim-0002; d=goldelico.com;
    h=To:References:Message-Id:Cc:Date:In-Reply-To:From:Subject:Cc:Date:
    From:Subject:Sender;
    bh=p5jayUxTP7IY8XdUHRGrcXP101RoUTE+t/udRo6ELVE=;
    b=LcYwIb+JMfRRZRmedpi7S/auFrF7n7sVKylvRxDRkHeSfQOYjqROOQ4xQHattlLVXM
    eo/KRVt6feJr0iasmU/rjhN3BQ1kY7hRllD7LIlZwk+xCu+k56LzWtSmZ0gAWvbX5Ftd
    8eztPHRTuBVbk4/1UGcE6HPU/AGS37pT2WTHIcZhIyq3z7H28YICAZzZpmzSG2/MKZor
    GLLBySZfY9INh3n17dzak5PAVGb4jHcpA3kXEWe0PMArMD+XG8L4n7Pu6TlBWCVgJgNm
    hAO2vhVRw3YaaBh2i6dSoqPzZoVpmTzsNRAMz73ht4bm5+o9UroxezGoaQ1euChdpCs9
    i8DA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; t=1792863353;
    s=strato-dkim-0003; d=goldelico.com;
    h=To:References:Message-Id:Cc:Date:In-Reply-To:From:Subject:Cc:Date:
    From:Subject:Sender;
    bh=p5jayUxTP7IY8XdUHRGrcXP101RoUTE+t/udRo6ELVE=;
    b=65wHernYSL2srwhbKeT4YHpRWezbl0wQUU+oVaEPcCxWlAucPGI7M8BnSYzxezjhHc
    Y1r3LFzmQvBg0tA5lJCA==
X-RZG-AUTH: ":JGIXVUS7cutRB/49FwqZ7WcJeFKiMhflhwDubTJ9qVpwcQVkPW4I1HrV2poKzsiNzptYNlV1C1yk7253raiyx+O3Hxli"
Received: from smtpclient.apple
    by smtp.strato.de (RZmta 55.6.3 AUTH)
    with ESMTPSA id Qb56a229OHZqwrP
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve X9_62_prime256v1 with 256 ECDH bits, eq. 3072 bits RSA))
	(Client did not present a certificate);
    Sat, 24 Oct 2026 19:35:52 +0200 (CEST)
X-Archived-By: <archiver.kernel.org>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.700.81.1.10\))
Subject: Re: [PATCH] phy: ingenic: Don't disable the supply in exit
From: "H. Nikolaus Schaller" <hns@goldelico.com>
In-Reply-To: <20261024051756.79342-1-olivier@mgcrea.io>
Date: Sat, 24 Oct 2026 19:35:21 +0200
Cc: Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>,
 Paul Cercueil <paul@crapouillou.net>,
 linux-phy@lists.infradead.org,
 linux-mips@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Discussions about the Letux Kernel <letux-kernel@openphoenux.org>,
 Paul Boddie <paul@boddie.org.uk>,
 Andreas Kemnade <akemnade@kernel.org>
Message-Id: <7611B8A4-4CC4-43CA-B8D5-FCEA2F74FA72@goldelico.com>
References: <20261024051756.79342-1-olivier@mgcrea.io>
To: Olivier Louvignes <olivier@mgcrea.io>
X-Mailer: Apple Mail (2.3826.700.81.1.10)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261024_103618_081726_B19084B3 
X-CRM114-Status: GOOD (  15.87  )
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
X-Spam-Status: No, score=-19.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi,

> Am 24.10.2026 um 07:17 schrieb Olivier Louvignes <olivier@mgcrea.io>:
> 
> The supply is enabled in power_on() and disabled in power_off(); exit()
> disabling it again unbalances it. dwc2 powers its PHY off before exiting
> it, which warns at every probe on an Ingenic X1600:
> 
>  WARNING: ... _regulator_disable
>  ...
>  ingenic_usb_phy_exit
>  phy_exit
>  dwc2_lowlevel_hw_disable
>  dwc2_driver_probe

Yes, I can confirm this problem and the solution:

https://github.com/goldelico/letux-kernel/commit/e757fd47d006b

> 
> Fixes: 31de313dfdcf ("PHY: Ingenic: Add USB PHY driver using generic PHY framework.")
> Signed-off-by: Olivier Louvignes <olivier@mgcrea.io>
> ---
> Tested on v7.3 on a HiBy R1 (X1600), whose PHY supply is a dummy
> regulator: without this the warning above came at every probe, with it
> there is none and USB still enumerates at high speed. Build-tested with
> W=1 on phy next.
> 
> drivers/phy/ingenic/phy-ingenic-usb.c | 1 -
> 1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/phy/ingenic/phy-ingenic-usb.c b/drivers/phy/ingenic/phy-ingenic-usb.c
> index 7e62d46850fd..d8e5ef302b74 100644
> --- a/drivers/phy/ingenic/phy-ingenic-usb.c
> +++ b/drivers/phy/ingenic/phy-ingenic-usb.c
> @@ -124,7 +124,6 @@ static int ingenic_usb_phy_exit(struct phy *phy)
> struct ingenic_usb_phy *priv = phy_get_drvdata(phy);
> 
> clk_disable_unprepare(priv->clk);
> - regulator_disable(priv->vcc_supply);
> 
> return 0;
> }
> 
> base-commit: 8f56fdf3d8cb9f1dbdc93bf9ac816698aa6f70b7
> -- 
> 2.39.5
> 
> 

Reviewed-By: H. Nikolaus Schaller <hns@goldelico.com>
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
