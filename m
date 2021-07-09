Return-Path: <SRS0=210v=MB=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A48ECC07E99
	for <linux-phy@archiver.kernel.org>; Fri,  9 Jul 2021 17:36:46 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 394EB613C3
	for <linux-phy@archiver.kernel.org>; Fri,  9 Jul 2021 17:36:46 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 394EB613C3
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=canonical.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1IkA4pBKjfpyqqAXpEwK1XAie2Jii0jAWDNsifdF8wQ=; b=MnC5g/OBcztPsEHZLq1gpekHN+
	99TT05LrR8HGFp1xE+anonwm4RH8wRhrsUzGN1lhlLMgjJ5imbqK06ljmFtOGzsMzClZDqG5uw1/8
	EOmdjojwvM6GzC6lNt5AdqN8AVLGnpOA6dlIQpz1C6Xmq82u9xNuPOAxqyi8gp4LA4qIXdyx+h/Ug
	QDdvv9z5ipID1ZvJcRB6PLPNQbO0Z2HSV1rMeEuhrQ+H+iWn+KozULkW/5flDdUj/x4pFaf6aBa5N
	RHG6LAtVhbAmId6Y2A+I/3M66q4G0ze3MtUpcJ9+2VqkIRoGaHZo7jtwEEUQIIezlWqtYV4lMaCCt
	CayGGl/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m1uQf-002DeN-MO; Fri, 09 Jul 2021 17:36:45 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m1uQc-002De0-D5
 for linux-phy@lists.infradead.org; Fri, 09 Jul 2021 17:36:44 +0000
Received: from mail-wr1-f71.google.com ([209.85.221.71])
 by youngberry.canonical.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.93)
 (envelope-from <krzysztof.kozlowski@canonical.com>)
 id 1m1uQb-0003Bq-3r
 for linux-phy@lists.infradead.org; Fri, 09 Jul 2021 17:36:41 +0000
Received: by mail-wr1-f71.google.com with SMTP id
 p4-20020a5d63840000b0290126f2836a61so3255560wru.6
 for <linux-phy@lists.infradead.org>; Fri, 09 Jul 2021 10:36:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=/+y8FHDHGWx9Oj1qSBy3/4qOab1o6ziTF1tVPPbs0Pw=;
 b=lHPMdUH4Dm6X/GCLQeOu37nQo78idyILD02IxFD/l+THVi3kv6GWY6oq1zXXz/yRu+
 41oJUBRD+y6fp4AT8PuRWcs70ng8F94l+pu4P8iIS+5xiXDQTmlHBaNyAl7Usa5J4WSS
 TJFkQNuP94Gjh+eT3tSEpv93vEFltR78L8A36rCIz6RJYlyoYU6iVyPmqoSQyasJX9Is
 p0OUPVsGRv1JBJKCCdVxugkoSrM2kZ+KhHKHxKdivbk1VNiH1vOqAoBN26U0KfR00m7j
 61K29/Qhh5Ava9JqdgRh9qMOYxtIBLwybI1M81llCEztnISAerxw5jMd44zyReCtLXYV
 JjSg==
X-Gm-Message-State: AOAM533mAki/um+FNaiaOX2BNxdIjTZK0FFdl187poqon5wuyZlPvwE5
 XAw0qPYT8DpOfswV6fF8F1uWBBZoijH5RLldccvd39/2hhllqHCOyeVrOEVeZ5CxBKqIvSYs5IV
 XnwnKn/bV5mgBmprIieAo1r0LPzEQ/IuiKl+vDETjJl4=
X-Received: by 2002:a05:600c:3399:: with SMTP id
 o25mr40575349wmp.3.1625852200549; 
 Fri, 09 Jul 2021 10:36:40 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx+rZ3QuWBCpQlKFMOdJ4cGmzZaTHEUswiFz+CvvsT0dAPn+ePGRGZihSwAcImvPuqifYWDGA==
X-Received: by 2002:a05:600c:3399:: with SMTP id
 o25mr40575315wmp.3.1625852200178; 
 Fri, 09 Jul 2021 10:36:40 -0700 (PDT)
Received: from [192.168.3.211] (xdsl-188-155-177-222.adslplus.ch.
 [188.155.177.222])
 by smtp.gmail.com with ESMTPSA id a9sm5712401wrv.37.2021.07.09.10.36.39
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 09 Jul 2021 10:36:39 -0700 (PDT)
Subject: Re: [PATCH v5 1/2] phy: samsung-ufs: move phy-exynos7-ufs header
To: Chanho Park <chanho61.park@samsung.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>
Cc: Marek Szyprowski <m.szyprowski@samsung.com>,
 Jaehoon Chung <jh80.chung@samsung.com>, Alim Akhtar
 <alim.akhtar@samsung.com>, linux-phy@lists.infradead.org
References: <20210709094524.110193-1-chanho61.park@samsung.com>
 <CGME20210709100037epcas2p2be75773648d859ec29d96a901b6d9a5c@epcas2p2.samsung.com>
 <20210709094524.110193-2-chanho61.park@samsung.com>
 <4e2adf91-9495-17f8-0e65-169346f9583d@canonical.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <9b097613-3d54-65f8-ffb2-123b266fc29b@canonical.com>
Date: Fri, 9 Jul 2021 19:36:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <4e2adf91-9495-17f8-0e65-169346f9583d@canonical.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210709_103642_500523_62953E18 
X-CRM114-Status: GOOD (  15.39  )
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

On 09/07/2021 19:31, Krzysztof Kozlowski wrote:
> On 09/07/2021 11:45, Chanho Park wrote:
>> Instead of using exynos7 ufs definition in phy-exynos7-ufs.h, we should
>> put it into phy-exynos7-ufs.c to be included different objects or units.
>>
>> Suggested-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
>> Signed-off-by: Chanho Park <chanho61.park@samsung.com>
>> ---
>>  drivers/phy/samsung/Makefile                              | 4 +++-
>>  .../phy/samsung/{phy-exynos7-ufs.h => phy-exynos7-ufs.c}  | 8 ++------
>>  drivers/phy/samsung/phy-samsung-ufs.h                     | 5 ++++-
>>  3 files changed, 9 insertions(+), 8 deletions(-)
>>  rename drivers/phy/samsung/{phy-exynos7-ufs.h => phy-exynos7-ufs.c} (93%)
>>
>> diff --git a/drivers/phy/samsung/Makefile b/drivers/phy/samsung/Makefile
>> index 3959100fe8a2..68518ae30c1b 100644
>> --- a/drivers/phy/samsung/Makefile
>> +++ b/drivers/phy/samsung/Makefile
>> @@ -2,7 +2,9 @@
>>  obj-$(CONFIG_PHY_EXYNOS_DP_VIDEO)	+= phy-exynos-dp-video.o
>>  obj-$(CONFIG_PHY_EXYNOS_MIPI_VIDEO)	+= phy-exynos-mipi-video.o
>>  obj-$(CONFIG_PHY_EXYNOS_PCIE)		+= phy-exynos-pcie.o
>> -obj-$(CONFIG_PHY_SAMSUNG_UFS)		+= phy-samsung-ufs.o
>> +obj-$(CONFIG_PHY_SAMSUNG_UFS)		+= phy-exynos-ufs.o
>> +phy-exynos-ufs-y			+= phy-samsung-ufs.o
>> +phy-exynos-ufs-y			+= phy-exynos7-ufs.o
> 
> How does it support module builds? The previous code was working fine
> when built as module. Maybe I miss something, but I don't see the need
> for this change.

Ah, I see now, your previous patch was creating separate modules. Makes
sens, thanks!

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
