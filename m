Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8280BC433FE
	for <linux-phy@archiver.kernel.org>; Tue, 18 Oct 2022 16:44:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ly1IaKm2z8CdueuFj6YLC98mZfDAeCtlefZHaV5P8us=; b=Z/Q4az3SMZRRQ6
	MAFiQfWIqmlEYTLmGHOvNSJpN0IsVbZgvE/61yEmBHISwmn4F/Q6zm8HyrlhLhfzw9SH0tc6YjZmY
	te2uRmTqWchOMh8Fv+iBK5nHYJDQNLD/HiOUB54cGpLFOGs/nZ1JkP9sq4sY7Z6tnBSO7vF5kSqt2
	yHA/cdXlxkhPGelAKJz76o252VM2I5t5g2WmuSw00+WarQqtVuAKtXsIJT2USYdvTduUScDLjnyne
	24xwTHjIv3oySF2q1v2iRixHRmVySydH1iQWBzDj9qGpoPQy6DPRccBQ3ciNFb+JBtUUyk21enKr7
	1hilqi+O/PZIOwXuhIlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okphe-0091G5-V8; Tue, 18 Oct 2022 16:44:30 +0000
Received: from mail-qt1-x834.google.com ([2607:f8b0:4864:20::834])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okphb-0091EF-Oh
	for linux-phy@lists.infradead.org; Tue, 18 Oct 2022 16:44:29 +0000
Received: by mail-qt1-x834.google.com with SMTP id r19so10022848qtx.6
        for <linux-phy@lists.infradead.org>; Tue, 18 Oct 2022 09:44:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8Tbu2eJEYFjyO0ej5IfoFmf0gdEZqmFzh3CLJlNQxzw=;
        b=Hah9Indmain6Q3j8MTL7qJDfMpsNsnS3XJcTan9bQ9Fc+dNLiT9H+PQ0q4MlSJZO4P
         uD0JxDcLWYwQ7s4yTP99/LbnLAAKPOXxKFGvraeuh8S/9Yaiukr63doI9fjqroADX8Tc
         kcjF6I/okYhO482Egc/N8MT0JPHMCDDE9iRwrql3bnnWDrtDoyh4mAGfr8hbRmkREmns
         1prvsXGljY08AFIOrsXq/rSCWbTdYjIPQKIMrmI34EnZIswfW2QC1OiKsghmjRgWUF0m
         HPRPtPc4CtLUOKlRmYKmVtzjEamjBRBtL8YkRptfKxneTxofqArshuRiqH31DJxNw11f
         w8yQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8Tbu2eJEYFjyO0ej5IfoFmf0gdEZqmFzh3CLJlNQxzw=;
        b=3i/5wO/oPP2AFe+fvdhaIYd4fWaYfT7w8SPmKLVZnKBOL4nEl7rybobd4lbzes/Hbt
         EAY3pMVszaU4QACwkndW5HOT0SiU0ta8lJQ6bGo0EOHwjsQ1a/mxjjXkKHEXCpX6evXV
         GZqEAJzdL/5y6VznzLkOrs6mMfW8WEPZ6+1MasRLyYCTpWKg41eQcGaaeqk1TPTmKsIq
         7f32bVFOYjvk3dhACRZl1f4e3S2ds8S7faZ/H4kSv1M0gO2VE7q0zksRhNsywpa59QXt
         R2DyPsSTb8w2MLSc/UcbPVe/mdV21TP8n0/JKWZzEVUaDL1vtPrRuGLYm19LT3+Wztty
         GKrw==
X-Gm-Message-State: ACrzQf0zY4cmzkq4Ba8qgNZmMu0czrb3eoQQgJ2GvxWXn4rO2fdyK9Dp
	VK5UX85gbqVwjTUe/w19kqnmYg==
X-Google-Smtp-Source: AMsMyM5Dd8///qAFR9rKWcH8IQOs/how2BLHQqSSuEXBHTCVT2Lyylgatw9LASPWVZL8YIG80OYPNw==
X-Received: by 2002:a05:622a:1a9d:b0:39c:d634:be42 with SMTP id s29-20020a05622a1a9d00b0039cd634be42mr2878001qtc.476.1666111464968;
        Tue, 18 Oct 2022 09:44:24 -0700 (PDT)
