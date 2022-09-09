Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C667ECAAD3
	for <linux-phy@archiver.kernel.org>; Fri,  9 Sep 2022 14:27:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K0O5nbLhbtoAa9jXLPyjQlwqnsJJd90f/HXJxC7FtcM=; b=Pz1/UtC/O9ag4R
	FPyUJJEXXHzBOQYzw17IM0L9QvR0w9cV5cPLo9+Q9h3IlJrLiQKqx2HfXZdMnk30Eubf428PB1KtN
	vzQAgkxWWe0SH6P1LrskjqLIexkE0R5AHyTPwkbHqfzGKY4UTl70eFg3JvTXPCVNgXHNSfbuQhpZk
	vbVxGDqSILxoLqByC362z5JI1l1ngLoMBgeAur+g4KJ73rYFxlzVAR7B6UCt+DIVhwZqlpsZBCPLf
	J/EYIkh7BsKn0gJNIRYrxBdfYck1YyW0mpcQ/vNa3xGy2GPW0wSH1hMTSQ2kMiLivM7NAqa0jMOHy
	JGTZgvwgCtjDwEjIk78g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWeyS-00Gj5c-DC; Fri, 09 Sep 2022 14:27:16 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWeyP-00GiyG-73
	for linux-phy@lists.infradead.org; Fri, 09 Sep 2022 14:27:15 +0000
Received: by mail-lj1-x234.google.com with SMTP id y18so2016350ljh.12
        for <linux-phy@lists.infradead.org>; Fri, 09 Sep 2022 07:27:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=vS8NN1SUQ8F9Jl53WhEY2WMgjKxug+uunu0jICrTAKg=;
        b=zIjjPPvlnmTPc5FDPSTG76Jj0rMCNlhgUXnpXbjwcXqBaxSlDUyCfJScNSYw1ZD3V7
         woXRSwbu0kkmv3Skst2LiD8JVV062pJcqxDBj0Y+3x2EswdW4oBXIkM7oxV9NLpog0Mt
         zecjn/zT53zPFk6WY/PZp9IlOUKULakNRWOPN8X7uABLIwWIQJJTx9S9eruSkT9iIJi+
         ZOa2jG3Ij04wkNN7pg2x6LuaN9p/buix/KIsGDMZPS45KKkqbT8VQPjvywkIgzHmS1Ew
         TUa8TqwAqxF3vkdB6WQJd/Z38/2NVmhVJGDyZK/9X1phGhHpWH25oLuWQ/rELwxeP4/F
         xCWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=vS8NN1SUQ8F9Jl53WhEY2WMgjKxug+uunu0jICrTAKg=;
        b=niI32Ohqb27ZE6OVywSiYxOaFDGAwqKi1tAe2OhWqcgYwdc+X0pJsF79WOrS2BZztE
         ioGn/DPFcYKDGpV/gV7b2Dl0fokGtsIjErAc8d1MM53PkdjX2vbJ3DWP4VWMb9bMHfWJ
         SrDcF+EEdaPnnIGal1gpBR/9hpyIP4EhnvmhAIC+rftoLtOELM0+0uD2loDlDQ1t4q1k
         BJU+Xc+ZuxJULqVw4kEHJ/PjhbD+CQSEzbo348E33A3jh8SMeLUJunEceuo2/UfmFaHS
         QtL7NX08TNE0LlWDVzJWTsEy1ztXchSHlLDDFZYXkNXhCPk199H7MINMgMOGn8+LORoc
         VbSg==
X-Gm-Message-State: ACgBeo1NpxAQPcqJvfANVrQql5c8q+8/4XrByFX6qAPgvpDarMYy81Uf
	f8ll3Bc1UyhmmRQpCyceUWIUFItbpobL6Q==
X-Google-Smtp-Source: AA6agR5SrbyuPO9DPBYrEoAYClWpli+q1NtHHUxrB83JUOSWw2oldd5yNGgndvxVOleE6MiDCp1K8A==
X-Received: by 2002:a2e:1f01:0:b0:25f:ea3a:4ef0 with SMTP id f1-20020a2e1f01000000b0025fea3a4ef0mr3888377ljf.330.1662733628873;
        Fri, 09 Sep 2022 07:27:08 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id t2-20020a2e9c42000000b0025e4ab170e0sm108849ljj.3.2022.09.09.07.27.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Sep 2022 07:27:08 -0700 (PDT)
Message-ID: <d2fcb546-16b6-6a7a-9a42-e602421baa1e@linaro.org>
Date: Fri, 9 Sep 2022 17:27:07 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.2
Subject: Re: [PATCH 02/16] phy: qcom-qmp-combo: drop unused defines
Content-Language: en-GB
To: Johan Hovold <johan@kernel.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220907110728.19092-1-johan+linaro@kernel.org>
 <20220907110728.19092-3-johan+linaro@kernel.org>
 <7370ba1d-472c-b036-4155-f86ca13f9824@linaro.org>
 <Yxs9rCf/JTL5BA1S@hovoldconsulting.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <Yxs9rCf/JTL5BA1S@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_072713_311554_9C2E647D 
X-CRM114-Status: GOOD (  12.55  )
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

On 09/09/2022 16:20, Johan Hovold wrote:
> On Fri, Sep 09, 2022 at 12:21:12PM +0300, Dmitry Baryshkov wrote:
>> On 07/09/2022 14:07, Johan Hovold wrote:
>>> Drop defines and enums that are unused since the QMP driver split.
>>>
>>> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
>>> ---
>>>    drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 15 ---------------
>>>    1 file changed, 15 deletions(-)
>>>
>>> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
>>> index 9ce2ab56be4c..838f7e328b55 100644
>>> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
>>> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
>>> @@ -28,16 +28,11 @@
>>>    #define SW_RESET				BIT(0)
>>>    /* QPHY_POWER_DOWN_CONTROL */
>>>    #define SW_PWRDN				BIT(0)
>>> -#define REFCLK_DRV_DSBL				BIT(1)
>>>    /* QPHY_START_CONTROL bits */
>>>    #define SERDES_START				BIT(0)
>>>    #define PCS_START				BIT(1)
>>> -#define PLL_READY_GATE_EN			BIT(3)
>>>    /* QPHY_PCS_STATUS bit */
>>>    #define PHYSTATUS				BIT(6)
>>> -#define PHYSTATUS_4_20				BIT(7)
>>> -/* QPHY_PCS_READY_STATUS & QPHY_COM_PCS_READY_STATUS bit */
>>> -#define PCS_READY				BIT(0)
>>
>> I think these defines, describing registers and bits, can go to the
>> common header instead.
> 
> Adding those to a common header can be done later if needed at all (and
> would include adding a proper prefix etc).

Ack, let's sort them out later, if Vinod agrees with this.

> 
>> For the rest of the patch:
>>
>> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> 
> Johan

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
