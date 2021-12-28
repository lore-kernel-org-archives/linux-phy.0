Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7B11C433F5
	for <linux-phy@archiver.kernel.org>; Tue, 28 Dec 2021 12:20:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7/Ayx8sJWiohiRPv2Tpkm27nH0TIUNK+a2wUDikxofE=; b=wQZjDjTemTnSb1
	KntdBEtE91ZFejmortXe5wVcW+VBe/EThLhIhMpQX/743rWhKAxxtDPR7cv17i4981Uwf45EomSFM
	u7hAhL10Aqk2KQW8k2EP+Jnxa0PHnBZylm9EhK4Qh5syb6x+r1acVJpogRE9z43hazFr/Y7K14mSC
	Rbxy9NKKsA705Eh6JEQPKfuyJcyRueGpA7+ZL9Nj+fAe6jZljoOKuN/YVeOtJC9t62wnNUiomXpEi
	/5kabeD4Hyb4znkAOIz7cwjc+Dr8Yc1E1xrUNxuuRJE/1OG9GrR81yjX+Kz6VDF45umlEzCYrb6Ok
	CD+UfYjml5A3Kg8Ma1uw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n2BSn-000t2x-4D; Tue, 28 Dec 2021 12:20:21 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n2BSj-000t1e-M2
 for linux-phy@lists.infradead.org; Tue, 28 Dec 2021 12:20:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1640694015;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=5VvjubQBgQXusD/qnqAa/6+So3MqJfcWXAtQ7MU1qeU=;
 b=WC1ZZZ6hKJHgh0LP91eQ86qFLDCBX+7j5fVdH1HZZj7CgApjg7Fqrq1CdsWTKlk4V7/vxm
 8zfCJT5hMYpeA6gAxO1eRLDenpZbdc3u5qcTEGX0Mg7gMzbK/Ee4fIjJeUd20+lJqWeLQ2
 xRCGWwYLGuTdlvUaHBLjxoll7sImbgI=
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-42-JofTmJOMNFyQp0tb9ARA1Q-1; Tue, 28 Dec 2021 07:20:13 -0500
X-MC-Unique: JofTmJOMNFyQp0tb9ARA1Q-1
Received: by mail-ed1-f69.google.com with SMTP id
 q15-20020a056402518f00b003f87abf9c37so12991320edd.15
 for <linux-phy@lists.infradead.org>; Tue, 28 Dec 2021 04:20:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=5VvjubQBgQXusD/qnqAa/6+So3MqJfcWXAtQ7MU1qeU=;
 b=bZS2xJq3JjjcEFcOcoCVDtAu5rlZU4sO4BcrWg3cYTEi9PlLDb4bOqPk4oenav4kh9
 KMcqLMSAxLD7z+sTBw0B7Baj/+l/FcnpGIAJlKn3BpFKSNXMG0SnrflkWmIyDrfyR+OT
 K/DiQ2pfUkRXLla9ZOIyBYwdC9obrV1Gnr61aEnJslqTxFaL7LWqNMrcHAEjpz3jlLS/
 tx7DxQCyFT7uZxEqhDKo6Yhf8gycfQ7c2Op8uBQBR0WfeRQT1570gPp78fEFgsEd7uQc
 lza4CyVSajMG8tufSsir/5KFZH3qW8xvRTszbV2LAUu5hqRYclR/ncP7vQYNZpoXm47Y
 fr8w==
X-Gm-Message-State: AOAM532ffEq6Sk99obqEhTNPBgByn3qwMSF890gtMM7theN8+CCxFGhg
 OHRJOTUrprsTlnmuoCBOAFB8xipsG/zig+0t82Uvw3EgGJr1EAdHtO8qg70v+t7PfH+y89Bh9rx
 DjEUHRdtYXSWrx0GWQl/wIxL3MQ==
X-Received: by 2002:a17:907:60d6:: with SMTP id
 hv22mr17260599ejc.478.1640694012553; 
 Tue, 28 Dec 2021 04:20:12 -0800 (PST)