Received: from [192.168.10.124] (pool-72-83-177-149.washdc.east.verizon.net. [72.83.177.149])
        by smtp.gmail.com with ESMTPSA id dt5-20020a05620a478500b006ee94c5bf26sm2782237qkb.91.2022.10.18.09.44.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Oct 2022 09:44:24 -0700 (PDT)
Message-ID: <e334e265-fde0-29df-d905-c3ec4941f152@linaro.org>
Date: Tue, 18 Oct 2022 12:44:22 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH 09/15] dt-bindings: phy: qcom,qmp-pcie: mark current
 bindings as legacy
Content-Language: en-US
To: Johan Hovold <johan@kernel.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221017145328.22090-1-johan+linaro@kernel.org>
 <20221017145328.22090-10-johan+linaro@kernel.org>
 <CAA8EJpqSWmy5Z4cmJnsdjMjkmACW7HSi-k5JxZ0gLCeUAWEnxQ@mail.gmail.com>
 <Y05+E90tmlq2tNFa@hovoldconsulting.com>
 <CAA8EJprwhEvUfUr-zDir4zFh_NAyr0qPbrHi6Hf8=2HC1dAhaw@mail.gmail.com>
 <b0c1bdfb-4a31-9deb-1f0a-0ed813707464@linaro.org>
 <Y07OfmfQgQWFzHZY@hovoldconsulting.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <Y07OfmfQgQWFzHZY@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221018_094427_840410_9A9E0AAA 
X-CRM114-Status: GOOD (  32.17  )
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

On 18/10/2022 12:04, Johan Hovold wrote:
> On Tue, Oct 18, 2022 at 11:32:07AM -0400, Krzysztof Kozlowski wrote:
>> On 18/10/2022 07:37, Dmitry Baryshkov wrote:
>>>
>>>>> And yes, I think we should also upgrade
>>>>> older DTs, keeping drivers backwards compatible (for some time?).
>>>>
>>>> Possibly, but I'm not sure it's worth the dts churn. As I mentioned
>>>> elsewhere, supporting both the old and new binding in the driver is
>>>> mostly trivial, while encoding the deprecated bindings in DT schema
>>>> sounds like it would be painful.
>>>
>>> This is probably the time where Krzysztof can advise us. I'm still not
>>> sure when it is expected to encode both old and new bindings in the
>>> schema and when we can update both the schema and the DT.
>>
>> I do not follow what exactly the proposal is. Are you asking whether to:
>> 1. keep existing DTS compatible with old driver?
>> or
>> 2. update existing DTS so it is working only with new driver (and not
>> compatible with old driver thus having ABI break)?
>>
>> If so, it is less question to bindings but more to the usage of DTS in
>> other projects (like bootloaders, firmware, BSD) and generic
>> recommendation is: do not break other users, if possible. It is however
>> up to the platform maintainer (Bjorn) to decide on this, not on me.
> 
> The question is whether to convert also the current bindings and DTS to
> the new (sc8280xp) scheme (e.g. drop the child nodes and register
> subregions).
> 
> The driver can support both binding schemes using the same compatible
> strings for a transition period (or in theory forever) by checking for
> the existence of a child node.
> 
> Converting the DTS to use the new bindings would obviously prevent using
> them with an old kernel (i.e. 2 above), but I don't think that's a
> problem (unlike backward compatibility during at least a transition
> period).

It is still not nice towards any other users of DTS, because this will
break all of them. I agree this won't be ABI type of break. It is
discouraged though, unless there are clear benefits from this or one
totally does not care about other DTS users...

As I said it is up to platform maintainer.

> 
> My concern was how to describe the deprecation in DT schema if we were
> convert them. By instead just keeping the old bindings as-is in a
> separate file and continuing to support them in the driver we can have a
> nice and clean description of the new bindings (sc8280xp) without the
> legacy cruft.

You cannot have one compatible in two schemas, so for old bindings (and
DTS):
1. Don't convert them,
2. Convert with keeping old properties - as you pointed this might be
full of conditionals/allOf, so difficult to maintain and read,
3. Convert dropping old stuff.

For the option 3. for sure Rob will ask why. :)

> 
> If we were to start introducing conditionals on existence of child
> nodes, and marking the old bindings as deprecated in one large schema,
> then that sounds like it would be very messy and hard to read and
> maintain. But perhaps there is some way to do this without such
> downsides that I'm not aware of.


Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
