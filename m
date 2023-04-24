Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7059CC77B61
	for <linux-phy@archiver.kernel.org>; Mon, 24 Apr 2023 22:43:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p4jVvHR72UCEvefVstfxAje3I3Kn3UJ7p4bUgzz7Xyo=; b=AEOJjfi5SkmOCH
	KZkVTNHpEzykSfpGCsMPk84mAtA5x0qBxNzrcvY25KEIBc5ti9C4LcvuEPsAtbSMjqsC8/RJB33tr
	E+Fp2DR5Szw82YZOFduwoJHCLL17jpaOjuVGFJC5W/WHht6vGJ2365n2pIfUgd29mla1WlKwDMAqK
	rMCLJ9uesGnwjYNSpaWkMlPl7aDYbYbDnULQJVYZSc3YovXVuRqaBQ708qcY7V8FVpKX14eGhlcar
	IAlmucy/GBZ4WsV4LPNSHUZnXPP/LtmQmG8SzxUKUo60OK29/H6FaY6GRFAXVSAFH91dV48/+O+S3
	NTSNdoWKGZgBKUdhpO1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pr4tn-00HIne-0E;
	Mon, 24 Apr 2023 22:43:07 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pr4tj-00HIn1-1q
	for linux-phy@lists.infradead.org;
	Mon, 24 Apr 2023 22:43:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1682376181;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=p8uiUKAh1MkDDewdBSb2LEHqUzT7fTsXNylXR5bsSUM=;
	b=YlTv1z/TGP9k9KBP3bmbLt0MaduhaXExpAj1jpc25qTXAENsfk74jb4hk0qVCqunhFXUYP
	nJLR4rB6qxLPZIpDSnPjt4IZYJvsqG9eaKKmrX7FlDAGNLzSYiAChq/l6dwybvXJl+t+Er
	wY05ypbXUp11SKNbZt86IewSAd4q3Us=
