Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3AE9FCD98DA
	for <linux-phy@archiver.kernel.org>; Tue, 16 Jun 2026 08:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O698llW/IIkcmemfHDKfHn+i/yIQLDcFjtrNhBOhYZA=; b=PASmpCgVUiKBI6
	uaa4Mi4gSgN/CPIsV/b+yDtevGqhzfM/PL3XVmbmUuqL8kb1opZ9rW2fV7b4r0pv27rOnD9USJtT6
	WKn3MJg7TAZ94BVRB9MAErO9qnnFgbmracBHM9h59gy2XGZVI5nd4DH5zgsV39iWdXxstxTsk0sgJ
	zGY5VW9zn9bR6GslG1rfRA4N+SJ12d01GQU4mrG8hIp9QmQshxhY6KjYFhOQtNpNQZVMJtUOH2Z0y
	D8TAyFans2RGppnYJkw9GkPX6CbHVAL88cr3V8xqCe00DmFETTLN7+Qem6DZ9QhVr7TZZ3stadkt0
	33dvDCFyAIOIsEroSG+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZP9h-0000000FS2O-3Oda;
	Tue, 16 Jun 2026 08:28:21 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZP9f-0000000FS1y-3ySD
	for linux-phy@lists.infradead.org;
	Tue, 16 Jun 2026 08:28:20 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 01C25600AB;
	Tue, 16 Jun 2026 08:28:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 506F51F00A3A;
	Tue, 16 Jun 2026 08:28:14 +0000 (UTC)
Message-ID: <c49cce1a-5de3-4741-b49a-0fdef9dce9e5@tuxon.dev>
Date: Tue, 16 Jun 2026 11:28:12 +0300
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
 Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 stable <stable@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <20260612143048.317907-1-biju.das.jz@bp.renesas.com>
 <20260612143048.317907-10-biju.das.jz@bp.renesas.com>
 <2b794049-0c44-4390-a6cd-e5bde5c5f3ca@tuxon.dev>
 <TY3PR01MB113460C85EEF713331411FBEC86E62@TY3PR01MB11346.jpnprd01.prod.outlook.com>
Content-Language: en-US
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <TY3PR01MB113460C85EEF713331411FBEC86E62@TY3PR01MB11346.jpnprd01.prod.outlook.com>
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

Hi, Biju,

On 6/15/26 15:42, Biju Das wrote:
> Hi Claudiu,
> 
> + stable <stable@kernel.org>
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
> This issue is introduced by the commit
> 
> eb9ac779830b223584 ("usb: renesas_usbhs: Fix synchronous external abort on unbind")

Indeed, nice catch. I reverted this commit (just for checking the patch you 
proposed) and and now it looks good on RZ/G2L. Code from commit eb9ac779830b 
("usb: renesas_usbhs: Fix synchronous external abort on unbind") will have to be 
adjusted.

Thank you for investigation,
Claudiu

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
