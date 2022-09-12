Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2CB6BC6FA83
	for <linux-phy@archiver.kernel.org>; Mon, 12 Sep 2022 18:29:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0nfBNO3WIrGez0JrkFj0vgPQRt13B0tgpnacwuWGjAQ=; b=WO1DVbzVadqpbi
	EUpJafi4g/XrQ1D7SP+9qcDcGXmBPkRoB5SdSvUzZhKaqRV3e/aBV8VKvWUGKaH9w5CsTwJtPVWQi
	hBbOiOLZZKCWOvyFfSuYvO1BYqU19EF059N/oYWJlz8VVqL/OIhwijB3EVnT3S5ToSbsPvvXU2LZQ
	krOOdVkaZlcJP8KjNewom3WMhhyf9zwC1RiIVaZ9S99BrwEQ8xnBXEkkp2z/QLoErP/rgJ8diZnwG
	iRQDCH5oyz7xza/fYuhMblEk52GyJyXaMhVFR+u/Od9PXhQ4EZ1p3r+mr/daqYdk9frenNwwIC3BZ
	aKwtYObc+c0fkYAsFGMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXoBm-00CWRx-G8; Mon, 12 Sep 2022 18:29:46 +0000
Received: from mail-oa1-f45.google.com ([209.85.160.45])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXoBk-00CWPU-0e
	for linux-phy@lists.infradead.org; Mon, 12 Sep 2022 18:29:45 +0000
Received: by mail-oa1-f45.google.com with SMTP id 586e51a60fabf-12b542cb1d3so15914158fac.13
        for <linux-phy@lists.infradead.org>; Mon, 12 Sep 2022 11:29:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=qOuXJYWFlhMBv+hJob6UqyVwr1Eq15fJbMnFTSXIcyw=;
        b=uSyUD/rdmZuE94qFQl4P8UGqBLQw3JeMIUF2OHyl9VVogv4d4qDDMtSeUou4H7fOaU
         D0c1VhJjPMlhrh9QyOC+SFf2CfiYmOsu1U6M6U6cVEfNPo+i2giyMzENiA7caspd1D0P
         RufpIiOmPdqP5lFIWoib3Lj0Y7Ar2WBzgdCrI+jETvhsCrTFXaBOOgn01BUAZsZRdDFy
         8X1XXrhP1FAgRqWg5r+Bx9flItkUm2h8tfIneYlmDZg9DRt31tGo4wyar94UBdpidw8Q
         RY5g1PqBBxG/sfQcBCmEs2baQq5GEnUaGAN5sF9n3r1l594NObV4xcfC/IA1v3oGCCHs
         QqzQ==
X-Gm-Message-State: ACgBeo3RPvPv/tKgwscE2ZDNzPt4E2EnuJpDkIieysLM8XLmWPLo3u6i
	NIN+Gz1zTFl8wBupiUVvsNq8voahYg==
X-Google-Smtp-Source: AA6agR6sMx7mHoUriHC8Kh+qkq1RuDkElTwvjx7a2+2WT/6UEwW/82ho+p19Lacr5xK7BwDhHvQUvA==
X-Received: by 2002:a05:6808:9b2:b0:34f:61af:fea7 with SMTP id e18-20020a05680809b200b0034f61affea7mr6381201oig.133.1663007382484;
        Mon, 12 Sep 2022 11:29:42 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id f11-20020a056830056b00b00636eeba9209sm4996703otc.52.2022.09.12.11.29.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Sep 2022 11:29:42 -0700 (PDT)
Received: (nullmailer pid 1600984 invoked by uid 1000);
	Mon, 12 Sep 2022 18:29:41 -0000
Date: Mon, 12 Sep 2022 13:29:41 -0500
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Konrad Dybcio <konrad.dybcio@somainline.org>, Kishon Vijay Abraham I <kishon@ti.com>, linux-remoteproc@vger.kernel.org, Mathieu Poirier <mathieu.poirier@linaro.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org, devicetree@vger.kernel.org, Yu Chen <chenyu56@huawei.com>, Vinod Koul <vkoul@kernel.org>, Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>, Mauro Carvalho Chehab <mchehab@kernel.org>, Binghui Wang <wangbinghui@hisilicon.com>, linux-phy@lists.infradead.org, Bjorn Andersson <bjorn.andersson@linaro.org>, Carvalho Chehab <mchehab+huawei@kernel.org>, Lee Jones <lee@kernel.org>, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/4] mfd/phy/remoteproc: dt-bindings: syscon: be specific
Message-ID: <20220912182941.GA1596070-robh@kernel.org>
References: <20220817142246.828762-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220817142246.828762-1-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220912_112944_093304_C33CA0DF 
X-CRM114-Status: GOOD (  10.64  )
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

On Wed, 17 Aug 2022 17:22:42 +0300, Krzysztof Kozlowski wrote:
> Hi,
> 
> The last MFD/syscon patch depends on the previous ones to avoid
> dt_binding_check warnings.
> 
> I propose to take entire set via Rob's DT tree.

This may have been in the window where PW server moved and stopped 
getting patches, so I missed it until patch 4 got applied and broke 
linux-next...

> 
> Best regards,
> Krzysztof
> 
> Krzysztof Kozlowski (4):
>   dt-bindings: phy: hisilicon,hi3660-usb3: simplify example
>   dt-bindings: phy: hisilicon,hi3670-usb3: simplify example
>   dt-bindings: remoteproc: qcom,pil-info: add missing imem compatible
>   dt-bindings: mfd: syscon: require specific compatible also for
>     simple-mfd

I applied patches 1-3, thanks!

Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
