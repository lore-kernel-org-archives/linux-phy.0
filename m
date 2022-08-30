Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92BD5ECAAA1
	for <linux-phy@archiver.kernel.org>; Tue, 30 Aug 2022 07:15:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bIbLdkG8WFfoSw8CsIrCZUymcuhjQfPT1CtBmpYIiLs=; b=WM8p3SvRH2tvrp
	BiLb4JL5ZZpg9FNhkVMwLaMXgKQKc31RH8KGAU38kKQ7N3obmBdRt/dY+EpVhp8dw0gz/QyrgeSVv
	XKKUz0K/I6sLCbZM3iv6bbzGm/73rda1Ry6HRQSNPJ+e+oHbZOEyPPg7bWrQLZQ/rM7s7LVYKjYve
	My7LqUb1/UnBQMwTafmINvIPAMFCGZSTxwr5nlOhVgyx05w5jvQnoGsGU08HG4yYEsTBwRoXPfPJE
	mtyR+UvszesBdGzf10Dz4/XPUgxZkTngVc1WXp/U8lCtR4oLdIAYfucWK2ZDR06lNAuadKdL4NL4c
	p6Pg3PSMM4+F7KJ4KgAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSvTZ-00EigQ-OA; Tue, 30 Aug 2022 07:15:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSvTW-00Eici-3Q
	for linux-phy@lists.infradead.org; Tue, 30 Aug 2022 07:15:56 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1oSvTF-0007FZ-08; Tue, 30 Aug 2022 09:15:37 +0200
Message-ID: <d3625367-9f7a-c864-7908-0c819bf3f496@pengutronix.de>
Date: Tue, 30 Aug 2022 09:15:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH v1 0/2] Fix the wrong order of phy callbacks
Content-Language: en-US
To: Hongxing Zhu <hongxing.zhu@nxp.com>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>,
 "bhelgaas@google.com" <bhelgaas@google.com>,
 "lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>, "kishon@ti.com"
 <kishon@ti.com>
Cc: "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
References: <1661173856-1192-1-git-send-email-hongxing.zhu@nxp.com>
 <e6d5f688-f4c3-6094-91f6-a160b601c07d@pengutronix.de>
 <AS8PR04MB86767CFA73F8C639EDD16A298C799@AS8PR04MB8676.eurprd04.prod.outlook.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <AS8PR04MB86767CFA73F8C639EDD16A298C799@AS8PR04MB8676.eurprd04.prod.outlook.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_001554_170991_5325E082 
X-CRM114-Status: GOOD (  17.28  )
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

Hello Richard,

On 30.08.22 05:47, Hongxing Zhu wrote:
>>> [PATCH v1 1/2] PCI: imx6: Fix the wrong order of phy_init() and [PATCH
>>> v1 2/2] phy: freescale: imx8m-pcie: Fix the wrong order of
>>
>> This introduces an intermittent breakage. Can you squash?
> 
> Hi Ahmad:
> Thanks for your comments.
> Do you mean to squash this fix to the preview series?
> I'm afraid that it's not easy to do that.
> Because there are a lot of pci-imx6 code changes after 
> commit: 1aa97b002258 ("phy: freescale: pcie: Initialize the imx8 pcie standalone phy driver").

The way I understand it, if a bisect ends up between your two patches, i.MX8M
PCIe will be broken, whereas it worked before. I thus wonder if we shouldn't
instead squash this series here into a single patch.

Cheers,
Ahmad


> 
> Best Regards
> Richard Zhu
>>
>>>
>>>
>>
>>
>> --
>> Pengutronix e.K.                           |
>> |
>> Steuerwalder Str. 21                       |
>> https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fwww.pe
>> ngutronix.de%2F&amp;data=05%7C01%7Chongxing.zhu%40nxp.com%7C3277
>> 61bac5b9407d977008da89886b15%7C686ea1d3bc2b4c6fa92cd99c5c30163
>> 5%7C0%7C0%7C637973516254656985%7CUnknown%7CTWFpbGZsb3d8eyJ
>> WIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7
>> C3000%7C%7C%7C&amp;sdata=hasOtX77%2Fea5yLbV8C7wOfdZStF5erHOL58
>> Zf6ZZbo4%3D&amp;reserved=0  |
>> 31137 Hildesheim, Germany                  | Phone:
>> +49-5121-206917-0    |
>> Amtsgericht Hildesheim, HRA 2686           | Fax:
>> +49-5121-206917-5555 |


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
