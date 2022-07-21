Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7C8ACCA479
	for <linux-phy@archiver.kernel.org>; Thu, 21 Jul 2022 09:04:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U2r2rCpd/MO3xKIyQcIZLJ5xSLj8JpawOFjcXT2pNgQ=; b=vpMUusVc5ZD3as
	/1FzHas47lgpuxMUbRYFSEftQGOD/5m2EhtysPIJ0dE+hRyhOIJxilXOkeg06GRb+RK4iJCpP77B7
	r4cg3OefDI2WTqnTwtaBQLAx/Yk9wsP3Hac1TEfGuaye9cd9PqeAsxu7AoAeYv7z3Wj0EPn5nNEuZ
	UBHiQxRwPMJm5kKo7oFGanoquklHnmy3mIqW98VgtgCZAnmo/94mAWQMGuPhSeVwlg3/futmhk6p0
	/QTTApqwTFyNvNVRqrTKxHSjujrihFh76xOcA+iGxx3DvBR9yEy0O42+jZe36k5uNIbZUNDB/lJLK
	dxPGiqtCuIsPgCrXe5Yg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oES6N-002xRL-87; Thu, 21 Jul 2022 09:04:11 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oES6K-002xMc-J5
	for linux-phy@lists.infradead.org; Thu, 21 Jul 2022 09:04:10 +0000
Received: by mail-lf1-x12b.google.com with SMTP id u19so1819517lfs.0
        for <linux-phy@lists.infradead.org>; Thu, 21 Jul 2022 02:04:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=qOhFQavxJkvkRKqQgOoA5BchNmvzO4jziMu32JUVuNA=;
        b=QNll75k6VEea9CaxOaIqrXRacFYtNT3F2Bq/yWxrAhnNJRCSumd9rM9kVEns5mq0r1
         U/B9TB7RsXf1gS5hcws1WFcFdA8ZW0GsU4IYok0wx7o31IFwdNjiQ6w+3VayslxIcg4y
         Pz/MHe9t1EoO0sbXkdEoatUHtBYkAajEGt6UNdat+csjNevWWF/ZYnzxQhVgMCD3km/B
         93nrPvREJIogZIZqjmjnQK+bSL3rCHZIxoCRTWEfmkwerhFUwTtO0rhaIvTwI7nvNeDH
         A1DtJKugWVoy3PNWaPCeXjX1Qxw+V7z5tGLd8LgjgcuA7KQoQ9BRukuHUiRx1m4nxMys
         5ujQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=qOhFQavxJkvkRKqQgOoA5BchNmvzO4jziMu32JUVuNA=;
        b=H9eTCDFq6Mwki7Myzyo/zL4zD2KPGX/jUOAY7MbNoBqQ+mgztt3E5Yfcu8m1rrmjLA
         XhzPi+Ke1y6lJbNoo2i2l35WavWzAfoP24TZT+9USueVOieBgOIwK9B07AUfFSD2dZTu
         XKUchtEX/r1uF5e9eEXYyuDbKnYUT/WroWiEOTp3Mdf6ZJ7uiD0YHE9u3I62O7ywI6/s
         Rk6KnGTVR91m8VTYf22Ur3GvPXF9/P566BPqK+SwhLJzbBNhnuwXKHhnFcWlFH7yA4zH
         nKZuigcz0tjQLqM9QYjHKlaJboW9/grxsm96knwnOkczE9V2Iu+jNNYo1U8Jd7Ncnjbp
         CuVQ==
X-Gm-Message-State: AJIora+Ftmw4Q/32SLjcLY7qJZXCS946aysYJWQCP6vvciKQejdZQygO
	hpdk460QWkb7vBsNI17aYhOd4Q==
