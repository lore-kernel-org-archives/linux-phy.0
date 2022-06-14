Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 61C5EC433EF
	for <linux-phy@archiver.kernel.org>; Tue, 14 Jun 2022 11:23:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ojn1YMtakuRm+k7+NW5jPLWXkjsSP4p0kmcnrif+0es=; b=y8qNKT+yXE++Yt
	7C7fpFv2injj4mqJVLszLjUBRl+Xf9oZADBl0QWPFGoZuA7ovolvp74skH9sb1pZ0Xw9fcnoJIpXA
	0Hb4WhGcAi1Zt4KDQZwqH4kwy22ndrEQqxicEmgxCdBjqlv820YmgdCDHfeHJKLbef3SFqka/WHd2
	gamH0SUq9/wontzFSufdaGGiBhJJ5ZyH9e5NFEeMNZCLF4zzXXDnSmhDDHwqWWl+mSMreJtCVhT8a
	d19bnbnQD41x0FxjI8KvC0INffL3SAsK0+SetU3Ura9hwyjHt8pJ0J2qnktLFczcDzAIRcgPEa7pF
	+tI4sVyZIzPjuaTlMbYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o14du-009FcW-Ps; Tue, 14 Jun 2022 11:23:30 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o14ds-009Fag-6m
	for linux-phy@lists.infradead.org; Tue, 14 Jun 2022 11:23:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1655205805;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=DeSyU/TE5RCJvUem9lvGVeASpqzw6FLVpfJvGFrZeZA=;
	b=RKuP4JRAAaLUlTTz8/JXtzaoCXUSV32e3OwcNJmNAsONar/71gsh9a+7ZaZPQRhwju3VAL
	QmgywiXnPdngAdN6a+bis0O+o3XG5vONe9guIQ3XV5vwFnEyFkS9i0DOmRdGFv9yC0WvmE
	JoGhQrpW0ef701J63YR74GC9XtmXN9Y=
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-27-el_f12dUOcWG03by28QdsA-1; Tue, 14 Jun 2022 07:23:24 -0400
X-MC-Unique: el_f12dUOcWG03by28QdsA-1
Received: by mail-ed1-f70.google.com with SMTP id g8-20020a056402090800b00433940d207eso6009738edz.1
        for <linux-phy@lists.infradead.org>; Tue, 14 Jun 2022 04:23:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=DeSyU/TE5RCJvUem9lvGVeASpqzw6FLVpfJvGFrZeZA=;
        b=j3o8/AlStre80sJUFtDOLjW+0baBnlvlwD7nONQh7rVRGMbYCgavn2JFDKgJ+8BepH
         dSPNb3GTRYrd8R863+RnyJxf+DBx0j3Q7RmXn4/hsguJm+rufvVaYRGq+vYcYdLemFF5
         AANrgGf2JMDqhdkWGWCyJ0pto3Qx4SwwcK0q66qHO7PkXiywdda4o4NIB/WYgaji84aW
         GozpEYA7NuV+BiOpmJTqkqhgO1Z/Dnahm0Ko08/QsfJyL0gATY/C8AgjvSeUFbK1qgEn
         JJvLDT2q35GLheD5HFDhso3YR1p2pYiyq7UVoVp5RGYIQV+HT7OlaJGC8FPvukoGatgr
         13Aw==
X-Gm-Message-State: AOAM532FzVY8K3GlHzjdpQ+WspihuZo8gARnKWJd1unYi/odaZoyQoO+
	3J+7UtYkkgLcrIiN1yfoPncjRLSqp8gor7C7fNl0G9biusPiDJjuhtbesX+iPTgBABX6l7p2lhJ
	8rCLdID0ssczm/UhSEDgVWNkYDA==
X-Received: by 2002:a17:907:3f97:b0:711:d61d:df9 with SMTP id hr23-20020a1709073f9700b00711d61d0df9mr3913082ejc.644.1655205803106;
        Tue, 14 Jun 2022 04:23:23 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzQHMluBcpPYWc2yp7uCcemI90Mdk5ZmtpRcGvCZkTZAWWy/1vIWBvgwwPdeOTQ0uucLYHirA==
