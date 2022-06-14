Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B465C43334
	for <linux-phy@archiver.kernel.org>; Tue, 14 Jun 2022 15:49:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tbmsa9fCxIi9ZiG6htwns5/QOppgV7RQCbcyowRQ204=; b=QkOeRu0Nqe6aVJ
	2xGfkKRtPuPxvs+/SMTlOahEXbLPHjq7CtLEGDEDMd/27BhhNGOGWkM9AhQnyggWshkyoyPzs4471
	4g5pGNrXVSiUe38+ly7qr8ob47H2G53soj0+vTt1Mgv5T1mElnEayUp4bU2n4akyMZeYIPg9Ub5gD
	iE27sqpPrjFVqIEI1+13WVmsDFppKdP+E5su3qBRNvauiEPl+6M14nQgAU3+W8kIWbFf+IspoyveS
	Nsbq4QdCJOxpOQGKibZwc/IR1alyMGkJd0dpRCWd/HIpzAEefzhxIxvb5r/tBFbGzd+m5vfaki/r4
	viKwega1vF45s59oAVvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o18nL-00AE06-R4; Tue, 14 Jun 2022 15:49:31 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o18nI-00ADxx-Km
	for linux-phy@lists.infradead.org; Tue, 14 Jun 2022 15:49:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1655221766;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=H0LqbJsXhqPV5D+p7TkqXnodF2x40k1XJHNKS73Qf8s=;
	b=Hca6aUUqLrf+V3nXra6rBlxwPgyBgYta9SsleRH4rQZDEgw4LPDkMASPputH9eriFw+hvD
	vl4NAZwPZWMFrMgm8Z2mtTRUPVCdFTtW0P5d8tc5vhbbi4LsXeOjZu7YIh3GOiD2k0wZ8x
	K35oBAozEaRwrf3DuzVatsSIUyuZC6w=
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-189-Cl9F8QxaMjqKk_34EQIzbA-1; Tue, 14 Jun 2022 11:49:25 -0400
X-MC-Unique: Cl9F8QxaMjqKk_34EQIzbA-1
Received: by mail-ed1-f72.google.com with SMTP id o17-20020a50fd91000000b0042dbded81deso6466177edt.0
        for <linux-phy@lists.infradead.org>; Tue, 14 Jun 2022 08:49:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=H0LqbJsXhqPV5D+p7TkqXnodF2x40k1XJHNKS73Qf8s=;
        b=0sYjvYka4Pcn7YpF0UpNWl/edLSj+6nRh/GQkIptu8brdBS35dQEktCqPbtyul5Xpa
         oGcUigX4TqbXrwt8Jq5bJ1aYaYxrNX3SYUut7ICJYBovZ2o/t6TW6Wl0ReFrPPh/a/F8
         Mc5SZ6e3DZtLWSK/jfvQHyh+1VHcVTdc43tqgfj6UNOwodRRqpGv3f7/WaabThdAU7SB
         +9B20flfOJ5MxLrlXuEXdS04Oqf1qjy8dnAQgJ52MdklU6JDukRnzgNWXKkpkMkWgx+s
         vzpAvfp+qwHM5dKRhk6I9dF31MHH0C27T8QHZ04Yt6P3ax1hn/5dPjFdC5jW6LNggcr7
         chWg==
X-Gm-Message-State: AOAM530xTvHZ96+EJj6qSq+kj1MtJ4VBtSHt83kZP5tcNlRG+DC3HAx9
	ftahH9UbdUgv4XUXcl0KAT1yt3iXCFq3v+2sGz7DwpKpf8J+h4HIJXIdIkX1avIfYT41hL991xB
	71XOqLBEOMVK+qbsbQJ4hNxSjxQ==
X-Received: by 2002:a17:907:7245:b0:711:d1ff:2ca4 with SMTP id ds5-20020a170907724500b00711d1ff2ca4mr4977407ejc.753.1655221763966;
        Tue, 14 Jun 2022 08:49:23 -0700 (PDT)
X-Google-Smtp-Source: AGRyM1vPyve1+0RUr74qY0pNAm4r3dLI3EHLVJQ2aR4cVSenNQC/56jmGFGGus4kQCdlAK0D9v8mXw==
X-Received: by 2002:a17:907:7245:b0:711:d1ff:2ca4 with SMTP id ds5-20020a170907724500b00711d1ff2ca4mr4977383ejc.753.1655221763715;
        Tue, 14 Jun 2022 08:49:23 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c1e:bf00:d69d:5353:dba5:ee81? (2001-1c00-0c1e-bf00-d69d-5353-dba5-ee81.cable.dynamic.v6.ziggo.nl. [2001:1c00:c1e:bf00:d69d:5353:dba5:ee81])
        by smtp.gmail.com with ESMTPSA id d9-20020a1709063ec900b006feb6dee4absm5211929ejj.137.2022.06.14.08.49.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Jun 2022 08:49:23 -0700 (PDT)
