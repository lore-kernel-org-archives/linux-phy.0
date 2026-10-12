Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 151C4CA9EDE
	for <linux-phy@archiver.kernel.org>; Mon, 12 Oct 2026 18:23:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:
	Subject:Cc:To:From:Date:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zzWoAasfRHzrZW9UTLoz0rKBLf4B/d6crNAGRYr5wAo=; b=sepwP5CK8IgnEb
	muvN9ABqNWf6Pj7NMXlyX4m9GrUgrbcS9RvIwF0vR2co4LuW289r74E3ZpybdsDMe0dobgh95UneD
	Gi8e/CkDJqOh8Ux0uSftYlXiuNTCnfcZ2k/iuK3SAfIOhYoLtNsFEXYtVrlBTqF93wo0ljqTIMRsz
	hdHlDjUxciCV3kQWorlomgeknW4WwzoCw6991IcO4IeKLcyEMZTPBBGt2J2ccVZaZKj9TOrqV/818
	cL8Kk6NsaY8N9TmgbTnu6eHYDcz/I1VeCddfCpvMhz2vYfS0wYIUT7ew78ifWGBf17t8f4sLKX6U3
	6nZrwbq5E+wy0SLzIoPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGKgC-0000000BDoG-3AIn;
	Mon, 12 Oct 2026 18:23:20 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGKgB-0000000BDo6-27QE
	for linux-phy@bombadil.infradead.org;
	Mon, 12 Oct 2026 18:23:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:Message-ID:References:In-Reply-To:Subject:Cc:To:From:Date:MIME-Version:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=a/adED7GAf3CJNrUp5sPo8EBBKAdWzYLeiQ/ujqbnSc=; b=Ca4th+Ya/ujjN14h3bn56Zd1kC
	i/srLAkVJqmgJm+TRc05BkT/DPkwP7fNkeB4JpWZEE2V9Cdb4iv9q31mb6cbo5kgmotSrcQJUdl9Q
	u8lfvHPXypecLq7EhZa5VfqqGVMEK4OHgYUY4zqfSx7DYA9EowGWYEhcRjB3KdKx/GLHbPd7awhEq
	4Kn5DlvGEulP1EBtL4QpCu8a7G04M13lrHOq0iXGKELk6Gn1ljgLUrHYLmRmSo7ksnEsxbkYFxs2d
	z59BSHRWqh5nhz0USQEK/OwTrVjNbbdLDjXdeI0WmnjouPIt7UP1NTD6Fosx6z+EUu9Kh5qRZ3MCU
	WZHdDlBA==;
