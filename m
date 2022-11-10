Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93C41C433FE
	for <linux-phy@archiver.kernel.org>; Thu, 10 Nov 2022 13:35:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:CC:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=cu56t9lhs96s5BVuBvdEC+1q3DSpaB2QRreTHMhfqv4=; b=QvgvGbKQyPvh0RXiQdwE1dm+oP
	PgzBrw5eeK7CUwEeoDzK0Rl6YPM4+4sUzovZC6jNIyKjIAMU+R0L8cUW9AXLDJV5cGWULjljHxZ3p
	Y3ptPD6F8yFa4z83vJcntDdm/ax5T0ab1re+3MwgnPMqEcmeTv81RcVPqWxqi96C3849NOsqtDJY8
	s2MD5iVJc6icO6z2Wym39jPk2O8g3mw2sbJOTpgjLGetJIxci9SyibfW7QdI4akbBdaK5Me/uxQ6D
	XkHiHnKWVmDu7irXxB0tJh8HcNyliG5Fi/gk03Id6PWzZHOSDy0LYQuexKj+MC/FQr8M6Xe03kFQe
	PMDylhNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ot7iR-0063YQ-VX; Thu, 10 Nov 2022 13:35:35 +0000
Received: from szxga01-in.huawei.com ([45.249.212.187])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ot7iN-0063TZ-19
	for linux-phy@lists.infradead.org; Thu, 10 Nov 2022 13:35:34 +0000
Received: from canpemm500007.china.huawei.com (unknown [172.30.72.55])
	by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4N7N6522QKzqSH4;
	Thu, 10 Nov 2022 21:31:41 +0800 (CST)
Received: from [10.174.179.215] (10.174.179.215) by
 canpemm500007.china.huawei.com (7.192.104.62) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 10 Nov 2022 21:35:22 +0800
Subject: Re: [PATCH v2] phy: usb: sunplus: Fix memleak in update_disc_vol()
To: Vinod Koul <vkoul@kernel.org>
CC: <vincent.sunplus@gmail.com>, <kishon@kernel.org>,
	<linux-usb@vger.kernel.org>, <linux-phy@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>
References: <20221108073430.29172-1-yuehaibing@huawei.com>
 <Y2yiGadmdSz/Ml3i@matsya>
From: YueHaibing <yuehaibing@huawei.com>
Message-ID: <36697610-8cea-cebe-9aa0-1da15cc658b6@huawei.com>
Date: Thu, 10 Nov 2022 21:35:22 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <Y2yiGadmdSz/Ml3i@matsya>
Content-Language: en-US
X-Originating-IP: [10.174.179.215]
X-ClientProxiedBy: dggems706-chm.china.huawei.com (10.3.19.183) To
 canpemm500007.china.huawei.com (7.192.104.62)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221110_053531_290975_E9D736DD 
X-CRM114-Status: GOOD (  11.78  )
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

On 2022/11/10 15:02, Vinod Koul wrote:
> On 08-11-22, 15:34, YueHaibing wrote:
>> 'otp_v' is allocated in nvmem_cell_read(), it should be freed
>> before return.
> 
> Right!
> 
>>
>> Fixes: 99d9ccd97385 ("phy: usb: Add USB2.0 phy driver for Sunplus SP7021")
>> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
>> ---
>> v2: free otp_v before return
>> ---
>>  drivers/phy/sunplus/phy-sunplus-usb2.c | 3 +++
>>  1 file changed, 3 insertions(+)
>>
>> diff --git a/drivers/phy/sunplus/phy-sunplus-usb2.c b/drivers/phy/sunplus/phy-sunplus-usb2.c
>> index e827b79f6d49..62d5cb5c7c9d 100644
>> --- a/drivers/phy/sunplus/phy-sunplus-usb2.c
>> +++ b/drivers/phy/sunplus/phy-sunplus-usb2.c
>> @@ -105,6 +105,9 @@ static int update_disc_vol(struct sp_usbphy *usbphy)
>>  	val = (val & ~J_DISC) | set;
>>  	writel(val, usbphy->phy_regs + CONFIG7);
>>  
>> +	if (!IS_ERR(otp_v))
>> +		kfree(otp_v);
> 
> But that is not the case!

Do you think I should changed the commit log like this:

'otp_v' is allocated by nvmem_cell_read(), it should be freed
after usage in update_disc_vol().


> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