X-Google-Smtp-Source: AGRyM1ush+aEGmuDIEZDFrboDoGXmSzQ7CNf3N7FSQSEBZ71eG+3L8h9AZRDlRReQksfSBw+oJSTIA==
X-Received: by 2002:a05:6512:228f:b0:489:c924:d44a with SMTP id f15-20020a056512228f00b00489c924d44amr20793946lfu.252.1658394244694;
        Thu, 21 Jul 2022 02:04:04 -0700 (PDT)
Received: from [192.168.115.193] (89-162-31-138.fiber.signal.no. [89.162.31.138])
        by smtp.gmail.com with ESMTPSA id o23-20020ac24e97000000b004867a427026sm318964lfr.40.2022.07.21.02.04.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Jul 2022 02:04:03 -0700 (PDT)
Message-ID: <226ac31e-2ac4-cb73-ab67-62f86d5e5783@linaro.org>
Date: Thu, 21 Jul 2022 11:04:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v4 3/5] PCI: axis: Add ARTPEC-8 PCIe controller driver
Content-Language: en-US
To: wangseok.lee@samsung.com, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "krzk+dt@kernel.org" <krzk+dt@kernel.org>, "kishon@ti.com" <kishon@ti.com>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "jesper.nilsson@axis.com" <jesper.nilsson@axis.com>,
 "lars.persson@axis.com" <lars.persson@axis.com>,
 "bhelgaas@google.com" <bhelgaas@google.com>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>,
 "kw@linux.com" <kw@linux.com>,
 "linux-arm-kernel@axis.com" <linux-arm-kernel@axis.com>,
 "kernel@axis.com" <kernel@axis.com>
Cc: Moon-Ki Jun <moonki.jun@samsung.com>,
 Sang Min Kim <hypmean.kim@samsung.com>, Dongjin Yang
 <dj76.yang@samsung.com>, Yeeun Kim <yeeun119.kim@samsung.com>
References: <20220720055108epcms2p563c65b3de6333ccbc68386aa2471a800@epcms2p5>
 <CGME20220720055108epcms2p563c65b3de6333ccbc68386aa2471a800@epcms2p3>
 <20220720060112epcms2p30a05414992cf814e5886af2b70c0f58f@epcms2p3>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220720060112epcms2p30a05414992cf814e5886af2b70c0f58f@epcms2p3>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220721_020409_013186_4DF03C73 
X-CRM114-Status: GOOD (  12.23  )
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

On 20/07/2022 08:01, Wangseok Lee wrote:
> Add support Axis, ARTPEC-8 SoC. ARTPEC-8 is the SoC platform of Axis
> Communications. This is based on arm64 and support GEN4 & 2lane. This
> PCIe controller is based on DesignWare Hardware core and uses DesignWare
> core functions to implement the driver. "pcie-artpec6. c" supports artpec6
> and artpec7 H/W. artpec8 can not be expanded because H/W configuration is
> completely different from artpec6/7. PHY and sub controller are different.
> 
> Signed-off-by: Wangseok Lee <wangseok.lee@samsung.com>
> Signed-off-by: Jaeho Cho <jaeho79.cho@samsung.com>
> ---
> v3->v4 :
> -Remove unnecessary enum type
> -Fix indentation
> 

Thanks for the changes. This starts to look good, however I am not going
to ack it. This is also not a strong NAK, as I would respect Bjorn and
other maintainers decision.

I don't like the approach of creating only Artpec-8 specific driver.
Samsung heavily reuses its block in all Exynos devices. Now it re-uses
them for other designs as well. Therefore, even if merging with existing
Exynos PCIe driver is not feasible (we had such discussions), I expect
this to cover all Samsung Foundry PCIe devices. From all current designs
up to future licensed blocks, including some new Samsung Exynos SoC. Or
at least be ready for it.

However it seems you are interested only in achieving one goal here -
satisfy Axis. I believe it is not the "upstream approach". Next month
you come up with same driver for different customer and you keep
insisting "it's different!".

To get my ack I want to see something generic for Samsung Exynos SoC and
other licensed or designed blocks, instead of something made for only
one of your customers.

Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
