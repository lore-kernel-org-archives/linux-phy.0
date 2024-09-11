Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8CAABEE499C
	for <linux-phy@archiver.kernel.org>; Wed, 11 Sep 2024 18:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zcyHFW5RCQSkyTJhwVCkxD91577cEQF9G5IkdyjggDk=; b=lc5KUh58w02RTi
	Fzj4kvVjSrv4UpbkE66YTFaiDd2rBxre6UfgoizdpXcfkeP3Tv3UdLWATsuDKCSMyAOJsbBtQXWpU
	QYKqzdP7AF6E1uhU4Ua3b26i6phrZAkiKqLt00smkMeicFHcG/hhUXBre851ebGumkGdxdEkw94J6
	F9N1oBVJo7CbhsZStiWYYNBmmtSJWbn7Tj6MulwpU48JWmM9S/mvVrUzREtxr7rygxK3JfkWSKWUq
	zdIW+AiWch7BW6A/zK7ocIgqteFZoaWnFgBum3ekh+pigIa4KopjKdZ/6hvd2IBK+UwPhgf2ND7fQ
	ADqEhwFo5Wg5At06WFng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soS3J-0000000AeCu-0nV7;
	Wed, 11 Sep 2024 18:26:53 +0000
Received: from mail.fris.de ([2a01:4f8:c2c:390b::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soS3G-0000000AeCM-1rvv
	for linux-phy@lists.infradead.org;
	Wed, 11 Sep 2024 18:26:51 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 83CD9BFB39;
	Wed, 11 Sep 2024 20:26:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fris.de; s=dkim;
	t=1726079208; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:content-language:in-reply-to:references;
	bh=c7s+a1DXGSnU83uOS1h87JsKv2O/+rk28GPS9hHpHGo=;
	b=WazDwtuMX9Law/jw92lkZ9NWsct2Z1n4yKrMNadHBH2hJI08rpUE67JpGCdhEreGhdWUbQ
	BmGL+6JwEyiHZlxdw4RsEEe7mM9fK5H7ygjjfL3/no2sxIZ7nIfD6Z40ZNp7oKqeRZ+OXw
	lN0FgjGgBl92YbACFdUJyJy0SKt7nYhuTxH96mDnwgLcSCsAqPlZCU5D7Vy4ZNRf3VIfHc
	nGARRFLf8PVeCt+9ydqf0qGc+5JLkAPmzbaMoLlvbsnK+AICcyvZiPz2HJMe/dP7qcmQfO
	QQ5KKZ9n1L3zmTKLbyn/ZCMuMVz3qdgL6nghYo4h0YczWFU/Ir0Nm/eLWz/dCA==
Message-ID: <440cf92a-052f-4a03-91a8-2405c902aa3e@fris.de>
Date: Wed, 11 Sep 2024 20:26:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/2] Extending PLL LUT for i.MX8MP Samsung HDMI PHY
To: Dominique Martinet <dominique.martinet@atmark-techno.com>,
 Adam Ford <aford173@gmail.com>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>,
 Lucas Stach <l.stach@pengutronix.de>, Marco Felsch
 <m.felsch@pengutronix.de>, =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?=
 <u.kleine-koenig@pengutronix.de>
References: <20240910181544.214797-1-frieder@fris.de>
 <ZuDjAwPxHeJTvXAp@atmark-techno.com>
 <CAHCN7xJD8jsqyZX1JkWxrA84XkZ8YYN19hXW6KVe+jkOFugqrw@mail.gmail.com>
 <ZuDyBQ1I2vcGzAqX@atmark-techno.com>
Content-Language: en-GB, de-DE
From: Frieder Schrempf <frieder@fris.de>
In-Reply-To: <ZuDyBQ1I2vcGzAqX@atmark-techno.com>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240911_112650_664009_932D7766 
X-CRM114-Status: GOOD (  21.46  )
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

On 11.09.24 03:27, Dominique Martinet wrote:
> Adam Ford wrote on Tue, Sep 10, 2024 at 08:16:04PM -0500:
>>> That aside, I see no problem with this, just one meta-comment about
>>> adding a link to the script in an external repo: I see some other
>>> drivers have python scripts in their trees e.g.
>>> drivers/comedi/drivers/ni_routing/tools/*py
>>> drivers/gpu/drm/ci/xfails/update-xfails.py
>>> drivers/gpu/drm/msm/registers/gen_header.py
>>>
>>> would it make sense to commit the script here instead of linking to a
>>> repo that might be lost in the future?
>>>
>>> I'm not quite sure what policy the linux repo has here, so leaving that
>>> as an open question.
>>
>> Is there a reason this couldn't be coded in C and used to expand my
>> integer calculator series?  With that, we could drop the lookup table.
> 
> Quoting a previous mail from Frieder:
>> I will clean things up a bit and then share what I have. I hope that this
>> allows anyone to calculate parameters for their non-standard displays if
>> required.
>>
>> If someone feels extra motivated they could try to calculate the fractional
>> parameters at runtime. However I'm not sure that this is feasible. The
>> numerical computation of a large number of parameters is quite heavy and it's
>> probably not easy to strip the algorithm down to something that can be run on
>> the target without too much overhead.
> 
> Trying a random frequency with the algorithm he has implemented it
> easily takes 10 seconds to run on my imx8mp board, so even if we asssume
> C is 3-4 times faster I think the current algorithm is too slow for
> runtime and it makes more sense to extended the LUT to me (as long as
> the values can be & are checked at least once, which we now can)
> 
> The current algorithm brute-forces its way through so there could be a
> better way of computing the fractional part of the divider, but I'm not
> sure it's worth the effort at this point; I guess it's a good
> intellectual challenge though so someone might do it in the future.

Second this. My algorithm is far from optimal and there might be more 
elegant solutions. If anyone feels like creating something that can be 
added to the driver that would be interesting and welcome for sure.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
