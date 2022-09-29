Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F28EEC07E9D
	for <linux-phy@archiver.kernel.org>; Thu, 29 Sep 2022 09:07:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VDBVsSouQxJRtSkqEm/lFeauHPbvmhRUrpzPWG+vrLs=; b=OQCLWGn8Yl8EaS
	CHX0nSnGpqRRFX+D3JIU8dYSuEpfwPcGnvFHe+WVRXTqKEto9thhK4KuV0Vzdjj4tlJG1wEQL7JDd
	cDN4LOmjCaIzLgve1zoTsshkpbF4VrXXBJ+L/vv7kjZt3Ij8ArysM13PQYev03PIWlH+KiB9d5ioe
	yDlFPXGoZl6wG/GhrBCsn/VIOCmygbPjT1YXBFJUdGKqA/+FVG6J8Dx+JNweug+fqS0QpQ8euepyx
	73DUlXyG/Cft5oJqoUXoj7deh5SINbKnr0vscH3qA2n1zus73Tw2UqreM8DNtxpvS6xtCYYVHXnHH
	tgpb5cn5Ru9Z+WETxBgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odpVj-001z6s-EI; Thu, 29 Sep 2022 09:07:15 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odpVg-001z5y-8r
	for linux-phy@lists.infradead.org; Thu, 29 Sep 2022 09:07:13 +0000
Received: by mail-lj1-x229.google.com with SMTP id q17so815497lji.11
        for <linux-phy@lists.infradead.org>; Thu, 29 Sep 2022 02:07:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=BgfSaXaz1zXc5P9tbbwdP68iTN9st+1bzf5UzrFtKn0=;
        b=nHkoa1A8iH9uJHyJ4dbRA5NP2CALm3oT4F15UkFvprXThuucEVU2v7jne36IUoxzml
         c1JwecdrA47q74SJ1zWo92K85uJTuItZKrJhTX2YR52x33hyT2eFD0DvrdrOzKzBkOfb
         AAG5SDX6HWQhS5eM/JfjOZyyDdoS8G88OFbM44c6PpVb6LiMDFOe4IlrVU3L8msbFFUU
         yv7U4VxRPAGiCWhB87m9U43l7iEZIBxzhCnsHMQL90R7sTawOCGoIRMByr1BGOVpsJWX
         jczQZTGC9RLGCFWfKAxjS6UXbe1mORaIh0OHuaQ4tg2wJwUvee6xeAz3Z08RKAV+xOwi
         YrqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=BgfSaXaz1zXc5P9tbbwdP68iTN9st+1bzf5UzrFtKn0=;
        b=ihHPShRQkAiBnSuAkPodj/zG73P+9adECPdCIbcQ6on9uHTAG8qk43qO8jMG7S/Itl
         pWECMJiKMBuTgaIUzfU3bfLA/mRzRmpRF0BLQjkAqYSmtHBo5qE9iPpSI1999IX7Pt/m
         OhrTqI1OR8NwwtXyLaL6Cq9ZAE8Hb9Tg8sckae4tLbqpgZf+4knkebFSXbnfyqFJeM0M
         AjdP/zA5bOED67ED5dbza2mkvoq/owu4USg3CCrKlyGK4p/J/BfZTCRWV/fpBWJWzJcT
         NHg7/iN7RV2zh2dFY/ekYBANEgmlAtyV0edjst/0L3BwIY+rr9QiJ7G4+6ND4PTUs2pc
         E/yQ==
X-Gm-Message-State: ACrzQf2rv2+ueX738G/TlizaQjPD1ARcfXovjf881TdTfvN/UdBJ50jE
	LameLO3ttgL8o2kvH9nO6kLFjg==
X-Google-Smtp-Source: AMsMyM5t2Wq64cR0qdS2uRMZIEG/WamoxgBuWgMAQoKhLKt0VRuwaAA+wA1qvEmY4WqX2DIkQZRQYQ==
X-Received: by 2002:a05:651c:a05:b0:26c:5010:39ce with SMTP id k5-20020a05651c0a0500b0026c501039cemr747965ljq.53.1664442428289;
        Thu, 29 Sep 2022 02:07:08 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id bj39-20020a2eaaa7000000b0026ab0087ff3sm656057ljb.54.2022.09.29.02.07.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Sep 2022 02:07:07 -0700 (PDT)
Message-ID: <153ada3a-f24e-fef5-6343-dcc584fc0079@linaro.org>
Date: Thu, 29 Sep 2022 12:07:07 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH 07/13] phy: qcom-qmp-pcie: clean up power-down handling
Content-Language: en-GB
To: Johan Hovold <johan@kernel.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220928152822.30687-1-johan+linaro@kernel.org>
 <20220928152822.30687-8-johan+linaro@kernel.org>
 <c3d39c4e-2099-b09a-8486-8abae7336611@linaro.org>
 <YzVIhK5z3I6hjzLU@hovoldconsulting.com>
 <7f577974-7433-107a-a43a-4a3a5f999018@linaro.org>
 <YzVflom04uK0gojn@hovoldconsulting.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <YzVflom04uK0gojn@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220929_020712_345223_DD53D6CA 
X-CRM114-Status: GOOD (  20.39  )
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

On 29/09/2022 12:04, Johan Hovold wrote:
> On Thu, Sep 29, 2022 at 10:30:20AM +0300, Dmitry Baryshkov wrote:
>> On 29/09/2022 10:25, Johan Hovold wrote:
>>> On Wed, Sep 28, 2022 at 10:15:46PM +0300, Dmitry Baryshkov wrote:
>>>> On 28/09/2022 18:28, Johan Hovold wrote:
>>>>> Always define the POWER_DOWN_CONTROL register instead of falling back to
>>>>> the v2 offset during power on and power off.
>>>>>
>>>>> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
>>>>> ---
>>>>>     drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 20 ++++++--------------
>>>>>     1 file changed, 6 insertions(+), 14 deletions(-)
>>>>>
>>>>> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
>>>>> index eea66c24cf7e..47cdb9ed80cd 100644
>>>>> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
>>>>> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
>>>>> @@ -90,12 +90,14 @@ static const unsigned int pciephy_regs_layout[QPHY_LAYOUT_SIZE] = {
>>>>>     	[QPHY_SW_RESET]			= 0x00,
>>>>>     	[QPHY_START_CTRL]		= 0x08,
>>>>>     	[QPHY_PCS_STATUS]		= 0x174,
>>>>> +	[QPHY_PCS_POWER_DOWN_CONTROL]	= 0x04,
>>>>>     };
>>>>
>>>> Without symbolic names it's not obvious that 0x04 (and thus this
>>>> regs_layout) can be used for v2 and v3, but not for v4.
>>>
>>> It's no less obvious than it was when we were falling back to the v2
>>> define when it wasn't in the table.
>>
>> Yes, that's without doubts. Anyway, I've sent my view on the regs
>> layouts standing on top of your six patches from this series. Could you
>> please take a glance?
> 
> Sure, but I don't think doing that separate change should be a blocker
> for this series. Especially since you run into issues like it not
> always being clear which version of the IP is being used (IPQ).
> 
> I'd rather respin this series and drop the two patches that merged the
> two redundant layout structs.

I'm fine either way.

> 
> Then you can work on further clean ups on top for 6.2 since that's going
> to require some more careful review and thought.
> 
> Johan

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
