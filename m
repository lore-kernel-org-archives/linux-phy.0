Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9BD21CC6B38
	for <linux-phy@archiver.kernel.org>; Fri, 16 Oct 2026 18:31:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:
	Subject:Cc:To:From:Date:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RiKZl4ZxyPIOPKyNW1hGfxuXXM+zHyG8/KCbflbvrRk=; b=Tlc+/0qWe0igf+
	NUa8oCDAVj+9t65I86p53ETwCRd9Wjsikyp6fgD84lfIC2f+bM4wAg5hRwQaAtuYt/CHOAG9hYrkw
	G+iMKxXsGyT3dwPDhx3k4MYqbPksS95JVa2bJOCdsjw9FlO7+ZNkXK8kEl15+9DO0/+4ylYiiEs0W
	bKjIGb+2rVj6UMHibMsH4XhZ15jZ0T4S9/J6Q+ad0GJEwWBJkln5C+DQ0i0RB+MPFE3wQYjsmvI6g
	QOqEwYNG1BjqiaomRAUV4u8bef6bjz+bcljLQXcsfr3q6lk8WGEEaNacUpmmMjQwiOsEsmmc7Kd/Q
	Lu73tXe+9g6fx+K/LazA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHmih-00000003gBr-0ovQ;
	Fri, 16 Oct 2026 18:31:55 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHmif-00000003g9d-1hoJ
	for linux-phy@lists.infradead.org;
	Fri, 16 Oct 2026 18:31:54 +0000
Received: from mail01.layka.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id AC38482A7F;
	Fri, 16 Oct 2026 20:31:44 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nQzl9y60FTqC; Fri, 16 Oct 2026 20:31:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1792175503; bh=04sQwonfurbo4BOea32Zt9xLoudiO0LSI0mstw4NKL8=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=ZrhSzoyAKpDYe4+YPMKwxs0900t3u8XQ2ttWPi8bbpaeUqsblbmzpSnctT2nFnn7Z
	 J4onYGK1qdrEJpcXajb/HhIU+ofGuCPj+VqqCg8Q2YEUsmwm4ZH4npfP+oRpfGB3in
	 evSFPE72WkO46livCtdIfKvOpmInsmV/8VWEkKeHhlKZ7ljgBTrCtktdnsAakuNYRc
	 9ik5E9k4osR6VlQynoGoQpVHOwq7sOTXue/TWj+EzTfuvIv5q8mSrl4G3WMmoHJXgo
	 DUWPhwlzXjByqBUl2Zjvzflf0AaR+pCFgSfxclDcJKcAvOODjMQ4GZAlelvW+F2lif
	 N0a+KeHvGS/IQ==
MIME-Version: 1.0
Date: Fri, 16 Oct 2026 18:31:42 +0000
From: Rustam Adilov <adilov@disroot.org>
To: sashiko-reviews@lists.linux.dev
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org,
 neil.armstrong@linaro.org, olteanv@gmail.com
Subject: Re: [PATCH v9 4/6] phy: realtek: usb2: introduce reset controller
 struct
In-Reply-To: <sashiko-outbox-174759@kernel.org>
References: <20261016180314.31760-1-adilov@disroot.org>
 <20261016180314.31760-5-adilov@disroot.org>
 <sashiko-outbox-174759@kernel.org>
Message-ID: <742854ba3f87aee86ea78e3f39f9682d@disroot.org>
X-Sender: adilov@disroot.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261016_113153_727768_53ACFBD2 
X-CRM114-Status: GOOD (  26.34  )
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

