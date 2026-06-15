Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0830CD98DA
	for <linux-phy@archiver.kernel.org>; Mon, 15 Jun 2026 11:44:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=levRRnjPbQ2J6nAbvdH0MmFsxksK9qMg0D8QmH0D1dY=; b=VspAlWHLUwoIdU
	Uq89wGLHbl6EeWP6/4s0E6lKs4GYYqfw0Uy7qu436xbD9/fhM5Q2M7RrZLqegA54J2rvrpV1oMWie
	tvZl7NlZ+o0Es89qIswTIsKWcL/N5qjj0iliUhwxYo70OlIeXo/TsbySumH3Hx6DSttI/6VReLtzw
	m/pN8EjV/Hkq2iCkKRSSRYlyBCL5hXU3fgw3U2QPXhuX5KOs8gyj6bA0rwQO8wPH8RnfhjQZT7wQe
	H8ld0cJ6mUpX8/F6D5x8/NDE22OgDS1cWPL204zxMVc8xoCGPYS7N1mOJLMlzifE0G5TxZRYMWnL+
	5SAO5bzbIe32WC6dxpLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ5jo-0000000E7DD-2ohe;
	Mon, 15 Jun 2026 11:44:20 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ5jn-0000000E7D4-3KXb
	for linux-phy@lists.infradead.org;
	Mon, 15 Jun 2026 11:44:19 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 127F1432E9;
	Mon, 15 Jun 2026 11:44:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7385B1F000E9;
	Mon, 15 Jun 2026 11:44:15 +0000 (UTC)
Message-ID: <75976eb6-5837-4229-9faa-c77e058d1cba@tuxon.dev>
Date: Mon, 15 Jun 2026 14:44:13 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 09/11] phy: renesas: phy-rcar-gen3-usb2: Fix devm action
 registration for disabled VBUS regulator
To: Biju Das <biju.das.jz@bp.renesas.com>, "biju.das.au"
 <biju.das.au@gmail.com>, Yoshihiro Shimoda
 <yoshihiro.shimoda.uh@renesas.com>, Vinod Koul <vkoul@kernel.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 "magnus.damm" <magnus.damm@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20260612143048.317907-1-biju.das.jz@bp.renesas.com>
 <20260612143048.317907-10-biju.das.jz@bp.renesas.com>
 <2b794049-0c44-4390-a6cd-e5bde5c5f3ca@tuxon.dev>
 <TY3PR01MB113466284D6307E1967286AC486E62@TY3PR01MB11346.jpnprd01.prod.outlook.com>
Content-Language: en-US
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <TY3PR01MB113466284D6307E1967286AC486E62@TY3PR01MB11346.jpnprd01.prod.outlook.com>
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



On 6/15/26 13:22, Biju Das wrote:
> Hi Claudiu,
> 
>> -----Original Message-----
>> From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
>> Sent: 15 June 2026 10:37
>> Subject: Re: [PATCH 09/11] phy: renesas: phy-rcar-gen3-usb2: Fix devm action registration for disabled
>> VBUS regulator
>>
>> Hi, Biju,
>>
>> On 6/12/26 17:30, Biju wrote:
>>> From: Biju Das <biju.das.jz@bp.renesas.com>
>>>
>>> devm_regulator_get_exclusive() initialises the regulator with
>>> enable_count = 1, requiring the consumer to disable it before release.
>>>
>>> Previously, the devm disable action was only registered when the
>>> regulator was explicitly enabled, causing the cleanup path to skip
>>> decrementing enable_count on device removal when the regulator was
>>> left disabled.
>>>
>>> Fix this by always registering the devm disable action when the
>>> regulator is enabled (checked via regulator_is_enabled()), covering
>>> both the explicitly-enabled case and the initial state set by
>>> devm_regulator_get_exclusive().
>>>
>>> This fixes WARN_ON enable count during regulator release.
>>>
>>> Fixes: 24843404efe4 ("phy: renesas: phy-rcar-gen3-usb2: Control VBUS
>>> for RZ/G2L SoCs")
>>> Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
>>
>> The approach in this patch don't solve the problem, at least on RZ/G3S. See [1] for logs.
>>
>> I applied this patch on next-20260610:
>>
>> git log --oneline -2
>> afe09f11d549 (HEAD) phy: renesas: phy-rcar-gen3-usb2: Fix devm action registration for disabled VBUS
>> regulator
>> abe651837cb3 (tag: next-20260610, linux-next/master) Add linux-next specific files for 20260610
>>
>> [1]
>> https://github.com/claudiubeznea/logs/blob/2f1bab20407dfe6031385819ffeabfc4eac772bd/logs
> 
> I have tested only with RZ/G3L host and I don't see the issue.
> How can the issue be reproduced? It could be related to RZ/G3S.

It's reproducible with this patch on G2L as well, please see 
https://github.com/claudiubeznea/logs/blob/0601044903b5ae714592db9770bc4ed31fd8bf84/logs.

> I have executed the following tests and don't see any issue.
> Can you please try the same tests on RZ/G3S?

Try stressing it a bit, e.g. the following command trigger it on both G3S and G2L:

cnt=300; while [ $cnt -ge 0 ]; do echo 11c40000.usbphy-ctrl > unbind ; echo 
11c40000.usbphy-ctrl > bind ; cnt=$((cnt-1)); done

Same command could be executed for other USB drivers.

> Is unbind/bind ever worked on RZ?G3S previously?

In the same way it works on G2L: functionality is OK, these stack traces are 
displayed as on any other RZ/G2L based SoCs.

Thank you,
Claudiu


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
