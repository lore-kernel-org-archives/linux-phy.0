Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60068C433FE
	for <linux-phy@archiver.kernel.org>; Mon, 14 Nov 2022 10:10:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7QGqyjr8Z6vFu2XlJJoRpGTAZtf1G2yAmLm9bETuZhA=; b=BkEPNHz194bDwK
	V1P2lYZZ97Hu8BL9yI2anLSz6F+p/bBS2KNc8IHfR8v7mqmSwfsIxJKd9zKCZliCQVtbZpnxt6kun
	6i2F4IF+QmP/IoKIybZStbj3yLGT7kIyAT3AGP4ZuNNXxpVkEA3y8oMtPQbF2exZeScxKFtnwA4gb
	IyinwMzpE/MMdvvWeHg56rYqSYgleA/nPoxWO4oiMa+KfpiL75yWWrxKkLAQVvBruN3jEm4Vm/3bZ
	Afbi0CxEENU+ex0S80SJa14DO4cT7A9+d1vR0jZKeVj8whd1MoBKNldvZwOfS5krw1tdCO+krWzYU
	JeGL8kWMxbSUztnnmboA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouWQT-00HRDh-MS; Mon, 14 Nov 2022 10:10:49 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouWQR-00HRAX-Lo
	for linux-phy@lists.infradead.org; Mon, 14 Nov 2022 10:10:49 +0000
Received: by mail-lj1-x229.google.com with SMTP id h12so12471622ljg.9
        for <linux-phy@lists.infradead.org>; Mon, 14 Nov 2022 02:10:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DzkRo4x4df26Ftl89WHvSf17LxMJ10o70KQdLoo03zQ=;
        b=IAJ4BC+52sSeaa0Xk4+57wuo/GDX1mtIbPMNyUb1sI/KgLrwrZaLs81Qph6nikQBgY
         67s164yycg/oIghhwuMN0BVxo/p2GK8xWe7ATMPdlqSroeP1zko4Kl/EJV/UDUNMXCp8
         rSB7eyQIcW9CSv94wbe7+ixYyRb54fPcwi+BQfE3dytp54+1tlVKFmT6fiQCkNNKX5Gh
         mPJN6BoB+tV803MDwmsTqe8DsMB7LjlUhNT4qLck3cCGqsAFV32xEY7esYl5Z+1XCRHK
         JUbv4HfVhcpeQe0xPbPlsuaSgVjkG5k+nZG20scx6k7AKiPuNkzgonHfNmYt89IW/mIj
         lMeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DzkRo4x4df26Ftl89WHvSf17LxMJ10o70KQdLoo03zQ=;
        b=TK/4UoHlaNyFmkmn9CSkYNboG4vnI8uTihEgRVIANb/1+BdV0QCb0hRjjCJRlM/slC
         vp8qyXoDtT3iRXk6mh/vPQSEiZd2a5TsGe8x5JCFVIKYEbokX73NTFMwigdHW6K4LBkQ
         fu2cazMcwkfc2FCvmMo4ehbM0ByuWIAk+9HhltjGuvH/qTdkNIa7ld1YwfTNvbb3IrPW
         zH4aNpB28w19SEHtsHJI44pOm4Q3ughQqZ+HfTovZJl7zOreirhCqfyrMEed5o77SnUG
         a4dhT2lHLiSxPirGxMQHaQSDxPj1YC+18MVmLHYU0eUQPysXTn7SDZxvYJbEAixIivKn
         xcjg==
X-Gm-Message-State: ANoB5pkqcxovCWUoo8WBpznpyY3kLBp7VD7nOd/wPfFlVDxC51gBFo7z
	cn++PEoa/2wijzoViyB2NB8+mzFqva4mEQ==
X-Google-Smtp-Source: AA0mqf6I/gCN8/WIbRN/kWXopgh6mgdY4xaKDdudvkK45MavgULyoBOTXpSA9DRfgtkR4Zh/YTeg7w==
X-Received: by 2002:a2e:a401:0:b0:277:37a8:ba87 with SMTP id p1-20020a2ea401000000b0027737a8ba87mr3629887ljn.14.1668420644879;
        Mon, 14 Nov 2022 02:10:44 -0800 (PST)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id f27-20020a19381b000000b004a45ed1ae21sm1757875lfa.224.2022.11.14.02.10.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Nov 2022 02:10:44 -0800 (PST)
Message-ID: <8802255c-16a9-1fb7-bbc5-d8e0d44a6f1f@linaro.org>
Date: Mon, 14 Nov 2022 13:10:43 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH 17/22] phy: qcom-qmp-combo: merge USB and DP
 configurations
Content-Language: en-GB
To: Johan Hovold <johan@kernel.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221111085643.9478-1-johan+linaro@kernel.org>
 <20221111085643.9478-18-johan+linaro@kernel.org>
 <5fd7a56f-db12-deb3-753a-22867526d90b@linaro.org>
 <Y3ICOwr2ld9cdgrK@hovoldconsulting.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <Y3ICOwr2ld9cdgrK@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221114_021047_752535_666F624B 
X-CRM114-Status: GOOD (  17.63  )
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

On 14/11/2022 11:54, Johan Hovold wrote:
> On Sat, Nov 12, 2022 at 10:43:14AM +0300, Dmitry Baryshkov wrote:
>> On 11/11/2022 11:56, Johan Hovold wrote:
>>> It does not really make any sense to keep separate configuration
>>> structures for the USB and DP parts of the same PHY so merge them.
>>>
>>> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
>>> ---
>>>    drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 182 +++++++---------------
>>>    1 file changed, 57 insertions(+), 125 deletions(-)
>>>
>>> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
>>> index b27d1821116c..249912b75964 100644
>>> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
>>> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
>>> @@ -798,10 +798,7 @@ static const u8 qmp_dp_v5_voltage_swing_hbr_rbr[4][4] = {
>>>    
>>>    struct qmp_phy;
>>>    
>>> -/* struct qmp_phy_cfg - per-PHY initialization config */
>>>    struct qmp_phy_cfg {
>>> -	/* phy-type - PCIE/UFS/USB */
>>> -	unsigned int type;
>>>    	int lanes;
>>
>> int lanes doesn't really make sense here in my opinion. It should be
>> usb_lanes and dp_lanes.
> 
> It doesn't make much less sense than having it here currently do.
> 
> All of these USB-C PHYs are dual lane for bi-directional SS USB and
> quad lane for uni-directional DP (even if only CC1 orientation and lanes
> 2 and 3 are currently supported).

I was under impression that sdm845 has just a single lane for each of 
USB and DP. After rechecking the phy/next, I see that it was my mistake 
(quite logical, SS is two lanes, so the compliant PHY must have two 
lanes too).

I wander how/if 4-lane DP works. The only thing that we do is 
programming of the QSERDES_DP_PHY_PD_CTL register, however judging e.g. 
your 4-lane PCIe changes, one should probably also program the other two 
lanes. Maybe it is handled automatically inside the hardware.

> I should probably just drop the lanes parameter completely, either as a
> preparatory clean up or as follow-on one (e.g. also a bit depending on
> if there are other reasons for respinning a v2).

I think a follow up is enough, but let's get it. Having a single lanes=2 
field looks... strange.

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
