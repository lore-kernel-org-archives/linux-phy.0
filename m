Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 527B4C7618E
	for <linux-phy@archiver.kernel.org>; Wed, 26 Apr 2023 23:42:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=elKHhDYmoE0wZHEw7gg+GVBKuox/fMfdK10S5BtB5OE=; b=PPc57KBS8Yfu9F
	SUQb+XX6IjrvPsNPPMErwy75/vG87qwMA8hHr5Krco0BN/OEzBViHzlswLWnqCzCVKmsYkWZgqhKC
	nzNHSDTXgU/A9LxwSQdEANQepASKmx1cHDJ5Gntm04mhQ/SILneEdpdaIws8NjLU0nQEmtSfwuOVQ
	OMMvmvGsJ0+AE4pMoqqGLdXDcqUc/9jfOunZSiPuplHRsJFH+QYO9bI/80758wZYtfb+aj2EXqwKI
	+a44LOWSrjSmdGdheVsDFXCChlXIx919vLqh6j2YF8FZbBOpPWlmedyz5MEDYZOBIvYJaEVIH3eUK
	4tO6BCsTv0peRsH6FBQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1promF-0053qb-1x;
	Wed, 26 Apr 2023 23:42:23 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1promC-0053pA-0P
	for linux-phy@lists.infradead.org;
	Wed, 26 Apr 2023 23:42:21 +0000
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-50506111a6eso14293321a12.1
        for <linux-phy@lists.infradead.org>; Wed, 26 Apr 2023 16:42:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682552536; x=1685144536;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZLVs3263t2teDRTXdz5t8bFzGRiK7kYETPsxms6eL6I=;
        b=Ttz+SLmrQfsQ2A3EcrAQow5haAlQmo4fTMb+Imrs7ICAuXH7Myhkhco84qhNfFRP5J
         CjP945mmPsI2U5NP5LsH2u5FzOQhlnUoKaugxPPdUhEDYW6lvJw97+pANAC8zqW44aqG
         Y2FiIPmIOQTkbw+9VKIsOdhv42OKPJ34QlK1Wzvfq7FFbju2NnrUBGe36lIeCuSDzk58
         4120Z7AsAjcfoVhzWC//ydHWqXi3cFOafqpH400suCq72WQdQ7j25681Tu/xtP2cXehl
         OOB+OlyvOFkGleZjvj/rQP4le06vY4JkFYfuA6b8u2f32dvffoiIf/TWNnf0gHXOxtdx
         fKQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682552536; x=1685144536;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZLVs3263t2teDRTXdz5t8bFzGRiK7kYETPsxms6eL6I=;
        b=WNZ/r8bcK19NQhs2LJVEVhCbdPSl0v6RYQ9mOJqyi3YUgF4jrLCl8/hs6FS8JRmgz8
         s/RNBVOPQomb2mpLm23OKMeLtKWMYET5FzF2bgspLLCGOkZqC2CVAWzdkhz2yuc7B412
         A80TQUyRxBhTtnXZrp6IkAat3k7WskU4xMu27MKuwrWwYGjLrV9CRlouRiL4hG86toS2
         qzu9qwIrNSXHH1UGgJWBk333L+cXeFmoh3LqoNRvTtTqSUmz9ilENhHepvhKHvtg12y7
         OSI8KnYdzkS03MZn9MI883ZtWFGOuW0s2HqITImRAOquX0xXbOFk/L+XBUnFR9M4Px4t
         2aEw==
X-Gm-Message-State: AAQBX9cYp7Wsv8/teQq7pOFV2POe9/B26JttcArYB2sI17mJV7BZUqqx
	e93S9K8MRt+tp9LR+c5o5XmcmA==
X-Google-Smtp-Source: AKy350YsWJrmVXvulbVEZKykpoK9kWHFkFN2sJlJoFlZgl/ec3q490HFPPTRY7ORu7kZUvq3uA76Qg==
X-Received: by 2002:a17:906:1498:b0:94f:322d:909c with SMTP id x24-20020a170906149800b0094f322d909cmr19109414ejc.34.1682552536106;
        Wed, 26 Apr 2023 16:42:16 -0700 (PDT)
Received: from [172.23.2.152] ([31.221.30.162])
        by smtp.gmail.com with ESMTPSA id e6-20020a1709062c0600b0094ef2003581sm8804723ejh.153.2023.04.26.16.42.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Apr 2023 16:42:15 -0700 (PDT)
