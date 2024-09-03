Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2ED4CCD3427
	for <linux-phy@archiver.kernel.org>; Tue,  3 Sep 2024 08:27:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WOYsFMFOs3paRkRK14UyuVfXn6UHI+0hXXrJzGijZDE=; b=EbIUEXFJ4ritB9
	r4L2fc+DeeNIDfdEQQe24Lnn9Kfr5nH6DXtHgFd4yJvpGSomRM5Bir7uFdYJ9YjptY0HkK0jehMJo
	jcQvVQ4oogQY0vtEdRNFc7SJ4lMzxroNnZjLe8CWnVlbR/dgZ9HkQndXK571LyJS8ggIBABcMy+MU
	0mYqx5hnjm0+qW1LIG/ZHrtQd4y3fcRVkxb6iI+YM2XguzQSc/6KUWShWqnaRhb4Qm/Yrl0kkMeJG
	TVx7KmyJK29H2K/oedqdQIHlvMOKZuCiK/oWda9Nt+MJL8SJi3297a4NoEk/jDddd+GEMV0K9GQos
	NwSW+JTbM7s6sS4Dg8rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slOsf-0000000GtpW-3PRO;
	Tue, 03 Sep 2024 08:27:17 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slOsc-0000000Gtlu-2Ibz
	for linux-phy@lists.infradead.org;
	Tue, 03 Sep 2024 08:27:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1725352032;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=SQvL7LZaA4b20/+0DqQPZRRvdK7BBL5AnON4S+Zxmn4=;
	b=aB9Dhkrn3FOxWSARjeM2MEcxOIsuUwHEid8C9uFcw7UgyKgx0GMccO1dE2Gxu0Q4hJoDPt
	QWl5eGMMA1sxPqJ68Wk1q2knwBzKarIL79sN6AY9YqcXe23Bylqbtt8fPFHSE4WKCk+FbI
	++CBqZnFTjmWSnPRB/IEDsxXQAMTUtc=
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-673-pJz0KzukPhq3Kr5NCvfJPQ-1; Tue, 03 Sep 2024 04:27:11 -0400
X-MC-Unique: pJz0KzukPhq3Kr5NCvfJPQ-1
Received: by mail-ed1-f71.google.com with SMTP id 4fb4d7f45d1cf-5c2486f1f14so1864808a12.1
        for <linux-phy@lists.infradead.org>; Tue, 03 Sep 2024 01:27:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725352030; x=1725956830;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SQvL7LZaA4b20/+0DqQPZRRvdK7BBL5AnON4S+Zxmn4=;
        b=dzWeQoJdPuOLmBIRL2ajrd0+QzOybJzmyiAPU0mrOyaHRkOGsSaVPYNI9Hs9y+kBNe
         I0nU53CmrNUGYT9fxe0d0TJGWiHShMDm2ISJb2uNP/3UEcfA+KOObRox4F0QH+zfys73
         1l60pdlys63/75CWzTsu7tWAKjUddOtyzphR0RutMZUJShHPmmtqwlRHGohObieJHVq4
         K8TIHDFXzmYD6zBF4x13GP40k3TeciYfJvFoX13teZ1+FVSQzyIC18u9PKBd2Oqzd0nW
         7B0BJIau9ZLYcAd8Kgum5wqv9mXMfpbLVqpsS+Nrjlxo9ZlvyWODHLhW6pSuSHxkfSu3
         34tg==
X-Forwarded-Encrypted: i=1; AJvYcCXD4U3qDxs7OMCOkXGEbcBbIQlpRCRnodVQb9EQsDvEclBZ7A9EvaSMFYvAM3+ZWYA7OqW8L7BTzos=@lists.infradead.org
X-Gm-Message-State: AOJu0YxaCUzg37R3+bO4kbxBsT5qWGaMnty2EpRZJq3x140no+IRwX71
	vg6eDRg+9XjLaQ1AnDtwxj/IlhQgwxJofEptXhUB5mzU/LqF+YRcVQ0FNiapDcQI4yqH0mZXqB6
	NujUQv3dLpACCRdM3ISn4tHavM83MKoO+kpSq0K8Ym0R9Fe00xt1nPWF5ttsCl8E=
X-Received: by 2002:a05:6402:3485:b0:5c2:4cbe:ac1c with SMTP id 4fb4d7f45d1cf-5c25f22d543mr4046220a12.4.1725352030225;
        Tue, 03 Sep 2024 01:27:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEZkT4IwliSyOul1sm+Ls6jB9kvfwfo2otYij4PfY15gdZaWfssNk4SbA6NFcQWLh0QS++FMQ==
X-Received: by 2002:a05:6402:3485:b0:5c2:4cbe:ac1c with SMTP id 4fb4d7f45d1cf-5c25f22d543mr4046188a12.4.1725352029687;
        Tue, 03 Sep 2024 01:27:09 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec? (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl. [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5c226ce4fb9sm6517563a12.87.2024.09.03.01.27.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Sep 2024 01:27:09 -0700 (PDT)
Message-ID: <6f4e23ce-2f32-44fc-93d9-ab7d0867b0ee@redhat.com>
Date: Tue, 3 Sep 2024 10:27:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 6/6] power: supply: Change usb_types from an array into a
 bitmask
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Sebastian Reichel <sre@kernel.org>,
 =?UTF-8?Q?Thomas_Wei=C3=9Fschuh?= <linux@weissschuh.net>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, Chanwoo Choi
 <cw00.choi@samsung.com>, Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Enric Balletbo Serra <enric.balletbo@collabora.com>,
 Andrey Smirnov <andrew.smirnov@gmail.com>, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-phy@lists.infradead.org
References: <20240831142039.28830-1-hdegoede@redhat.com>
 <20240831142039.28830-7-hdegoede@redhat.com>
 <2024090340-mumbo-worsening-9a55@gregkh>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <2024090340-mumbo-worsening-9a55@gregkh>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US, nl
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_012714_697356_1BB92B68 
X-CRM114-Status: GOOD (  12.13  )
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

Hi Greg,

Thank you for the reviews.

On 9/3/24 9:04 AM, Greg Kroah-Hartman wrote:
> On Sat, Aug 31, 2024 at 04:20:39PM +0200, Hans de Goede wrote:
>> The bit_types array just hold a list of valid enum power_supply_usb_type
>> values which map to 0 - 9. This can easily be represented as a bitmap.
>>
>> This reduces the size of struct power_supply_desc and further reduces
>> the data section size by drivers no longer needing to store the array.
>>
>> This also unifies how usb_types are handled with charge_behaviours,
>> which allows power_supply_show_usb_type() to be removed.
>>
>> Signed-off-by: Hans de Goede <hdegoede@redhat.com>
> 
> Nice!
> 
> Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

I assume this also counts as an ack for merging this through
the linux-power-supply tree ?

Regards,

Hans




-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