Received: from layka.disroot.org ([178.21.23.139])
	by desiato.infradead.org with esmtps (Exim 4.99.5 #2 (Red Hat Linux))
	id 1xGKg8-0000000EklD-2jZC
	for linux-phy@lists.infradead.org;
	Mon, 12 Oct 2026 18:23:18 +0000
Received: from mail01.layka.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 5D3BB80928;
	Mon, 12 Oct 2026 20:22:57 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yYmsGjDpRsO4; Mon, 12 Oct 2026 20:22:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1791829376; bh=Rv23X6bDaEgg7e13p58gKtt260VDqekwLQbSEoisScE=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=fh67C8oaLsS/4xnwtkIocLnNrL/frc9M3JglJVQCHpP6igU1YZo5Jj6ezTL55XIGz
	 uPmoCRvAC9hkUEAkrIESXMFcvWYew2hmwyxAOiG9Uzc13XHl6A0z+z303JSraD9Rth
	 8QR9vPqm83umVIhB3uy4UvS3BkAfBY20IHkyhyaS6k9pDJtm4dtV3s4E8lfY7HXeXu
	 EzEVWXRDeh23XGQOb7QqYjmxgVNJzqn+gXtBmCFDojLL3K9AiQQwNvJ20/gswcuiux
	 LtLaAWF/+Z+/GtU1Bmpjt46XbWzXF4/AZsIE2fc3Iuzq6uiRdPKgUdz51lUYv/ifb7
	 PGKu4ZW4ph9Xw==
MIME-Version: 1.0
Date: Mon, 12 Oct 2026 18:22:56 +0000
From: Rustam Adilov <adilov@disroot.org>
To: sashiko-reviews@lists.linux.dev
Cc: linux-phy@lists.infradead.org, vkoul@kernel.org,
 neil.armstrong@linaro.org, olteanv@gmail.com
Subject: Re: [PATCH v8 1/6] phy: realtek: usb2: introduce phy_reg_desc struct
 to the driver
In-Reply-To: <sashiko-outbox-168495@kernel.org>
References: <20261012173739.36377-1-adilov@disroot.org>
 <20261012173739.36377-2-adilov@disroot.org>
 <sashiko-outbox-168495@kernel.org>
Message-ID: <8af219f842092d37b57100bd25e7c5b6@disroot.org>
X-Sender: adilov@disroot.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261012_192316_832082_70A1EEFD 
X-CRM114-Status: GOOD (  16.74  )
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

On 2026-10-12 17:49, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 1 potential issue(s) to consider:
> - [Medium] phy: realtek: data race between debugfs and PHY ops corrupts hardware state
> --
> 
> commit d16c7943f8b3fd4b0cfe55fc75ec12d09511eaf4
> Author: Rustam Adilov <adilov@disroot.org>
> 
> phy: realtek: usb2: introduce phy_reg_desc struct to the driver
> 
> This commit introduces a phy_reg_desc struct to the realtek usb2 driver. It
> stores per-SoC differences such as register offsets and busy bits. This
> avoids duplication in driver data for RTL9607C and RTD SoCs.
> 
>> diff --git a/drivers/phy/realtek/phy-rtk-usb2.c b/drivers/phy/realtek/phy-rtk-usb2.c
>> index 248550ef98cab..e8d0f0119ec0a 100644
>> --- a/drivers/phy/realtek/phy-rtk-usb2.c
>> +++ b/drivers/phy/realtek/phy-rtk-usb2.c
> 
> [ ... ]
> 
>> @@ -190,29 +199,31 @@ static int rtk_phy_write(struct phy_reg *phy_reg, char addr, char data)
>>  	unsigned int val;
>>  	void __iomem *reg_wrap_vstatus = phy_reg->reg_wrap_vstatus;
>>  	void __iomem *reg_gusb2phyacc0 = phy_reg->reg_gusb2phyacc0;
>> +	const struct phy_reg_desc *reg_desc = phy_reg->desc;
>>  	int shift_bits = phy_reg->vstatus_index * 8;
>>  	int ret = 0;
>>  
>>  	/* write data to VStatusOut2 (data output to phy) */
>> -	writel((u32)data << shift_bits, reg_wrap_vstatus);
>> +	writel((u32)data << shift_bits,
>> +	       reg_wrap_vstatus + reg_desc->vstatus_offset);
>>  
>> -	ret = utmi_wait_register(reg_gusb2phyacc0, PHY_VSTS_BUSY, 0);
>> +	ret = utmi_wait_register(reg_gusb2phyacc0, reg_desc->vstatus_busy, 0);
>>  	if (ret)
>>  		return ret;
>>  
>> -	/* VCtrl = low nibble of addr, set PHY_NEW_REG_REQ */
>> -	val = PHY_NEW_REG_REQ | (GET_LOW_NIBBLE(addr) << PHY_VCTRL_SHIFT);
>> +	/* VCtrl = low nibble of addr, set reg_desc->new_reg_req */
>> +	val = reg_desc->new_reg_req | (GET_LOW_NIBBLE(addr) << PHY_VCTRL_SHIFT);
>>  
>>  	writel(val, reg_gusb2phyacc0);
> 
> [Severity: Medium]
> Can this multi-step state write be interrupted and corrupted by concurrent
> debugfs accesses?
> 
> A user with root privileges reading the debugfs file parameter via
> rtk_usb2_parameter_show() in drivers/phy/realtek/phy-rtk-usb2.c repeatedly
> calls rtk_phy_set_page() and rtk_phy_read() without acquiring any
> driver-specific lock:
> 
>     /* Set page 0 */
>     phy_data_page = phy_cfg->page0;
>     rtk_phy_set_page(phy_reg, 0);
> 
> If the kernel concurrently executes a PHY state change (such as
> rtk_phy_connect() or rtk_phy_init()), could their register accesses collide
> and corrupt the PHY's internal register access state machine?
> 
> Additionally, since struct rtk_phy lacks a reference to struct phy, it
> appears the debugfs callback cannot acquire phy->mutex. Is there another way
> to synchronize these accesses?

This goes into a pre-existing issue territory, i.e not related to this patch
series at all.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
