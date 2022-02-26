Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 450FDC4332F
	for <linux-phy@archiver.kernel.org>; Sat, 26 Feb 2022 23:38:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0EBbooUMAM7smYFwveNPzhoFb4x1P6JvfyGEv24Mfq8=; b=zbYmGax5yBF97D
	GrxuUpEcSAib7la3rNN8A7PsItuPOpgSVB7Ypho/k9jk/uOWNovzWYOZyMqPK71b6j4WnG2YqrdiG
	Mu/HyUzDawucv7Y+7kBkc4+joVocSrviiIprrVgpEL/HkbmEuPkQWviYTS/O3Bqldd6nsek7GMaok
	csgd9mlWrS1BnIJrIgrrAfOqg/6ZbjXNH+ovqa9eplkn14D9afN9fUskY89YuSvZDRw81MZOdzJGp
	wi35/QihxY6X8yRrEAb1DAb7HgKyEwmUuXzJIH/eKh5pac5d1n2yefk7eaBTN5blTllL7j4jhFWTE
	WSO4o+vxlPCjS+TKdhzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nO6dv-008etb-Kn; Sat, 26 Feb 2022 23:38:27 +0000
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nO6ds-008etG-Pa
 for linux-phy@lists.infradead.org; Sat, 26 Feb 2022 23:38:26 +0000
Received: by mail-lj1-x236.google.com with SMTP id e8so12385215ljj.2
 for <linux-phy@lists.infradead.org>; Sat, 26 Feb 2022 15:38:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=L77jjy3Pjb6haSmnZfnNmFgIofaBblWDltlBIh2LtP8=;
 b=ksCenEYJQP77iJl3VqiJjoJeFeq1I9QMUm9fBePnf75SO+2P4R5mUgZ2dv3tKUFnuu
 gar7ZtWVt828sugg+VnjuYXnlA7qzZVyxJ/2Fc+Wjuq4KHtxJ0pKzrAByvjmsM6JlnqZ
 o3WODvJDdShjW1l2b8nEOAU6Jfe/fzCXXKDuCF6N6sA1IHoRNmPLjt+RqDAg2H5bf3tY
 LCjY63dHcBz2Zl5OxOMr0PeQmKwW2ry49C2tXCnEXCRwy7A7FgqnlQ8YOxCxkHfhq120
 2UqBGKjlKA8KKmGeZBCTcW2qvmwr3Heq5LdFUYauq5193lbCmssb9S8fYYA5VgSjT+Lu
 bCcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=L77jjy3Pjb6haSmnZfnNmFgIofaBblWDltlBIh2LtP8=;
 b=fl/FcX1V5HdWOfcujRh31gV+j19WPn3acaPmibDNNvVWcWeJGOt+7S8OWm0oyJ8mJ6
 49notgi/f7EY0CI3ewzVb0fvX0lrZom16PHavP6Gi8t2rsyodm0v9VC/H5XjVxCW3UEK
 jT/UOiQ6KfMsUkQJKiOOUS1e8Bv2Q1u8Z/W8iZUGKX8uQ2RoiULYaguufvTcS0u0oZQN
 pEHA4Anh/XDQM6qkvnpkIwE8RMX65M2R4ul274s4j92z/6kGHi8H811JU4ssS3uNzzDm
 JkU0PNq37c69LooZgGWyCq6gkMIQGKNoMjsXB/plRg/VWAW+nvQGt7Pme3FDEqoTtG7Q
 KAzQ==
X-Gm-Message-State: AOAM531tS+zaR+GYevX+kLm2vOjT//BpaXhiYHOxfT+uVzsjSaH4hBYW
 NUydazYO6mogb4CYwbtXZSpXqw==
X-Google-Smtp-Source: ABdhPJzI6jlwWxLLswkwolfMTDkejgzveyClOap+Ur9bxPwPT/5fOg85P4oWWg1y+wDGzOu5nl5a9A==
X-Received: by 2002:a2e:7007:0:b0:246:2b76:31a with SMTP id
 l7-20020a2e7007000000b002462b76031amr9992267ljc.397.1645918702617; 
 Sat, 26 Feb 2022 15:38:22 -0800 (PST)
