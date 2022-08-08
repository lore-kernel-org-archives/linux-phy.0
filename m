Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51E8EC25B0C
	for <linux-phy@archiver.kernel.org>; Mon,  8 Aug 2022 05:46:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rwITvvQON7UxnfY7/Ma0Lxr9mKOZSDOeIz2nZ6J9ktg=; b=rJfzB7NnX3lz9C
	IYiNpF1wCoyVJJQs94YRF/Kfn5/BKRjqRsq5tBotvMyWDNp0X33UqlOkMzLVeft+Blmif/fAP4f81
	6fxudhefqsNPk2bT3izS04q0bmVHNVzWnCU4mDwiWPYzm40QITx1HMDK3B1CJf5Jkhb/rMEOEjCkw
	XoWyOTuWFJfozMGl0C3uXqZuSgBEdrJVK+uyaj+3ec2D9LJur7WD7WfABVsqwhqY3+lcj41mdrIoW
	/s3Cq7xnm9389XOWBz5790C2OUkjFeKp5Avolq/UV8skNrnRU3k65oRHE+SBAd0oWkkyifVEVoufp
	j70m7RBfHu4mQmkGMyJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oKvbL-00B4Rc-G7; Mon, 08 Aug 2022 05:46:55 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oKvbA-00B4Fr-45
	for linux-phy@lists.infradead.org; Mon, 08 Aug 2022 05:46:45 +0000
Received: by mail-lj1-x232.google.com with SMTP id x9so5020289ljj.13
        for <linux-phy@lists.infradead.org>; Sun, 07 Aug 2022 22:46:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=xOqrRkUDHjSPuj9i4H6o8TBLA4yLo5iNF5pKCqfxIWk=;
        b=w2pEwR1FFLzI//sm8jmTeFJ4Px5SM4423RgpSEXsyRj/Z2hRJebM9KtVWuyfDGuAXe
         jcaG0Q5QCJYPvc5nmx+AW8tu4Lxa4DFmlhxoYTRGmDMS4tF5kDeZM2XICPX1m3BxzbhT
         2OljNkW/IMOcfyl1k/wx8oGs0EeiXcr9O/Y4ev7VPe2fVsnugj9zFXoWRyn9+jqOsmm2
         PcYhEjclXti52j4KCKnl+Kd3cluDe6QxlE3OZb9sy8giizcPKhRd2hMS944KIYQhxnfw
         gOXw3ww3YkOwBEv2vqXKZRoMCDRiUJVoCGp3WJaRUNwJGYYnxOlD7KVb6+w+LNi64AcA
         Ak+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=xOqrRkUDHjSPuj9i4H6o8TBLA4yLo5iNF5pKCqfxIWk=;
        b=iXqTl4oitLzEUVYUqXqfA8lkIlqVg/su4LMK1SrwOLefLrMfrwJsoI8hBr93QFsseX
         BxH7SywAMp+pQ3/xBy+EyOODtRWh1morDTToSlWnv3AFTRe9cU18h3a5vYlUyjU49YHL
         VzObkf8kQK//3EyH149j27CdRP/ICWT/AAEm0y0QeRxJWB+PGyV5pjqch1ETLVci7gja
         450fgSgm2XIrDBlOgozlwAxl5aHjZgFbDtwzj1tqDmGSL6kH8r+4OAt7e/bQT1Wxmkpt
         1Grn0XxwELcS15fyrEiXIl3v0gMu6jslesWQreYDC6SydaDIOHo9aTCNhhAmQ/lawWAP
         xlDA==
X-Gm-Message-State: ACgBeo1VfXkIl2LL8JykB13fLyGlBQLvBN5YhFAv1Pcg4HZDHD4yBGUS
	y2XAC+sFBfrcDwSCke3OLyLRfg==
X-Google-Smtp-Source: AA6agR5JYOLMzw/XuGStP7L2CF8XiWX/3bJ6dgIuD4q16mY6f7h3TcfBzWO5PAF/CuZhlkN1TZO6eA==
X-Received: by 2002:a2e:7e0a:0:b0:25e:63f2:bbb0 with SMTP id z10-20020a2e7e0a000000b0025e63f2bbb0mr5699446ljc.77.1659937601371;
        Sun, 07 Aug 2022 22:46:41 -0700 (PDT)
