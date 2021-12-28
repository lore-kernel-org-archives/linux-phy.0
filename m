Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 724DFC433EF
	for <linux-phy@archiver.kernel.org>; Tue, 28 Dec 2021 17:07:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i43kI+7tqWbQggiP7MvUrggFVtZLcIu/Xqn9gppySFk=; b=MNG+Mk5WcvDDhe
	tgwnSliZ3NGgvBiAZugop0W359uG6dojb0NTVMt8DAcLr91CkG/vwZqyzceCNsvUx/7nMbNLlcAVD
	IH2ucvC+hlGTlIPOYtPL5HUkBSNMsmUifZTYN6s+hASC4cuKeLkmT/QpmARPHA0jXCdAyMlpXunB3
	UReRMPPGwAEQ1dYIqnr7oG0QZ+MAP0pyBnVh5N+no1s3eQA3mAraF+UUPQfim0vyHk2OoUN6/4fiI
	ce9O6WusQ1+FsHxuMWiSKHTNI3zqahLgP0u9vKLtc68qAi/IaQM0fZg+1hQ2SLr3Ui2wo62dK2tyM
	9PXOkoH8dTEv1v88iFjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n2Fx0-001cLI-UZ; Tue, 28 Dec 2021 17:07:50 +0000
Received: from mail-oi1-x22f.google.com ([2607:f8b0:4864:20::22f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n2Fwy-001cJq-6u
 for linux-phy@lists.infradead.org; Tue, 28 Dec 2021 17:07:49 +0000
Received: by mail-oi1-x22f.google.com with SMTP id i9so22724390oih.4
 for <linux-phy@lists.infradead.org>; Tue, 28 Dec 2021 09:07:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=oZ/3RWIICayqeX8NGvH8uNdXpYzICfkoNEUUnjvFbK4=;
 b=hckZEzqYtQUUAo14ly2MATzBb/IMI0LNK7RZEiElcwzKKQHQCCBr93t8BP+tq/LUgx
 5rdGiFVWk7zgQxobsXoBTEVyiA3C075pIhxeIJo2euGcznekXBRmTDZjxipRIjXMvY5C
 qL4w9ZUTXi49MbM7ujw5WJ+5K/+SlnAhc6KAsNLO5vMCMkwXMjCP9/BRkptxE3e4Y1YK
 BY8NZGzMsPAJEaYxCxK3xVMFeOT3/ngFYMeQl8TYqPFe7ZQ/W2q9tsqVpIqdKkgCdAL2
 hJa7Bw0qaA7AwHQXyYAY7ZhlBObeo+DZMzsL2FSzk+dAJXByaA5mXZRuD4IHyN5pyRYc
 VAOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=oZ/3RWIICayqeX8NGvH8uNdXpYzICfkoNEUUnjvFbK4=;
 b=0j3MNxmsrC9VpWq3+Tl7QBNEthStc681jO8KBTgtkGokDZQNZF8n6Ocl0+PpQF1T5M
 u22ErPUNOquhfhxI9sQ0svvUISBQLKt8QLVPJVolFKoCv9bQBpaLHgJn5dl4akYVlFzC
 i4cveqcgzXA/WoDUuPWGVOPTDXJN2Fx6WY3egea6avBZEI7Oq66jZMN5y6nsB4uA/0WC
 5J4i4ewKbqABrmDxHi57vJWXznJh8rQULP97qxRsRt7swr3cAjxdVHKMMQghmYkkIM3T
 03T/pRKKJ6OF1WDfjUmHB2J97T4/wmY/VS5lSE/mZL/w40Y7D4I2WvG3PT0JhbBFHtpU
 eruQ==
X-Gm-Message-State: AOAM532+dR4DYerIagMjyyhptpYy1QPRPkbSau1FsOa4KK/e7QwH0UVS
 E5SCpgHyE/m2gKZVPyLgabcU6Q==
X-Google-Smtp-Source: ABdhPJxyp73sBikZUK9fV7aQkyVfeNKeBZfLBnmheicO2np5Qje9WMaB1cRxtpdfGlTKH4B7tIbvOw==
X-Received: by 2002:a05:6808:2111:: with SMTP id
 r17mr17314232oiw.118.1640711267219; 
 Tue, 28 Dec 2021 09:07:47 -0800 (PST)
Received: from ripper (104-57-184-186.lightspeed.austtx.sbcglobal.net.
 [104.57.184.186])
 by smtp.gmail.com with ESMTPSA id w4sm2875922oiv.47.2021.12.28.09.07.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Dec 2021 09:07:46 -0800 (PST)
Date: Tue, 28 Dec 2021 09:08:46 -0800
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Hans de Goede <hdegoede@redhat.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-usb@vger.kernel.org
Subject: Re: [PATCH 0/8] typec: mux: Introduce support for multiple TypeC muxes
Message-ID: <YctEnnH8FvS6zRPb@ripper>
References: <20211228052116.1748443-1-bjorn.andersson@linaro.org>
 <279c7bd8-c0bb-e58c-1149-d124102bf8b8@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <279c7bd8-c0bb-e58c-1149-d124102bf8b8@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211228_090748_282258_451CC1BB 
X-CRM114-Status: GOOD (  27.50  )
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

On Tue 28 Dec 04:20 PST 2021, Hans de Goede wrote:

> Hi Bjorn,
> 
> On 12/28/21 06:21, Bjorn Andersson wrote:
> > This series introduces a level of indirection between the controller's view of
> > a typec_mux/switch and the implementation and then expands that to support
> > multiple drivers.
> > 
> > This is needed in order to support devices such as the Qualcomm Snapdragon 888
> > HDK, which does muxing and orientation handling in the QMP (USB+DP) PHY and SBU
> > muxing in the external FSA4480 chip.
> > 
> > Additionally integration of typec mux and switch in the QMP PHY is included in
> > the series, as is the new FSA4480 driver. This is done to deal with the
> > renaming of the driver-side typec_mux -> typec_mux_dev.
> > 
> > Bjorn Andersson (8):
> >   dt-bindings: phy: qcom,qmp-usb3-dp: Add altmode/switch properties
> >   phy: qcom-qmp: Register typec mux and orientation switch
> >   device property: Helper to match multiple connections
> >   device property: Use multi-connection matchers for single case
> >   typec: mux: Introduce indirection
> >   typec: mux: Allow multiple mux_devs per mux
> >   dt-bindings: usb: Add binding for fcs,fsa4480
> >   usb: typec: mux: Add On Semi fsa4480 driver
> 
> Thank you for your series, I will leave commenting on the
> dt-bindings and typec-mux changes to others.
> 
> But what I can do is test this on an x86 device using
> a pi3usb30532 mux for USB super-speed and DP-alt-mode
> muxing / orientation switching.
> 

Thanks Hans, that would be much appreciated. I realize that I failed to
mention that I don't have this hardware, so I've not been able to test
it myself.

> I'm going to wait a bit with doing that till this has had
> some reviews and possibly also some newer versions because
> of those reviews. If you haven't received a Tested-by from me
> when this looks like it is ready for merging please ping me.
> 

Will ping you when appropriate.

Thanks,
Bjorn

> Regards,
> 
> Hans
> 
> 
> > 
> >  .../bindings/phy/qcom,qmp-usb3-dp-phy.yaml    |  14 +
> >  .../devicetree/bindings/usb/fcs,fsa4480.yaml  |  72 +++++
> >  drivers/base/property.c                       |  83 ++++--
> >  drivers/phy/qualcomm/phy-qcom-qmp.c           | 176 ++++++++++--
> >  drivers/usb/typec/bus.c                       |   2 +-
> >  drivers/usb/typec/mux.c                       | 257 +++++++++++++-----
> >  drivers/usb/typec/mux.h                       |  12 +-
> >  drivers/usb/typec/mux/Kconfig                 |   9 +
> >  drivers/usb/typec/mux/Makefile                |   1 +
> >  drivers/usb/typec/mux/fsa4480.c               | 220 +++++++++++++++
> >  drivers/usb/typec/mux/intel_pmc_mux.c         |   8 +-
> >  drivers/usb/typec/mux/pi3usb30532.c           |   8 +-
> >  include/linux/property.h                      |   5 +
> >  include/linux/usb/typec_mux.h                 |  22 +-
> >  14 files changed, 762 insertions(+), 127 deletions(-)
> >  create mode 100644 Documentation/devicetree/bindings/usb/fcs,fsa4480.yaml
> >  create mode 100644 drivers/usb/typec/mux/fsa4480.c
> > 
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
