Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8DC5606A31B
	for <linux-phy@archiver.kernel.org>; Sun, 25 Oct 2026 19:19:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=JUbijHtX;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=goldelico.com header.i=@goldelico.com header.a=rsa-sha256 header.s=strato-dkim-0002 header.b=Ogq6AmzH;
	dkim=fail reason="signature verification failed" header.d=goldelico.com header.i=@goldelico.com header.a=ed25519-sha256 header.s=strato-dkim-0003 header.b=9oxDkwzA
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=ja4yCAcwd1uVV0imhWOlQaD/turNM8tjIwTSulOcvnI=; b=JUbijHtX1lDpG4sO3DeTspMItA
	8EZAQHyLhQWNg8CYzlojMwl9xiwuZU0byr9XPQf+O2oUEQQluvyUDL6w4AxiaqT2dUn5RjM15WOJp
	RSDCvxe0T3WbkJ6gpEz0JYPPp5JkzBbDEGGztnZEur+CGGRkdlag/ryiel1lpyI8D/0mv845Cnvox
	t5gUUWNDnJGc/kQR+A5klhWm2rjuFKRE9PtitTKqOJCoc7jAxgaH4SKEeOGVL/RILpA/I2Ol5eZDy
	P8o3vHWoJXMkmDOmhEqLO0OmOfk9L7FdX+KjHctFYwL7OAqw9h5B2lVaIS6B4grA0JsR0n/CVtPfi
	qdVnDkbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xL3kN-00000001Jxi-1G8t;
	Sun, 25 Oct 2026 19:19:11 +0000
Received: from mo4-p02-ob.smtp.rzone.de ([85.215.255.83])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xL3kJ-00000001JxH-2MRA
	for linux-phy@lists.infradead.org;
	Sun, 25 Oct 2026 19:19:09 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1792955917; cv=none;
    d=strato.com; s=strato-dkim-0002;
    b=mqWynaoOaLkuViaaiskG+Dk76BiydMQybb4JHkjNxzRuy4LEFXadAqqAGkSu2g+miP
    fNpitHPUlHbZraVzVa/mWA9CcKkIepY7+6gA0BFRgLX+6lsbYG+PT48hKaouWJdbq2UE
    F4OvsKtXT1U0B6huLmVnRCwRuTPtompbcqpG9ljl6WcImjSXWXUwfaTK7PbmfvmmCInB
    viLYyklYc3Yshkp4VVJXg/1w/u4+a5TE43Y2/RM3xnGZjmWuZ/KLutwVT/+e/aMbuo6G
    wrt6EUYiKPet+uVEogcqkzxY54SUfO/5QREBtlGH0lLQD16+3S3shPqQIAmNZAD14AJX
    b7dQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; t=1792955917;
    s=strato-dkim-0002; d=strato.com;
    h=To:References:Message-Id:Cc:Date:In-Reply-To:From:Subject:Cc:Date:
    From:Subject:Sender;
    bh=w6uDrMg1SblksEId3NgX6hIaSXp3takMz6Z3EAPSHto=;
    b=Wd3LeI24kZOizVif0MpAtqBOhw2Lma2nmLnfyHMDXeMjoGk4R7YQMDNeuxUkqN4KO/
    4DbP9v3SFg7SFgu/UcHRUSjRNla+jC3la0AEvoxrIx8xceXrOSew0tywVYAvnZF9IJ3r
    bmS7MAJ+BL4rMjHn3Y9/2ZioMMoYqn+2aGsx7PZ/iDVxTbW3a2+fqczZbux9ZnLo2J3A
    9YCOSdvqdPZfy1K7cbsigy4piDTo0zQfnA+kEAi1zIq1/NwgQD21dfMePBCZMEk1J8wx
    UL9VAegh2Uj9fL1rZ6bYEQYoPJIf7CTXVVjutWhe6JY3Dxmb2WuBQH/b7PN+QiDl5qWd
    4liw==
ARC-Authentication-Results: i=1; strato.com;
    arc=none;
    dkim=none
X-RZG-CLASS-ID: mo02
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1792955917;
    s=strato-dkim-0002; d=goldelico.com;
    h=To:References:Message-Id:Cc:Date:In-Reply-To:From:Subject:Cc:Date:
    From:Subject:Sender;
    bh=w6uDrMg1SblksEId3NgX6hIaSXp3takMz6Z3EAPSHto=;
    b=Ogq6AmzHR6/3rDMz/M2tis/qYOzbCexza0TvVjJxVB1st3YsI3myEAYkAu6zB26mbL
    +plK+TSdE6pDBZAQ6VU6UY4Y6xbN1z1FpybzYxB7Cm0Q2Oq4B2Twm0qM1k3mi7rdkNTo
    Hh3TDTdBLOvPzkiCE2OSQu6g/brf6V0CndlzxnQoiqfvkgxja5a5JLa4ZEnPdSi6YQcM
    wCJCdIA+LnS2ItvajQG15C71MYh+qHBCCnH7wTX5G64GpjlXEOlWNhNHqdMfGwhgbdJ3
    liieVYJN9lmqDByPAMCAIPHKaKy/cBkwA/tWYghYNo9nPTKFxDH/AJZYegyB8SrRVrjI
    d+yw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; t=1792955917;
    s=strato-dkim-0003; d=goldelico.com;
    h=To:References:Message-Id:Cc:Date:In-Reply-To:From:Subject:Cc:Date:
    From:Subject:Sender;
    bh=w6uDrMg1SblksEId3NgX6hIaSXp3takMz6Z3EAPSHto=;
    b=9oxDkwzAg1Ss4fn4wY2MixwFR+oxpxJCglhA7MK0T+tE2sDLtBs9jI/1jntvaeyaLo
    jui0r/VN7WFe+SwlQwAg==