Received: from mail-qt1-f199.google.com (209.85.160.199 [209.85.160.199]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-139-J-dKJsVIPu2CutH_1ZSacA-1; Mon,
 24 Apr 2023 18:35:14 -0400
X-MC-Unique: J-dKJsVIPu2CutH_1ZSacA-1
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-3ef3ca5b5afso66018611cf.0
        for <linux-phy@lists.infradead.org>; Mon, 24 Apr 2023 15:35:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682375708; x=1684967708;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=p8uiUKAh1MkDDewdBSb2LEHqUzT7fTsXNylXR5bsSUM=;
        b=l11PueoOxJvvvOc+i0Ymya/4K3ui2DvGsvnVadQ1WIVsvd7njycs9nJySqEt4SVAyK
         c7D7bXVSMZAW1adA3k7rCVQnMbbXprf9/rCQO8Gu7Vf76rUNDdUJ/H2x5gLsDI5ApU3p
         +w1ciXNcgpCpEzzeDXu1+by3hM1+zdiNeZ82C5PZ/MeShqnvTCiDWZeaAJDpa7Xhamac
         Qrn6hsiEmKaIZaGlCsLAp+rJxiMbeuM3Au7bNPqf1Fryv3s1fnaOPI3fM1qdMJr1gD3C
         Q4GfNlWVjSDxoLVAdv+/gAyJdYy41zSuGOuOI53oNq49z98DoeWs/w37Fpl7YTRN2eSh
         9h4A==
X-Gm-Message-State: AAQBX9fKnAAI1pm9UGi8wWNCmnUUiCj4JV/MNPsf1U88yK4GWEYUosJp
	vC1aXeaX/rINvlgUg1NNgJaOtagslazIwuHSIrOOV99TinTth+cwGofA4wDJX+5L7IRlop+80Ap
	FuG1bbHjyhXEgecD/nS8Z2hTCHXXR2uLrvw==
X-Received: by 2002:ac8:7f42:0:b0:3ed:4a17:8b0f with SMTP id g2-20020ac87f42000000b003ed4a178b0fmr24709363qtk.25.1682375708327;
        Mon, 24 Apr 2023 15:35:08 -0700 (PDT)
X-Google-Smtp-Source: AKy350aBh9WN4eEBfeqITYWvJioz91FsGNrKf2GwcoO3UjeLguJG/OpDDT7yB41icNJRnpnxpchBoA==
X-Received: by 2002:ac8:7f42:0:b0:3ed:4a17:8b0f with SMTP id g2-20020ac87f42000000b003ed4a178b0fmr24709331qtk.25.1682375707944;
        Mon, 24 Apr 2023 15:35:07 -0700 (PDT)
Received: from fedora (modemcable181.5-202-24.mc.videotron.ca. [24.202.5.181])
        by smtp.gmail.com with ESMTPSA id a9-20020ac844a9000000b003d3a34d2eb2sm3997005qto.41.2023.04.24.15.35.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Apr 2023 15:35:07 -0700 (PDT)
Date: Mon, 24 Apr 2023 18:35:04 -0400
From: Adrien Thierry <athierry@redhat.com>
To: Shazad Hussain <quic_shazhuss@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org
Subject: Re: [PATCH v1 0/6] arm64: qcom: sa8775p: add support for USB
Message-ID: <ZEcEGJiikEC2wIVE@fedora>
References: <20230421133922.8520-1-quic_shazhuss@quicinc.com>
MIME-Version: 1.0
In-Reply-To: <20230421133922.8520-1-quic_shazhuss@quicinc.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230424_154303_715103_3D50A5AC 
X-CRM114-Status: GOOD (  15.24  )
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

Hi Shazad,

On Fri, Apr 21, 2023 at 07:09:15PM +0530, Shazad Hussain wrote:
> Update relavent DT bindings for USB, add new config to the phy driver,
> add USB and PHY nodes to the .dtsi and enable them in the board .dts
> for the sa8775p-ride platform.
> 
> Shazad Hussain (6):
>   dt-bindings: usb: qcom,dwc3: Add bindings for SA8775P
>   dt-bindings: phy: qcom,usb-snps-femto-v2: Add bindings for SA8775P
>   dt-bindings: phy: qcom,sc8280xp-qmp-usb3-uni: Add SA8775P USB PHY
>     binding
>   phy: qcom-qmp: Add SA8775P USB3 UNI phy
>   arm64: dts: qcom: sa8775p: add USB nodes
>   arm64: dts: qcom: sa8775p-ride: enable USB nodes
> 
>  .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml   |   1 +
>  .../bindings/phy/qcom,usb-snps-femto-v2.yaml  |   1 +
>  .../devicetree/bindings/usb/qcom,dwc3.yaml    |   5 +
>  arch/arm64/boot/dts/qcom/sa8775p-ride.dts     |  92 +++++++
>  arch/arm64/boot/dts/qcom/sa8775p.dtsi         | 239 +++++++++++++++++-
>  drivers/phy/qualcomm/phy-qcom-qmp-usb.c       |  45 ++++
>  6 files changed, 381 insertions(+), 2 deletions(-)
> 
> -- 
> 2.17.1
> 

Thanks for posting this. I tested the series on the sa8775p, and it seems
initialization for the controller at a400000 sometimes fails with a
timeout (-110) error:

    dwc3 a400000.usb: Adding to iommu group 2
    xhci-hcd xhci-hcd.0.auto: xHCI Host Controller
    xhci-hcd xhci-hcd.0.auto: new USB bus registered, assigned bus number 1
    xhci-hcd xhci-hcd.0.auto: can't setup: -110
    xhci-hcd xhci-hcd.0.auto: USB bus 1 deregistered
    xhci-hcd: probe of xhci-hcd.0.auto failed with error -110
    dwc3 a600000.usb: Adding to iommu group 3
    dwc3 a800000.usb: Adding to iommu group 4
    xhci-hcd xhci-hcd.1.auto: xHCI Host Controller
    xhci-hcd xhci-hcd.1.auto: new USB bus registered, assigned bus number 1
    xhci-hcd xhci-hcd.1.auto: hcc params 0x0110ffc5 hci version 0x110 quirks 0x0000000000010010
    xhci-hcd xhci-hcd.1.auto: irq 162, io mem 0x0a800000
    xhci-hcd xhci-hcd.1.auto: xHCI Host Controller
    xhci-hcd xhci-hcd.1.auto: new USB bus registered, assigned bus number 2
    xhci-hcd xhci-hcd.1.auto: Host supports USB 3.1 Enhanced SuperSpeed
    hub 1-0:1.0: USB hub found
    hub 1-0:1.0: 1 port detected
    usb usb2: We don't know the algorithms for LPM for this host, disabling LPM.
    hub 2-0:1.0: USB hub found
    hub 2-0:1.0: 1 port detected

In this case, only usb devices for a800000 are showing:

    dracut:/# ls -alh /sys/bus/usb/devices
    total 0
    drwxr-xr-x 2 root root 0 Feb 27 00:00 .
    drwxr-xr-x 4 root root 0 Feb 27 00:00 ..
    lrwxrwxrwx 1 root root 0 Feb 27 00:00 1-0:1.0 -> ../../../devices/platform/soc@0/a8f8800.usb/a800000.usb/xhci-hcd.1.auto/usb1/1-0:1.0
    lrwxrwxrwx 1 root root 0 Feb 27 00:00 2-0:1.0 -> ../../../devices/platform/soc@0/a8f8800.usb/a800000.usb/xhci-hcd.1.auto/usb2/2-0:1.0
    lrwxrwxrwx 1 root root 0 Feb 27 00:00 usb1 -> ../../../devices/platform/soc@0/a8f8800.usb/a800000.usb/xhci-hcd.1.auto/usb1
    lrwxrwxrwx 1 root root 0 Feb 27 00:00 usb2 -> ../../../devices/platform/soc@0/a8f8800.usb/a800000.usb/xhci-hcd.1.auto/usb2

This happens approximately 1 out of 2 reboots. Here's the kernel output
when initialization succeeds:

    dwc3 a600000.usb: Adding to iommu group 2
    dwc3 a800000.usb: Adding to iommu group 3
    xhci-hcd xhci-hcd.0.auto: xHCI Host Controller
    xhci-hcd xhci-hcd.0.auto: new USB bus registered, assigned bus number 1
    xhci-hcd xhci-hcd.0.auto: hcc params 0x0110ffc5 hci version 0x110 quirks 0x0000000000010010
    xhci-hcd xhci-hcd.0.auto: irq 161, io mem 0x0a800000
    xhci-hcd xhci-hcd.0.auto: xHCI Host Controller
    xhci-hcd xhci-hcd.0.auto: new USB bus registered, assigned bus number 2
    xhci-hcd xhci-hcd.0.auto: Host supports USB 3.1 Enhanced SuperSpeed
    hub 1-0:1.0: USB hub found
    hub 1-0:1.0: 1 port detected
    usb usb2: We don't know the algorithms for LPM for this host, disabling LPM.
    hub 2-0:1.0: USB hub found
    hub 2-0:1.0: 1 port detected
    dwc3 a400000.usb: Adding to iommu group 4
    xhci-hcd xhci-hcd.1.auto: xHCI Host Controller
    xhci-hcd xhci-hcd.1.auto: new USB bus registered, assigned bus number 3
    xhci-hcd xhci-hcd.1.auto: USB3 root hub has no ports
    xhci-hcd xhci-hcd.1.auto: hcc params 0x0220fe65 hci version 0x110 quirks 0x0000000000010010
    xhci-hcd xhci-hcd.1.auto: irq 162, io mem 0x0a400000
    hub 3-0:1.0: USB hub found
    hub 3-0:1.0: 1 port detected

And the list of usb devices:

    dracut:/# ls -alh /sys/bus/usb/devices
    total 0
    drwxr-xr-x 2 root root 0 Feb 27 00:00 .
    drwxr-xr-x 4 root root 0 Feb 27 00:00 ..
    lrwxrwxrwx 1 root root 0 Feb 27 00:00 1-0:1.0 -> ../../../devices/platform/soc@0/a8f8800.usb/a800000.usb/xhci-hcd.0.auto/usb1/1-0:1.0
    lrwxrwxrwx 1 root root 0 Feb 27 00:00 2-0:1.0 -> ../../../devices/platform/soc@0/a8f8800.usb/a800000.usb/xhci-hcd.0.auto/usb2/2-0:1.0
    lrwxrwxrwx 1 root root 0 Feb 27 00:00 3-0:1.0 -> ../../../devices/platform/soc@0/a4f8800.usb/a400000.usb/xhci-hcd.1.auto/usb3/3-0:1.0
    lrwxrwxrwx 1 root root 0 Feb 27 00:00 usb1 -> ../../../devices/platform/soc@0/a8f8800.usb/a800000.usb/xhci-hcd.0.auto/usb1
    lrwxrwxrwx 1 root root 0 Feb 27 00:00 usb2 -> ../../../devices/platform/soc@0/a8f8800.usb/a800000.usb/xhci-hcd.0.auto/usb2
    lrwxrwxrwx 1 root root 0 Feb 27 00:00 usb3 -> ../../../devices/platform/soc@0/a4f8800.usb/a400000.usb/xhci-hcd.1.auto/usb3

Have you also encountered this?

Best,

Adrien


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