X-Received: by 2002:a17:907:3f97:b0:711:d61d:df9 with SMTP id hr23-20020a1709073f9700b00711d61d0df9mr3913061ejc.644.1655205802817;
        Tue, 14 Jun 2022 04:23:22 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c1e:bf00:d69d:5353:dba5:ee81? (2001-1c00-0c1e-bf00-d69d-5353-dba5-ee81.cable.dynamic.v6.ziggo.nl. [2001:1c00:c1e:bf00:d69d:5353:dba5:ee81])
        by smtp.gmail.com with ESMTPSA id fs36-20020a170907602400b00705f6dab05bsm4902373ejc.183.2022.06.14.04.23.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Jun 2022 04:23:21 -0700 (PDT)
Message-ID: <bd21d5c6-ed5f-dd8c-f0bf-73f54ca8ee58@redhat.com>
Date: Tue, 14 Jun 2022 13:23:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Subject: Re: [PATCH v1 1/1] phy: ti: tusb1210: Don't check for write errors
 when powering on
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Vinod Koul <vkoul@kernel.org>, Stephan Gerhold <stephan@gerhold.net>,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Ferry Toth <ftoth@exalondelft.nl>
References: <20220613160848.82746-1-andriy.shevchenko@linux.intel.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <20220613160848.82746-1-andriy.shevchenko@linux.intel.com>
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220614_042328_390866_0FE11D0F 
X-CRM114-Status: GOOD (  25.06  )
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

On 6/13/22 18:08, Andy Shevchenko wrote:
> On some platforms, like Intel Merrifield, the writing values during power on
> may timeout:
> 
>    tusb1210 dwc3.0.auto.ulpi: error -110 writing val 0x41 to reg 0x80
>    phy phy-dwc3.0.auto.ulpi.0: phy poweron failed --> -110
>    dwc3 dwc3.0.auto: error -ETIMEDOUT: failed to initialize core
>    dwc3: probe of dwc3.0.auto failed with error -110
> 
> which effectively fails the probe of the USB controller.
> Drop the check as it was before the culprit commit (see Fixes tag).
> 
> Fixes: 09a3512681b3 ("phy: ti: tusb1210: Improve ulpi_read()/_write() error checking")
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>

Copy and pasting my reply about this in another thread to keep everyone up2date:

"""
In my experience with using the phy for charger-type detection on some
x86 android tablets which don't have any other way to do charger detection,
these errors indicate a real communication issue for reading/writing
phy registers. At the same time this usually does not seem to be a big
problem since the phy seems to work fine with its power-on defaults.

In case of Bay Trail these errors were related to 2 things:

1. Autosuspend of the phy-interface block in the dwc3, fixed by:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=d7c93a903f33ff35aa0e6b5a8032eb9755b00826

But dwc3_pci_mrfld_properties[] already sets "snps,dis_u2_susphy_quirk",
so I guess it is not this.

2. There being no delay in tusb1210_power_on() between toggling the
reset IO and then trying to communicate with the phy, fixed in:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=df37c99815d9e0775e67276d70c93cbc25f31c70

Maybe the:

#define TUSB1210_RESET_TIME_MS				30

Added by that commit needs to be a bit bigger for the possibly
older phy revision used on the merifield boards?

(note it is fine to just increase it a bit everywhere).
"""

IMHO it would be good to try and increase TUSB1210_RESET_TIME_MS (start with say 100
and then see if e.g. 50 also works). If increasing that does not work

I'm fine with going with this workaround patch to fix things.

Regards,

Hans



> ---
>  drivers/phy/ti/phy-tusb1210.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/phy/ti/phy-tusb1210.c b/drivers/phy/ti/phy-tusb1210.c
> index c3ab4b69ea68..669c13d6e402 100644
> --- a/drivers/phy/ti/phy-tusb1210.c
> +++ b/drivers/phy/ti/phy-tusb1210.c
> @@ -105,8 +105,9 @@ static int tusb1210_power_on(struct phy *phy)
>  	msleep(TUSB1210_RESET_TIME_MS);
>  
>  	/* Restore the optional eye diagram optimization value */
> -	return tusb1210_ulpi_write(tusb, TUSB1210_VENDOR_SPECIFIC2,
> -				   tusb->vendor_specific2);
> +	tusb1210_ulpi_write(tusb, TUSB1210_VENDOR_SPECIFIC2, tusb->vendor_specific2);
> +
> +	return 0;
>  }
>  
>  static int tusb1210_power_off(struct phy *phy)


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