Received: from [192.168.1.39] ([83.146.140.105])
        by smtp.gmail.com with ESMTPSA id o14-20020a05651205ce00b0048ad0ad627asm1301868lfo.128.2022.08.07.22.46.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 07 Aug 2022 22:46:40 -0700 (PDT)
Message-ID: <6aac8854-599e-c43f-0a49-0650fce91179@linaro.org>
Date: Mon, 8 Aug 2022 07:46:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH v4 3/8] dt-bindings: clock: Add ids for Lynx 10g PLLs
Content-Language: en-US
To: Sean Anderson <sean.anderson@seco.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-phy@lists.infradead.org
Cc: devicetree@vger.kernel.org, Madalin Bucur <madalin.bucur@nxp.com>,
 Camelia Alexandra Groza <camelia.groza@nxp.com>,
 linuxppc-dev@lists.ozlabs.org, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Ioana Ciornei <ioana.ciornei@nxp.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, linux-clk@vger.kernel.org
References: <20220804220602.477589-1-sean.anderson@seco.com>
 <20220804220602.477589-4-sean.anderson@seco.com>
 <bee3d724-1efb-d5c7-6698-c98a198e69fd@linaro.org>
 <b97f113b-f429-c8c5-96ee-7f1a68e16117@seco.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <b97f113b-f429-c8c5-96ee-7f1a68e16117@seco.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220807_224644_225606_9AE754F9 
X-CRM114-Status: GOOD (  21.99  )
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

On 05/08/2022 17:17, Sean Anderson wrote:
> 
> 
> On 8/5/22 2:53 AM, Krzysztof Kozlowski wrote:
>> On 05/08/2022 00:05, Sean Anderson wrote:
>>> This adds ids for the Lynx 10g SerDes's internal PLLs. These may be used
>>> witn assigned-clock* to specify a particular frequency to use.
>>>
>>> Signed-off-by: Sean Anderson <sean.anderson@seco.com>
>>> ---
>>>
>>> Changes in v4:
>>> - New
>>>
>>>  include/dt-bindings/clock/fsl,lynx-10g.h | 14 ++++++++++++++
>>>  1 file changed, 14 insertions(+)
>>>  create mode 100644 include/dt-bindings/clock/fsl,lynx-10g.h
>>>
>>> diff --git a/include/dt-bindings/clock/fsl,lynx-10g.h b/include/dt-bindings/clock/fsl,lynx-10g.h
>>> new file mode 100644
>>> index 000000000000..f5b955658106
>>> --- /dev/null
>>> +++ b/include/dt-bindings/clock/fsl,lynx-10g.h
>>> @@ -0,0 +1,14 @@
>>> +/* SPDX-License-Identifier: GPL-2.0-only */
>>
>> This should be dual license.
> 
> This is just matching what the majority (263 out of 326) clock dt-bindings headers do.

Then please license it just like bindings, so dual license with BSD.

> 
>>> +/*
>>> + * Copyright (C) 2022 Sean Anderson <sean.anderson@seco.com>
>>
>> It's confusing to see personal copyrights with company email. Either the
>> copyright is attributed to your employer or to you. If to you, use
>> private email.
> 
> I hold the copyright, and I would like inquiries to be directed to my work
> email (as I don't have this hardware at home).

OK, I guess I won't be the only one confused :). This entry here is not
parsed for any tools and only sometimes people look at it. The questions
are directed via entry in maintainers file or via git history, so you
can put company email just there.

> 
>>> + */
>>> +
>>> +#ifndef __DT_BINDINGS_CLK_LYNX_10G_H
>>> +#define __DT_BINDINGS_CLK_LYNX_10G_H
>>> +
>>> +#define LYNX10G_CLKS_PER_PLL 2
>>> +
>>> +#define LYNX10G_PLLa(a)		((a) * LYNX10G_CLKS_PER_PLL)
>>> +#define LYNX10G_PLLa_EX_DLY(a)	((a) * LYNX10G_CLKS_PER_PLL + 1)
>>
>> These do not look like proper IDs for clocks for bindings. Numbering
>> starts from 0 or 1 and any "a" needs to be clearly explained. What do
>> you bind here?
> 
> This matches "a" is the index of the PLL. E.g. registers PLL1RSTCTL etc.
> This matches the notation used in the reference manual.

This is a file for bindings, not for storing register values. There is
no single need to store register values (offsets, indexes) as bindings
as it is not appropriate. Therefore if you do not use it as an ID, just
remove the bindings header.

> Although for
> convenience, this driver considers the PLLs to start at 0 instead of 1.

Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