Message-ID: <390cf16c-f07c-ebfc-08ad-25b242548953@redhat.com>
Date: Tue, 14 Jun 2022 17:49:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Subject: Re: [PATCH v1 1/1] phy: ti: tusb1210: Don't check for write errors
 when powering on
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Vinod Koul <vkoul@kernel.org>, Stephan Gerhold <stephan@gerhold.net>,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 Kishon Vijay Abraham I <kishon@ti.com>, Ferry Toth <ftoth@exalondelft.nl>
References: <20220613160848.82746-1-andriy.shevchenko@linux.intel.com>
 <bd21d5c6-ed5f-dd8c-f0bf-73f54ca8ee58@redhat.com>
 <YqiGocQ+vr9KjUHK@smile.fi.intel.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <YqiGocQ+vr9KjUHK@smile.fi.intel.com>
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220614_084928_877568_99CD6566 
X-CRM114-Status: GOOD (  22.15  )
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

Hi,

On 6/14/22 15:01, Andy Shevchenko wrote:
> On Tue, Jun 14, 2022 at 01:23:21PM +0200, Hans de Goede wrote:
>> On 6/13/22 18:08, Andy Shevchenko wrote:
>>> On some platforms, like Intel Merrifield, the writing values during power on
>>> may timeout:
>>>
>>>    tusb1210 dwc3.0.auto.ulpi: error -110 writing val 0x41 to reg 0x80
>>>    phy phy-dwc3.0.auto.ulpi.0: phy poweron failed --> -110
>>>    dwc3 dwc3.0.auto: error -ETIMEDOUT: failed to initialize core
>>>    dwc3: probe of dwc3.0.auto failed with error -110
>>>
>>> which effectively fails the probe of the USB controller.
>>> Drop the check as it was before the culprit commit (see Fixes tag).
>>>
>>> Fixes: 09a3512681b3 ("phy: ti: tusb1210: Improve ulpi_read()/_write() error checking")
>>> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
>>
>> Copy and pasting my reply about this in another thread to keep everyone up2date:
> 
> Thanks! My replies below.
> 
>> """
>> In my experience with using the phy for charger-type detection on some
>> x86 android tablets which don't have any other way to do charger detection,
>> these errors indicate a real communication issue for reading/writing
>> phy registers. At the same time this usually does not seem to be a big
>> problem since the phy seems to work fine with its power-on defaults.
>>
>> In case of Bay Trail these errors were related to 2 things:
>>
>> 1. Autosuspend of the phy-interface block in the dwc3, fixed by:
>>
>> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=d7c93a903f33ff35aa0e6b5a8032eb9755b00826
>>
>> But dwc3_pci_mrfld_properties[] already sets "snps,dis_u2_susphy_quirk",
>> so I guess it is not this.
>>
>> 2. There being no delay in tusb1210_power_on() between toggling the
>> reset IO and then trying to communicate with the phy, fixed in:
>>
>> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=df37c99815d9e0775e67276d70c93cbc25f31c70
>>
>> Maybe the:
>>
>> #define TUSB1210_RESET_TIME_MS				30
> 
> Actually it's 50.
> 
>> Added by that commit needs to be a bit bigger for the possibly
>> older phy revision used on the merifield boards?
>>
>> (note it is fine to just increase it a bit everywhere).
>> """
>>
>> IMHO it would be good to try and increase TUSB1210_RESET_TIME_MS (start with say 100
>> and then see if e.g. 50 also works). If increasing that does not work
> 
> No help
> 
> [   35.126397] tusb1210 dwc3.0.auto.ulpi: GPIO lookup for consumer reset
> [   35.126418] tusb1210 dwc3.0.auto.ulpi: using ACPI for GPIO lookup
> [   35.126455] tusb1210 dwc3.0.auto.ulpi: using lookup tables for GPIO lookup
> [   35.126465] tusb1210 dwc3.0.auto.ulpi: No GPIO consumer reset found
> [   35.126476] tusb1210 dwc3.0.auto.ulpi: GPIO lookup for consumer cs
> [   35.126485] tusb1210 dwc3.0.auto.ulpi: using ACPI for GPIO lookup
> [   35.126538] tusb1210 dwc3.0.auto.ulpi: using lookup tables for GPIO lookup
> [   35.126548] tusb1210 dwc3.0.auto.ulpi: No GPIO consumer cs found
> [   40.534107] tusb1210 dwc3.0.auto.ulpi: error -110 writing val 0x41 to reg 0x80
> 
> (I put 5000 ms there to be sure)
> 
>> I'm fine with going with this workaround patch to fix things.

Ok, so I guess we should just apply this workaround patch to make
the error non fatal. Still would be good to dig a little deeper one
of these days and see what is going on here...

Regards,

Hans


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
