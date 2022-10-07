Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F723C433FE
	for <linux-phy@archiver.kernel.org>; Fri,  7 Oct 2022 18:45:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B1fjMv4u2AZLmw04uZy+89K9uMrwAUmlW/F1qhPDalU=; b=evI9Z6b7LZ9tqv
	uX8ZPo9CZoaGbsTvh8gj2hMxWfJ/Wrv5kKJMM5bsd2Ppi9YeZybsGJf+GAoRMi/5BlAtUPzUXBk45
	A6pajttflLrSCYmmorGXhik7Q3Ve+7Lw1u2KEKH/4jQf5kLIQzD4S1J7b9QOQmJPYg0F8+Cot8sjx
	MT16CZUB4fab3aAFZFKiZeI1jIPgRkc8MMMJD1qbnvLoLE8DuRkiq+aQ6UbQeNwsgo5CnijJ+zn/c
	Ik5zDQCGels7BObWNg2xI5VobF2RPef0jTIhMT2v82JiJE/6KmcDQdGKmvGiL38FJCzdyy9d5Xxz+
	R2kRtAwoyLhZeToWfOxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ogsLQ-00AAyp-Oq; Fri, 07 Oct 2022 18:45:12 +0000
Received: from mail-qv1-xf33.google.com ([2607:f8b0:4864:20::f33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ogsLO-00AAyM-Gh
	for linux-phy@lists.infradead.org; Fri, 07 Oct 2022 18:45:11 +0000
Received: by mail-qv1-xf33.google.com with SMTP id o67so3178189qvo.13
        for <linux-phy@lists.infradead.org>; Fri, 07 Oct 2022 11:45:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=c6xzJo6d2ytl3d7yl/tDWSMw9C4o+516TqkQvkc9k0U=;
        b=THcU9AZdc/AyEbbl7tVbRkHqvR/Jsuj5HPafpiMgmPLu7fNZvvXlpLDIz41ZFRFezd
         kF4ksupvQXh5HNYfmub5sVQtJHkm9vGQKAgaNBhlSNjCIjVi34rL29eTTlmd4XIkggLy
         64zvvJ9iOePtF/EPdUWscYLADPA+pm9H5CtMXqWoCpHYBI9ilFYCGl2J+KCwWxJ0JoPP
         MEkctw2EpUbvbHYTFC6teGYkCPLbyi4oOAnBkKyQSA468xyWGE59VgZUqeifF9f/gfHb
         QqhoPq45DStnixJztlRq4Oy0IMxbBSdGDc/raXSnHndQV1j2qipAdGB+AeIwqejJzH1W
         N3fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=c6xzJo6d2ytl3d7yl/tDWSMw9C4o+516TqkQvkc9k0U=;
        b=oYwWG/VKETIIT3jVASk8mXrqfnfKBnmeSAlzJUNiBbSgupUSCiOzAaEPok1/PtDh8y
         ooCwdZHUIa/MvLqC/eJpCK5G1MREa0xt6+kAAosXfP4Osk4uuWkLm9nFS3mqrA5lPyHp
         uPKXQXfA8sy6QHEp1ZlGjARASg9eacGx7clRoDn7iWmtousZJJM//+dwe8f7fRI4nfhp
         L8haeD9IrHutCJXcixZI72Ao0ND7w1vfbo5UaKhXeMtFsmaZb/Vt1/5Bpyn0Og1WU0t0
         sMGdQ5gFPV0z+FJ6SDKsT+umUCEURdkaHRbWMueajehjno8nnMhYGMx+XgEm/+HzOo26
         FerQ==
X-Gm-Message-State: ACrzQf1pkZNUHWv2l77b9StQzLtUHyeBJJBpC/ob7CP9sY+d4d7txIkX
	XmpjcBI7fU2kmGEKX7P/VLU=
X-Google-Smtp-Source: AMsMyM4nkM//a0heL4aINM2sqXyl4CM/+Y9+SBNuBTVBZPEG4GmwTqLX2nbjJEEa6N8iDytCqqOtLw==
X-Received: by 2002:a0c:8dca:0:b0:4ad:6e03:c906 with SMTP id u10-20020a0c8dca000000b004ad6e03c906mr5228666qvb.74.1665168307250;
        Fri, 07 Oct 2022 11:45:07 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.googlemail.com with ESMTPSA id dm5-20020a05620a1d4500b006bac157ec19sm2176931qkb.123.2022.10.07.11.45.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Oct 2022 11:45:06 -0700 (PDT)
Message-ID: <3d74b5cf-0f50-ac27-aa21-210507f41858@gmail.com>
Date: Fri, 7 Oct 2022 11:45:04 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH] MAINTAINERS: Update maintainers for broadcom USB
Content-Language: en-US
To: Greg KH <gregkh@linuxfoundation.org>, Justin Chen <justinpopo6@gmail.com>
Cc: linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 vkoul@kernel.org, kishon@ti.com, linux-phy@lists.infradead.org,
 f.fainelli@gmail.com, alcooperx@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, justin.chen@broadcom.com
References: <1665098469-19008-1-git-send-email-justinpopo6@gmail.com>
 <Yz/G0jQxc4c2gzhl@kroah.com>
 <CAJx26kUTzBeNkV_=gEeUYaatBwugT1uFH_b_ggq-fXaJDRBMqQ@mail.gmail.com>
 <Yz/Oik0uXXo0uGk6@kroah.com>
 <CAJx26kVL4nYL2fbHd31ZqpXxEos-nyQ2-GSZbL6FUa5ztAbxXw@mail.gmail.com>
 <Yz/UqtGD/dthxYJ2@kroah.com>
From: Florian Fainelli <f.fainelli@gmail.com>
In-Reply-To: <Yz/UqtGD/dthxYJ2@kroah.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221007_114510_626013_8CAEBF71 
X-CRM114-Status: GOOD (  17.61  )
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

On 10/7/22 00:26, Greg KH wrote:
> On Fri, Oct 07, 2022 at 12:19:01AM -0700, Justin Chen wrote:
>> On Thu, Oct 6, 2022 at 11:59 PM Greg KH <gregkh@linuxfoundation.org> wrote:
>>>
>>> On Thu, Oct 06, 2022 at 11:46:45PM -0700, Justin Chen wrote:
>>>> On Thu, Oct 6, 2022 at 11:26 PM Greg KH <gregkh@linuxfoundation.org> wrote:
>>>>>
>>>>> On Thu, Oct 06, 2022 at 04:21:09PM -0700, justinpopo6@gmail.com wrote:
>>>>>> From: Justin Chen <justinpopo6@gmail.com>
>>>>>>
>>>>>> Al Cooper is no longer the downstream maintainer for broadcom USB.
>>>>>> I will be taking his place as downstream and as an additional
>>>>>> upstream maintainer.
>>>>>
>>>>> What do you mean by "downstream" here?
>>>>>
>>>> Downstream as in internal to Broadcom. Apologies for the confusion.
>>>
>>> Ok, but then why are these all gmail.com addresses?  Why not use your
>>> proper work addresses instead so that we can at least validate that the
>>> patches are coming from a broadcom.com domain?
>>>
>> I believe the idea is we can continue to support as maintainers even
>> if we are no longer part of broadcom without having to change emails.
>> I believe Florian should be able to comment more. :)
> 
> So in other words, broadcom email servers do not allow sending patches
> out without mangling the text?  :)

That was definitively the case years ago due to IT using a Microsoft 
Exchange SMTP server and which had us switch to our gmail.com accounts. 
The "continuity" aspect of not having your email change does matter IMHO 
in that we should always be reachable, at expense of not immediately 
disclosing our employer. Other reasons I heard was that people posting 
publicly with a @broadcom.com email grew tired of being asked when they 
would get a working WLAN driver for their card.

Now we supposedly have a special SMTP server that would not mangle the 
patches and also not add the annoying legalese footer at the end telling 
you to destroy the email.

Does it matter though as long as Jonathan Corbet knows about our 
employer at the time for his lwn.net stats :)?
--
Florian

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