On 2026-10-16 18:15, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 2 potential issue(s) to consider:
> - [High] phy: realtek: register access before reset deassertion causes hang/timeout
> - [Medium] phy: missing reset_control_assert in rtk_phy_exit and error paths
> --
> 
> commit ae1074cfd8fee3a5506c0c9db06f187c80793713
> Author: Rustam Adilov <adilov@disroot.org>
> 
> phy: realtek: usb2: introduce reset controller struct
> 
> In RTL9607C, there is so called "IP Enable Controller" which resemble
> reset controller with reset lines and is used for various things like
> USB, PCIE, GMAC and such.
> 
>> phy: realtek: usb2: introduce reset controller struct
>> 
>> In RTL9607C, there is so called "IP Enable Controller" which resemble
>> reset controller with reset lines and is used for various things like
>> USB, PCIE, GMAC and such.
>> 
>> Introduce the reset_control struct to this driver to handle deasserting
>> usb2 phy reset line.
>> 
>> Make use of the function devm_reset_control_get_optional_exclusive()
>> function to get the reset controller and since existing RTD SoCs don't
>> specify the resets we can have a cleaner code.
>> 
>> Since the vendor usb driver developed by Realtek doesn't assert the reset
>> line (or in their case clear the register bit), we can reasonably assume
>> reset_control_assert is not needed here.
> 
> [Severity: Medium]
> Since this is an exclusive reset control, does it need to be asserted on
> teardown even if the vendor driver doesn't do it?
> 
> If the reset line is never asserted during module removal or driver unbind
> (such as in an rtk_phy_exit() function), could this lead to power leakage
> or unexpected initial states during subsequent driver reloads?

There is still a lot unknown about the IP enable controller and what it really
does, the reset controller is just my best guess. I would ideally not deviate
from what the vendor usb driver did.

>> diff --git a/drivers/phy/realtek/phy-rtk-usb2.c b/drivers/phy/realtek/phy-rtk-usb2.c
>> index 5e483c853f02f..2ddad7be73534 100644
>> --- a/drivers/phy/realtek/phy-rtk-usb2.c
>> +++ b/drivers/phy/realtek/phy-rtk-usb2.c
> [ ... ]
>> @@ -676,6 +678,15 @@ static int rtk_phy_init(struct phy *phy)
>>  	if (!rtk_phy)
>>  		return -EINVAL;
>>  
>> +	if (rtk_phy->phy_rst) {
>> +		ret = reset_control_deassert(rtk_phy->phy_rst);
>> +
>> +		if (ret)
>> +			return ret;
>> +
>> +		usleep_range(5000, 6000);
>> +	}
>> +
>>  	for (i = 0; i < rtk_phy->num_phy; i++)
>>  		ret = do_rtk_phy_init(rtk_phy, i);
> 
> [Severity: Medium]
> If do_rtk_phy_init() fails, the reset line remains deasserted on the error
> path. Should the reset line be asserted before returning the error?
> 
> [ ... ]
>> @@ -1055,6 +1066,11 @@ static int rtk_usb2phy_probe(struct platform_device *pdev)
>>  
>>  	rtk_phy->num_phy = phy_cfg->num_phy;
>>  
>> +	rtk_phy->phy_rst = devm_reset_control_get_optional_exclusive(dev, NULL);
>> +	if (IS_ERR(rtk_phy->phy_rst))
>> +		return dev_err_probe(dev, PTR_ERR(rtk_phy->phy_rst),
>> +				     "usb2 phy reset is not working\n");
>> +
>>  	ret = parse_phy_data(rtk_phy);
> 
> [Severity: High]
> Can calling parse_phy_data() here before deasserting the reset control cause
> a hardware hang or timeout?
> 
> Inside parse_phy_data(), if the SoC configuration lacks a pre-populated
> default value for certain registers, functions like update_hs_clk_select()
> and update_dc_driving_level() will attempt to read from the PHY registers:
> 
> drivers/phy/realtek/phy-rtk-usb2.c:update_hs_clk_select() {
> 	if (phy_parameter->inverse_hstx_sync_clock) {
> 		if (!phy_cfg->page0[6].addr) {
> 			rtk_phy_set_page(phy_reg, 0);
> 			phy_cfg->page0[6].addr = PAGE0_0XE6;
> 			phy_cfg->page0[6].data = rtk_phy_read(phy_reg, PAGE0_0XE6);
> 		}
> 	}
> }
> 
> If the realtek,inverse-hstx-sync-clock DT property is set, it will read
> from the unclocked or reset IP block, which could lock up the system bus
> on many SoCs.

realtek,inverse-hstx-sync-clock property is irrelevant to rtl9607c.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
