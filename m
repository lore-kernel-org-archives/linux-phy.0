Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6AF0AC433EF
	for <linux-phy@archiver.kernel.org>; Mon, 21 Feb 2022 13:50:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c8NjI0NKsTFV+1JyAz1+xXc0rAXKOal+h8qgvX4r9ew=; b=rU99cpFC6G31bT
	1alhsG3WaMyZG39rQpP5AVoMQsSmkSgdwTeT8p7XJhikctCE/4ciNfyET37sTgfYrYjFEPQ5c/AmI
	8FPk0bdZbbLMxfYYNzqKIcCXkzRRIFhKPaDX9B2S4X4MTV5gWcXSek5ZxdWDbp75swfiZf2miGyd4
	VNWwXu/c6hdDc1zWQb/wiiZSvPIhDMAedJohfDznR+JJERK2qgBJE9SC6sOWeNvYcI7wVaUVfRRYi
	ux9grxcz0w3llC5T7Sk3svpbc8tKYaccanyuU8AnAAuVugRDWZ0gA4FEYpRLTUw/sD83XpA2JECV6
	dZLG5EdDSgaCWikDZ9Lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nM958-0061py-MX; Mon, 21 Feb 2022 13:50:26 +0000
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nM8Xh-005qV4-Cp
 for linux-phy@lists.infradead.org; Mon, 21 Feb 2022 13:15:55 +0000
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 2DD073F1A1
 for <linux-phy@lists.infradead.org>; Mon, 21 Feb 2022 13:15:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1645449348;
 bh=Es9XoqDzc+XWo5HeKssQ2Qd3khvL/eUQQBYKpuxtUzw=;
 h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
 In-Reply-To:Content-Type;
 b=feW+INuwh1XsMiP9jpL20uOwUNwZtKCZdZhKvciIQ7kC7ePtr4nX7+np7FV68JBbm
 kageVBT6EoBFw4B0b93XKKXd0zYJh79Aqc86zulnWZ3YdUO51QP8rbztADszlmGYsP
 ExebJlkYVthXOKxZFMd9krK0BsXyMJ1rQn2Wy12Qj5NNKdKm23KmJHf5fcBEnQTfW7
 6h/F8sADHC4rK4q36LuLwwJ/Y7i2+6UcLzMm+5YkCetoCkoR4fIkp3xPUPHgSMPED8
 bo3dyvaP6yPHYVv1JBfYDlFnYN9TNw7Bn5uS7/EE2SoZpr86E9FYi/2otBD3dgwGmB
 LvUZSJgw6g0bw==
Received: by mail-ed1-f71.google.com with SMTP id
 dy17-20020a05640231f100b00412897682b4so8355149edb.18
 for <linux-phy@lists.infradead.org>; Mon, 21 Feb 2022 05:15:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=Es9XoqDzc+XWo5HeKssQ2Qd3khvL/eUQQBYKpuxtUzw=;
 b=C1Ubbf1z8FMprmDxpBxgjWhjifIbPRL623FY8PsaaNI/iNVCcvrUFEs1pb/14gRldv
 dj5eY3yc4H2V98kth0XCiVcVkoCRCZfFyXug2xRJJD+r/CSzJDERFUuWGpVKqm+IyPtx
 TLl1zJEyIfNF58Py+Pow84eG4NZiZx3wWtGZFyWwhG8m+p/M7B5OVdZ2MwPd+DRg77Is
 MIYkSfIE2nVLMyHStsdSxckYE90KolgNEH5ZqYEkM5T6zVDAD7gX/1Zs2/cLWFbIZ0AH
 q+cIYHS6E+Ww2PDW99xOQjZ6dPrEW7U8VZ7F4orYfkJqSJMap0U12spG9QGq6d+6sepj
 qZAQ==
X-Gm-Message-State: AOAM533CW7R/DipGDALxuw0S64QAaCqpcs78zp3H8PO6gWnAypRLbueq
 Qq9WNTh0xXkQqQbzsiZurfYqUlZEG/Pnyzwf/pg4M6e5kmvdDUJKs3G2Y6HJ7d8zdmwwdRl73MK
 5kHKJPb4QQsJXa3zpSZLyRXeIAKYSUUuVGtCxHP8r7mc=
X-Received: by 2002:a17:906:280b:b0:6ce:f3c7:688f with SMTP id
 r11-20020a170906280b00b006cef3c7688fmr15562638ejc.468.1645449347888; 
 Mon, 21 Feb 2022 05:15:47 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxuy81icsVEjaCaH7G2+WD5zYXLkCxa7+Jwo5rHs+bQ/goVg3qMuL4OpMFfXLgQ1wYmm3LjPA==
X-Received: by 2002:a17:906:280b:b0:6ce:f3c7:688f with SMTP id
 r11-20020a170906280b00b006cef3c7688fmr15562624ejc.468.1645449347695; 
 Mon, 21 Feb 2022 05:15:47 -0800 (PST)
Received: from [192.168.0.122] (xdsl-188-155-181-108.adslplus.ch.
 [188.155.181.108])
 by smtp.gmail.com with ESMTPSA id 17sm5098684eja.57.2022.02.21.05.15.46
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 21 Feb 2022 05:15:47 -0800 (PST)
Message-ID: <7448b9b3-78f9-6f33-ae8d-d099bc64abe4@canonical.com>
Date: Mon, 21 Feb 2022 14:15:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH] dt-bindings: update Roger Quadros email
Content-Language: en-US
To: Lee Jones <lee.jones@linaro.org>, Roger Quadros <rogerq@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>, 
 Vinod Koul <vkoul@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-usb@vger.kernel.org
References: <20220221100701.48593-1-krzysztof.kozlowski@canonical.com>
 <2e33c00b-8460-3d85-92aa-2c3257725c2c@kernel.org>
 <YhOIHARSdIliVWjW@google.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <YhOIHARSdIliVWjW@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220221_051553_595437_94FCB78D 
X-CRM114-Status: GOOD (  16.15  )
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

On 21/02/2022 13:39, Lee Jones wrote:
> On Mon, 21 Feb 2022, Roger Quadros wrote:
> 
>> On 21/02/2022 12:07, Krzysztof Kozlowski wrote:
>>> Emails to Roger Quadros TI account bounce with:
>>>   550 Invalid recipient <rogerq@ti.com> (#5.1.1)
>>>
>>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
>>
>> Thanks so much!
>>
>> Signed-off-by: Roger Quadros <rogerq@kernel.org>
> 
> I assume you mean Acked-by (if you are the maintainer) or Reviewed-by?
> 
>>> ---
>>>
>>> Roger,
>>> You should also add a mailmap entry for your inactive emails.
>>
>> OK. I will send out a patch for this. Thanks for the hint. :)
>>
>>> ---
>>>  .../devicetree/bindings/mfd/ti,j721e-system-controller.yaml     | 2 +-
>>>  Documentation/devicetree/bindings/phy/ti,omap-usb2.yaml         | 2 +-
>>>  Documentation/devicetree/bindings/usb/ti,j721e-usb.yaml         | 2 +-
>>>  Documentation/devicetree/bindings/usb/ti,keystone-dwc3.yaml     | 2 +-
>>>  4 files changed, 4 insertions(+), 4 deletions(-)
> 
> What's the merge-plan for this Krzysztof?

First-in-first-served? :) or Rob?
It's a small change and I think non-controversial, so whoever could pick
it up first, should do it.

Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