X-RZG-AUTH: ":JGIXVUS7cutRB/49FwqZ7WcJeFKiMhflhwDubTJ9qVpwcQVkPW4I1HrS2poNy8iNoc+LWkugLIF0fnfvFgpgbBBt2w=="
Received: from smtpclient.apple
    by smtp.strato.de (RZmta 55.6.3 AUTH)
    with ESMTPSA id Qb56a229PJIbzQs
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve X9_62_prime256v1 with 256 ECDH bits, eq. 3072 bits RSA))
	(Client did not present a certificate);
    Sun, 25 Oct 2026 20:18:37 +0100 (CET)
X-Archived-By: <archiver.kernel.org>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.700.81.1.10\))
Subject: Re: [PATCH] phy: ingenic: Don't disable the supply in exit
From: "H. Nikolaus Schaller" <hns@goldelico.com>
In-Reply-To: <7611B8A4-4CC4-43CA-B8D5-FCEA2F74FA72@goldelico.com>
Date: Sun, 25 Oct 2026 20:18:06 +0100
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>,
 linux-phy@lists.infradead.org,
 linux-mips@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Discussions about the Letux Kernel <letux-kernel@openphoenux.org>,
 Paul Boddie <paul@boddie.org.uk>,
 Andreas Kemnade <akemnade@kernel.org>
Message-Id: <896398A4-264F-4D8C-A60D-0F1ADED6CC67@goldelico.com>
References: <20261024051756.79342-1-olivier@mgcrea.io>
 <7611B8A4-4CC4-43CA-B8D5-FCEA2F74FA72@goldelico.com>
To: Olivier Louvignes <olivier@mgcrea.io>,
 Vinod Koul <vkoul@kernel.org>,
 Paul Cercueil <paul@crapouillou.net>
X-Mailer: Apple Mail (2.3826.700.81.1.10)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261025_121907_908271_4798BA25 
X-CRM114-Status: GOOD (  13.86  )
X-Spam-Score: -2.0 (--)
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

By the way it turns out that this patch by Olivier duplicates my 2 years old submission:

https://patchew.org/linux/96da5fe557f3b2501447358895bd78decc4633ef.1735482146.git.hns@goldelico.com/
https://lkml.iu.edu/hypermail/linux/kernel/2503.2/00226.html
https://lists.goldelico.com/pipermail/letux-kernel/2024-December/009881.html

where there was never a feedback or merge and despite a resend it was still lost again.

BR and thanks,
Nikolaus

> Am 24.10.2026 um 19:35 schrieb H. Nikolaus Schaller <hns@goldelico.com>:
> 
> Hi,
> 
>> Am 24.10.2026 um 07:17 schrieb Olivier Louvignes <olivier@mgcrea.io>:
>> 
>> The supply is enabled in power_on() and disabled in power_off(); exit()
>> disabling it again unbalances it. dwc2 powers its PHY off before exiting
>> it, which warns at every probe on an Ingenic X1600:
>> 
>> WARNING: ... _regulator_disable
>> ...
>> ingenic_usb_phy_exit
>> phy_exit
>> dwc2_lowlevel_hw_disable
>> dwc2_driver_probe
> 
> Yes, I can confirm this problem and the solution:
> 
> https://github.com/goldelico/letux-kernel/commit/e757fd47d006b
> 
>> 
>> Fixes: 31de313dfdcf ("PHY: Ingenic: Add USB PHY driver using generic PHY framework.")
>> Signed-off-by: Olivier Louvignes <olivier@mgcrea.io>
>> ---
>> Tested on v7.3 on a HiBy R1 (X1600), whose PHY supply is a dummy
>> regulator: without this the warning above came at every probe, with it
>> there is none and USB still enumerates at high speed. Build-tested with
>> W=1 on phy next.
>> 
>> drivers/phy/ingenic/phy-ingenic-usb.c | 1 -
>> 1 file changed, 1 deletion(-)
>> 
>> diff --git a/drivers/phy/ingenic/phy-ingenic-usb.c b/drivers/phy/ingenic/phy-ingenic-usb.c
>> index 7e62d46850fd..d8e5ef302b74 100644
>> --- a/drivers/phy/ingenic/phy-ingenic-usb.c
>> +++ b/drivers/phy/ingenic/phy-ingenic-usb.c
>> @@ -124,7 +124,6 @@ static int ingenic_usb_phy_exit(struct phy *phy)
>> struct ingenic_usb_phy *priv = phy_get_drvdata(phy);
>> 
>> clk_disable_unprepare(priv->clk);
>> - regulator_disable(priv->vcc_supply);
>> 
>> return 0;
>> }
>> 
>> base-commit: 8f56fdf3d8cb9f1dbdc93bf9ac816698aa6f70b7
>> -- 
>> 2.39.5
>> 
>> 
> 
> Reviewed-By: H. Nikolaus Schaller <hns@goldelico.com>



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
