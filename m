Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 48A19C433EF
	for <linux-phy@archiver.kernel.org>; Wed,  2 Feb 2022 16:24:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L2EelDMEJV0+0LsoysWuJRm5OkPwI1US8t3ZDh20K9A=; b=GF+AZtgam+wOfc
	r1f1ogo0MNqbEetVtfW4gOM0RWyCekFsR0n/bgTy8tqiRmd85jIuoAfe0G0wAxORf9vrAWMf2ffLx
	6qTU6vEW7J075UCgUOwsQ9PUFIFf8831Z59g7t5Mr7te0FWH9NfPItGHDGMYH62u2u/4qoch9KPc8
	5l43Iss/ocyRke0QXOHJK63hbIkJzUpTv47gD3CgHpj0hXZ/gVDM2Y+jRUJSc/zuJM9WDBLvsAYul
	B5NoVF9atXoqlcAMrc1UmGS5Kj/9ZwqXDmACwVs/j0Cp1kTnAEFxs+iEJ3aTgreRiN9RCrqPh/rp4
	3F/1+MoIIju07QK+Ib5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nFIQc-00GGMf-NC; Wed, 02 Feb 2022 16:24:18 +0000
Received: from mail-pg1-x52a.google.com ([2607:f8b0:4864:20::52a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nFIQZ-00GGL1-IS
 for linux-phy@lists.infradead.org; Wed, 02 Feb 2022 16:24:16 +0000
Received: by mail-pg1-x52a.google.com with SMTP id e16so18726281pgn.4
 for <linux-phy@lists.infradead.org>; Wed, 02 Feb 2022 08:24:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=4RU4nT0A8ScUi0XH1TGWZby5UrMX36vrOc8ZNPOHMnY=;
 b=BjMp2b4aJS29gAsExIeXJwymLti9bMZuWps/hQkbpCNpsSkjMKG09LT9KlGWO3iYiU
 yS7C3p5MsMsRtocfTWpx56BrKisYaNkfHVkltZyjSpuHvpkOYS2YYtuSdmHYwYpOWlkw
 3rnqE4y37W8fi0Qu04lzK5IPncZHF6JdALe3v3q/106EEJ5qvVLjWBi/Svm8JHK0L1vp
 k+9Ub5bgSE6ayDgYSCg7bmeTkGLS4b4bvJI3TbSdP1Ib3Eqe2hYjknPEsuGlwZ6ZwgB4
 2ZJHwHHShHV9OMe5dVX/bhSYQovPOz0pFqpSkl4bBzuKwAOWZ1McOZtuyTDx0xiGufRc
 zZ9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=4RU4nT0A8ScUi0XH1TGWZby5UrMX36vrOc8ZNPOHMnY=;
 b=ug+AjiuvmcShlig32Ut5WVFji48em4pzreUaknoZepz0E/Cx93Ye342OCjWhaNf/La
 SmNGvTMMOIOUPqPC3g7Ge5ZY1igkV0cPgSnI+giBS7blmLHaXZQCk/A0Uj/1SawYtNwm
 2jnJgXDkW5xtaNIH22qsn3RpaX6Xi2oLcfPDtFr1N8KOZPQLt6KCPL47TLyaryiAyhN2
 j0ei8RrvlGHBjiq4X0YCjR4g7Iq00Q3UwF/4pGx+aq6AG/Rzok/LpFnaOGt18Vyuxeea
 /1+t1+pAwtY6sOVAMR2dR9AYyfu5wbkeGJId/VnxVM9I+Tsjj0GbUXQz84XjVAAmezWB
 huVQ==
X-Gm-Message-State: AOAM532aRRduQ/MNq4b3LlJPtM9nvEoW2minDie301TH7T+pqhgiD3/s
 UrBytoDp0j3YXj8wkYuV8pg=
X-Google-Smtp-Source: ABdhPJzKBckS0KU9uqHVFtKYVdrbjhsxdWHHuWUI+DUjuhAJZzFyyGTrixlAGa6YTa0wYc0A5+m80w==
X-Received: by 2002:a05:6a00:885:: with SMTP id
 q5mr17134700pfj.6.1643819054229; 
 Wed, 02 Feb 2022 08:24:14 -0800 (PST)
Received: from [10.230.29.214] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id m38sm33846917pgl.64.2022.02.02.08.24.12
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 02 Feb 2022 08:24:13 -0800 (PST)
Message-ID: <71178ae0-053d-d2f4-88cf-a41513432351@gmail.com>
Date: Wed, 2 Feb 2022 08:24:11 -0800
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
 <e801d672-bedf-b08b-d27b-2b0cdd476a6d@gmail.com> <YfoPIGfs5Q3IwrPm@matsya>
From: Florian Fainelli <f.fainelli@gmail.com>
In-Reply-To: <YfoPIGfs5Q3IwrPm@matsya>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220202_082415_662147_A7E09F68 
X-CRM114-Status: GOOD (  12.26  )
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



On 2/1/2022 8:57 PM, Vinod Koul wrote:
> On 27-01-22, 17:01, Florian Fainelli wrote:
>>
>>
>> On 1/23/2022 3:45 AM, Vinod Koul wrote:
>>> On 19-01-22, 15:26, Florian Fainelli wrote:
>>>> Hi Vinod,
>>>>
>>>> On 12/1/21 10:06 AM, Al Cooper wrote:
>>>>> A few fixes for the phy-brcm-usb driver.
>>>>>
>>>>> Al Cooper (3):
>>>>>     phy: usb: Leave some clocks running during suspend
>>>>>     usb: Add "wake on" functionality for newer Synopsis XHCI controllers
>>>>>     phy: broadcom: Kconfig: Fix PHY_BRCM_USB config option
>>>>
>>>> Are you able to pick up those patches? Thank you
>>>
>>> Applied phy patches to phy-fixes, thanks
>>
>> Thanks! I can see patches 1 and 3 there but patch 2 is not in phy-fixes or
>> your next branch. Can you pick it up if it is satisfactory? Thanks!
> 
> That is usb patch right. I wont pick unless Greg acks it to go thru phy
> tree

This is an USB PHY patch, I suppose the subject including "usb: " did 
somewhat mislead you. Here is the diffstat just for that patch:

  .../phy/broadcom/phy-brcm-usb-init-synopsys.c | 46 +++++++++++++++----
  1 file changed, 38 insertions(+), 8 deletions(-)

definitively falling into the PHY subsystem.
-- 
Florian

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
