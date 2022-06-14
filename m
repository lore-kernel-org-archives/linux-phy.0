Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A32AC43334
	for <linux-phy@archiver.kernel.org>; Tue, 14 Jun 2022 11:22:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v9DdA2Ym23LIlf2kke//fWm6xUk5wO/Pz6r0bq8V2+Y=; b=B56n3R1hoMhHul
	zLcyJMyWBm3/st0LTExJLNQUQBrc2GEeOgii0vgtyJ5D6B61haJvGmNut7TheNLWeuNS7dyBAyemq
	g4G2pCv34KL4Jxnx4Vf92nw9lu95UEJNt2TrgqgKJSy41h8RE9b6OK60GSjow+OQgiV8tO58wsFpp
	mGBfvGFSFLXtVgCP7Ydn0vr9wy5IhROi8rO0c1gikbF2JI9FevEObFU88seEEYiT4VIM9cOR7IBmW
	AomACVOFTtI1THnPxm8pA4zwfC1uW1OX4SWLFCzzSlKIxxSAsx4o/x783VAG6qhIEOCMpLRIxGOz1
	60dOxrA+0zOjfzvvRpZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o14cf-009FNt-RE; Tue, 14 Jun 2022 11:22:13 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o14cc-009FMj-Fu
	for linux-phy@lists.infradead.org; Tue, 14 Jun 2022 11:22:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1655205727;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=FuRkurbcX3kxyq/mqEblONcSqnZuF1xTQj6POfwhivE=;
	b=clbb/OVrvE52y+YvrpwqkErQXoQt18thCpYNUOllV2eM5qCheuKN/9y1zjI70CjxHJW1d4
	mTe4extzLeauZCD5xBHQ6NycZLqpbO9xmqixd+zAUXOgGTtUzepn2rPy/XJUOXzswmQCus
	gqodYllr6HZHnf4BucPlTBOIObOkQNo=
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-636-es2UNhrBMu-YfMbUcZ4jMA-1; Tue, 14 Jun 2022 07:22:06 -0400
X-MC-Unique: es2UNhrBMu-YfMbUcZ4jMA-1
Received: by mail-ed1-f71.google.com with SMTP id eh10-20020a0564020f8a00b0042dd9bf7c57so5959069edb.17
        for <linux-phy@lists.infradead.org>; Tue, 14 Jun 2022 04:22:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=FuRkurbcX3kxyq/mqEblONcSqnZuF1xTQj6POfwhivE=;
        b=5WmEkpG4F4gi/pmU6Q7vxb55cfItNIhmEObJd/xGS496QifG1pNI//lweq6XCdBFk8
         aGEDCQidwLnX+1XZVortc8ai9Fs7tN513GG4o+E/WuAiSBLuN3rOfcj7XQjfKc4S921N
         BeHfKb+HETxuRnFtf8zLlyd7hgOdA0zTApS0YFKDYnpJFEENOb0VIO0ugZKrGaZQNCY8
         l3jZ5e++2xxH2U/0yUmjBolaoA2CN3llxm44O+O7f1KwyT3Mw9f37xu4ynjNAQbMVOrk
         tSL2XOMRqtxhHEVYeVnSBf4P1KhjF82+iljAv2RaQCzUqAhWhBT+FyMsUpirtEACkoJf
         THLg==
X-Gm-Message-State: AOAM530h/rPgaPx9Wdbi2coBIffO1nqzRzBwPNZyLIudTSDApREEze93
	XWl0v8mWJvyvN5+U8O9gF9eBhPHEWMsWEzwlUjkyQTHCfE1sh4ZkGixLfDgYCKtLZJBFvi2d06W
	SDPlXU4oaQvF+EI6cyn6YzX7jdw==
X-Received: by 2002:aa7:d157:0:b0:42d:c3a9:5beb with SMTP id r23-20020aa7d157000000b0042dc3a95bebmr5470172edo.160.1655205722485;
        Tue, 14 Jun 2022 04:22:02 -0700 (PDT)
