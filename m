Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E407DCA9ED0
	for <linux-phy@archiver.kernel.org>; Mon, 12 Oct 2026 18:26:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:
	Subject:Cc:To:From:Date:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H6a1c7wlH0e95+j/1vR2g9QA+vKXClbd4P6E+aQ0TqA=; b=JOllH7pAXhw+YR
	7SjJtXU5NA6e5WGw0BiU9Yae7EYdU+VnGGYMuu5NOmtqx/aBznhS5uMOJDLla8nJxJsOqEacQ474+
	s2PWb0XESZd2Lls3QAZjr7Px99kKl45SMKIuiECWAWdn0NHAXf7Ws/Qx59yPTM/TS48wIHOLA/KK0
	nES0KRCnfufczpxk1Ja6ZzplNdAzRiICAPake0tOLxwiCm+qEeg7vRKhhO2TjoXOBiW5Rh2DWVra+
	xlMzzFN6nkI/xldPdgCJ4Jwejfb+t00BZOeqhmHse5wenITV55FHIQlCiMPQMxZAJ4TOSnJ9t8aGN
	vjZpBNg2OXd5bg3UL0Yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGKio-0000000BE8x-2VnJ;
	Mon, 12 Oct 2026 18:26:02 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGKim-0000000BE8J-07dr
	for linux-phy@lists.infradead.org;
	Mon, 12 Oct 2026 18:26:01 +0000
Received: from mail01.layka.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id EB3AE80BA1;
	Mon, 12 Oct 2026 20:25:57 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YFduJ8gHuAow; Mon, 12 Oct 2026 20:25:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1791829557; bh=KYwGODAjDP0sASE+8WP2R90caRCtyUktTX4vFh6LvhY=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=BhkWXroaqx4Hq82xv9wyvpw6p0UIaVdCEZuau+OzpggPIyC62W3PKocdyyWHJTUk+
	 FkVBbqYuXbPbhxuWRNoDJFggQ8FVUedWXXqrspPyybDvkdS3/gZZlGoKgwvnVSl5dj
	 a39xrKE3av3EDUSiBXWpTuWuctz/sryRmTp7W4ktJMtQd18CjD8MxEsOjFPHtMFrUo
	 gcysCPYH6un+SqxUOx0jV8ZsmzjXi6Zw+3DRmZu6ft0hiWmWZTnNJw09rFUZtvfB2i
	 0qv7DypJ6LXR+qzRrZnF6Kn1CEf/fMp6czZZWSe8h04a91vCcDwPtKQMMC6InY2LNN
	 oif3H/5x3V+Iw==
MIME-Version: 1.0
Date: Mon, 12 Oct 2026 18:25:56 +0000
From: Rustam Adilov <adilov@disroot.org>
To: sashiko-reviews@lists.linux.dev
Cc: neil.armstrong@linaro.org, olteanv@gmail.com,
 linux-phy@lists.infradead.org, vkoul@kernel.org
Subject: Re: [PATCH v8 5/6] phy: realtek: usb2: add support for RTL9607C USB2
 PHY
In-Reply-To: <sashiko-outbox-168528@kernel.org>
References: <20261012173739.36377-1-adilov@disroot.org>
 <20261012173739.36377-6-adilov@disroot.org>
 <sashiko-outbox-168528@kernel.org>
Message-ID: <f48943049c87c233f2f6f3a1a156cacb@disroot.org>
X-Sender: adilov@disroot.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261012_112600_300882_0C819F4A 
X-CRM114-Status: GOOD (  17.76  )
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

On 2026-10-12 18:17, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 1 potential issue(s) to consider:
> - [High] phy: missing NULL check for of_iomap leads to dereference
> --
> 
> commit ab09dd4def3f2215950726cb780ea645be439c3a
> Author: Rustam Adilov <adilov@disroot.org>
> 
> phy: realtek: usb2: add support for RTL9607C USB2 PHY
> 
> Add support for the usb2 phy of RTL9607C series based SoCs. Add the macros
> and phy config struct for rtl9607. RTL9607C requires to clear a force host
> disconnect bit in the specific register before proceeding with phy
> parameter writes.
> 
>> diff --git a/drivers/phy/realtek/phy-rtk-usb2.c b/drivers/phy/realtek/phy-rtk-usb2.c
>> index 2ddad7be73534..64076938c821d 100644
>> --- a/drivers/phy/realtek/phy-rtk-usb2.c
>> +++ b/drivers/phy/realtek/phy-rtk-usb2.c
> 
> [ ... ]
> 
>> @@ -600,6 +617,23 @@ static int do_rtk_phy_init(struct rtk_phy *rtk_phy, int index)
>>  		goto do_toggle;
>>  	}
>>  
>> +	if (phy_cfg->force_host_disconnect) {
>> +		const struct phy_reg_desc *reg_desc = phy_reg->desc;
>> +		void __iomem *vstatus = phy_reg->reg_wrap_vstatus;
>> +		u32 temp;
>> +
>> +		temp = reg_desc->read(vstatus + PHY_9607_FORCE_DISCONNECT_REG);
> 
> [Severity: High]
> Is it possible for vstatus to be NULL here?
> 
> In parse_phy_data(), the driver calls of_iomap() and assigns the result without
> checking for a NULL return value:
> 
> parse_phy_data() {
> 	...
> 	phy_parameter->phy_reg.reg_wrap_vstatus = of_iomap(np, 0);
> 	...
> }
> 
> If the device tree node lacks the memory region or mapping fails, vstatus
> will be NULL. Unconditionally dereferencing it here via reg_desc->read()
> could cause a null pointer dereference.
> 
>> +
>> +		/* disable force-host-disconnect */
>> +		temp &= ~PHY_9607_FORCE_DISCONNECT_BIT;
>> +
>> +		reg_desc->write(temp, vstatus + PHY_9607_FORCE_DISCONNECT_REG);
>> +		temp = reg_desc->read(vstatus + PHY_9607_FORCE_DISCONNECT_REG);
>> +
>> +		/* allow IP to startup */
>> +		usleep_range(10000, 11000);
>> +	}
>> +
>>  	/* Set page 0 */
>>  	phy_data_page = phy_cfg->page0;
>>  	rtk_phy_set_page(phy_reg, 0);

Why is this not tagged with pre-exesiting issue just like with the previous
review on patch 1..

Not related to this patch series at all.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
