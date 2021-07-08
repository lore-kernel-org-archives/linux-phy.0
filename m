Return-Path: <SRS0=EZuF=MA=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,URIBL_BLOCKED,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0411C07E96
	for <linux-phy@archiver.kernel.org>; Thu,  8 Jul 2021 06:54:15 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 47D3F61CD5
	for <linux-phy@archiver.kernel.org>; Thu,  8 Jul 2021 06:54:15 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 47D3F61CD5
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=canonical.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=62+mhW6HKj27gYAmlwQTabJvsdkAk4QoXH55jKllJ38=; b=UAHyWCjpFNloHVkzKvOnbTfT+I
	TJkaIAINbRTCNTnd1x+kk6QKQLgngxlMujcbgdD9ALm0rBz0mZ2nGDoS2ZKu+JioVKB/TbOXwV1f0
	TJuQedDZAETEP1CblAjpC+TpM8DKl1ohdhH2zCeaR7BpshH2Qv6Yp6EOHoMIKzDjbnvr/tYDtFhN/
	yVUXY4kk7yqxpQoATl+7/yQhYzIhedGi+0pmOFmNx7HMXKgK6KVD5YHGz4AE6lK2C9V0JKgOKxsUI
	n1zfb4XfA+wskvRNdpSDkAYjaoqLLZPmVXZ+CsjsIPLihH0MEdRAPseGfe++Q5UIcb5xL6/RckN4R
	y9kQXNPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m1NvK-00GAWB-Qn; Thu, 08 Jul 2021 06:54:14 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m1NvI-00GAVN-Hj
 for linux-phy@lists.infradead.org; Thu, 08 Jul 2021 06:54:13 +0000
Received: from mail-wm1-f70.google.com ([209.85.128.70])
 by youngberry.canonical.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.93)
 (envelope-from <krzysztof.kozlowski@canonical.com>)
 id 1m1NvH-0005ij-8g
 for linux-phy@lists.infradead.org; Thu, 08 Jul 2021 06:54:11 +0000
Received: by mail-wm1-f70.google.com with SMTP id
 m31-20020a05600c3b1fb02902082e9b2132so3315498wms.5
 for <linux-phy@lists.infradead.org>; Wed, 07 Jul 2021 23:54:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=8JSh+8/TB6+yGniGm+RnOiw6dmO5ijVB+yRhzJZS/bU=;
 b=JK/fI6M+hl+mHRoWxYIs0bVe4YSS7Kmr19/xIIM69Y0/PUjQtV7FkFkk3LGGQ9JyIy
 2DBLCTV2W4vqtzrauXVCYIynrD5cmiVD0EgFqlt+EeuhlyuoiO+sf4XvWfYMidUks4Hh
 E+2m0W3eTTFiq5ARg2XIp7ur+uHxGwSoUcTB7WdojbQLXHlKILwwQBFefi7IasHYc4Zt
 CKCb/1TjmmNBhoIQNy4fOmF5Xdailx85MamF4wpthPVd8z3CXRfbGi4wG9Dw5rG7aLxq
 5j9+Bl3oW/mc6Ud3wbGjIYj96e7alsaMciC6W+8UVMHKo4jvINgYTNvPhDlM4+RTT4sZ
 9kRg==
X-Gm-Message-State: AOAM530b8NZbK3UyegRI29HzTlwVCJvYqZ2SSvKVi6MYg5lv7uGOq8TO
 9ViDvVvTj568G4NuwdCBplyfaJgvNWF8kljewb4Dri1R/afg82pczRHN5y5+RPHlQGsBK8PdL5o
 BTjkbmut1am+VckhFdm6M3mGp2QJajBY2YufDAI4UYCs=
X-Received: by 2002:a7b:cc8d:: with SMTP id p13mr30880383wma.33.1625727250813; 
 Wed, 07 Jul 2021 23:54:10 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzJzs4h8TrWQ/bbW9h4F7p9DCL0HXBylO/ejqt3Mkg0DqlVaL0oYHCD4MTqqNOU2XkFSI6D3Q==
X-Received: by 2002:a7b:cc8d:: with SMTP id p13mr30880377wma.33.1625727250717; 
 Wed, 07 Jul 2021 23:54:10 -0700 (PDT)
Received: from [192.168.3.211] (xdsl-188-155-177-222.adslplus.ch.
 [188.155.177.222])
 by smtp.gmail.com with ESMTPSA id y3sm93397wrh.16.2021.07.07.23.54.10
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 07 Jul 2021 23:54:10 -0700 (PDT)
Subject: Re: [PATCH v4 2/2] phy: samsung-ufs: support exynosauto ufs phy driver
To: Chanho Park <chanho61.park@samsung.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>
Cc: Marek Szyprowski <m.szyprowski@samsung.com>,
 Jaehoon Chung <jh80.chung@samsung.com>, Alim Akhtar
 <alim.akhtar@samsung.com>, linux-phy@lists.infradead.org
References: <20210707005753.52042-1-chanho61.park@samsung.com>
 <CGME20210707005754epcas2p3a55e70f1e9a4dc9cb8120f007ddb329c@epcas2p3.samsung.com>
 <20210707005753.52042-3-chanho61.park@samsung.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <495b9848-8102-9bdc-1759-8031c9e1a7af@canonical.com>
Date: Thu, 8 Jul 2021 08:54:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210707005753.52042-3-chanho61.park@samsung.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210707_235412_643798_4F0C14DC 
X-CRM114-Status: GOOD (  14.22  )
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
> This patch adds to support phy-exynosautov9-ufs driver for ExynosAuto v9
> series SoCs. The patch adds "samsung,exynosautov9-ufs-phy" compatible.
> Unlike previous exynos ufs phy, the chip uses 0x50 offset as
> PHY_TRSV_REG_CFG_OFFSET.
> 
> Signed-off-by: Chanho Park <chanho61.park@samsung.com>
> ---
>  .../bindings/phy/samsung,ufs-phy.yaml         |  1 +
>  drivers/phy/samsung/Makefile                  |  3 +-
>  drivers/phy/samsung/phy-exynosautov9-ufs.c    | 67 +++++++++++++++++++
>  drivers/phy/samsung/phy-samsung-ufs.c         |  3 +
>  drivers/phy/samsung/phy-samsung-ufs.h         |  8 ++-
>  5 files changed, 79 insertions(+), 3 deletions(-)
>  create mode 100644 drivers/phy/samsung/phy-exynosautov9-ufs.c
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
