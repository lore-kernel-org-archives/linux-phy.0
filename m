Return-Path: <SRS0=EZuF=MA=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,URIBL_BLOCKED,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0A002C07E96
	for <linux-phy@archiver.kernel.org>; Thu,  8 Jul 2021 06:53:42 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 24F4F61977
	for <linux-phy@archiver.kernel.org>; Thu,  8 Jul 2021 06:53:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 24F4F61977
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=canonical.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=vmS0p1kNTGoPu026JIPfsZaTdzPYRU7QgOYLEOUffOo=; b=0FwvvOIFTJx2yw/OpQnS2plDRP
	hFlGyd6m/cbuwWi+QupDHqLablam5IVqVAti62EzJGTyBAIWy3JK4mlltada3rhx7sjacd70ROTgq
	yQ5OR+0YvKdltIAhEK5a27EGWep806YYa2f5DTwWmShWnUbhk55tuH2iOePGb/tZVdkgh8ZMZL6gG
	HMACtRgr3JHEQUu/utEtR4IuZOFOFiwntIfzAf0qTq/ztT6NAQGEnnpak66FIGhSifxxDc471RvUu
	w38U/eX5bQuNMW/j5gGEykMFDCpdMpopU+0ugMxvSHMgZ9kEix7IwR7S3lV8++uY9hpqsLmP4Eaom
	kCetqcRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m1Num-00GAUL-LO; Thu, 08 Jul 2021 06:53:40 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m1Nuk-00GATF-8Z
 for linux-phy@lists.infradead.org; Thu, 08 Jul 2021 06:53:39 +0000
Received: from mail-wr1-f70.google.com ([209.85.221.70])
 by youngberry.canonical.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.93)
 (envelope-from <krzysztof.kozlowski@canonical.com>)
 id 1m1Nue-0005gW-WB
 for linux-phy@lists.infradead.org; Thu, 08 Jul 2021 06:53:33 +0000
Received: by mail-wr1-f70.google.com with SMTP id
 d9-20020adffbc90000b029011a3b249b10so1588457wrs.3
 for <linux-phy@lists.infradead.org>; Wed, 07 Jul 2021 23:53:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=9ANS3l9HcHFZur7xO+0NGJ1KCSfUzWwq3b93Kq+QU5U=;
 b=aHuNhUCDm7wRngvpo8JoOv0Ylpbamzhh1kuVZ35Oqi492DhtWkbkZ078uAyVC8HNew
 lxWycoHsITqkKczUk10X3hqSU2lKVlX6URK+49XxMwzQYwmN5tCuLMEFgl8EvjL2nUEu
 A+JqeTOuXormbpuhrFEniBHXdXQci3xZQRVoEZW+wMiaGUJVPrOox2Ni8jRF9m6b8MmE
 Q6e7fEUuKOW6Q+6o3zF0n+GqvLjZiItm9u0y3XG9q5PRMh6ctjeNHHHotg872qptVt1s
 ge7+llbtqZp5tuD6yW2jYwc6Y8i6FxSDhV956D8S/EP7ZhAcsUeSSnTpBlfnPrgV59gW
 dLpQ==
X-Gm-Message-State: AOAM5336jgGD6gSxEwzxlcfZk8ydwKdDrvQYmV/ivJGT/yj6MWHsWFUB
 4O8Gp+uUYNp2X7dMM72XYXGte94Wcwz9v0kbOwxnXW2910Dm53gC7KNI34EupX+BAx1Cb9L6blX
 sDtYMoE55w+s1ckqMU/XXNjYYm/1BmQcVQOFK/mEr3fs=
X-Received: by 2002:a7b:cbd1:: with SMTP id n17mr1525846wmi.149.1625727212817; 
 Wed, 07 Jul 2021 23:53:32 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyPujFHxlggek8O3GrK5smkHZzGFEHCHBOFyCkbwBDLL4EdurJ/2Rx/fTalFEA/T6Ww3V3rqA==
X-Received: by 2002:a7b:cbd1:: with SMTP id n17mr1525825wmi.149.1625727212641; 
 Wed, 07 Jul 2021 23:53:32 -0700 (PDT)
Received: from [192.168.3.211] (xdsl-188-155-177-222.adslplus.ch.
 [188.155.177.222])
 by smtp.gmail.com with ESMTPSA id o3sm275233wrm.5.2021.07.07.23.53.31
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 07 Jul 2021 23:53:32 -0700 (PDT)
Subject: Re: [PATCH v4 1/2] phy: samsung-ufs: move phy-exynos7-ufs header
To: Chanho Park <chanho61.park@samsung.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>
Cc: Marek Szyprowski <m.szyprowski@samsung.com>,
 Jaehoon Chung <jh80.chung@samsung.com>, Alim Akhtar
 <alim.akhtar@samsung.com>, linux-phy@lists.infradead.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
References: <20210707005753.52042-1-chanho61.park@samsung.com>
 <CGME20210707005754epcas2p10dcadaddfd9417c0a400eac7a99b4d62@epcas2p1.samsung.com>
 <20210707005753.52042-2-chanho61.park@samsung.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <90d083e5-080c-38b8-4bf8-2eee7eff9599@canonical.com>
Date: Thu, 8 Jul 2021 08:53:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210707005753.52042-2-chanho61.park@samsung.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210707_235338_354092_5900EAC5 
X-CRM114-Status: GOOD (  11.72  )
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

On 07/07/2021 02:57, Chanho Park wrote:
> Instead of using exynos7 ufs definition in phy-exynos7-ufs.h, we should
> put it into phy-exynos7-ufs.c to be included different objects or units.
> 
> Suggested-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
> Signed-off-by: Chanho Park <chanho61.park@samsung.com>
> ---
>  drivers/phy/samsung/Makefile                              | 3 ++-
>  .../phy/samsung/{phy-exynos7-ufs.h => phy-exynos7-ufs.c}  | 8 ++------
>  drivers/phy/samsung/phy-samsung-ufs.h                     | 5 ++++-
>  3 files changed, 8 insertions(+), 8 deletions(-)
>  rename drivers/phy/samsung/{phy-exynos7-ufs.h => phy-exynos7-ufs.c} (93%)
> 



Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
