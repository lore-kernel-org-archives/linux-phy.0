Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09AAEC4167B
	for <linux-phy@archiver.kernel.org>; Sun,  1 Jan 2023 17:35:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=d8uvZgzjisVgcrC2bqTI4eJFLAdb5n3B4G0GtSbY/4Y=; b=2jNK1Qw0lykc2guK6uL8VR0i8+
	MYL+wYIs0MRHWySMj+GNpvlzbmm5sEeaXO9tJBy0MQdqUAzGclxhEvqOEF+/ad6T2nAwR8/VUHoz8
	9NQy+SKBOPWUWdRRqaDKXhm+2YkckD7tEK9Wo2AtJBOIPoazQWUyT3Sk6pKRvPkaqIxFWOaYEbmOX
	MBFmQgCWIfhGpqeMZW8FnDgfVQnyWfuUpKmm9BbXDbytQ35n1LTrSK9YqGL0k35XEfeMeW+QkcQ2U
	VI3p8dZSmiWi069fz9qU8WJES71N5hMkmP0p/1ewKPVaxLzFPT66hjRDkf736erUcheLFlDK2Qjaw
	UZaUKCyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pC2Ez-003HkB-4Y; Sun, 01 Jan 2023 17:35:21 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pC2Ei-003HZM-3J; Sun, 01 Jan 2023 17:35:07 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id D122460DB5;
	Sun,  1 Jan 2023 17:34:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0D138C433EF;
	Sun,  1 Jan 2023 17:34:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672594496;
	bh=0/el2/T4xzlbCGvHgu+q4C1W53UanMaCbjlDHFu8n6U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=V00Iw1yW7RG+TP19hINITpmArgkSsJkF3hIkQaSADgYnbGt2VhBz7oZEOk+lzDgZE
	 MlUz0G1ZWH/yZTpi+ysh6eD/ynvq7QViTHKxc9+rSX/4qekX1nvK4Bpof6zK80KC3z
	 OEY0mjAT3zkuluJXCnCY/08bL+KsCkIicZsbjj/IigbYO749qH/zUb0SwNMplMKXGT
	 IUuy72OqnZlhggOYrxbMVW/xIoAR3yy0fpepzGDcYFf4mv/Wd5ZfzmgFLrEcLJgrnw
	 ehaHgbhx152A3HqAzXEZf4ivT5eCeAjnzbTCJWP7PhGCmu7WNrEACuWJ1a+ToXIE2H
	 puNOtQy41RFuw==
Date: Sun, 1 Jan 2023 12:34:54 -0500
From: Sasha Levin <sashal@kernel.org>
To: Andre Przywara <andre.przywara@arm.com>
Cc: Samuel Holland <samuel@sholland.org>, stable@vger.kernel.org,
	Vinod Koul <vkoul@kernel.org>, kishon@kernel.org, wens@csie.org,
	jernej.skrabec@gmail.com, wsa+renesas@sang-engineering.com,
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [PATCH AUTOSEL 5.10 1/7] phy: sun4i-usb: Add support for the
 H616 USB PHY
Message-ID: <Y7HEPphR2cZePsBz@sashalap>
References: <20221227203512.1214527-1-sashal@kernel.org>
 <530561e9-9ef8-7c8c-8e73-838c86a92266@sholland.org>
 <20221227222330.5ebdf780@slackpad.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221227222330.5ebdf780@slackpad.lan>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230101_093505_757487_E1EBA1F8 
X-CRM114-Status: GOOD (  30.15  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Tue, Dec 27, 2022 at 10:23:30PM +0000, Andre Przywara wrote:
>On Tue, 27 Dec 2022 15:58:16 -0600
>Samuel Holland <samuel@sholland.org> wrote:
>
>> Hi Sasha,
>>
>> On 12/27/22 14:35, Sasha Levin wrote:
>> > From: Andre Przywara <andre.przywara@arm.com>
>> >
>> > [ Upstream commit 0f607406525d25019dd9c498bcc0b42734fc59d5 ]
>> >
>> > The USB PHY used in the Allwinner H616 SoC inherits some traits from its
>> > various predecessors: it has four full PHYs like the H3, needs some
>> > extra bits to be set like the H6, and puts SIDDQ on a different bit like
>> > the A100. Plus it needs this weird PHY2 quirk.
>> >
>> > Name all those properties in a new config struct and assign a new
>> > compatible name to it.
>> >
>> > Signed-off-by: Andre Przywara <andre.przywara@arm.com>
>> > Reviewed-by: Samuel Holland <samuel@sholland.org>
>> > Link: https://lore.kernel.org/r/20221031111358.3387297-5-andre.przywara@arm.com
>> > Signed-off-by: Vinod Koul <vkoul@kernel.org>
>> > Signed-off-by: Sasha Levin <sashal@kernel.org>
>> > ---
>> >  drivers/phy/allwinner/phy-sun4i-usb.c | 12 ++++++++++++
>> >  1 file changed, 12 insertions(+)
>> >
>> > diff --git a/drivers/phy/allwinner/phy-sun4i-usb.c b/drivers/phy/allwinner/phy-sun4i-usb.c
>> > index 651d5e2a25ce..230987e55ece 100644
>> > --- a/drivers/phy/allwinner/phy-sun4i-usb.c
>> > +++ b/drivers/phy/allwinner/phy-sun4i-usb.c
>> > @@ -974,6 +974,17 @@ static const struct sun4i_usb_phy_cfg sun50i_h6_cfg = {
>> >  	.missing_phys = BIT(1) | BIT(2),
>> >  };
>> >
>> > +static const struct sun4i_usb_phy_cfg sun50i_h616_cfg = {
>> > +	.num_phys = 4,
>> > +	.type = sun50i_h6_phy,
>> > +	.disc_thresh = 3,
>> > +	.phyctl_offset = REG_PHYCTL_A33,
>> > +	.dedicated_clocks = true,
>> > +	.phy0_dual_route = true,
>> > +	.hci_phy_ctl_clear = PHY_CTL_SIDDQ,
>> > +	.needs_phy2_siddq = true,
>>
>> This will fail to compile without b45c6d80325b ("phy: sun4i-usb:
>> Introduce port2 SIDDQ quirk"). However, like Andre mentioned in
>> reference to the devicetree updates[1], we were not expecting any of
>> these patches to be backported. Since you already dropped the DT
>> portion, there is no need to bother with these two patches either.
>
>Well, definitely not for 5.4 and 5.10, since the essential pinctrl and
>clock patches for the H616 were only added in 5.12, so there is no
>point in having USB support.
>
>I don't know how useful it is for 6.0, but having both patches in 6.1
>would make some sense, since it's an LTS kernel. The H616 SoC became
>usable in 6.0, with the USB patches being delayed back then. And it's
>only those two that are missing from enabling USB support, IIRC.
>The DT part is not really relevant, since you can always use U-Boot's
>DT (recommended) or the DT from any newer kernel.
>
>So from an user's perspective, it would be very helpful to just have:
>- [PATCH AUTOSEL 6.1 12/28]
>- [PATCH AUTOSEL 6.1 13/28]
>Personally I would support this, since it makes all H616 based devices
>much more usable with next year's distribution kernels.
>
>I don't know if this fulfils the stable kernel rules, though, since
>strictly speaking they don't fix anything, but add (USB) support to a
>new SoC. Then again they are little risk, since most of the code is
>guarded by H616 filters, so wouldn't be used by other SoCs.

Quirks and new device ids are accepted in the stable trees. I'll leave
those two patches on 6.1. Thanks!

-- 
Thanks,
Sasha

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
