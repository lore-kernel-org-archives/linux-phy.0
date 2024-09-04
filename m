Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C02D5CA0ED3
	for <linux-phy@archiver.kernel.org>; Wed,  4 Sep 2024 10:06:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=29OO+D39FTNtE9/jTLOEWDiTKCIF0PFAkPBhhDg/Qcg=; b=cHS5UyXHwvaddi
	FFu5Mao4dI6DxhVxn+XcNePbS1LnStlGyRvIpaX7OkNxgyxRqz1nxW7OeSY7k3oZdPwNd2X1vP91B
	arMRJrnGen6RfSUB4HFI5K9pjx3AAf2KCcqVY26B7d4nWdbUnZG6QXh1qQ6kwR4pkeX59CKUelVCF
	zhD2855iHv3uL0YAl12ndRzFA4bRmyN5k56ID9fS0K+xw2Za++sw0K0D+BzS+iRGPll/jixID1d81
	FZg3ux411i03tID7Fn6Ttr0Zuc/tkP8a6JxWy3AU39Pj2W2qqXBeXV4iLNi2yXI9G3UNs2cMCaGyb
	JRVSNA+XHHVMuqdCPmVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slmu7-00000003pGs-1jJ1;
	Wed, 04 Sep 2024 10:06:23 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slmHo-00000003faG-2V51
	for linux-phy@lists.infradead.org;
	Wed, 04 Sep 2024 09:26:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1725442006;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=SGMDfa3Bec/ArdYvFpR6Hu7GEx9nNeUcYfjXHJm4mxI=;
	b=L+U6ztYbw8rtUtLuIpVg7W+GIlsVj2lutA3S12UrYQ/xkB70Sg2WazABXC9zii9dHzr9tZ
	gJT0BhEVpOKGr72nj7D2NDpsnBeGGeLpHm5Y2vT79VW/b1SASbbXEkEN1MB0KKgFqJ3b3V
	R7mUMvaBKbllLKx54L82VhJCoPSxQHQ=