X-Google-Smtp-Source: ABdhPJx5XdEog79sJL19FCO0DE7mMk8OhXWL3OTKf+yaTjbtWynbAlqQXyYdTwnhqf6+6U8AWbL0Hg==
X-Received: by 2002:a17:907:60d6:: with SMTP id
 hv22mr17260594ejc.478.1640694012382; 
 Tue, 28 Dec 2021 04:20:12 -0800 (PST)
Received: from ?IPV6:2001:1c00:c1e:bf00:1db8:22d3:1bc9:8ca1?
 (2001-1c00-0c1e-bf00-1db8-22d3-1bc9-8ca1.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:1db8:22d3:1bc9:8ca1])
 by smtp.gmail.com with ESMTPSA id 14sm6007390ejk.215.2021.12.28.04.20.11
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 28 Dec 2021 04:20:11 -0800 (PST)
Message-ID: <279c7bd8-c0bb-e58c-1149-d124102bf8b8@redhat.com>
Date: Tue, 28 Dec 2021 13:20:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Subject: Re: [PATCH 0/8] typec: mux: Introduce support for multiple TypeC muxes
To: Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org
References: <20211228052116.1748443-1-bjorn.andersson@linaro.org>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <20211228052116.1748443-1-bjorn.andersson@linaro.org>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211228_042017_968231_0F8DAA6D 
X-CRM114-Status: GOOD (  19.14  )
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

Hi Bjorn,

On 12/28/21 06:21, Bjorn Andersson wrote:
> This series introduces a level of indirection between the controller's view of
> a typec_mux/switch and the implementation and then expands that to support
> multiple drivers.
> 
> This is needed in order to support devices such as the Qualcomm Snapdragon 888
> HDK, which does muxing and orientation handling in the QMP (USB+DP) PHY and SBU
> muxing in the external FSA4480 chip.
> 
> Additionally integration of typec mux and switch in the QMP PHY is included in
> the series, as is the new FSA4480 driver. This is done to deal with the
> renaming of the driver-side typec_mux -> typec_mux_dev.
> 
> Bjorn Andersson (8):
>   dt-bindings: phy: qcom,qmp-usb3-dp: Add altmode/switch properties
>   phy: qcom-qmp: Register typec mux and orientation switch
>   device property: Helper to match multiple connections
>   device property: Use multi-connection matchers for single case
>   typec: mux: Introduce indirection
>   typec: mux: Allow multiple mux_devs per mux
>   dt-bindings: usb: Add binding for fcs,fsa4480
>   usb: typec: mux: Add On Semi fsa4480 driver

Thank you for your series, I will leave commenting on the
dt-bindings and typec-mux changes to others.

But what I can do is test this on an x86 device using
a pi3usb30532 mux for USB super-speed and DP-alt-mode
muxing / orientation switching.

I'm going to wait a bit with doing that till this has had
some reviews and possibly also some newer versions because
of those reviews. If you haven't received a Tested-by from me
when this looks like it is ready for merging please ping me.

Regards,

Hans


> 
>  .../bindings/phy/qcom,qmp-usb3-dp-phy.yaml    |  14 +
>  .../devicetree/bindings/usb/fcs,fsa4480.yaml  |  72 +++++
>  drivers/base/property.c                       |  83 ++++--
>  drivers/phy/qualcomm/phy-qcom-qmp.c           | 176 ++++++++++--
>  drivers/usb/typec/bus.c                       |   2 +-
>  drivers/usb/typec/mux.c                       | 257 +++++++++++++-----
>  drivers/usb/typec/mux.h                       |  12 +-
>  drivers/usb/typec/mux/Kconfig                 |   9 +
>  drivers/usb/typec/mux/Makefile                |   1 +
>  drivers/usb/typec/mux/fsa4480.c               | 220 +++++++++++++++
>  drivers/usb/typec/mux/intel_pmc_mux.c         |   8 +-
>  drivers/usb/typec/mux/pi3usb30532.c           |   8 +-
>  include/linux/property.h                      |   5 +
>  include/linux/usb/typec_mux.h                 |  22 +-
>  14 files changed, 762 insertions(+), 127 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/usb/fcs,fsa4480.yaml
>  create mode 100644 drivers/usb/typec/mux/fsa4480.c
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
