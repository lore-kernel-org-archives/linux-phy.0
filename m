Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4CA4BC43334
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 12:06:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P0MskZVntuVpAqgWoyFzrrONjKEE79xYVXlQa+90H4U=; b=N0RM/sU8rIjcd0
	AbCtNzMFd3dIVzeIXT11aAikpindUnQK/vZsob761Gtt3poPf52rdGkDe6su8wpOkSdyHImOriHDA
	tIT9QNar8F+NGJ4o2cUe3wll2zXbiIafhhCfSqwbGWaPLIt3q3+1wJTImWQ83oOoSheujcaOh0tA6
	VJj4zp/nfsLIdM3DU0yj9jyTZ49+krRcG8H17uJN06mQv//W5GkvLOw8ygeeIBobdRgRx6wKaU74H
	s7DEoor/YXEYzzf3p3YDuCdtFmfDuKb7F9DYDx2hgzwKOxiseUwVuD90F1a+oG/hTzjchrzjITX4F
	dAwes8j/HWg0o2mqIt0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8hJy-00022W-MM; Tue, 05 Jul 2022 12:06:26 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8hJv-0001yF-PQ
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 12:06:25 +0000
Received: by mail-lf1-x131.google.com with SMTP id z21so20106551lfb.12
        for <linux-phy@lists.infradead.org>; Tue, 05 Jul 2022 05:06:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=gvtOfLV3w59vkjhPXB0CKmZQUz8ZCCnh+m5pi29Tltw=;
        b=yFdGK76H7d4g5yVTH1z9XzJSMKrOBP5Ci49MiYAH0TuB7cE+gPlNguzCfd3wJ0pKLl
         1K6PftX9gDQJIlSINsgzlhjDcgpaVukKG3BK62aU62hpfbCYDXxPekbgz6+Jv9YwnQmK
         l8X9EVsPxj5hdCcjO1uHVz+Fohe1PopxxxDDhVIBQFlqaTNoMG8SW2EKYPp/vbe/ovqo
         zYsJmRKbfH1+ktLNjiKQc12nvv/YzQigrSLWoF3NwsPV6u5NSEVz06YXhnmIjW4cOkCa
         iRh3SYBE+FINTDQIHDYzN/sSC40SeXmLLy1ieg/joupZJsIPvmaZfMaEbn1ix66A8XO9
         Km0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=gvtOfLV3w59vkjhPXB0CKmZQUz8ZCCnh+m5pi29Tltw=;
        b=mpqWscUTKJBqVg1C+euraH6StFzcNomdrIZAH9Vb0xr4usrmnOqsqioQVcXgJeGebC
         dQ84AFOMCTL5zZ43qYQQvwlyejdT6UOuAEz9+y919iVV2ZC3akr1OCU68rielZaZCfZR
         lq13Nl9Iu8wiBdqFBQUwlnNYYklpPdfRp9KFO1S6dDX7ueKRc2fC18+CXF1tLh/OaDP8
         Uuu7yThsJEucPeP7M9KJ6rJ0j+IgHFWjzhuDlvpqIvLUaGg2bDMKYtlDMouCMl4qQYIB
         LruPDVCR65iNrM4mpN9itvhrGAtfeM9qHYtpB9T+ZnhWXVJgSMCuA34t1MdcCYfR8Ssb
         fPyg==
X-Gm-Message-State: AJIora/WN5Jf6M2ixv/Jbj/aP4QGUokVGR5kk/LfLv+fRtGr/GyeI6WA
	m2KLip9zjfROflD5rA92R7eMyg==
X-Google-Smtp-Source: AGRyM1tFtOB9fCIFQFFawJmwGngdoWCCZhwVtxeWNIqGg2x+SUbrZ0W7sfdj4st5IB40TYuKaFpRAA==
X-Received: by 2002:a05:6512:21d2:b0:47f:9f53:f729 with SMTP id d18-20020a05651221d200b0047f9f53f729mr22789851lft.378.1657022780340;
        Tue, 05 Jul 2022 05:06:20 -0700 (PDT)
Received: from [192.168.1.52] ([84.20.121.239])
        by smtp.gmail.com with ESMTPSA id r25-20020ac25a59000000b0048355942defsm389424lfn.249.2022.07.05.05.06.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Jul 2022 05:06:18 -0700 (PDT)
Message-ID: <6907ac7d-4970-b287-1ac6-1e47dae52949@linaro.org>
Date: Tue, 5 Jul 2022 14:06:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 38/43] phy: qcom-qmp-pcie: drop pipe clock lane suffix
Content-Language: en-US
To: Johan Hovold <johan@kernel.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson
 <bjorn.andersson@linaro.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220705094239.17174-1-johan+linaro@kernel.org>
 <20220705094239.17174-39-johan+linaro@kernel.org>
 <dcff330c-92ec-2302-8e2a-4ac124e72942@linaro.org>
 <76508b56-6733-b65c-d81c-31ac173780c0@linaro.org>
 <YsQnW2o4eCU8PlWl@hovoldconsulting.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <YsQnW2o4eCU8PlWl@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_050623_876426_178B18A7 
X-CRM114-Status: GOOD (  18.74  )
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

On 05/07/2022 13:58, Johan Hovold wrote:
> On Tue, Jul 05, 2022 at 02:13:04PM +0300, Dmitry Baryshkov wrote:
>> On 05/07/2022 13:20, Krzysztof Kozlowski wrote:
>>> On 05/07/2022 11:42, Johan Hovold wrote:
>>>> The pipe clock is defined in the "lane" node so there's no need to keep
>>>> adding a redundant lane-number suffix to the clock name.
>>>>
>>>> Drop the lane suffix from the pipe clock name, but continue supporting
>>>> the legacy name as a fall back.
>>>>
>>>> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
>>>> ---
>>>>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 8 ++++++--
>>>>   1 file changed, 6 insertions(+), 2 deletions(-)
>>>>
>>>> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
>>>> index 385ea3d8de08..254ad25591b9 100644
>>>> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
>>>> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
>>>> @@ -2210,8 +2210,12 @@ int qcom_qmp_phy_pcie_create(struct device *dev, struct device_node *np, int id,
>>>>   	if (!qphy->pcs_misc)
>>>>   		dev_vdbg(dev, "PHY pcs_misc-reg not used\n");
>>>>   
>>>> -	snprintf(prop_name, sizeof(prop_name), "pipe%d", id);
>>>> -	qphy->pipe_clk = devm_get_clk_from_child(dev, np, prop_name);
>>>> +	qphy->pipe_clk = devm_get_clk_from_child(dev, np, "pipe");
>>>
>>> Just get first clock and no need for handling any deprecation.
> 
> I still want to deprecate the current name as it makes no sense and
> risks introducing inconsistencies when adding new resources (e.g. should
> they also get a bogus suffix).

And it was suggested to you to deprecate entire property... There is no
need to handle anything in the driver.

> 
>> If I got it correctly, passing NULL instead of the name would do the trick.
> 
> Ah, thanks for spotting that. I feared this would require adding a host
> of new devres wrappers otherwise.
> 
> Would still be needed for the upcoming second pipediv2 clock though...


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