Received: from mail-lf1-f70.google.com (mail-lf1-f70.google.com
 [209.85.167.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-519--xKz5UkoPImWhohN5iYnbQ-1; Wed, 04 Sep 2024 05:26:43 -0400
X-MC-Unique: -xKz5UkoPImWhohN5iYnbQ-1
Received: by mail-lf1-f70.google.com with SMTP id 2adb3069b0e04-5334824e68dso1925251e87.3
        for <linux-phy@lists.infradead.org>; Wed, 04 Sep 2024 02:26:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725442002; x=1726046802;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SGMDfa3Bec/ArdYvFpR6Hu7GEx9nNeUcYfjXHJm4mxI=;
        b=UsUwwpFnYvIy9edNotAve8j2tEiV+CcQR1QqjUg5QDG8ziWtEi8N3mHUNpo0puIQxx
         tsls6Tbw22yFrxVrgsoYdah6hz0mOskR+YhX3UUkp3j/34J3lI53loLb6nN3+OkJGYT9
         i6d8VUt+TbVb+muP2fXp/2iROxZDbCXdahoczpYZmb+SjdfyPvi6xCt6XTYnU2TfSwvF
         LmHlUP2paf/7GR2llF6X8RfWLKXpYQAg7GTO2d1DWlrSyMG1JKNJRBqrB2vO62R0Z05x
         nGsEDceZ7G3DwHw5GoyHom90W0kTOHHJIaCixaPmMhW1uh0gl8JG2febMvopU4JtSF3j
         xtZA==
X-Forwarded-Encrypted: i=1; AJvYcCVdhwqA4kby2RSwsbDbS9D05JXdcEFsoX3gLd7gij48aGeCLZFdN6yeXZfIT/ZumBKe0xaY7EU8YBU=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz1WdXigYHIibhJWXdB17C8ZvhNOCj4cGyvt9A4uH0ncKZdfY4o
	kE6rZ2fTT2cHa+M88tSDefHCqKEYQ3bZ8K/Cr61uCYfHw73KyUOUN7i303ZgulkiuO2qDNs1Fd2
	5pKlkndqyvM7Wpsl0GMM7312bURM3PCg8Gs0zAH7i+7+3uIHjgU+AWNA2txu67Bk=
X-Received: by 2002:a05:6512:3a95:b0:52e:97b3:42a1 with SMTP id 2adb3069b0e04-53546b271damr10358629e87.24.1725442001962;
        Wed, 04 Sep 2024 02:26:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFDnqP0JR7XUOSJNlvelC6lZrlFyXexs7kVqkjHiQ57R3hhUrCbDj2RrDPJJmY4gaF4BOb/5g==
X-Received: by 2002:a05:6512:3a95:b0:52e:97b3:42a1 with SMTP id 2adb3069b0e04-53546b271damr10358588e87.24.1725442001207;
        Wed, 04 Sep 2024 02:26:41 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec? (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl. [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a8988feb0e5sm797577066b.12.2024.09.04.02.26.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Sep 2024 02:26:40 -0700 (PDT)
Message-ID: <8febdf39-ea1a-4e03-afc8-bd6e0c3b8624@redhat.com>
Date: Wed, 4 Sep 2024 11:26:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/6] power: supply: Change usb_types from an array into a
 bitmask
To: Sebastian Reichel <sre@kernel.org>
Cc: =?UTF-8?Q?Thomas_Wei=C3=9Fschuh?= <linux@weissschuh.net>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, Chanwoo Choi
 <cw00.choi@samsung.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Enric Balletbo Serra <enric.balletbo@collabora.com>,
 Andrey Smirnov <andrew.smirnov@gmail.com>, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-phy@lists.infradead.org
References: <20240831142039.28830-1-hdegoede@redhat.com>
 <ez5ja55dl7w7ynq2wv4efsvvqtk4xyalf4k6agtsuhpgrtlpg3@d6ghlle4cu2q>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <ez5ja55dl7w7ynq2wv4efsvvqtk4xyalf4k6agtsuhpgrtlpg3@d6ghlle4cu2q>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US, nl
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240904_022648_750631_83BFF74F 
X-CRM114-Status: GOOD (  34.07  )
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

On 9/4/24 12:04 AM, Sebastian Reichel wrote:
> Hi,
> 
> On Sat, Aug 31, 2024 at 04:20:33PM GMT, Hans de Goede wrote:
>> When support for the "charge_behaviour" property was added the list of
>> available values was made a bitmask in power_supply_desc.
>>
>> "usb_types" is very similar in that:
>> 1. It is an enum
>> 2. The list of available values is stored in power_supply_desc
>> 3. When shown it shows all available values, with the active one surrounded
>>    by square brackets.
>>
>> But "usb_types" uses an array with valid enum values instead of a bitmask.
>> This uses more memory then the bitmap approach and it makes it impossible
>> to have a shared generic show() function for properties which show
>> available values, with the active one surrounded by square brackets.
>>
>> This patch-set moves "usb_types" over to a bitmask in power_supply_desc
>> to indicate the available values.
>>
>> Patches 1 - 3:
>>
>> It turns out that the ucs1002-power driver contained a surprise in that
>> it supports writing to "usb_type" even though the ABI doc says it is
>> read-only. Since we cannot break shipped userspace API, the ship has sailed
>> on this one. The first patch documents that writing "usb_type" is allowed,
>> but only for power-supply devices which provide USB power rather then
>> consume it.
>>
>> Enum properties accept writing the FOO_TEXT[] string values, passing
>> the enum value matching the FOO_TEXT entry to set_property(), the second
>> patch adjusts ucs1002_set_usb_type() to directly accept enum values.
>>
>> The rt9467 driver was another driver which allowed writing to "usb_type"
>> but there the use made no sense, so it is simply dropped.
>>
>> Patches 4 - 6:
>>
>> These patches implement the actual moving of usb_types to a bitmask.
>>
>> Patch 6 is a bit of a bigbang patch moving all drivers over in one go,
>> touching a couple of drivers outside drivers/power/supply: 1 in
>> drivers/extcon/ 1 in drivers/phy/ and 5 in drivers/usb/typec/ since
>> the changes outside of drivers/power/supply are small I've chosen to
>> make all the changes in one go rather then have some sort of
>> intermediate state where both ways are supported.
>>
>> For merging this I believe it would be best for an immutable branch / tag
>> to be created on the linux-power-supply tree and then send a pull-request
>> to the extcon, phy and usb-typec maintainers to merge the tag.
>>
>> extcon, phy and typec maintainers can you please give your Acked-by for
>> patch 6/6 for merging these changes through the linux-power-supply tree?
>>
>> This set is based on top of the latest linux-power-supply/for-next.
> 
> As we are quite close before the merge window I just took it with
> just the Ack from Greg. The changes in PHY and Extcon are quite
> small.

Great, thank you.

Regards,

Hans




> I did prepare an immutable branch in case it is needed by
> any of the other involved trees:
> 
> The following changes since commit 8400291e289ee6b2bf9779ff1c83a291501f017b:
> 
>   Linux 6.11-rc1 (2024-07-28 14:19:55 -0700)
> 
> are available in the Git repository at:
> 
>   https://git.kernel.org/pub/scm/linux/kernel/git/sre/linux-power-supply.git tags/ib-psy-usb-types-signed
> 
> for you to fetch changes up to 364ea7ccaef917a3068236a19a4b31a0623b561a:
> 
>   power: supply: Change usb_types from an array into a bitmask (2024-09-03 23:20:28 +0200)
> 
> ----------------------------------------------------------------
> Immutable branch for usb_types change for v6.12
> 
> Changing usb_types type from array to bitmap in the power_supply_desc
> struct requires updating power-supply drivers living in different
> subsystem, so it is handled via an immutable branch.
> 
> ----------------------------------------------------------------
> Hans de Goede (6):
>       power: supply: "usb_type" property may be written to
>       power: supply: ucs1002: Adjust ucs1002_set_usb_type() to accept string values
>       power: supply: rt9467-charger: Remove "usb_type" property write support
>       power: supply: sysfs: Add power_supply_show_enum_with_available() helper
>       power: supply: sysfs: Move power_supply_show_enum_with_available() up
>       power: supply: Change usb_types from an array into a bitmask
> 
>  Documentation/ABI/testing/sysfs-class-power     |  7 ++-
>  drivers/extcon/extcon-intel-cht-wc.c            | 15 ++----
>  drivers/phy/ti/phy-tusb1210.c                   | 11 ++---
>  drivers/power/supply/axp20x_usb_power.c         | 13 ++---
>  drivers/power/supply/bq256xx_charger.c          | 15 ++----
>  drivers/power/supply/cros_usbpd-charger.c       | 22 +++------
>  drivers/power/supply/lenovo_yoga_c630_battery.c |  7 +--
>  drivers/power/supply/mp2629_charger.c           | 15 ++----
>  drivers/power/supply/mt6360_charger.c           | 13 ++---
>  drivers/power/supply/mt6370-charger.c           | 13 ++---
>  drivers/power/supply/power_supply_core.c        |  4 --
>  drivers/power/supply/power_supply_sysfs.c       | 66 ++++++++-----------------
>  drivers/power/supply/qcom_battmgr.c             | 37 +++++++-------
>  drivers/power/supply/qcom_pmi8998_charger.c     | 13 ++---
>  drivers/power/supply/rk817_charger.c            |  9 +---
>  drivers/power/supply/rn5t618_power.c            | 13 ++---
>  drivers/power/supply/rt9467-charger.c           | 16 ++----
>  drivers/power/supply/rt9471.c                   | 15 ++----
>  drivers/power/supply/ucs1002_power.c            | 26 +++++-----
>  drivers/usb/typec/anx7411.c                     | 11 ++---
>  drivers/usb/typec/rt1719.c                      | 11 ++---
>  drivers/usb/typec/tcpm/tcpm.c                   | 11 ++---
>  drivers/usb/typec/tipd/core.c                   |  9 +---
>  drivers/usb/typec/ucsi/psy.c                    | 11 ++---
>  include/linux/power_supply.h                    |  3 +-
>  25 files changed, 132 insertions(+), 254 deletions(-)
> 
> -- Sebastian


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
