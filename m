Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A58CC433FE
	for <linux-phy@archiver.kernel.org>; Thu, 20 Oct 2022 11:57:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VOx1EMKWdw8SXJ5ZA0YdPlpF6TDQLez9L51b/6KqNXA=; b=152ywk3jO4oHaS
	Qp0cKkEcxOtd5wBlEaoTRlUxPLDWH00oGIzL7T3bE/q6oD/lrznVwntVoG9dadCtNL1ofVsjdMWp7
	SYnyCss6kO7555xou5/YatplDW+ZfQ/UqYupdon/cNJF3pukCtGvfL2pDTd/6YSFZN3tPNkkD5xkH
	Ax6a8nji9Y3/MlPkh6yWenCdUBsEX54tZkMww79l9Y8j2g4Q8tmJRgN2w7mLxB8aWIQd7D+N94ewv
	WbFtX4AiBPR9bpXsS1ne5WEliSTt7S7QkyDs+1BVkwfDEChTLcG3xEv534hhjXU00HLKJAlrtX065
	8XScGbMRbCBSSBwb+yrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olUBD-00ENok-CT; Thu, 20 Oct 2022 11:57:43 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olTAj-00DoYw-VG
	for linux-phy@lists.infradead.org; Thu, 20 Oct 2022 10:53:11 +0000
Received: by mail-lf1-x12c.google.com with SMTP id b2so32878111lfp.6
        for <linux-phy@lists.infradead.org>; Thu, 20 Oct 2022 03:53:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ISfaqMEVOt5NqZEabZB8HqvfH97r0fX/dwv3Z1arI3k=;
        b=XrsYM0iklTxLXZILvOg1PPVfUoCjJp8xeQHMrJz7StSbFgE4mtixPNAIUAQpQtkNIk
         2zUilbpOZSD2UFSkKpLSyCcx74qLnyo9CuxjyWW1fHbpp9yXQki6QWznnRGEzQ/z7vH7
         KLg/0V+gmqqpmITyg+u3lJPI4exFRkg4w3bRG3mQy6urIdVWU5Bf3xYpzJLvuFy4BmfS
         MTFy5bRqg78PSBWqv5o3QR+zyn8/4f9KiQg+qQe5yW1TGv1utkLDkiXmoF8J9S1aXJ69
         NSO3x12qyuVK6Npj9hte5slILYjO1GxIcmffctQ/DQ6IOIVb03i/f14otGrA2YNuxE1I
         J4Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ISfaqMEVOt5NqZEabZB8HqvfH97r0fX/dwv3Z1arI3k=;
        b=TIuq8rHAFLPvgKvWm6TTgDquua9xtofU6/H0wwzKXZ5reAxGPQbxUjNgVtyFqsu1hi
         S+sBSiRq2kkFgt21HYNM8A+/sjAZQNrNrCQNMbGRyIdxNm/ZJhKuup49UL2UsAiFWn9G
         ttV+DlwADQYGQ/iYEP3S71YQq/GYDl6fFF/4BsHFNBngjFVVEXnEd78wcGbqMsC1gx/C
         wR/ngl3svrjTvQa3o6rdIDXVYiQSg2Bk6cQkrhcpmlweTIKSIO2CcA0k2TOQU3i62Mk3
         JZ/5AbtTOSi6W+3NviIKWzBIcRZI3yaDPH9EuxvAWmgUzBiRznSaVisNMxG9riuwwHUO
         +hlg==
X-Gm-Message-State: ACrzQf07HggIkNL/z/LdWFjOFUrjtj06uOjajpZWHe4DtlhX0Zk8t9Dj
	JOHbUs0Qc3fTEfbEQ4vOrJJZh/8IQyzQfw==
X-Google-Smtp-Source: AMsMyM6xi13XCb8wPT/fKx+LGwtxsuOWmheJ8Ywz9Lm/ngGNRFgqX7aiftxA0zyAVVJooR5s4uB4Yg==
X-Received: by 2002:a05:6512:250c:b0:4a2:731e:ca1 with SMTP id be12-20020a056512250c00b004a2731e0ca1mr4869703lfb.357.1666263185032;
        Thu, 20 Oct 2022 03:53:05 -0700 (PDT)
Received: from [10.10.15.130] ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id z15-20020a056512308f00b00492f0f66956sm2661106lfd.284.2022.10.20.03.53.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Oct 2022 03:53:04 -0700 (PDT)
Message-ID: <f170d43e-f3b7-38f6-6376-2c9116413c1a@linaro.org>
Date: Thu, 20 Oct 2022 13:53:03 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: [PATCH v2 13/15] phy: qcom-qmp-pcie: add support for pipediv2
 clock
Content-Language: en-GB
To: Johan Hovold <johan@kernel.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221019113552.22353-1-johan+linaro@kernel.org>
 <20221019113552.22353-14-johan+linaro@kernel.org>
 <325d6c7b-ca96-df73-a792-4d156a710267@linaro.org>
 <Y1EPZBinv0tyZVqW@hovoldconsulting.com>
 <7eb3fb9a-ce4a-eee0-b6bc-cee6aa6bf37b@linaro.org>
 <Y1EnsKMhoWo+cIWo@hovoldconsulting.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <Y1EnsKMhoWo+cIWo@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221020_035310_080308_A62EA0E3 
X-CRM114-Status: GOOD (  19.01  )
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

On 20/10/2022 13:49, Johan Hovold wrote:
> On Thu, Oct 20, 2022 at 12:28:14PM +0300, Dmitry Baryshkov wrote:
>> On 20/10/2022 12:05, Johan Hovold wrote:
> 
>>> Here's your example diff inline:
> 
>>> @@ -2206,12 +2207,17 @@ static int qmp_pcie_parse_dt_legacy(struct qmp_pcie *qmp, struct device_node *np
>>>    		}
>>>    	}
>>>    
>>> -	qmp->pipe_clk = devm_get_clk_from_child(dev, np, NULL);
>>> -	if (IS_ERR(qmp->pipe_clk)) {
>>> -		return dev_err_probe(dev, PTR_ERR(qmp->pipe_clk),
>>> +	clk = devm_get_clk_from_child(dev, np, NULL);
>>> +	if (IS_ERR(clk)) {
>>> +		return dev_err_probe(dev, PTR_ERR(clk),
>>>    				     "failed to get pipe clock\n");
>>>    	}
>>>    
>>> +	qmp->num_pipe_clks = 1;
>>> +	qmp->pipe_clks = devm_kcalloc(dev, qmp->num_pipe_clks,
>>> +				      sizeof(*qmp->pipe_clks), GFP_KERNEL);
>>> +	qmp->pipe_clks[0].clk = clk;
>>>
>>> So here you're poking at bulk API internals and forgot to set the id
>>> string, which the implementation uses.
>>
>> I didn't forget, I just skipped setting it. Hmm. I thought that it is
>> used only for clk_bulk_get. But after checking, it seems it's also used
>> for error messages. Mea culpa.
>>
>> But it's not that I was poking into the internals. These items are in
>> the public header.
> 
> My point is that you're not using the bulk API as it was intended (e.g.
> with clk_bulk_get()) and you risk running into issues like the above.
> 
> And looking up the actual clock name for this is overkill, even in the
> case were it is provided, so we'd need to set it unconditionally to
> "pipe" (which is fine).
> 
>>> For reasons like this, and the fact that will likely never have a third
>>> pipe clock, I'm reluctant to using the bulk API.
>>
>> Let's resort to the maintainer opinion then.
> 
> I'll take another look at it too.

Thanks!

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
