Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD7C1CFB441
	for <linux-phy@archiver.kernel.org>; Sun,  6 Oct 2024 21:34:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Xbj0IaFcbcYat+ZpVR9GlXsSBHKkLunQqj9ol82pzMw=; b=QbbLNzfbVaGn5+iqzLNs29+ekr
	JuQ0PIm0NBzYNZTRcCWI8015JeaFFiCUwc0pr/vBsoPJJK637pxj0CHScDOWWO7i8urAQalizs3uy
	InkXuZ8ngIPgjjAku58j6i4xWLCzWAEvAk7dSFEFnuNy532CtGFjsCHnj9hjvi1oYo+zPcfPwPmCu
	HWQCWBb2XjZbuWfXpshVStSXEJMXTZY/mUZzCfAMDSX3cq1YOVJrph9PrL2VZy2PEAGJYhKldOwX5
	hlfPZ7ojh04j18v7pgMRkGS6W2L7azW4iIKBFJiKP9aAs7UMfeZlNsP+GQ5YqZf1D5rpGDjaPf4ii
	j0GHtY2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sxYty-00000000fZL-1KPz;
	Sun, 06 Oct 2024 21:34:54 +0000
Received: from gate2.alliedtelesis.co.nz ([2001:df5:b000:5::4])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sxYsg-00000000fMj-3hpB
	for linux-phy@lists.infradead.org;
	Sun, 06 Oct 2024 21:33:36 +0000
Received: from svr-chch-seg1.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 94C4B2C0747;
	Mon,  7 Oct 2024 10:33:33 +1300 (NZDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
	s=mail181024; t=1728250413;
	bh=RLgcoCGXrw/qANG+m0mErZO+yxr21r1PFXSHRoM5tpY=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=cysJqF9F1ueOMj/sITsc6OTPBkZyXBNgpcp+Lp//s70QE/K8GZZu3DHhg8iAdV7TH
	 eYdzbgtcTiRsdYPTh4QxNbrwdjiiU/LbW1Md5hAGKuXoXENuPlguZ9iZ8wGwcxe4Go
	 DUZhVCfPcwW9bBpSLD/froxkT8Kg0raiKpoWH1Ndk9KH8rvRjqwc3QINLG9FCnV+7D
	 OZ1XZMSY4Cj411RrzmUYX77KKV1BVXaNOM7/40sTTDd+quc3IuABU1nGb0miENaLWx
	 CbbawkG7zPrnkcJ9t3/YMQfTu3a6TjAOLzr1QWI1YfqfKHNv+wKsdbfdSFTHjoHPzh
	 uLys4pk+2HbGA==
Received: from pat.atlnz.lc (Not Verified[10.32.16.33]) by svr-chch-seg1.atlnz.lc with Trustwave SEG (v8,2,6,11305)
	id <B6703022d0000>; Mon, 07 Oct 2024 10:33:33 +1300
Received: from [10.33.22.30] (chrisp-dl.ws.atlnz.lc [10.33.22.30])
	by pat.atlnz.lc (Postfix) with ESMTP id 8652F13ED6B;
	Mon,  7 Oct 2024 10:33:33 +1300 (NZDT)
Message-ID: <b63c3be8-fd6e-4b8d-ab68-c3921cccd035@alliedtelesis.co.nz>
Date: Mon, 7 Oct 2024 10:33:33 +1300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird Beta
Subject: Re: [PATCH 3/4] phy: Realtek Otto SerDes: include driver
To: Markus Stockhausen <markus.stockhausen@gmx.de>,
 linux-phy@lists.infradead.org
References: <20241004195712.1891488-1-markus.stockhausen@gmx.de>
 <20241004195712.1891488-4-markus.stockhausen@gmx.de>
Content-Language: en-US
From: Chris Packham <chris.packham@alliedtelesis.co.nz>
In-Reply-To: <20241004195712.1891488-4-markus.stockhausen@gmx.de>
X-SEG-SpamProfiler-Analysis: v=2.4 cv=Id0kWnqa c=1 sm=1 tr=0 ts=6703022d a=KLBiSEs5mFS1a/PbTCJxuA==:117 a=IkcTkHD0fZMA:10 a=DAUX931o1VcA:10 a=l77wTT52C20yTDP9rw8A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
X-SEG-SpamProfiler-Score: 0
x-atlnz-ls: pat
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241006_143335_115829_A686BF04 
X-CRM114-Status: GOOD (  13.10  )
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


On 5/10/24 08:56, Markus Stockhausen wrote:
> Make the driver available in the build system.

IMHO this should just be part of the previous patch.

> ---
>   drivers/phy/realtek/Kconfig  | 7 +++++++
>   drivers/phy/realtek/Makefile | 1 +
>   2 files changed, 8 insertions(+)
>
> diff --git a/drivers/phy/realtek/Kconfig b/drivers/phy/realtek/Kconfig
> index 75ac7e7c31ae..2c711016952d 100644
> --- a/drivers/phy/realtek/Kconfig
> +++ b/drivers/phy/realtek/Kconfig
> @@ -30,3 +30,10 @@ config PHY_RTK_RTD_USB3PHY
>   	  of the parameters.
>
>   endif # ARCH_REALTEK || COMPILE_TEST
> +
> +config PHY_REALTEK_OTTO_SERDES
> +	tristate "SerDes driver for the Realtek Otto platform"
> +	depends on OF
&& (MACH_REALTEK_RTL || COMPILE_TEST)
> +	select GENERIC_PHY
> +	help
> +	  Enable this for SerDes support in RTL83xx and RTL93xx switches.
> diff --git a/drivers/phy/realtek/Makefile b/drivers/phy/realtek/Makefile
> index ed7b47ff8a26..57e14961d851 100644
> --- a/drivers/phy/realtek/Makefile
> +++ b/drivers/phy/realtek/Makefile
> @@ -1,3 +1,4 @@
>   # SPDX-License-Identifier: GPL-2.0
>   obj-$(CONFIG_PHY_RTK_RTD_USB2PHY)	+= phy-rtk-usb2.o
>   obj-$(CONFIG_PHY_RTK_RTD_USB3PHY)	+= phy-rtk-usb3.o
> +obj-$(CONFIG_PHY_REALTEK_OTTO_SERDES)	+= phy-rtl-otto-serdes.o
> --
> 2.44.0
>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
