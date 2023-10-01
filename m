Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4329EE748F1
	for <linux-phy@archiver.kernel.org>; Sun,  1 Oct 2023 02:20:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ldL99kJSt6UEm34tksboD+QoMTgzKlLu77ned0PX7CI=; b=YkYIBXyRYl3DEJ
	QuPdkGBAw3JYAdR0Sa2XjPZc/969z4P6i1HXegyUmy0Y39UNtEEkCchlM7IZjwzTxS6tEcXvwUGl0
	2++MP7TqcJsGMwEpTzU5meGLqHWhMjJd771SOWC+IdVNi+RXJj+VJdzY8dfBTGYIi2x7NMLoUp1dL
	bTeviDUqzgTAasNYS7CViZq6z7UFn0DugiEZnleqbXb0wbiksyk9kKjUSuKPRDttWFN/MkUgg76OL
	CgTykqea88Muw4NsKxA7I/Fujhs5Ux//FsLfmocEhoTvsh+KqynSxtyjADh4G2YwmGE94NKweJWC4
	pRAk4ea5G82I+GCpK3iA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qmm4T-00ANp5-2Y;
	Sun, 01 Oct 2023 02:20:37 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qmm4S-00ANoe-0a;
	Sun, 01 Oct 2023 02:20:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
	In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=64FZBFm9QXLeaiqRuEoVGaE58ddNALR1GNC50CVRTEA=; b=CVwbcSdZreAZxeCYkfLtCDY8pI
	dUV/ED0NZY/U4uO/LCDVZeeZBAPyeBmZThaQTaoqVJYYYDxtK7k4zr0c8v0DjkxnB/FHQeDcR2Zbd
	hAKXVaLAewCUo+wpwBvikRlHdTLnIH5jtiAbBP8YnAGq/bAfaU6vRE7i3mpfTSfCTenX7OH5M45Bv
	lQj+I8psGj8qDu0nYvd3IG86sVl2Lkm6oLdovy00DvjD90Q9xou4c1/QmDGuxO0m27Pf+wrkYq1rQ
	rIhlRm71YSCJK86DyB+eeEYKQbXN/lhD2nQjEhLxKPzV8AXYZmW1NOR6//oXyMvp6ZjQO5VacdQUL
	PiVhqZIg==;
Received: from [2603:3004:644:9100::a64a]
	by casper.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
	id 1qmm4K-000iXd-6D; Sun, 01 Oct 2023 02:20:28 +0000
Message-ID: <b66c04cb-9576-4b8b-9e5e-4e5b37c2c092@infradead.org>
Date: Sat, 30 Sep 2023 19:20:21 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] media: sunxi: a83-mips-csi2: also select GENERIC_PHY
Content-Language: en-US
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: linux-kernel@vger.kernel.org, kernel test robot <lkp@intel.com>,
 Arnd Bergmann <arnd@arndb.de>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-media@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Samuel Holland <samuel@sholland.org>, linux-arm-kernel@lists.infradead.org,
 linux-sunxi@lists.linux.dev, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, linux-phy@lists.infradead.org
References: <20230927040438.5589-1-rdunlap@infradead.org>
 <ZRQIfC67fDmOUBNY@kekkonen.localdomain>
From: Randy Dunlap <rdunlap@infradead.org>
In-Reply-To: <ZRQIfC67fDmOUBNY@kekkonen.localdomain>
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



On 9/27/23 03:48, Sakari Ailus wrote:
> Hi Randy,
> 
> Thanks for the patch.
> 
> On Tue, Sep 26, 2023 at 09:04:38PM -0700, Randy Dunlap wrote:
>> When selecting GENERIC_PHY_MIPI_DPHY, also select GENERIC_PHY to
>> prevent kconfig warnings:
>>
>> WARNING: unmet direct dependencies detected for GENERIC_PHY_MIPI_DPHY
>>   Depends on [n]: GENERIC_PHY [=n]
>>   Selected by [y]:
>>   - VIDEO_SUN8I_A83T_MIPI_CSI2 [=y] && MEDIA_SUPPORT [=y] && MEDIA_PLATFORM_SUPPORT [=y] && MEDIA_PLATFORM_DRIVERS [=y] && V4L_PLATFORM_DRIVERS [=y] && VIDEO_DEV [=y] && (ARCH_SUNXI || COMPILE_TEST [=y]) && PM [=y] && COMMON_CLK [=y] && RESET_CONTROLLER [=y]
>>
>> Fixes: 94d7fd9692b5 ("media: sunxi: Depend on GENERIC_PHY_MIPI_DPHY")
>> Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
>> Reported-by: kernel test robot <lkp@intel.com>
>> Closes: lore.kernel.org/r/ZQ/WS8HC1A3F0Qn8@rli9-mobl
>> Cc: Arnd Bergmann <arnd@arndb.de>
>> Cc: Sakari Ailus <sakari.ailus@linux.intel.com>
>> Cc: Mauro Carvalho Chehab <mchehab@kernel.org>
>> Cc: linux-media@vger.kernel.org
>> Cc: Chen-Yu Tsai <wens@csie.org>
>> Cc: Jernej Skrabec <jernej.skrabec@gmail.com>
>> Cc: Samuel Holland <samuel@sholland.org>
>> Cc: linux-arm-kernel@lists.infradead.org
>> Cc: linux-sunxi@lists.linux.dev
>> ---
>>  drivers/media/platform/sunxi/sun8i-a83t-mipi-csi2/Kconfig |    1 +
>>  1 file changed, 1 insertion(+)
>>
>> diff -- a/drivers/media/platform/sunxi/sun8i-a83t-mipi-csi2/Kconfig b/drivers/media/platform/sunxi/sun8i-a83t-mipi-csi2/Kconfig
>> --- a/drivers/media/platform/sunxi/sun8i-a83t-mipi-csi2/Kconfig
>> +++ b/drivers/media/platform/sunxi/sun8i-a83t-mipi-csi2/Kconfig
>> @@ -8,6 +8,7 @@ config VIDEO_SUN8I_A83T_MIPI_CSI2
>>  	select VIDEO_V4L2_SUBDEV_API
>>  	select V4L2_FWNODE
>>  	select REGMAP_MMIO
>> +	select GENERIC_PHY
> 
> Could GENERIC_PHY_MIPI_DPHY select GENERIC_PHY instead of depending it?

Yes, I don't see why not.  Let's see what the PHY framework people have to say about it.

Vinod, Kishon, do you see any reason that GENERIC_PHY_MIPI_DPHY could not select
GENERIC_PHY instead of depending on it?


> There seem to be a few other drivers that appear to have the same issue.

Yes, I see 4 others that have the same issue.

>>  	select GENERIC_PHY_MIPI_DPHY
>>  	help
>>  	   Support for the Allwinner A83T MIPI CSI-2 controller and D-PHY.
> 

~Randy


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
