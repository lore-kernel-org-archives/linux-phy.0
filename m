Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4BB7CDB471
	for <linux-phy@archiver.kernel.org>; Tue, 23 Jun 2026 16:23:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MyimolXKVFS+xA88JYSlXQhkYqfwjcOWyj/87XQkjmM=; b=45/QTGTCiR+eEb
	XTrHQQlj5Wn7ApF/ayCWrWJc+o1J2ViVGPSPfu4d4bVVxY/CaRRo3NOGx48SvZ4b4VEmGx8DsPhXv
	LpAM2c0XJaykWOMFrRqW4Br3sAqAc0k9K9dmbPfCkx3OTdcz83M7thhdPhqo/oCo6ghv9ZDA/5xe6
	2r+VV8mUpMxAk/znsbQc/fs55L8TqWrt4I0ri86DfgySQRxsqdtmIi4djl+ZQqsvcRPUd0kY0KFjb
	n7e2f23hfBaFcwzA+R+5Fk1XpNKCNhBNnHFX2KyZA3qKhvEkch5/1Lo8ttdDdbVm9jux8nvH3s/Tw
	/lYGoIlmyM1EBiapujRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wc3u7-00000006cWw-3966;
	Tue, 23 Jun 2026 16:23:15 +0000
Received: from smtpout-04.galae.net ([185.171.202.116])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wc3u4-00000006cWK-2RdZ
	for linux-phy@lists.infradead.org;
	Tue, 23 Jun 2026 16:23:14 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 1594FC6B393;
	Tue, 23 Jun 2026 16:23:17 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 57704601C2;
	Tue, 23 Jun 2026 16:23:09 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 4E7DC106C841A;
	Tue, 23 Jun 2026 18:23:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1782231788; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:content-language:in-reply-to:references;
	bh=/9CbdAPN/4V+FSMLtSl5yulm65CsF7yRuepdwDsnG3I=;
	b=YE5a2DeGmMl4nhclGldtGgDPhgjcVG06bQ67THBJgVOCnGHBEb/G7C1pXG0iHvf1ZJQcQY
	b4k4eQ5Km9bP3HTv74szkqqfJD7c5Weq6CnltVyxIV4/WAplF/7YowNGJZA1NYiQCIsP7x
	KtstEYRrDJ23nwq5f3E9yHdDNbWBTHIZCVPagjuvrs9VHChsiECSU642Csf8I/ui6JAQlQ
	v0oNJsl9Fq6q2cIi44cqMfNJvX733/ebA2aVAJDDMfgsmGd+wKRaujWcycg2r1IWBy3oSI
	t3UToQRIxF9wTQ0RiiO101u3NUFMhZXDacI1FcvqwERrPNv9PatCuzxqg0JMJg==
Message-ID: <376a850a-dabe-421a-b227-9b612056583f@bootlin.com>
Date: Tue, 23 Jun 2026 18:23:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next v3 1/2] net: phy: sfp: free mii_bus in
 sfp_i2c_mdiobus_destroy
To: Petr Wozniak <petr.wozniak@gmail.com>, linux@armlinux.org.uk,
 andrew@lunn.ch, hkallweit1@gmail.com
Cc: kuba@kernel.org, davem@davemloft.net, edumazet@google.com,
 pabeni@redhat.com, netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, bjorn@mork.no, olek2@wp.pl, kabel@kernel.org
References: <20260623080538.7646-1-petr.wozniak@gmail.com>
 <20260623080538.7646-2-petr.wozniak@gmail.com>
Content-Language: en-US
From: Maxime Chevallier <maxime.chevallier@bootlin.com>
In-Reply-To: <20260623080538.7646-2-petr.wozniak@gmail.com>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260623_092312_791006_7997E1AD 
X-CRM114-Status: GOOD (  14.07  )
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



On 6/23/26 10:05, Petr Wozniak wrote:
> sfp_i2c_mdiobus_create() allocates the I2C MDIO bus with mdio_i2c_alloc(),
> a plain (non-devm) allocation, and registers it. sfp_i2c_mdiobus_destroy()
> only unregisters the bus and clears sfp->i2c_mii without calling
> mdiobus_free(). As the only reference to the bus is then cleared, the
> struct mii_bus is leaked.
> 
> This is hit whenever a copper/RollBall SFP module that instantiated an MDIO
> bus is removed: sfp_sm_main() takes the global teardown path and calls
> sfp_i2c_mdiobus_destroy(). sfp_cleanup(), on driver unbind, frees
> sfp->i2c_mii directly, which is why the leak only triggered on module
> hot-removal and not on unbind.

which is worse, this can happen many times in a row :)

> 
> Free the bus in sfp_i2c_mdiobus_destroy() to match the allocation done in
> sfp_i2c_mdiobus_create().
> 
> Fixes: e85b1347ace6 ("net: sfp: create/destroy I2C mdiobus before PHY probe/after PHY release")
> Signed-off-by: Petr Wozniak <petr.wozniak@gmail.com>

With this patch sent towards the -net tree,

Reviewed-by: Maxime Chevallier <maxime.chevallier@bootlin.com>

Maxime

> ---
>  drivers/net/phy/sfp.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/net/phy/sfp.c b/drivers/net/phy/sfp.c
> index 03bfd8640db9..c4d274ab651e 100644
> --- a/drivers/net/phy/sfp.c
> +++ b/drivers/net/phy/sfp.c
> @@ -963,6 +963,7 @@ static int sfp_i2c_mdiobus_create(struct sfp *sfp)
>  static void sfp_i2c_mdiobus_destroy(struct sfp *sfp)
>  {
>  	mdiobus_unregister(sfp->i2c_mii);
> +	mdiobus_free(sfp->i2c_mii);
>  	sfp->i2c_mii = NULL;
>  }
>  


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
