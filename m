Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15159C77B61
	for <linux-phy@archiver.kernel.org>; Thu, 27 Apr 2023 17:24:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dw3ZmR6WtrJ2iNP/30QGkCBP6tdMNiVXbv4tmRzLQK8=; b=AoTboGNQerfxyV
	A8kkHgMz11c4Q6znmVjBsFYATZB7X51fcT7QAh9MZ09kNpWDVMnXH13wIBFDbrs5ciR1HfktsT/+o
	Cn8GzovwhnsR9gm8iSP6eTdbJaBFC+X8eYQFd7IohfV2kurozZr6JQfOh4+RLRL93n3kjxHxNiaJe
	xUdDAsHoga34b/eU2Du/FBZzqYZifIl2+vfW95QUlHmvA2e/2zRknIiRJ94FAcVuYwRCZcbFdER0l
	GjesNlT7Kp/sXlSiGKRE8IoysEKdANp1iKlBSmNQuLvzTECuKu6CK3AUR1MLSnTtPpir291ASXoIl
	85QqbCTwK6AfJb20GrpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ps5MI-0076aU-0K;
	Thu, 27 Apr 2023 17:24:42 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ps5ME-0076ZH-36
	for linux-phy@lists.infradead.org;
	Thu, 27 Apr 2023 17:24:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1682616272;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=28q8f1R5ATkZZRKbMVPNKfNQWWUbVatXGNvWfYjHmSs=;
	b=QstcTcbJyzVLyZn185aqSafia7+k+bbK6CwJQIZpFEKyd8JcNYp7H/p9ke+HvfsEGR+UqZ
	Keg0L8rZ+qga3nXzO5EGeBP6OPklU4fxZjHS8pw9vKNCOT5r0pH2F2ZGFpN+vs9Iu1k2aH
	ueC0ftsVLl/Yw4u/h8GYo6qkQVAttkY=
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com
 [209.85.160.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-541-V77-PNJwM0Gr4D68-aD-Cg-1; Thu, 27 Apr 2023 13:24:31 -0400
X-MC-Unique: V77-PNJwM0Gr4D68-aD-Cg-1
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-3ef691d1eebso39278941cf.3
        for <linux-phy@lists.infradead.org>; Thu, 27 Apr 2023 10:24:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682616271; x=1685208271;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=28q8f1R5ATkZZRKbMVPNKfNQWWUbVatXGNvWfYjHmSs=;
        b=Db2UAqdcI7DZ3lUBokFRwPDkVytf8HhttvfUiurGzW0bfRIzGYaTGuIH4E8+VK2sgt
         G8PLWYWQSfSKPGphdtJbcWE+iqWcZ1pL7aGZnVrTF7yMiHISWnxsUc/ogCc1SxulaG76
         HzkdcNF6otrZUoHcQX22XQPJeAmDQokMd8N52wJfWG+3Yn/fKfD3WuKzZjsj93MhhJaN
         FTSXm8DUB/YpIc78Za5eXvli4GBHUckijXcbsOZQ2anN+U5dQrJWribsEPLNh4AOfBlt
         v5Xd9z8D8fzNFAo9ix3XmLhZOaDyhNkzmwC6eBf2NNENooZGLrBokK8z2OmDitQ4WIlE
         RUJg==
X-Gm-Message-State: AC+VfDyJHvH334E17CjbLG8PUE7DP6x/0G4Xh3V+h43PeWslycZRs75y
	c8e9ESe5I1stYXz1kJAQeq7Opq0J0lkvMFI79EqC+5QMNX76M7K5+gC5Ms2VopdkWo2go7JbKzJ
	Z0jfsSjnphRbc5hsOGdsCP9wyEw==
X-Received: by 2002:a05:622a:11cf:b0:3ef:62be:e09b with SMTP id n15-20020a05622a11cf00b003ef62bee09bmr3430023qtk.40.1682616271010;
        Thu, 27 Apr 2023 10:24:31 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ5svrizMCWCHRmMrWSPvzIzZhBUFHpvLgjbJkFvifxcpqqAJAjdkw0lFQmIdO2/HiJtRgKJ1A==
X-Received: by 2002:a05:622a:11cf:b0:3ef:62be:e09b with SMTP id n15-20020a05622a11cf00b003ef62bee09bmr3429975qtk.40.1682616270651;
        Thu, 27 Apr 2023 10:24:30 -0700 (PDT)
Received: from fedora (modemcable181.5-202-24.mc.videotron.ca. [24.202.5.181])
        by smtp.gmail.com with ESMTPSA id k1-20020ac86041000000b003ecf475286csm6297422qtm.39.2023.04.27.10.24.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Apr 2023 10:24:29 -0700 (PDT)
Date: Thu, 27 Apr 2023 13:24:27 -0400
From: Adrien Thierry <athierry@redhat.com>
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Shazad Hussain <quic_shazhuss@quicinc.com>, agross@kernel.org,
	andersson@kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org
Subject: Re: [PATCH v1 0/6] arm64: qcom: sa8775p: add support for USB
Message-ID: <ZEqvy+khHeTkC2hf@fedora>
References: <20230421133922.8520-1-quic_shazhuss@quicinc.com>
 <ZEcEGJiikEC2wIVE@fedora>
 <ac49075d-439e-da46-9ef6-0b0828f8e072@linaro.org>
MIME-Version: 1.0
In-Reply-To: <ac49075d-439e-da46-9ef6-0b0828f8e072@linaro.org>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230427_102439_098799_270C89EA 
X-CRM114-Status: GOOD (  26.47  )
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

Hi Konrad,

On Thu, Apr 27, 2023 at 12:42:15AM +0100, Konrad Dybcio wrote:
> 
> On 4/24/23 23:35, Adrien Thierry wrote:
> > Hi Shazad,
> > 
> > On Fri, Apr 21, 2023 at 07:09:15PM +0530, Shazad Hussain wrote:
> > > Update relavent DT bindings for USB, add new config to the phy driver,
> > > add USB and PHY nodes to the .dtsi and enable them in the board .dts
> > > for the sa8775p-ride platform.
> > > 
> > > Shazad Hussain (6):
> > >    dt-bindings: usb: qcom,dwc3: Add bindings for SA8775P
> > >    dt-bindings: phy: qcom,usb-snps-femto-v2: Add bindings for SA8775P
> > >    dt-bindings: phy: qcom,sc8280xp-qmp-usb3-uni: Add SA8775P USB PHY
> > >      binding
> > >    phy: qcom-qmp: Add SA8775P USB3 UNI phy
> > >    arm64: dts: qcom: sa8775p: add USB nodes
> > >    arm64: dts: qcom: sa8775p-ride: enable USB nodes
> > > 
> > >   .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml   |   1 +
> > >   .../bindings/phy/qcom,usb-snps-femto-v2.yaml  |   1 +
> > >   .../devicetree/bindings/usb/qcom,dwc3.yaml    |   5 +
> > >   arch/arm64/boot/dts/qcom/sa8775p-ride.dts     |  92 +++++++
> > >   arch/arm64/boot/dts/qcom/sa8775p.dtsi         | 239 +++++++++++++++++-
> > >   drivers/phy/qualcomm/phy-qcom-qmp-usb.c       |  45 ++++
> > >   6 files changed, 381 insertions(+), 2 deletions(-)
> > > 
> > > -- 
> > > 2.17.1
> > > 
> > Thanks for posting this. I tested the series on the sa8775p, and it seems
> > initialization for the controller at a400000 sometimes fails with a
> > timeout (-110) error:
> > 
> >      dwc3 a400000.usb: Adding to iommu group 2
> >      xhci-hcd xhci-hcd.0.auto: xHCI Host Controller
> >      xhci-hcd xhci-hcd.0.auto: new USB bus registered, assigned bus number 1
> >      xhci-hcd xhci-hcd.0.auto: can't setup: -110
> >      xhci-hcd xhci-hcd.0.auto: USB bus 1 deregistered
> >      xhci-hcd: probe of xhci-hcd.0.auto failed with error -110
> >      dwc3 a600000.usb: Adding to iommu group 3
> >      dwc3 a800000.usb: Adding to iommu group 4
> >      xhci-hcd xhci-hcd.1.auto: xHCI Host Controller
> >      xhci-hcd xhci-hcd.1.auto: new USB bus registered, assigned bus number 1
> >      xhci-hcd xhci-hcd.1.auto: hcc params 0x0110ffc5 hci version 0x110 quirks 0x0000000000010010
> >      xhci-hcd xhci-hcd.1.auto: irq 162, io mem 0x0a800000
> >      xhci-hcd xhci-hcd.1.auto: xHCI Host Controller
> >      xhci-hcd xhci-hcd.1.auto: new USB bus registered, assigned bus number 2
> >      xhci-hcd xhci-hcd.1.auto: Host supports USB 3.1 Enhanced SuperSpeed
> >      hub 1-0:1.0: USB hub found
> >      hub 1-0:1.0: 1 port detected
> >      usb usb2: We don't know the algorithms for LPM for this host, disabling LPM.
> >      hub 2-0:1.0: USB hub found
> >      hub 2-0:1.0: 1 port detected
> > 
> > In this case, only usb devices for a800000 are showing:
> > 
> >      dracut:/# ls -alh /sys/bus/usb/devices
> >      total 0
> >      drwxr-xr-x 2 root root 0 Feb 27 00:00 .
> >      drwxr-xr-x 4 root root 0 Feb 27 00:00 ..
> >      lrwxrwxrwx 1 root root 0 Feb 27 00:00 1-0:1.0 -> ../../../devices/platform/soc@0/a8f8800.usb/a800000.usb/xhci-hcd.1.auto/usb1/1-0:1.0
> >      lrwxrwxrwx 1 root root 0 Feb 27 00:00 2-0:1.0 -> ../../../devices/platform/soc@0/a8f8800.usb/a800000.usb/xhci-hcd.1.auto/usb2/2-0:1.0
> >      lrwxrwxrwx 1 root root 0 Feb 27 00:00 usb1 -> ../../../devices/platform/soc@0/a8f8800.usb/a800000.usb/xhci-hcd.1.auto/usb1
> >      lrwxrwxrwx 1 root root 0 Feb 27 00:00 usb2 -> ../../../devices/platform/soc@0/a8f8800.usb/a800000.usb/xhci-hcd.1.auto/usb2
> > 
> > This happens approximately 1 out of 2 reboots. Here's the kernel output
> > when initialization succeeds:
> > 
> >      dwc3 a600000.usb: Adding to iommu group 2
> >      dwc3 a800000.usb: Adding to iommu group 3
> >      xhci-hcd xhci-hcd.0.auto: xHCI Host Controller
> >      xhci-hcd xhci-hcd.0.auto: new USB bus registered, assigned bus number 1
> >      xhci-hcd xhci-hcd.0.auto: hcc params 0x0110ffc5 hci version 0x110 quirks 0x0000000000010010
> >      xhci-hcd xhci-hcd.0.auto: irq 161, io mem 0x0a800000
> >      xhci-hcd xhci-hcd.0.auto: xHCI Host Controller
> >      xhci-hcd xhci-hcd.0.auto: new USB bus registered, assigned bus number 2
> >      xhci-hcd xhci-hcd.0.auto: Host supports USB 3.1 Enhanced SuperSpeed
> >      hub 1-0:1.0: USB hub found
> >      hub 1-0:1.0: 1 port detected
> >      usb usb2: We don't know the algorithms for LPM for this host, disabling LPM.
> >      hub 2-0:1.0: USB hub found
> >      hub 2-0:1.0: 1 port detected
> >      dwc3 a400000.usb: Adding to iommu group 4
> >      xhci-hcd xhci-hcd.1.auto: xHCI Host Controller
> >      xhci-hcd xhci-hcd.1.auto: new USB bus registered, assigned bus number 3
> >      xhci-hcd xhci-hcd.1.auto: USB3 root hub has no ports
> >      xhci-hcd xhci-hcd.1.auto: hcc params 0x0220fe65 hci version 0x110 quirks 0x0000000000010010
> >      xhci-hcd xhci-hcd.1.auto: irq 162, io mem 0x0a400000
> >      hub 3-0:1.0: USB hub found
> >      hub 3-0:1.0: 1 port detected
> > 
> > And the list of usb devices:
> > 
> >      dracut:/# ls -alh /sys/bus/usb/devices
> >      total 0
> >      drwxr-xr-x 2 root root 0 Feb 27 00:00 .
> >      drwxr-xr-x 4 root root 0 Feb 27 00:00 ..
> >      lrwxrwxrwx 1 root root 0 Feb 27 00:00 1-0:1.0 -> ../../../devices/platform/soc@0/a8f8800.usb/a800000.usb/xhci-hcd.0.auto/usb1/1-0:1.0
> >      lrwxrwxrwx 1 root root 0 Feb 27 00:00 2-0:1.0 -> ../../../devices/platform/soc@0/a8f8800.usb/a800000.usb/xhci-hcd.0.auto/usb2/2-0:1.0
> >      lrwxrwxrwx 1 root root 0 Feb 27 00:00 3-0:1.0 -> ../../../devices/platform/soc@0/a4f8800.usb/a400000.usb/xhci-hcd.1.auto/usb3/3-0:1.0
> >      lrwxrwxrwx 1 root root 0 Feb 27 00:00 usb1 -> ../../../devices/platform/soc@0/a8f8800.usb/a800000.usb/xhci-hcd.0.auto/usb1
> >      lrwxrwxrwx 1 root root 0 Feb 27 00:00 usb2 -> ../../../devices/platform/soc@0/a8f8800.usb/a800000.usb/xhci-hcd.0.auto/usb2
> >      lrwxrwxrwx 1 root root 0 Feb 27 00:00 usb3 -> ../../../devices/platform/soc@0/a4f8800.usb/a400000.usb/xhci-hcd.1.auto/usb3
> > 
> > Have you also encountered this?
> 
> I've had some issues with QMPPHY not (sometimes?) probing in time on SM6115 only when built as a module.. perhaps it'd be worth checking out of it works fine with =y?

Looks like that might be the cause indeed. The arm64 defconfig has the
PHYs built as modules, but with either CONFIG_PHY_QCOM_QMP_USB=y or
CONFIG_PHY_QCOM_USB_SNPS_FEMTO_V2=y, the controllers initialize properly
all the time.

So, the series is:

Tested-by: Adrien Thierry <athierry@redhat.com>

> 
> 
> Konrad
> 
> > 
> > Best,
> > 
> > Adrien
> > 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