X-Google-Smtp-Source: AGRyM1uyhAidCDMOfdYnAswlMUBzIUY8nU2L38h95Hm86PKZgAMJSto2eVHEqw+VSlFhuoxbCFsg/w==
X-Received: by 2002:aa7:d157:0:b0:42d:c3a9:5beb with SMTP id r23-20020aa7d157000000b0042dc3a95bebmr5470142edo.160.1655205722246;
        Tue, 14 Jun 2022 04:22:02 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c1e:bf00:d69d:5353:dba5:ee81? (2001-1c00-0c1e-bf00-d69d-5353-dba5-ee81.cable.dynamic.v6.ziggo.nl. [2001:1c00:c1e:bf00:d69d:5353:dba5:ee81])
        by smtp.gmail.com with ESMTPSA id p14-20020a170906a00e00b007101f6f0720sm4923643ejy.120.2022.06.14.04.22.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Jun 2022 04:22:01 -0700 (PDT)
Message-ID: <700c885c-c977-4a9c-4aaa-79047f81a602@redhat.com>
Date: Tue, 14 Jun 2022 13:22:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Subject: Re: [PATCH 6/9] phy: ti: tusb1210: Improve ulpi_read()/_write() error
 checking
To: Andy Shevchenko <andriy.shevchenko@intel.com>,
 Ferry Toth <ftoth@exalondelft.nl>
Cc: Felipe Balbi <balbi@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 linux-usb@vger.kernel.org, Stephan Gerhold <stephan@gerhold.net>,
 linux-phy@lists.infradead.org
References: <20220205164535.179231-1-hdegoede@redhat.com>
 <20220205164535.179231-7-hdegoede@redhat.com>
 <YqdcU8nE/SMr353v@smile.fi.intel.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <YqdcU8nE/SMr353v@smile.fi.intel.com>
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220614_042210_655343_843186E4 
X-CRM114-Status: GOOD (  18.11  )
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

On 6/13/22 17:48, Andy Shevchenko wrote:
> +Cc: Ferry
> 
> On Sat, Feb 05, 2022 at 05:45:32PM +0100, Hans de Goede wrote:
>> ulpi_read() and ulpi_write() calls can fail. Add wrapper functions to log
>> errors when this happens and add error checking to the read + write of
>> the phy parameters from the TUSB1210_VENDOR_SPECIFIC2 register.`
> 
> 
> This patch seems to break Intel Merrifield platform.
> 
> Before:
> 
> [   36.333644] xhci-hcd xhci-hcd.1.auto: xHCI Host Controller
> [   36.339828] xhci-hcd xhci-hcd.1.auto: new USB bus registered, assigned bus number 1
> [   36.352566] xhci-hcd xhci-hcd.1.auto: hcc params 0x0220f06c hci version 0x100 quirks 0x0000000002010010
> [   36.367062] xhci-hcd xhci-hcd.1.auto: irq 16, io mem 0xf9100000
> [   36.378429] xhci-hcd xhci-hcd.1.auto: xHCI Host Controller
> [   36.384705] xhci-hcd xhci-hcd.1.auto: new USB bus registered, assigned bus number 2
> 
> After:
> [   32.986776] tusb1210 dwc3.0.auto.ulpi: error -110 writing val 0x41 to reg 0x80
> [   32.994053] phy phy-dwc3.0.auto.ulpi.0: phy poweron failed --> -110
> [   33.000601] dwc3 dwc3.0.auto: error -ETIMEDOUT: failed to initialize core
> [   33.007486] dwc3: probe of dwc3.0.auto failed with error -110
> 
> 
> Any ideas?

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

Regards,

Hans




 
> 
> P.S> There is no bisect log, since it's done manually with a good guess by
> Ferry. I have just reverted patches on ULPI from this series and start applying
> them one-by-one.
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
