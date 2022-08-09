Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0FACC19F2D
	for <linux-phy@archiver.kernel.org>; Tue,  9 Aug 2022 05:22:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TTkJsW4I3c2/QiCjI4wsxUDyAcFPeh0NwqEKxXeBjBY=; b=XPXek9ZUVBEs/O
	cgvuoeFVeGc0Q3JRD6SWIWZLeOjyrVQTLU9lw6ti72V33RAY8suxGt+EPn/ilHuRQIFKh2NjBNow7
	tsxZgYYazQBv+Ga72q9GYAtErE9KOYRZS8l4TFlDfaDqcjDhigFNIus5IxyBWe3iYMVe4mp3PYjDv
	gqq5tRHEyid0r7s6vVsrpzsaf1j/O0OSsCtUzifhRO0X+t8R7bHu5RTuu+6KhE/2Jj4J710OimE0y
	NTCMLBdFHFIHaQGdZKYCE/I9KFAv9vDp8qr3xDqItzqzkrRyk1/BpMOY5sbFSLFusJI/icbjRuE9V
	7XhqSci7TcO6W+nnz1NA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLHh0-001V1J-VC; Tue, 09 Aug 2022 05:22:14 +0000
Received: from mail-lj1-x22c.google.com ([2a00:1450:4864:20::22c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLHgn-001Uwj-7Q
	for linux-phy@lists.infradead.org; Tue, 09 Aug 2022 05:22:05 +0000
Received: by mail-lj1-x22c.google.com with SMTP id z20so11923143ljq.3
        for <linux-phy@lists.infradead.org>; Mon, 08 Aug 2022 22:21:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=w/IFf/K/9OkURHHOs9WHITZ5E+GducqFMehZENmcMms=;
        b=Q45jxuuCA3JYTRwNdbj8vKCeun3j9XXgjpX+PbR9MLO9z73W9A+o+9UIympLc/+Yrw
         awg9LkC1NBelWb+6zWghPSRUAM1OGNMqVnaHivQie203kYO6tgIw6ermK1m+ZNMp+dbK
         CKvXXs0uDwNsMsufqOZo59ZZG5l7uXkk1QIjSRJmu3EkdB9kaA16qyy2HjtIVW7GRAE1
         0g3XAjMaPKBOakKHQSfOGuD15dVATMVncTwRIj2Iuh831tepvdNcVjlpXkShKsy4D8kI
         igb6EVvXurEZcPdc2kdPuo7M1yjdAYMZsvbnzNAgMHgFyXQU97gmFVpIMvmT/YDPM6ml
         gLjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=w/IFf/K/9OkURHHOs9WHITZ5E+GducqFMehZENmcMms=;
        b=XAVuGbqYhq9s1JfHoiEnYmXxnO5eFRMQ9CvIFL31m151iKmORBiCcyTtqPhs833oT8
         DByqKYUVL4Km+1Meapl6AZB1OdOFnKDratj7B4G8zOwe5SNR3QNomouHcGXxTe6k0vF/
         r8/1D2RtSPh+wjOAdd/MtKpp4FvWRxYPhHT7xKSfjeTHPHt81CxHgFlbJ3czJyM0tCgF
         8z/DBGBj4SHx/PqjdN/662rpwK9c6Wzv0rpM60ers8+jedf2CK9Dz6lrg9IUaML+s08D
         xf+vAX129t7G2GB4yYbHE+h6S3Fk/MRbf7yTcvBT4G9EL/Zolssm1eFRFsY8joYi7u/o
         DoDw==
X-Gm-Message-State: ACgBeo2lzLnNdBpx1Rm+j34aHG+Uyf4Iz/TlUhlcln27zph5r7n3fnWd
	y2QxmuNw0I/xjOtcoUtmrtS78Q==
X-Google-Smtp-Source: AA6agR4nyxXV6UENxnka0n+jYHLHQ8Snp/LpQLG2xkyn/vQhrsmbZO2MAsK8dD6JtMDOLbg2HkoREg==
X-Received: by 2002:a2e:918d:0:b0:25e:c884:6a96 with SMTP id f13-20020a2e918d000000b0025ec8846a96mr4178935ljg.157.1660022516960;
        Mon, 08 Aug 2022 22:21:56 -0700 (PDT)
Received: from [192.168.1.39] ([83.146.140.105])
        by smtp.gmail.com with ESMTPSA id cf40-20020a056512282800b0048a8f119e7esm1624381lfb.233.2022.08.08.22.21.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Aug 2022 22:21:56 -0700 (PDT)
Message-ID: <a387164a-d42c-fc1e-529c-6000aa2db33e@linaro.org>
Date: Tue, 9 Aug 2022 08:21:54 +0300
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
 <6aac8854-599e-c43f-0a49-0650fce91179@linaro.org>
 <04b08e1c-4af2-581e-7be5-96c5b7b00ae5@seco.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <04b08e1c-4af2-581e-7be5-96c5b7b00ae5@seco.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220808_222201_389641_2590EF55 
X-CRM114-Status: GOOD (  18.03  )
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

On 08/08/2022 18:16, Sean Anderson wrote:
> 
>> This entry here is not
>> parsed for any tools and only sometimes people look at it. The questions
>> are directed via entry in maintainers file or via git history, so you
>> can put company email just there.
> 
> As I understand it, the email is simply informative. There are literally
> hundreds of examples of mixing a "personal" copyright with a company email.
> It is easy to find if you grep. If you are so opposed to it, then I will
> remove the email and simply use my name.

No, no problem for me.

> 
>>>
>>>>> + */
>>>>> +
>>>>> +#ifndef __DT_BINDINGS_CLK_LYNX_10G_H
>>>>> +#define __DT_BINDINGS_CLK_LYNX_10G_H
>>>>> +
>>>>> +#define LYNX10G_CLKS_PER_PLL 2
>>>>> +
>>>>> +#define LYNX10G_PLLa(a)		((a) * LYNX10G_CLKS_PER_PLL)
>>>>> +#define LYNX10G_PLLa_EX_DLY(a)	((a) * LYNX10G_CLKS_PER_PLL + 1)
>>>>
>>>> These do not look like proper IDs for clocks for bindings. Numbering
>>>> starts from 0 or 1 and any "a" needs to be clearly explained. What do
>>>> you bind here?
>>>
>>> This matches "a" is the index of the PLL. E.g. registers PLL1RSTCTL etc.
>>> This matches the notation used in the reference manual.
>>
>> This is a file for bindings, not for storing register values. There is
>> no single need to store register values (offsets, indexes) as bindings
>> as it is not appropriate. Therefore if you do not use it as an ID, just
>> remove the bindings header.
> 
> This *is* just for IDs, as stated in the commit message. The above example
> was only to illustrate that the clock controlled via the PLL1RSTCTL register
> (among others) would have an ID of LYNX10G_PLLa(0).
> 
> If you doubt it, review the driver.

Indeed, thanks. Except the driver, where is the DTS user of these
bindings? It's neither in bindings example, nor in the DTS patches.

Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
