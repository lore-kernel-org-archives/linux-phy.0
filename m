Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3CE81C6FA8E
	for <linux-phy@archiver.kernel.org>; Wed, 21 Sep 2022 08:59:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8HXHb76kWQaJ4hcylMYTzQUcEYu910Iea8zHFvPN0sw=; b=j6hHutNL60Fq08
	/VlaLQA4cApwsvQ0MiLs8LYT1r7y/bub9F2p/9HV9RUwpbzXTpxTeuY2sasOlnRgRFrxYI1v9iHyg
	cVnfBNw75IHniLY8G39J8BNUh+oZubY0jmJKDMavJcTcy+oeIDA048/oSmF+FoQ7hqqvJYOqpeubp
	tjpUeTDJ76X/6I+WbHNg5u2VvCukpvBtW8He5KQ/dbxn6+/gAD3tkw95Ibo+fH/1NfMxGpKEcqCoe
	Jqgi6Nzjm5xyWJd9cSoeSCULRYnyL53X5m4tP1RFi+tSpaxLlnqd72NFUi75+j8zGl9OJgCYbfWRd
	GLcXCr2QH1abXvLPdAsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oavZY-00ABAj-Dt; Wed, 21 Sep 2022 08:59:12 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oavZU-00AB7a-N9
	for linux-phy@lists.infradead.org; Wed, 21 Sep 2022 08:59:10 +0000
Received: by mail-lj1-x232.google.com with SMTP id g20so4937901ljg.7
        for <linux-phy@lists.infradead.org>; Wed, 21 Sep 2022 01:59:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=uDqPTxLBXSRPNpIBt+p1kHd5kdS0XI/15zFCLNOcbyk=;
        b=T4gjUPXC4hkGq24IAc+95lbu4B9/zQ8sbasdUzvPNjk5u/9xQ0nVBbdZvTA6TXdVzX
         pHTbwjfb46WfGDT4lL+YB/AYi8SdohbjAUzbQDqk5pPtRbzaY2VzdaAk/ybKCMXdTPi7
         v2Y9U3pAIJk/rywTXYBXGfZcExP5dSlSypizaX2/ThMnWK51lcRb81fWcdFc1o1ZTTCa
         8PJ5N5UHbB4/B+je9BExgXobGUhKFTRavsPmcKYoek7EC3QErH4n+gRMS86Ys7QLgRz6
         VKP+YzvHYytHvq4xQ37Ev5hTgyrRXgYcZpRY+M4/g+wrVbnFqtArEsmflhbHJZToVpjn
         LYWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=uDqPTxLBXSRPNpIBt+p1kHd5kdS0XI/15zFCLNOcbyk=;
        b=0q8rsV+kQi2HOqs8trEkMaowXfXjrFHdIf4Kb3DFNL4u86vpVJEOVUpgI4II8iUGqi
         AwMeZQvBX8Odvy4ctrCikZ6AT0lMTRUGkY4aD4IFiQMWNkme/cYBvEAUKb9777P4lhmV
         nB5o2LtNXlHljHJ/ovLGEZG4JVORDP4sf95xvoqhRVTNxp+vjCcXVA4MKiCmFH7HwNwW
         OKEjMtLeVmyS1hXsRe0G3L/LLU8fiW42Ja5+S9Cc1LEjnWb80rRhGzw+XzKEx7w1jeY1
         aHFq+T44AB9Gimh374oSn9e51yN78CiZ0KcIbaIYEzqYxx6XmREU2oGS5v63UTT7Vzdf
         KF8Q==
X-Gm-Message-State: ACrzQf1bLVRjJe1oBu/oXAU1iProLz6uRB+vWTuHYEqutD+UwJmexPh8
	qSnaZRh45Jdn+s1hqdlMB+YJ/NCpZ3MrCw==
X-Google-Smtp-Source: AMsMyM5OOy6mon1BB2JB7c0BlzMjfL6xLY1KY6NTfwT8OU5ZSjLFaoAwEb+6DD+5oB8xwh4muCYk2A==
X-Received: by 2002:a2e:9e43:0:b0:25d:d8e9:7b15 with SMTP id g3-20020a2e9e43000000b0025dd8e97b15mr8664523ljk.234.1663750746079;
        Wed, 21 Sep 2022 01:59:06 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id c4-20020ac25304000000b004996fbfd75esm347887lfh.71.2022.09.21.01.59.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Sep 2022 01:59:05 -0700 (PDT)
Message-ID: <8e54e03e-105a-cf3e-242f-796bef77bfe1@linaro.org>
Date: Wed, 21 Sep 2022 10:59:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH v2 3/4] media: dt-bindings: add bindings for Toshiba
 TC358746
Content-Language: en-US
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 devicetree@vger.kernel.org, jacopo@jmondi.org,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 kieran.bingham+renesas@ideasonboard.com, linux-kernel@vger.kernel.org,
 kishon@ti.com, hverkuil@xs4all.nl, vkoul@kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, linux-phy@lists.infradead.org,
 mchehab@kernel.org, kernel@pengutronix.de, linux-media@vger.kernel.org
References: <20220916134535.128131-1-m.felsch@pengutronix.de>
 <20220916134535.128131-4-m.felsch@pengutronix.de>
 <YyZTCsflWtUbo2ld@pendragon.ideasonboard.com>
 <20220919100844.bb7tzbql2vpk76xz@pengutronix.de>
 <YyhDO4ohv47uIij2@paasikivi.fi.intel.com>
 <YyhKoDxFoobY9vBd@pendragon.ideasonboard.com>
 <20220920152632.mjpgpmelvx4ya4k7@pengutronix.de>
 <Yyn5MqqKYH7VpFhw@pendragon.ideasonboard.com>
 <74b6b670-747a-f326-44ea-7588c3989b0e@linaro.org>
 <20220921083513.drt4rggqj7tpaygr@pengutronix.de>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220921083513.drt4rggqj7tpaygr@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220921_015908_821463_F0F607A8 
X-CRM114-Status: GOOD (  17.12  )
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

On 21/09/2022 10:35, Marco Felsch wrote:
> On 22-09-21, Krzysztof Kozlowski wrote:
>> On 20/09/2022 19:32, Laurent Pinchart wrote:
>>>>>
>>>>> Explicit bus types in DT indeed makes it easier for drivers, so if a
>>>>> device can support multiple bus types (even if not implemented yet in
>>>>> the corresponding drivers), the property should be there.
>>>>
>>>> Okay, I will make it required.
>>>>
>>>>>> Why do you have hsync-active and vsync-active if both are always zero? Can
>>>>>> the hardware not support other configuration?
>>>>
>>>> Sure the device supports toggling the logic but it is not implemented.
>>>> So the bindings needs to enforce it to 0 right now. As soon as it is
>>>> implemented & tested, we can say that both is supported :)
>>>
>>> Bindings are not supposed to be limited by the existing driver
>>> implementation, so you can already allow both polarities, and just
>>> reject the unsupported options in the driver at probe time. Future
>>> updates to the driver won't require a binding change.
>>>
>>
>> +1
> 
> I don't wanna do that because this let the binding user assume that
> this mode is already supported. 

What do you mean by "not supported"? By which system? By which firmware
element? Bindings are used by several operating systems and several
projects.

That's not the argument.

Bindings should be complete. Lack of knowledge and datasheets is a good
exception from this rule. Looking at Linux driver is not good exception.

> Adapting a binding is just 1 commit and
> since the property is already existing, there is no breaking change.
Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
