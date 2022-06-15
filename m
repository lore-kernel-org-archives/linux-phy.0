Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01920C43334
	for <linux-phy@archiver.kernel.org>; Wed, 15 Jun 2022 16:11:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NL8sraRi0aD1U6KZgYHyPz4OSTkMtvQeHsDdOpSZLLM=; b=acHVij3eT5UglI
	kcCMadgTAxJfC7L6UVgPyoDF7NL37UgzGz1RsZPmEpN2Rd1kVeLlYuFMsMxDnQO8t8gKPxboYXl1/
	Z3BWLUZlHZMjI2A9sm3AMGTgpBKczh3z1kNhlLDE6Rn0SGX9/rbR9JcPAXNpO60nxC8TMBCP2Mkg5
	O/FDhHqyk9g+7mKUhTtezgjAWi+7L6DWq6rO8EVdQBBvwVudPoQlPcoYKJuNAm1AS6Sxg7iDVM+HR
	aq1yI3yBe3KRn1K7MwYj1CZaRSWcndV2HMvCz7x0eyN3fgC/bw5gw0BmibZgd+bIlDubs2LSWIgYu
	t03jlzoltLBQPf0sYgBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1VcB-00FJ7R-CM; Wed, 15 Jun 2022 16:11:31 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1Vc7-00FJ4z-MM
	for linux-phy@lists.infradead.org; Wed, 15 Jun 2022 16:11:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1655309485;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=SYwgKkQjGzy4vjuONVP2nbTWiQ6a3KB6AbIHQDB6eZ4=;
	b=WMyt7o1pxo+pikkTmLlzx9W1tOwARYKRixPLU76ATblwNIvC4uYoI7KkV3cK3oamlkH2Ok
	ImsjNF2vBDfPxcNgIoske3sy2rAUFfPIA52RG/m/hv0l07cJj5hmTpZ6NcCzZcQ/YonurS
	xoWezKtWthmzs+HMUKveTI2j3h8Ky3k=
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-91-s-JSIAZzPdC_j2DhXUcLVw-1; Wed, 15 Jun 2022 12:11:23 -0400
X-MC-Unique: s-JSIAZzPdC_j2DhXUcLVw-1
Received: by mail-ej1-f70.google.com with SMTP id kf3-20020a17090776c300b0070d149300e9so4468955ejc.15
        for <linux-phy@lists.infradead.org>; Wed, 15 Jun 2022 09:11:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=SYwgKkQjGzy4vjuONVP2nbTWiQ6a3KB6AbIHQDB6eZ4=;
        b=tAEt0uILDRhw4SGqXVHoJdbv/wAiyArBBJ+Fcp4cbGXnCf0bc3hIP/RxTTU3/jiXxM
         p1/rmmkPq6cviq6NtJ+TuetAnOPU864A9sCc1yvDNgwgbykN1a3XaMiVZFI/boW4m10/
         l7V4038XZgO7pg5u5XmJUbGOlVRyJ2NjxmClbm8GN3s8yOgrWPZ6ngzZAD6G/+KBGmEm
         9VXSllkGpGrQxbhfrDey7M3z41+NVwvLLaXqBnci5cVnm0yrSFseB3fctgCjXqqOR7FJ
         y42mL9XodpzEgsGmj6J45NsuwlADYL8Amx/lo8XAGrfrvMJP0LtZpRzGpMsMaCEHLV7f
         WNlQ==
X-Gm-Message-State: AJIora89XJbt/2B1RftISkzlo9bMEUKUyufrZHW4K5EkSfuzmwGs6wjY
	jwP71S++G1i8r4rgsx7xL1EUeT9pr+wWjV7QjFckIpDANTn2KzYW62vycqXLanT4eINPGLaeMq2
	dZuE0H/RnvWraeWN74jwXdvyvew==
X-Received: by 2002:a05:6402:1c91:b0:42d:c9b6:506b with SMTP id cy17-20020a0564021c9100b0042dc9b6506bmr632409edb.166.1655309482632;
        Wed, 15 Jun 2022 09:11:22 -0700 (PDT)
X-Google-Smtp-Source: AGRyM1tAtdJfLowzWrTXaHYr/672zwCo8kH9O7E4MnmuGCakvRsxz/A0LCNz5NAEZ4eNEwjazTGy8w==
X-Received: by 2002:a05:6402:1c91:b0:42d:c9b6:506b with SMTP id cy17-20020a0564021c9100b0042dc9b6506bmr632068edb.166.1655309479499;
        Wed, 15 Jun 2022 09:11:19 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c1e:bf00:d69d:5353:dba5:ee81? (2001-1c00-0c1e-bf00-d69d-5353-dba5-ee81.cable.dynamic.v6.ziggo.nl. [2001:1c00:c1e:bf00:d69d:5353:dba5:ee81])
        by smtp.gmail.com with ESMTPSA id bq15-20020a056402214f00b0042ab2127051sm9677479edb.64.2022.06.15.09.11.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Jun 2022 09:11:18 -0700 (PDT)
Message-ID: <402d2059-d0ab-2229-870c-f511cd6f29ee@redhat.com>
Date: Wed, 15 Jun 2022 18:11:18 +0200
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
 <390cf16c-f07c-ebfc-08ad-25b242548953@redhat.com>
 <YqnHpXvZJEfhX21/@smile.fi.intel.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <YqnHpXvZJEfhX21/@smile.fi.intel.com>
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220615_091127_953560_D49D7889 
X-CRM114-Status: GOOD (  12.68  )
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

On 6/15/22 13:51, Andy Shevchenko wrote:
> On Tue, Jun 14, 2022 at 05:49:22PM +0200, Hans de Goede wrote:
>> On 6/14/22 15:01, Andy Shevchenko wrote:
>>> On Tue, Jun 14, 2022 at 01:23:21PM +0200, Hans de Goede wrote:
>>>> On 6/13/22 18:08, Andy Shevchenko wrote:
> 
> ...
> 
>>> [   35.126397] tusb1210 dwc3.0.auto.ulpi: GPIO lookup for consumer reset
>>> [   35.126418] tusb1210 dwc3.0.auto.ulpi: using ACPI for GPIO lookup
>>> [   35.126455] tusb1210 dwc3.0.auto.ulpi: using lookup tables for GPIO lookup
>>> [   35.126465] tusb1210 dwc3.0.auto.ulpi: No GPIO consumer reset found
>>> [   35.126476] tusb1210 dwc3.0.auto.ulpi: GPIO lookup for consumer cs
>>> [   35.126485] tusb1210 dwc3.0.auto.ulpi: using ACPI for GPIO lookup
>>> [   35.126538] tusb1210 dwc3.0.auto.ulpi: using lookup tables for GPIO lookup
>>> [   35.126548] tusb1210 dwc3.0.auto.ulpi: No GPIO consumer cs found
>>> [   40.534107] tusb1210 dwc3.0.auto.ulpi: error -110 writing val 0x41 to reg 0x80
>>>
>>> (I put 5000 ms there to be sure)
>>>
>>>> I'm fine with going with this workaround patch to fix things.
>>
>> Ok, so I guess we should just apply this workaround patch to make
>> the error non fatal. Still would be good to dig a little deeper one
>> of these days and see what is going on here...
> 
> Can you give a formal tag?

Sure:

Acked-by: Hans de Goede <hdegoede@redhat.com>

Regards,

Hans


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
