Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 75C8DC433FE
	for <linux-phy@archiver.kernel.org>; Mon, 14 Nov 2022 09:50:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J50EEqafYestgR03rAWfpZZF44zQgR2eI9HhNvclQ4E=; b=1rvPyA7nVYipp2
	zryH5wuaEmZ9iiEk0TgMuxS/I4pmv+VsA+RR4oSV2iGu3HvXBpKfBqBI1UnqDKrXTlixBkJypY8RC
	a6JejH+oNDykzIbLD5gobhYc7Wiydv8dU6naGIp4Gjck7m8dQgtHYuJRl5qVlAhSGRgl4bgA/z9T4
	Oo1mG9S06HczK95KmmljfmRj6SBGtc81hNgExoC0zbAdksufuinRIksNCM6s24x55m9kdtM8rBAh6
	1EvGIyKbSU1iKab867wgUENF/B8A5ORl0FqrX1g1nXXsJGfQk3t/On6pXJDXoSWWnrNs0msRC3Y9Q
	Zr+cd+7FhQ/pbl9FbTwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouW6W-00HJTo-Kj; Mon, 14 Nov 2022 09:50:12 +0000
Received: from mail-lj1-x22f.google.com ([2a00:1450:4864:20::22f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouW6T-00HJQJ-UE
	for linux-phy@lists.infradead.org; Mon, 14 Nov 2022 09:50:11 +0000
Received: by mail-lj1-x22f.google.com with SMTP id l8so12394907ljh.13
        for <linux-phy@lists.infradead.org>; Mon, 14 Nov 2022 01:50:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Bb1XdXznzYLeTlfpjaMwLLPlS8dogxRK+xeWlIfRthY=;
        b=Bba7Br3qW4MJ9GT+nWtvv1YOAFcLlyAQxGyr6H6Wx8+l9sdgEpkaxc01+cFXdJaeDm
         PVWICyz4l/EeStCaOzCk5/yPKKlljE6QAcki4QjDFy2ht96P/RsteKIO4tPuJV5F7gNM
         pGqGNKBjAK41ZdEP5eFbdN675TTyjImehn7rIwKojvozCVG38aUyVDO0pdPZIEhxz9/g
         LePNCsWAAw4f+iqp6am/ZANGSWCmz3vIQps6LL/1ZMgqHINvZ2l5akmq9p3v2RKOUtAt
         sDJYrKfmv45zuKinQQFHRlXQlehysdH+lH/lhfIGFs3A32ZsOqodDr60tZizxnK/QCa9
         NyWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Bb1XdXznzYLeTlfpjaMwLLPlS8dogxRK+xeWlIfRthY=;
        b=Ye9YJWKk09CRZBF2sxDWQx+Qzi95jweKCAKw+je9yo8P8gLc36d4lkZ0qJOQBoz2wf
         i0cixklPa/McuZYLtFOEsNxmjFsrQEFR2NXlIrt6fUMrHw8Gx2znjGyJB7DiNJEKO/Gi
         n+qDUqGyB5eEWSRuxNxxc5gnhNWKSXoyokkevAfc5CpLTArL4O+RXmFy/1D+4aasm1ce
         fF+nHoH83kkJpjjNAXzvI2iaDlVcGN1z7vpL57qUakZX+SHoUPefHnIj5x5TtZMy0NVR
         yLxeUZuJ0mTDUHU8pbg+0RicRj+1z5wSpLmU8wScjmQaD4Vz43BegEo5lkaXE7JDcTwG
         jcxA==
X-Gm-Message-State: ANoB5pkBHqnjGhhKOaNJhYLLWTjAM+CvvtdRxjYedsrR3LTWiVxihCyZ
	gqjH90BNDh7Kbn/QTezsL4ffdg==
X-Google-Smtp-Source: AA0mqf6s18w6QWcr71EVCTgdz+uIIb4iJNURL08uyDNDCOMA8RbN/aaZ6bd6Wb3S/bg+o99lX+EhKw==
X-Received: by 2002:a2e:711a:0:b0:26e:3292:12ad with SMTP id m26-20020a2e711a000000b0026e329212admr4189418ljc.271.1668419406135;
        Mon, 14 Nov 2022 01:50:06 -0800 (PST)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id 14-20020ac25f4e000000b004a03eb21c4fsm1747994lfz.288.2022.11.14.01.50.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Nov 2022 01:50:05 -0800 (PST)
Message-ID: <9a782abf-378d-08ab-aae2-683178622890@linaro.org>
Date: Mon, 14 Nov 2022 12:50:05 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH 16/22] phy: qcom-qmp-combo: add DP configuration tables
Content-Language: en-GB
To: Johan Hovold <johan@kernel.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221111085643.9478-1-johan+linaro@kernel.org>
 <20221111085643.9478-17-johan+linaro@kernel.org>
 <56752623-d865-2848-3132-4df769a31d39@linaro.org>
 <Y3H+gpKZsOH05RET@hovoldconsulting.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <Y3H+gpKZsOH05RET@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221114_015010_031010_BBF7DE7A 
X-CRM114-Status: GOOD (  14.88  )
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

On 14/11/2022 11:38, Johan Hovold wrote:
> On Sat, Nov 12, 2022 at 10:39:12AM +0300, Dmitry Baryshkov wrote:
>> On 11/11/2022 11:56, Johan Hovold wrote:
>>> In preparation for merging the USB and DP configurations, add dedicated
>>> pointers for the DP serdes and tx tables to the configurations.
>>>
>>> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
>>> ---
>>>    drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 45 ++++++++++++-----------
>>>    1 file changed, 24 insertions(+), 21 deletions(-)
>>>
>>> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
>>> index 499368e19e00..b27d1821116c 100644
>>> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
>>> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
>>> @@ -816,6 +816,11 @@ struct qmp_phy_cfg {
>>>    	const struct qmp_phy_init_tbl *pcs_usb_tbl;
>>>    	int pcs_usb_tbl_num;
>>>    
>>> +	const struct qmp_phy_init_tbl *dp_serdes_tbl;
>>> +	int dp_serdes_tbl_num;
>>> +	const struct qmp_phy_init_tbl *dp_tx_tbl;
>>> +	int dp_tx_tbl_num;
>>> +
>>
>> I'd prefer to have DP-specific instance of struct qmp_phy_cfg_tbls here
>> instead of having separate dp-specific fields. WDYT?
> 
> No, I don't see any good reason for doing so currently.
> 
> You may be able to share a few pointers between some of the SoCs but
> only until it turns out they need to override certain sequences anyway
> (e.g. sc8280xp which mixes v4 and v5 tables currently).
> 
> You'd also need dedicated aggregate table structs for USB and DP and it
> seems all of this would just make things more opaque for little gain.

Forgot:

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
