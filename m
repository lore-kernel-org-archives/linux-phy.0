Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A1F8C4332F
	for <linux-phy@archiver.kernel.org>; Tue, 31 May 2022 09:59:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lSpftGwDkeKM9N2tT07Y9kovf7OMpmTaUicSf9EtRbM=; b=e/5B5AJTM9XvxK
	QQOdAen3C1yLZeiYQL7srriR2rLp9Y5/Bexg7DjxebcUUR4V+10e6lsEisY2FjygMGhRQo/o7wtdn
	kSSLgGgMei2Z4UzHisFEYjLTeHklo1EIFVYY9DZVyx6Z4I2ZYTFKn46YL46ac9ZV4bfLIkDM4GxTJ
	sCxTb3waodaTd8Vf/hi5HzPv6cndmMkDnMI6IrybpY1xBu3im6PeTe57Gc6wlVLyNZfSQOdyqNqbG
	CobBeRTCCvKz8y5sggz8whNzHuw7e1pp08BxUGqudjwzn6BJAAgyynhMyXc+eqACvYtcr3Oplyzvu
	lWHbJhdmwRAoyWg+uZ9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nvyeR-00A6n7-La; Tue, 31 May 2022 09:58:59 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nvyeP-00A6lL-9g
	for linux-phy@lists.infradead.org; Tue, 31 May 2022 09:58:58 +0000
Received: by mail-ed1-x52b.google.com with SMTP id fd25so16792175edb.3
        for <linux-phy@lists.infradead.org>; Tue, 31 May 2022 02:58:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=1Lh//yTGUbJi03monU+zFrkUN9l3qrNWeiv0qwPR1KM=;
        b=MVVRYI0ZN7SgTFaz8M/u06YGulvbFi62zDDqveL16HifTZgFBWaOwnMhkuxfYn8P+j
         WL52gYI9/y2DnkaFxlP8h9zAg37ru7axcu6UoM/ppAFX8L6/lWuCtYx+alWRh28Zn1r7
         dz54UR3QvN0NY3hkYETDMWeeWOhyhd19AENImdywvWb/Ie3thjvBTvm3EJPH9FhWpLCq
         dLZedltAZfb6lOoh+5BJZZZKdY3W5dKwBIiNGa55u4xLFNyGBTVpeK54TRKAYJ9Jvrt8
         QRWzktIT7LePgIAbsAvL6NGXISMzoBFmUsnrVz8uPk8IjcqjESaezNpttB0KjgY5NGqq
         XXqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=1Lh//yTGUbJi03monU+zFrkUN9l3qrNWeiv0qwPR1KM=;
        b=wfhnzOy6/+2YDYaJPDdS7EkQKFRo6VyqTGTkvtt9RK9cEwrncN8kjWErj9p9kpn7kB
         2+ekUc6rpd2fFmStlLAp4VTP6kyWBy7G92Qko51wWTxc3Nxl9ZS8V791o5P5pDElvBuM
         PtM7L/tFgTU0yvRdDuQ16hnJF/x4amiOCC6FRG9QZ+z8Yl5YDWRYR5Rtnkys2pJDu5Ev
         gWKO5javMV/uhub0OJJkAWtGGIbkHW/44mD/AIKKLRuaKZV4sCT9IoGpLdStv8PYWWS7
         1O0/w9a/oLCRWz0s13O8ialsbOJxMPQgUVZ8sp00c845l62jEaxYfyVCgq+YjTQoOJen
         WAQg==
X-Gm-Message-State: AOAM533draxFzrgw8w/k4PA8Vs7MFPAcFQdqyZ8kGeO3cG9Zl2NScieX
	31qfyAbRPGFvgLG6RRcmNikkLQ==
X-Google-Smtp-Source: ABdhPJy69vdQQFHMyE72a/U4IgyhyOR2N6lSQOXZujz+0wS6/e2q5DrHOVp8H/lzBSwKc7yAEfijLw==
X-Received: by 2002:a05:6402:3705:b0:42a:ba63:18b7 with SMTP id ek5-20020a056402370500b0042aba6318b7mr62888334edb.296.1653991134894;
        Tue, 31 May 2022 02:58:54 -0700 (PDT)
Received: from [192.168.0.179] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id 24-20020a170906309800b006ff99e400f9sm1161939ejv.96.2022.05.31.02.58.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 May 2022 02:58:54 -0700 (PDT)
Message-ID: <d0904cb9-e765-f0f3-737e-bf365c1cf444@linaro.org>
Date: Tue, 31 May 2022 11:58:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH 4/6] dt-bindings: ufs: exynos-ufs: add fsd compatible
Content-Language: en-US
To: Alim Akhtar <alim.akhtar@samsung.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, vkoul@kernel.org, avri.altman@wdc.com,
 bvanassche@acm.org, martin.petersen@oracle.com, chanho61.park@samsung.com,
 pankaj.dubey@samsung.com, linux-fsd@tesla.com,
 Bharat Uppal <bharat.uppal@samsung.com>
References: <20220531012220.80563-1-alim.akhtar@samsung.com>
 <CGME20220531012351epcas5p389e28e28a48f9bb14a52fc81c417296d@epcas5p3.samsung.com>
 <20220531012220.80563-5-alim.akhtar@samsung.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220531012220.80563-5-alim.akhtar@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220531_025857_428259_D4075DDE 
X-CRM114-Status: UNSURE (   6.53  )
X-CRM114-Notice: Please train this message.
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

On 31/05/2022 03:22, Alim Akhtar wrote:
> Adds tesla,fsd-ufs compatible for Tesla FSD SoC.
> 
> Cc: linux-fsd@tesla.com
> Signed-off-by: Bharat Uppal <bharat.uppal@samsung.com>
> Signed-off-by: Alim Akhtar <alim.akhtar@samsung.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
