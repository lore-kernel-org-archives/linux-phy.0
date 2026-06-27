Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7DB4FC43458
	for <linux-phy@archiver.kernel.org>; Sat, 27 Jun 2026 12:03:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1WdvGjelidCxdAZ30zn67Se1ddlnDzcr+Konu0AuzAg=; b=EScNlJWtpzrE/K
	TklBu7mvhNZX4NwiyXCJb1ZrneTxkjOYHsYZbAu7eXHIpm6A0CGhxsvWgLpmZZ8GI/HGV61YOU1PW
	mmdOcHomIlqK6T+41GFSz83eM0LAVxwBeZh6+bMthrGYaabIsmVeCkCYXECA45FtB8MznSXAXZSJW
	422Hc5N28lC2g54tc71oZOjQmlp2LOdi0AW966rtc+GdRKhmia5qsQLoF4zEmZ20xR89qo8WfcJSF
	CHhvWRjJjpX9e4BoRxDvWR4PpOt4NmrKgqZ+KtU/aD1k4AAteLW3i9y24FLGWfuV4epZSsSqMtTVn
	IG+DRzZxVe2smQCjcY6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdRkr-0000000CR7z-45yL;
	Sat, 27 Jun 2026 12:03:25 +0000
Received: from smtpout-03.galae.net ([185.246.85.4])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdRko-0000000CR7Z-1t9P
	for linux-phy@lists.infradead.org;
	Sat, 27 Jun 2026 12:03:24 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 7092C4E409FE;
	Sat, 27 Jun 2026 12:03:12 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 24CE760233;
	Sat, 27 Jun 2026 12:03:12 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 6ED60106F0447;
	Sat, 27 Jun 2026 14:03:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1782561791; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:content-language:in-reply-to:references;
	bh=vXHW0KlN3ToKmF2y5q+w/EnLPad1QSe+5reRgFv7LEA=;
	b=MZr0qSpduLDgGneJuPXUW3tm3Wox0CLWrXJ1dd7bgqRTuZxb3bpcWYT2RyQGt3a0ZuvlfD
	5XNMmDD52JQ7UkdP0eKxjDa98a83ohEUb8R19UWODqH5NvRT9z69KwB2mr4oIt05bC/Mzb
	jrIXZmQ9vbjVm5GM1qeNWJpdI+HLcblpXXC2drJEIaZCzJrc4DVsA3VGyCAOXFmLHxXcjm
	mCHogqiRU6zGtlp7bWNM3NAVmvb3lv0vNAYChJCZbYcccjST6thpfW+J/ORfkbQWfdQybm
	IDTdj64W5CESXBeX5pPf3kKfZWctIAE3fiygR5IN5VhX7YlD9ne9EzLsJ3x6Ag==
Message-ID: <24a4065d-1e37-4364-94eb-622b11bd0471@bootlin.com>
Date: Sat, 27 Jun 2026 14:03:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net v4 2/2] net: phy: mdio-i2c: defer RollBall bridge
 probe to PHY discovery
To: Petr Wozniak <petr.wozniak@gmail.com>, olek2@wp.pl,
 linux@armlinux.org.uk, andrew@lunn.ch, hkallweit1@gmail.com
Cc: kuba@kernel.org, davem@davemloft.net, edumazet@google.com,
 pabeni@redhat.com, netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, bjorn@mork.no, kabel@kernel.org
References: <20260624084814.20972-3-petr.wozniak@gmail.com>
 <20260626163519.10678-1-petr.wozniak@gmail.com>
From: Maxime Chevallier <maxime.chevallier@bootlin.com>
Content-Language: en-US
In-Reply-To: <20260626163519.10678-1-petr.wozniak@gmail.com>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260627_050322_669457_BFB7BDDA 
X-CRM114-Status: GOOD (  18.92  )
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

Hi Petr

On 6/26/26 18:35, Petr Wozniak wrote:
> Maxime Chevallier wrote:
>> I finally got time to test this with a RollBall module, and I
>> confirm what Aleksander says, the RollBall module's PHY doesn't
>> get detected even with this patch. It does work on v7.0 though,
>> so before the bridge probing was introduced.
> 
> Thanks a lot for taking the time to test, Maxime - and Aleksander
> for the original report.
> 
> That settles it: the deferred-probe approach in patch 2/2 doesn't
> actually restore genuine RollBall PHY detection, and as you both
> confirm it worked before 8fe125892f40 introduced the bridge probing.
> Sashiko's static review flagged the same thing (the probe bypasses the
> PHY discovery retry loop for slow-initializing modules), so the static
> analysis and the two hardware reports all point at the same flaw.
> 
> I only have RTL8261BE-based copper modules here, not a genuine RollBall
> one, so I can't develop and verify a proper slow-init timing fix
> (module_t_wait / a retry that waits for the bridge) without the
> hardware to test against.
> 
> Given that, my suggestion:
> 
> - Please drop patch 2/2 from the series.
> 
> - Since 8fe125892f40 regressed genuine RollBall detection and the
>   deferred probe doesn't restore it, I think the cleanest fix is to
>   revert 8fe125892f40. I'm happy to send that revert if you'd prefer.
>   The 5-minute RTL8261BE probe loop it was addressing is handled in our
>   downstream tree, so reverting it upstream is fine on our side.
> 
> - Patch 1/2 (the mii_bus leak fix) is independent of all this and
>   already has Reviewed-by from Maxime and Larysa - it would be good to
>   take that one regardless. I can resend it standalone if that's easier.
> 
> A proper fix covering slow-firmware modules really needs a genuine
> RollBall module to validate, so it's better owned by someone who has
> that hardware - happy to help review.
> 

I only have a single rollball module here, and none with the missing
bridge, so I can't test the full thing either.

In that case, I agree with reverting 8fe125892f40 as this is breaking
all rollball modules right now.

Can you send the revert ?

Maxime


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
