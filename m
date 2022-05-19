Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F3E1AC433EF
	for <linux-phy@archiver.kernel.org>; Thu, 19 May 2022 00:55:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+rQeL/FGA/u0Y8Cx5RaEyt05PTalOSdQZm4Ap5YaQvY=; b=hNeER2LF1yOzQ3
	C75NFBl5HJXOAAngQlX/U+M6kWZj+x03mthA+9M5kgJWTGm73J38ZOFf21bG72TqEZM/2TC3cDwWK
	pWmh8Jy45UWFo7SIuArqb8iBk/ZLSfqeQuN+0BBgJweFuvqwXUhoXcWReC1EJEinE84+j3syFXevz
	PT2oJV+o0HkUbNdtOky68iX6UByJe9RSX2Aa/wlIKDlkEk/GqTQJFXvhRojoRzOwtRatMwukAyUfT
	ClPs1Doi1eFeP/V1R+q7wlAJ2dTloT1H84+9n2iTV0A9+FGocCZTVhLLVlwOdc5EA8/2n9y5JZTvW
	HJD/7Lhi2hd2x1MJre6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nrURn-004XHn-Cv; Thu, 19 May 2022 00:55:23 +0000
Received: from phobos.denx.de ([2a01:238:438b:c500:173d:9f52:ddab:ee01])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nrURd-004XFQ-72; Thu, 19 May 2022 00:55:14 +0000
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: marex@denx.de)
 by phobos.denx.de (Postfix) with ESMTPSA id F0DC882132;
 Thu, 19 May 2022 02:55:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
 s=phobos-20191101; t=1652921706;
 bh=/QZjgRKxfyjaHmadvRByCwL27zyfogbuKhHybXiWOOA=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=WuHPOka1PDSvt6XeelfLS1m0zrj6w++0c8MyqPifzyjaf2thS3TA+xynFYyo/SHNb
 YuN6+B03S6aJ/m63qdjrgCKKKWWlltepQFVensdP1hugCeqOlFsV6xvCA2Y1vZx5an
 YFQdGKth76YFMVSvPRrJ6mpmc6Ir+cfkLvgNJqoZYph1oRQqndk6Iicx5bJRXLbZoz
 MtLdBEvamYrs36hYdeKj3V1fh8Ns9AW/LCUgiOgKlD6h/o4qRT16FzJhpzUUc/4NuW
 Q8XbzogPcO9UaW5CjJQUyQf5nyRwBz8PhVmw9Sm46YnsX6PNelcrqWXZDLDCdozpa5
 sNDF4zXwBYUcg==
Message-ID: <85b6a706-79ab-2e50-2549-ce2d70ff8eb2@denx.de>
Date: Thu, 19 May 2022 02:55:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: (EXT) [PATCH v0.5 0/9] i.MX8MP HDMI support
Content-Language: en-US
To: Alexander Stein <alexander.stein@ew.tq-group.com>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Lucas Stach <l.stach@pengutronix.de>
Cc: Shawn Guo <shawnguo@kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 NXP Linux Team <linux-imx@nxp.com>, patchwork-lst@pengutronix.de,
 Sandor Yu <Sandor.yu@nxp.com>, linux-phy@lists.infradead.org,
 Philipp Zabel <p.zabel@pengutronix.de>, Robert Foss
 <robert.foss@linaro.org>, Andrzej Hajda <andrzej.hajda@intel.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
References: <20220506181034.2001548-1-l.stach@pengutronix.de>
 <2112379.Mh6RI2rZIc@steina-w>
From: Marek Vasut <marex@denx.de>
In-Reply-To: <2112379.Mh6RI2rZIc@steina-w>
X-Virus-Scanned: clamav-milter 0.103.5 at phobos.denx.de
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220518_175513_436158_B89D799F 
X-CRM114-Status: GOOD (  18.52  )
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

On 5/9/22 11:44, Alexander Stein wrote:
> Hi Lucas,
> 
> Am Freitag, 6. Mai 2022, 20:10:25 CEST schrieb Lucas Stach:
>> second round of the i.MX8MP HDMI work. Still not split up into proper
>> parts for merging through the various trees this needs to go into, but
>> should make it easy for people to test.
>>
>> I've worked in the feedback I got from the last round, including fixing
>> the system hang that could happen when the drivers were built as modules.
>>
>> Series is based on linux-next/master, as there are some prerequisite
>> patches in both the drm and imx tree already. The last patch from [1]
>> and the patches from [2] need to be applied. Please note that this series
>> expects the sync polarity from the LCDIF to be set according to the
>> comments I made in [2]. Please test and provide feedback.
> 
> Thanks for the 2nd round of HDMI support patches. Sorry I wasn't able to reply
> to your questions, but the PLL locking seems to be gone on my system.
> 
> I still get the error
>> imx-lcdif 32fc6000.display-controller: Unknown media bus format 0x200f
> 
> To answer the other question on the last patchset
>> Do have a 4k HDMI display connected that wants to do YUV input? That's
>> something I have to admit I didn't test yet and would be likely to
>> cause this bus format selection.
> 
> This is a FullHD HDMI monitor, ASUS PB238Q. Apparently the color format is
> YCBCR422. From what I can see is that
> dw_hdmi_bridge_atomic_get_output_bus_fmts() adds MEDIA_BUS_FMT_UYVY8_1X16
> (0x200f) to the output formats. This is then passed to

Try LCDIFv3 v3 patchset I just posted, that should work then.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
