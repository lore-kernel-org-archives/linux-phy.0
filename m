Return-Path: <SRS0=210v=MB=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66A56C07E99
	for <linux-phy@archiver.kernel.org>; Fri,  9 Jul 2021 17:31:29 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EFEA6613C3
	for <linux-phy@archiver.kernel.org>; Fri,  9 Jul 2021 17:31:28 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org EFEA6613C3
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=canonical.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fBEoFeLUPM1sM6u9fCM0/5H7JFM/jprUF7sbfOo53o0=; b=wZ5arXIkBTkwjJGvoMg1T8lQ4E
	7BtF7cwu7QPtwb5Uy3BDw4AkH0GgxrBeX99+hHiuDYYDkEFocxHcznLOr04VdX9m3fmMc5HL4sg/K
	tK/E7zwi/Vtq4TXZVqdJhfHlggUtQkCehqn9EHNjy5WE38WROJWmEoSSQeFE7ohG20LlrSyohPFsC
	JmTw0E6lXAFsC7BN+dnYPSd0FdiCTIY3SFazExC3AaL7KvDRk2OwvJWaAWCGyB7ImhbRsTEHxGO+4
	BYz4LdJI+Bj+GjXls1OhmVIcxCf8u/Vk+z0L+00yWo2UZZhStGonn5Sh/A3zrDC7Jzj+JoO6Hdj4I
	QsIKQSLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m1uLY-002CzM-H7; Fri, 09 Jul 2021 17:31:28 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m1uLV-002Cyi-SQ
 for linux-phy@lists.infradead.org; Fri, 09 Jul 2021 17:31:27 +0000
Received: from mail-wr1-f72.google.com ([209.85.221.72])
 by youngberry.canonical.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.93)
 (envelope-from <krzysztof.kozlowski@canonical.com>)
 id 1m1uLQ-0002vz-3t
 for linux-phy@lists.infradead.org; Fri, 09 Jul 2021 17:31:20 +0000
Received: by mail-wr1-f72.google.com with SMTP id
 z6-20020a5d4c860000b029013a10564614so2918772wrs.15
 for <linux-phy@lists.infradead.org>; Fri, 09 Jul 2021 10:31:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=57eVgtuS3OSCYSF/FxGtAiFs/4qfh+ikgHyPoyqfF1U=;
 b=heIfHQKDwAyMRd90RfcZo3dIpKijhKstdIJoyZUJgBpnCErDnqt/asL+idpdjiGWQH
 6OBln/a/GWZYUuR21+aMmXf5JdbufsFNPKz4eMDuKIWzH5c18pMJO9gWccL8K2hWnIQi
 ZMB66BydOxkvReZiy78UW0tSRsTVEYwEtYW0F6c33slhPAxHrSX96Q5W9a66zBxiyJyM
 zvAqDtxcSnS5oyURB1tGS1lVgg29hQMMx7QbM7cnbXiY4f2WCUhBuTStPA/tVoJHi0fT
 ShakeikRswbOHU8ZBoDTrXG+qWvnJkm3JH3isSCJBnFZlwT9PecCifh2C8hdxusTSOEm
 +Irw==
X-Gm-Message-State: AOAM530EyUP6pOgSybTM3XwtsRg+HHQ9onxRAgqrDzd8ad0VOpIFmf15
 M2rSm9vqOPCEtpsftfehl0cew6iqbFj2N6qc3uX/5VLCcQJPi/7U9JlI1aMPYbclvLu/HhqLUez
 /y6vPVxLKVDWjs/cofFlAGQalqeoEef6RVLNYOM2EWr8=
X-Received: by 2002:a5d:6841:: with SMTP id o1mr42788494wrw.370.1625851879890; 
 Fri, 09 Jul 2021 10:31:19 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzHXMwBLrba81W27WqHcvmqZsi2DebKAUf8aTTK4SLMIRaVw4zAeIvFRNNbWuP9LGF69iHVSg==
X-Received: by 2002:a5d:6841:: with SMTP id o1mr42788464wrw.370.1625851879739; 
 Fri, 09 Jul 2021 10:31:19 -0700 (PDT)
Received: from [192.168.3.211] (xdsl-188-155-177-222.adslplus.ch.
 [188.155.177.222])
 by smtp.gmail.com with ESMTPSA id o7sm6824936wrv.72.2021.07.09.10.31.18
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 09 Jul 2021 10:31:19 -0700 (PDT)
Subject: Re: [PATCH v5 1/2] phy: samsung-ufs: move phy-exynos7-ufs header
To: Chanho Park <chanho61.park@samsung.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>
Cc: Marek Szyprowski <m.szyprowski@samsung.com>,
 Jaehoon Chung <jh80.chung@samsung.com>, Alim Akhtar
 <alim.akhtar@samsung.com>, linux-phy@lists.infradead.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
References: <20210709094524.110193-1-chanho61.park@samsung.com>
 <CGME20210709100037epcas2p2be75773648d859ec29d96a901b6d9a5c@epcas2p2.samsung.com>
 <20210709094524.110193-2-chanho61.park@samsung.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <4e2adf91-9495-17f8-0e65-169346f9583d@canonical.com>
Date: Fri, 9 Jul 2021 19:31:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210709094524.110193-2-chanho61.park@samsung.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210709_103125_970896_71A503A8 
X-CRM114-Status: GOOD (  15.67  )
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

On 09/07/2021 11:45, Chanho Park wrote:
> Instead of using exynos7 ufs definition in phy-exynos7-ufs.h, we should
> put it into phy-exynos7-ufs.c to be included different objects or units.
> 
> Suggested-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
> Signed-off-by: Chanho Park <chanho61.park@samsung.com>
> ---
>  drivers/phy/samsung/Makefile                              | 4 +++-
>  .../phy/samsung/{phy-exynos7-ufs.h => phy-exynos7-ufs.c}  | 8 ++------
>  drivers/phy/samsung/phy-samsung-ufs.h                     | 5 ++++-
>  3 files changed, 9 insertions(+), 8 deletions(-)
>  rename drivers/phy/samsung/{phy-exynos7-ufs.h => phy-exynos7-ufs.c} (93%)
> 
> diff --git a/drivers/phy/samsung/Makefile b/drivers/phy/samsung/Makefile
> index 3959100fe8a2..68518ae30c1b 100644
> --- a/drivers/phy/samsung/Makefile
> +++ b/drivers/phy/samsung/Makefile
> @@ -2,7 +2,9 @@
>  obj-$(CONFIG_PHY_EXYNOS_DP_VIDEO)	+= phy-exynos-dp-video.o
>  obj-$(CONFIG_PHY_EXYNOS_MIPI_VIDEO)	+= phy-exynos-mipi-video.o
>  obj-$(CONFIG_PHY_EXYNOS_PCIE)		+= phy-exynos-pcie.o
> -obj-$(CONFIG_PHY_SAMSUNG_UFS)		+= phy-samsung-ufs.o
> +obj-$(CONFIG_PHY_SAMSUNG_UFS)		+= phy-exynos-ufs.o
> +phy-exynos-ufs-y			+= phy-samsung-ufs.o
> +phy-exynos-ufs-y			+= phy-exynos7-ufs.o

How does it support module builds? The previous code was working fine
when built as module. Maybe I miss something, but I don't see the need
for this change.

>  obj-$(CONFIG_PHY_SAMSUNG_USB2)		+= phy-exynos-usb2.o
>  phy-exynos-usb2-y			+= phy-samsung-usb2.o
>  phy-exynos-usb2-$(CONFIG_PHY_EXYNOS4210_USB2)	+= phy-exynos4210-usb2.o



Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