Received: from [192.168.1.211] ([37.153.55.125])
 by smtp.gmail.com with ESMTPSA id
 b3-20020ac25623000000b004435fb1f5basm550208lff.78.2022.02.26.15.38.21
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 26 Feb 2022 15:38:22 -0800 (PST)
Message-ID: <a6d28a2e-69fc-9bdf-da0d-28be35d9bfc2@linaro.org>
Date: Sun, 27 Feb 2022 02:38:21 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.0
Subject: Re: [PATCH 1/2] dt-bindings: phy: qcom, qmp: Mark '#clock-cells' as a
 'optional' property
Content-Language: en-GB
To: Bhupesh Sharma <bhupesh.sharma@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, bhupesh.linux@gmail.com,
 agross@kernel.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org, robh+dt@kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Vinod Koul <vkoul@kernel.org>
References: <20220224123248.67073-1-bhupesh.sharma@linaro.org>
 <CAA8EJprRgsZRSXBQumveAn029j+w6xO8K2kZUO4rzZaefuYe7Q@mail.gmail.com>
 <CAH=2NtxQBS=c0W0cpX5EdNi12PrqiKEuzyvEtF8WrVE6nsU_rg@mail.gmail.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <CAH=2NtxQBS=c0W0cpX5EdNi12PrqiKEuzyvEtF8WrVE6nsU_rg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220226_153824_895792_585BA6FE 
X-CRM114-Status: GOOD (  18.50  )
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

On 25/02/2022 12:16, Bhupesh Sharma wrote:
> Hi Dmitry,
> 
> Thanks for your review comments.
> 
> On Thu, 24 Feb 2022 at 20:22, Dmitry Baryshkov
> <dmitry.baryshkov@linaro.org> wrote:
>>
>> On Thu, 24 Feb 2022 at 15:33, Bhupesh Sharma <bhupesh.sharma@linaro.org> wrote:
>>>
>>> Since '#clock-cells' is not a required property for several
>>> QCoM boards supporting qmp-phy(s) (for e.g. sm8150, sm8250 or sm8350 SoC
>>> based boards), mark it as an optional property instead.
>>
>> I believe the description is not correct. the clock-cells should not
>> be used at all, so it should be removed from the root node.
> 
> Hmm.. 'clock-cells' is still used for describing qmp phy pcie nodes for certain
> devices like 'msm8996.dtsi'. I am not sure if removing it would impact existing
> dts files. But let me try cleaning them up in v2.

Checked. Unless I'm mistaken, msm8996.dtsi doesn't use #clock-cells in 
root QMP PHY nodes.

> 
>> Also we should describe phy@ properties.
> 
> Sure, I will add them in v2.
> 
> Regards,
> Bhupesh
> 
>>>
>>> This fixes the following '$ make dtbs_check' warning(s):
>>>
>>> sm8350-microsoft-surface-duo2.dt.yaml: phy@1d87000:
>>>    '#clock-cells' is a required property
>>>
>>> Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
>>> Cc: Vinod Koul <vkoul@kernel.org>
>>> Cc: Rob Herring <robh+dt@kernel.org>
>>> Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
>>> ---
>>>   Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml | 1 -
>>>   1 file changed, 1 deletion(-)
>>>
>>> diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
>>> index 9e0f60e682c4..746a929c63bb 100644
>>> --- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
>>> +++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
>>> @@ -115,7 +115,6 @@ patternProperties:
>>>   required:
>>>     - compatible
>>>     - reg
>>> -  - "#clock-cells"
>>>     - "#address-cells"
>>>     - "#size-cells"
>>>     - ranges
>>> --
>>> 2.35.1
>>>
>>
>>
>> --
>> With best wishes
>> Dmitry


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