Message-ID: <ac49075d-439e-da46-9ef6-0b0828f8e072@linaro.org>
Date: Thu, 27 Apr 2023 00:42:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH v1 0/6] arm64: qcom: sa8775p: add support for USB
Content-Language: en-US
To: Adrien Thierry <athierry@redhat.com>,
 Shazad Hussain <quic_shazhuss@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Wesley Cheng <quic_wcheng@quicinc.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org
References: <20230421133922.8520-1-quic_shazhuss@quicinc.com>
 <ZEcEGJiikEC2wIVE@fedora>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <ZEcEGJiikEC2wIVE@fedora>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230426_164220_214537_D7D29E22 
X-CRM114-Status: GOOD (  21.28  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


On 4/24/23 23:35, Adrien Thierry wrote:
> Hi Shazad,
>
> On Fri, Apr 21, 2023 at 07:09:15PM +0530, Shazad Hussain wrote:
>> Update relavent DT bindings for USB, add new config to the phy driver,
>> add USB and PHY nodes to the .dtsi and enable them in the board .dts
>> for the sa8775p-ride platform.
>>
>> Shazad Hussain (6):
>>    dt-bindings: usb: qcom,dwc3: Add bindings for SA8775P
>>    dt-bindings: phy: qcom,usb-snps-femto-v2: Add bindings for SA8775P
>>    dt-bindings: phy: qcom,sc8280xp-qmp-usb3-uni: Add SA8775P USB PHY
>>      binding
>>    phy: qcom-qmp: Add SA8775P USB3 UNI phy
>>    arm64: dts: qcom: sa8775p: add USB nodes
>>    arm64: dts: qcom: sa8775p-ride: enable USB nodes
>>
>>   .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml   |   1 +
>>   .../bindings/phy/qcom,usb-snps-femto-v2.yaml  |   1 +
>>   .../devicetree/bindings/usb/qcom,dwc3.yaml    |   5 +
>>   arch/arm64/boot/dts/qcom/sa8775p-ride.dts     |  92 +++++++
>>   arch/arm64/boot/dts/qcom/sa8775p.dtsi         | 239 +++++++++++++++++-
>>   drivers/phy/qualcomm/phy-qcom-qmp-usb.c       |  45 ++++
>>   6 files changed, 381 insertions(+), 2 deletions(-)
>>
>> -- 
>> 2.17.1
>>
> Thanks for posting this. I tested the series on the sa8775p, and it seems
> initialization for the controller at a400000 sometimes fails with a
> timeout (-110) error:
>
>      dwc3 a400000.usb: Adding to iommu group 2
>      xhci-hcd xhci-hcd.0.auto: xHCI Host Controller
>      xhci-hcd xhci-hcd.0.auto: new USB bus registered, assigned bus number 1
>      xhci-hcd xhci-hcd.0.auto: can't setup: -110
>      xhci-hcd xhci-hcd.0.auto: USB bus 1 deregistered
>      xhci-hcd: probe of xhci-hcd.0.auto failed with error -110
>      dwc3 a600000.usb: Adding to iommu group 3
>      dwc3 a800000.usb: Adding to iommu group 4
>      xhci-hcd xhci-hcd.1.auto: xHCI Host Controller
>      xhci-hcd xhci-hcd.1.auto: new USB bus registered, assigned bus number 1
>      xhci-hcd xhci-hcd.1.auto: hcc params 0x0110ffc5 hci version 0x110 quirks 0x0000000000010010
>      xhci-hcd xhci-hcd.1.auto: irq 162, io mem 0x0a800000
>      xhci-hcd xhci-hcd.1.auto: xHCI Host Controller
>      xhci-hcd xhci-hcd.1.auto: new USB bus registered, assigned bus number 2
>      xhci-hcd xhci-hcd.1.auto: Host supports USB 3.1 Enhanced SuperSpeed
>      hub 1-0:1.0: USB hub found
>      hub 1-0:1.0: 1 port detected
>      usb usb2: We don't know the algorithms for LPM for this host, disabling LPM.
>      hub 2-0:1.0: USB hub found
>      hub 2-0:1.0: 1 port detected
>
> In this case, only usb devices for a800000 are showing:
>
>      dracut:/# ls -alh /sys/bus/usb/devices
>      total 0
>      drwxr-xr-x 2 root root 0 Feb 27 00:00 .
>      drwxr-xr-x 4 root root 0 Feb 27 00:00 ..
>      lrwxrwxrwx 1 root root 0 Feb 27 00:00 1-0:1.0 -> ../../../devices/platform/soc@0/a8f8800.usb/a800000.usb/xhci-hcd.1.auto/usb1/1-0:1.0
>      lrwxrwxrwx 1 root root 0 Feb 27 00:00 2-0:1.0 -> ../../../devices/platform/soc@0/a8f8800.usb/a800000.usb/xhci-hcd.1.auto/usb2/2-0:1.0
>      lrwxrwxrwx 1 root root 0 Feb 27 00:00 usb1 -> ../../../devices/platform/soc@0/a8f8800.usb/a800000.usb/xhci-hcd.1.auto/usb1
>      lrwxrwxrwx 1 root root 0 Feb 27 00:00 usb2 -> ../../../devices/platform/soc@0/a8f8800.usb/a800000.usb/xhci-hcd.1.auto/usb2
>
> This happens approximately 1 out of 2 reboots. Here's the kernel output
> when initialization succeeds:
>
>      dwc3 a600000.usb: Adding to iommu group 2
>      dwc3 a800000.usb: Adding to iommu group 3
>      xhci-hcd xhci-hcd.0.auto: xHCI Host Controller
>      xhci-hcd xhci-hcd.0.auto: new USB bus registered, assigned bus number 1
>      xhci-hcd xhci-hcd.0.auto: hcc params 0x0110ffc5 hci version 0x110 quirks 0x0000000000010010
>      xhci-hcd xhci-hcd.0.auto: irq 161, io mem 0x0a800000
>      xhci-hcd xhci-hcd.0.auto: xHCI Host Controller
>      xhci-hcd xhci-hcd.0.auto: new USB bus registered, assigned bus number 2
>      xhci-hcd xhci-hcd.0.auto: Host supports USB 3.1 Enhanced SuperSpeed
>      hub 1-0:1.0: USB hub found
>      hub 1-0:1.0: 1 port detected
>      usb usb2: We don't know the algorithms for LPM for this host, disabling LPM.
>      hub 2-0:1.0: USB hub found
>      hub 2-0:1.0: 1 port detected
>      dwc3 a400000.usb: Adding to iommu group 4
>      xhci-hcd xhci-hcd.1.auto: xHCI Host Controller
>      xhci-hcd xhci-hcd.1.auto: new USB bus registered, assigned bus number 3
>      xhci-hcd xhci-hcd.1.auto: USB3 root hub has no ports
>      xhci-hcd xhci-hcd.1.auto: hcc params 0x0220fe65 hci version 0x110 quirks 0x0000000000010010
>      xhci-hcd xhci-hcd.1.auto: irq 162, io mem 0x0a400000
>      hub 3-0:1.0: USB hub found
>      hub 3-0:1.0: 1 port detected
>
> And the list of usb devices:
>
>      dracut:/# ls -alh /sys/bus/usb/devices
>      total 0
>      drwxr-xr-x 2 root root 0 Feb 27 00:00 .
>      drwxr-xr-x 4 root root 0 Feb 27 00:00 ..
>      lrwxrwxrwx 1 root root 0 Feb 27 00:00 1-0:1.0 -> ../../../devices/platform/soc@0/a8f8800.usb/a800000.usb/xhci-hcd.0.auto/usb1/1-0:1.0
>      lrwxrwxrwx 1 root root 0 Feb 27 00:00 2-0:1.0 -> ../../../devices/platform/soc@0/a8f8800.usb/a800000.usb/xhci-hcd.0.auto/usb2/2-0:1.0
>      lrwxrwxrwx 1 root root 0 Feb 27 00:00 3-0:1.0 -> ../../../devices/platform/soc@0/a4f8800.usb/a400000.usb/xhci-hcd.1.auto/usb3/3-0:1.0
>      lrwxrwxrwx 1 root root 0 Feb 27 00:00 usb1 -> ../../../devices/platform/soc@0/a8f8800.usb/a800000.usb/xhci-hcd.0.auto/usb1
>      lrwxrwxrwx 1 root root 0 Feb 27 00:00 usb2 -> ../../../devices/platform/soc@0/a8f8800.usb/a800000.usb/xhci-hcd.0.auto/usb2
>      lrwxrwxrwx 1 root root 0 Feb 27 00:00 usb3 -> ../../../devices/platform/soc@0/a4f8800.usb/a400000.usb/xhci-hcd.1.auto/usb3
>
> Have you also encountered this?

I've had some issues with QMPPHY not (sometimes?) probing in time on SM6115 only when built as a module.. perhaps it'd be worth checking out of it works fine with =y?


Konrad

>
> Best,
>
> Adrien
>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
