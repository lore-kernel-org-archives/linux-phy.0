Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E431DC433F5
	for <linux-phy@archiver.kernel.org>; Mon, 14 Mar 2022 10:52:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zjp7Y4yoxr9C4Xm21sqZb/TBG67Ik2jHW6+p3sOHhXs=; b=DiSLIkXzh967bo
	bB0pQ4gYYt9dmOdp2wy6q5wZa/X62QW6XUTZYeg6IIxJOhK6b8FqtFdQps7x+Sa1xvyVdxGhg4va8
	rCcaZxgNwmqL/P5Rnj8hNjzagZXil0xt5VcajrdVw2haVle2M0uGpRpbxy7ml6MJPqn2kptFTk72N
	buDtFfkSlzxPySwb+cZw1ktgJE2rVvgxt/ioXA0FN04bv9LKueJOa7rOO8fJaU43W1BOVKAmDtGBt
	RHyfYZ9/IQxcWuud14Dqv5FaBdJ3GQtRd+wQuWRuInfS03QIzgyT26YHARBz/O/obFuO4ekFuXbN1
	Hb24f/Otz5Ep1Qz/s3EA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nTiJr-0052qz-BJ; Mon, 14 Mar 2022 10:52:55 +0000
Received: from phobos.denx.de ([85.214.62.61])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nTiJf-0052p9-Ea; Mon, 14 Mar 2022 10:52:44 +0000
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: marex@denx.de)
 by phobos.denx.de (Postfix) with ESMTPSA id 9136280330;
 Mon, 14 Mar 2022 11:52:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
 s=phobos-20191101; t=1647255161;
 bh=5LJfyKl6PzxNG0htYRXW3sEniRHspsUvmRKFeP8A+L4=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=Mc4QGDcX2Ph1aWmW5mOzHh0xq00oV/UZafV+6F9dLv42bJ0/M6izmOGjkEIkoTM/o
 pns47sWzhuX8sqEnx0wXVZ34wrZYWMl6E5GnJd0HjcO06jD+N8/dxoArGg2pjJHaYK
 a0JOlKn8urxrF5ESUS+bxb+W+17i5p70ain6GIEfaDDmKt4UoAMQVCn7oOyxQh4C02
 e7vfPOcBTdmbJS8diKasFqVMAU/6TeauJOpfWaX7EpyerUM37bP4yanzcRfe9/ZXNv
 dBuSuwjd99bsekmuJrKu+SOaXSc9ALF3k+t2Mh03bk/GYNfdPEmxbDdgvdD+xGfMzO
 9CgwfDiJ42WcQ==
Message-ID: <49b1d398-c422-80f4-231e-a04776358871@denx.de>
Date: Mon, 14 Mar 2022 11:52:40 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.2
Subject: Re: [PATCH] phy: freescale: imx8m-pcie: Handle
 IMX8_PCIE_REFCLK_PAD_UNUSED
Content-Language: en-US
To: Hongxing Zhu <hongxing.zhu@nxp.com>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>
Cc: Fabio Estevam <festevam@denx.de>, Kishon Vijay Abraham I <kishon@ti.com>, 
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 dl-linux-imx <linux-imx@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
References: <20220312013812.169671-1-marex@denx.de>
 <AS8PR04MB86766F6033FF0FDAB1E0693B8C0F9@AS8PR04MB8676.eurprd04.prod.outlook.com>
 <7ebd66d1-0b16-9b6b-ff0a-4901f054217a@denx.de>
 <AS8PR04MB86760D239565D852334A95F28C0F9@AS8PR04MB8676.eurprd04.prod.outlook.com>
From: Marek Vasut <marex@denx.de>
In-Reply-To: <AS8PR04MB86760D239565D852334A95F28C0F9@AS8PR04MB8676.eurprd04.prod.outlook.com>
X-Virus-Scanned: clamav-milter 0.103.5 at phobos.denx.de
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220314_035243_676047_BA332563 
X-CRM114-Status: GOOD (  13.30  )
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

On 3/14/22 04:29, Hongxing Zhu wrote:

[...]

>>>> Signed-off-by: Marek Vasut <marex@denx.de>
>>> Hi Marek:
>>> Thanks for your patch.
>>> I assume that you had tested this IMX8_PCIE_REFCLK_PAD_UNUSED option.
>>
>> Yes
>>
>>> The CLK_N/P pads are not connected on the tested board, right?
>>
>> They are connected from MX8MP SoC to MiniPCIe slot.
>> There is no external clock source like on the EVK, the MX8MP internal PLL is
>> the clock source.
>>
> Got that, thanks.

btw. if you plan to resend the MX8MP PCIe patches (assuming they didn't 
get applied yet), CC me, I can provide a Tested-by .

>>> BTW, it's better to add the Fixes tag into the commit log.
>>
>> Do you think this should be considered a bugfix ?
> Emm...
> It's reasonable to consider it as new added.
> Okay, I'm fine with it. Thanks again for your patch.
> 
> Reviewed-by: Richard Zhu <hongxing.zhu@nxp.com>

Let's wait for others' opinion, I'm really unsure whether this is a 
Fixes: or not.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
