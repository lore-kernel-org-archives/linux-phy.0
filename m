Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4327AEEB590
	for <linux-phy@archiver.kernel.org>; Wed, 13 Sep 2023 04:59:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cT7WXm7dJDg7jxw4EqusjnH+uYU+dtjnEHQ6JCp7f0Q=; b=HM8SfbBiXV2FsZ
	A/8ShTewdmMogbs1VWxPEngZWdfVdMi3l9beYMlWk03+CVTxzDKD+bPqG82LU/FpNwRbG9UqqbMk4
	2uEUnTc3p/SKDCr4f7Z+YBTPMi+u6gQnCwJLK0wM7ynSZj2ymuLCCWmty7mpIzMSP/Fyhpg3rgId+
	/5fGo3OkqBXWrCZh6wuyB2AMrMVgeEyzMwga6LIs0FfvbPkriPUHA3Mx9PKtTbh1RWbVbBNl9bv49
	o4XrHJ7MJSBHTsBxjahPOGZYDEZZ/XkNZt8R5AeXWnf/yOGMZ6rTuer4GnX8WIBueZozbA6EjXb72
	8wv5rYYtkjAen7XWHA7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qgHy9-004d2J-2U;
	Wed, 13 Sep 2023 04:59:17 +0000
Received: from muru.com ([72.249.23.125])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qgHy7-004d1x-0u
	for linux-phy@lists.infradead.org;
	Wed, 13 Sep 2023 04:59:16 +0000
Received: from localhost (localhost [127.0.0.1])
	by muru.com (Postfix) with ESMTPS id 7156C80FC;
	Wed, 13 Sep 2023 04:59:14 +0000 (UTC)
Date: Wed, 13 Sep 2023 07:59:13 +0300
From: Tony Lindgren <tony@atomide.com>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Ivaylo Dimitrov <ivo.g.dimitrov.75@gmail.com>,
	Merlijn Wajer <merlijn@wizzup.org>,
	Miaoqian Lin <linmq006@gmail.com>, Pavel Machek <pavel@ucw.cz>,
	linux-phy@lists.infradead.org,
	Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [PATCH 3/3] phy: mapphone-mdm6600: Fix pinctrl_pm handling for
 sleep pins
Message-ID: <20230913045913.GO5282@atomide.com>
References: <20230911035501.36706-1-tony@atomide.com>
 <20230911035501.36706-3-tony@atomide.com>
 <20230912151421.s2n6uztafg23ceu7@mercury.elektranox.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230912151421.s2n6uztafg23ceu7@mercury.elektranox.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230912_215915_358945_845F8788 
X-CRM114-Status: GOOD (  11.04  )
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

* Sebastian Reichel <sebastian.reichel@collabora.com> [230912 15:14]:
> Apparently phy_power_off is not called on device removal, so I
> understand the need to setup sleep pins in phy_mdm6600_device_power_off()
> in addition to the exsting setup in phy_mdm6600_power_off().
>
> But I'm a bit confused about the change required in probe(), since
> phy_mdm6600_power_on() selects the default state. I wouldn't expect
> any access before the phy is powered on? Anyways,

Maybe we should just set the sleep state in remove and leave it out of the
phy functions. If a separate state is needed for the phy_mdm6600_power_off(),
it could be the pinctrl idle state.

We need the reset pin in probe to get the modem started. The modem may
also be started in uart mode for firmware flashing depending on how the
gpio pins are set.

Regards,

Tony

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
