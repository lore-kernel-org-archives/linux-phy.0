Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B6A1C433EF
	for <linux-phy@archiver.kernel.org>; Fri, 28 Jan 2022 01:08:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wb2KKs2QX+aA7wHj1pQsOT9aXTenHnZBCPOpYmtUovY=; b=1+DispMlM+QxW0
	FaKmG1PTB2FsjNFAl4lb5CRvdX/l6u3h2EB2yqHFoTWovQlEWbrnY1xuKwsdWgs4ZyED9qLpXbnhD
	nqM9Q1b9lTzT//odEFBEdavlgdH7pqmjll/BsPW3LKZlWac+jHJDD8sLThoOrS/d6rH5MAkV8jmYv
	ea2mMJ5F21w8AClkyleqz0pBp5WPwVEDAeT22RUm5XxbOowV/53gnTjstsciFtHviO7vrfhXnrsAJ
	bFkkg/1IE/lToZlv2xAaLpm3P25aoxMM+/5bfaUYnp8TF6izvYXaWLZcm0DUpE1JoclXUOXi3sTaF
	strmxBs+fPLlKCYo9YjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nDFkI-0000oh-VC; Fri, 28 Jan 2022 01:08:10 +0000
Received: from mail-pf1-x42f.google.com ([2607:f8b0:4864:20::42f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nDFeL-00HaMy-Gj
 for linux-phy@lists.infradead.org; Fri, 28 Jan 2022 01:02:03 +0000
Received: by mail-pf1-x42f.google.com with SMTP id i30so4584382pfk.8
 for <linux-phy@lists.infradead.org>; Thu, 27 Jan 2022 17:02:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=obrdhdVm4PvSG5R1xKZYS6lkGF0TscPIm4ZrMbK0aJU=;
 b=allFE17VplTrJV124AQE3Pg9zU/+Bqe/O3N+qawqLHSG8KfQuybH0py5VmfMDw487E
 MksiMF1onfDKwXVoTR01dA7X62iMn2KmrXaTLcIdREIkPs84JatT3ntzo64mNvV7EJH6
 r8xqEhHjMe/9gi925z6h37rJ2s5KwLlriwe2qAYbnCLhgJqjURrJjGAg5qDJwoPvOwA4
 G/adfSni2DnGxwinFNq1Y80AO0P5v3j69jgEVz4ht+ASgrrETHm7TyfHhb2lY1mjigTa
 mZUzkpvBq3jN5YyQTX48BbF2p/BuI5o1Q0AT806xTkzqwFB2w+6ZNNf4JIwrNdQ4LUiw
 u0Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=obrdhdVm4PvSG5R1xKZYS6lkGF0TscPIm4ZrMbK0aJU=;
 b=7Uv0o9oNHCyUitEkAAqg0NuVUEwYgzQHv5Fwt7nv1UxQz1KXkToH5jyU4KVwC06ktB
 gy/osXBSIBwcMQl58WngSZWDp0KaV5bJa7XDpBWFyBHZrw8HQ1Tryz/5EsbrgsCPn+/4
 YLz0TWXLUg1x1QOnsPQVaarxy2Zqhr9ai+KZH8U/9UGz8qye1mwA8v/f9JZ7pM2xLTxi
 xDd3/9a/gFoe5kXvhmC+KSc0117Fa6co7gRAlAfMrICKCx2yXAfgQYxKeAEsAZwYq7dx
 nYM6bTe/KJdAaQPtNqBL9HqWR3KfoJ22vcPzJJOG6eYswVVcEGUOkMcxMglWZ3ZYyYem
 X3Jw==
X-Gm-Message-State: AOAM531zdgwm5k0KdwgNccdQr3fGnrbCFnpq+nRxFRf0XHuynmI3tBwB
 qup4imSj5LKzVNt9m4wYWsA=
X-Google-Smtp-Source: ABdhPJwAtWwY+ilUEo0jp20ZfzNnWAPlRY5aj2xDpBg+/M9t6X35iUnOTePr1Gsk89Q9AGqFSVKgTg==
X-Received: by 2002:a05:6a00:2447:: with SMTP id
 d7mr5527416pfj.64.1643331719809; 
 Thu, 27 Jan 2022 17:01:59 -0800 (PST)
Received: from ?IPV6:2600:8802:b00:4a48:31be:19f8:e4b4:84c8?
 ([2600:8802:b00:4a48:31be:19f8:e4b4:84c8])
 by smtp.gmail.com with ESMTPSA id b20sm7097453pfv.134.2022.01.27.17.01.58
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 27 Jan 2022 17:01:59 -0800 (PST)
Message-ID: <e801d672-bedf-b08b-d27b-2b0cdd476a6d@gmail.com>
Date: Thu, 27 Jan 2022 17:01:57 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH 0/3] phy: phy-brcm-usb: Fixes for phy-brcm-usb driver
Content-Language: en-US
To: Vinod Koul <vkoul@kernel.org>, Florian Fainelli <f.fainelli@gmail.com>
Cc: Al Cooper <alcooperx@gmail.com>, linux-kernel@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, Kishon Vijay Abraham I
 <kishon@ti.com>, linux-phy@lists.infradead.org,
 =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
References: <20211201180653.35097-1-alcooperx@gmail.com>
 <7cbb745e-8b95-1eed-0903-44070a112ec0@gmail.com> <Ye0/8MSBRVNuBr3L@matsya>
From: Florian Fainelli <f.fainelli@gmail.com>
In-Reply-To: <Ye0/8MSBRVNuBr3L@matsya>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220127_170201_623401_5B709D4F 
X-CRM114-Status: UNSURE (   7.79  )
X-CRM114-Notice: Please train this message.
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



On 1/23/2022 3:45 AM, Vinod Koul wrote:
> On 19-01-22, 15:26, Florian Fainelli wrote:
>> Hi Vinod,
>>
>> On 12/1/21 10:06 AM, Al Cooper wrote:
>>> A few fixes for the phy-brcm-usb driver.
>>>
>>> Al Cooper (3):
>>>    phy: usb: Leave some clocks running during suspend
>>>    usb: Add "wake on" functionality for newer Synopsis XHCI controllers
>>>    phy: broadcom: Kconfig: Fix PHY_BRCM_USB config option
>>
>> Are you able to pick up those patches? Thank you
> 
> Applied phy patches to phy-fixes, thanks

Thanks! I can see patches 1 and 3 there but patch 2 is not in phy-fixes 
or your next branch. Can you pick it up if it is satisfactory? Thanks!
-- 
Florian

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
