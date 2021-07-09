Return-Path: <SRS0=210v=MB=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F15C8C07E99
	for <linux-phy@archiver.kernel.org>; Fri,  9 Jul 2021 17:33:44 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AB9F1613C3
	for <linux-phy@archiver.kernel.org>; Fri,  9 Jul 2021 17:33:44 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org AB9F1613C3
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=canonical.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=WuooxXhplE1rYeX/JI2W+nBvhWpC188FCFX13DuSAEM=; b=ApSryArzsJJeNLcDDR3INepFEf
	rh8DlWV9GkqbZEW2Mq09ccZiZFJUQxVCeHwIDbDpGAgE8l7XTCaB/AjWydd07rqja1sOGb8Elb/Gg
	Kc8KFhcmQ8iMoKnFA654PUFBbUVVwq/AMCNyrVamuULSOZKpq5NVLkBF49quh5iJLlB3lsx7Jtt6P
	PwI9GtQfCo1ldZwC56sZaSnXefVwq/jKUEnoB1DKqBzPI2fyLHN+sTgM1FtEDCxd+/XI4Yz+oKRYi
	4Wt26e/EVRm79tYmL+jrRbigvJy0i+/Y7oZZrzDEKAOw8zYfmrh1bq9FZXmpnRknCOcEVpnhcwi6v
	em0ljQ/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m1uNk-002D7j-41; Fri, 09 Jul 2021 17:33:44 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m1uNh-002D7O-VV
 for linux-phy@lists.infradead.org; Fri, 09 Jul 2021 17:33:43 +0000
Received: from mail-wr1-f72.google.com ([209.85.221.72])
 by youngberry.canonical.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.93)
 (envelope-from <krzysztof.kozlowski@canonical.com>)
 id 1m1uNg-00033P-MS
 for linux-phy@lists.infradead.org; Fri, 09 Jul 2021 17:33:40 +0000
Received: by mail-wr1-f72.google.com with SMTP id
 32-20020adf82a30000b029013b21c75294so2017677wrc.14
 for <linux-phy@lists.infradead.org>; Fri, 09 Jul 2021 10:33:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=U0GytBfTO569oK91zkPKP+8XIAs7YfP2fxWK4MGR3CY=;
 b=Nx+653bkklWdVf9FfKFO+c2W6KHI/NmyKxDql5DTITdDMsnAKLGF0RBXkw+Pg68848
 1u/BrVQ5lNhkqJmheRieKiAO1mZoc+9ozcf5bEITEVgYba4WQ2VlNhTuKCxB2B53xMZ5
 zzvoIOWi/BFg4Vi+noomoqK4Wo/T239Hi2czNzTEhgpkwGZmYQZRE8imyunttDcxL/W2
 o3JemZny11KJHalTetn8LvtJI9oCJKEQ6PAZHUYBSp0Y/9jRPpSnRTmoP6+IvPRr3h4G
 iMZn2jIwMACf8yjKbrWD0u6e5GzgUEmppbU6eHeDNVBUFzPBKAVmT+NYOZUqeynqJSdQ
 n/VQ==
X-Gm-Message-State: AOAM5320cKNu1HkBzb4XDpQuCI3QE1sAb6YnTa2rSPxwYMKF4P4bdKHU
 6YKYp7wyK9NfcATq4IEkyWDpC9cNhCpkN010L049DS8jI1EmYB610yCkdMadF5EJ0dLhRzUxjZN
 n9v9kbxISj93Cm62Lfgbm1XQzIUl1SmXzX6p8Plxat0o=
X-Received: by 2002:adf:eed0:: with SMTP id a16mr23417008wrp.324.1625852020253; 
 Fri, 09 Jul 2021 10:33:40 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyKaMmOrFvMbWeCFkfq+smp2j5kCKyxoXpBIu8ZPt66xb2zK3YmdO7y3NGlVMp5Ur1/jbJvdw==
X-Received: by 2002:adf:eed0:: with SMTP id a16mr23416999wrp.324.1625852020159; 
 Fri, 09 Jul 2021 10:33:40 -0700 (PDT)
Received: from [192.168.3.211] (xdsl-188-155-177-222.adslplus.ch.
 [188.155.177.222])
 by smtp.gmail.com with ESMTPSA id o11sm5149516wmq.1.2021.07.09.10.33.39
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 09 Jul 2021 10:33:39 -0700 (PDT)
Subject: Re: [PATCH v5 2/2] phy: samsung-ufs: support exynosauto ufs phy driver
To: Chanho Park <chanho61.park@samsung.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>
Cc: Marek Szyprowski <m.szyprowski@samsung.com>,
 Jaehoon Chung <jh80.chung@samsung.com>, Alim Akhtar
 <alim.akhtar@samsung.com>, linux-phy@lists.infradead.org
References: <20210709094524.110193-1-chanho61.park@samsung.com>
 <CGME20210709100038epcas2p231dc148962cc46065f7a896e7d30cbba@epcas2p2.samsung.com>
 <20210709094524.110193-3-chanho61.park@samsung.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <180921f4-8ac2-95b4-4799-a0e6a7a805be@canonical.com>
Date: Fri, 9 Jul 2021 19:33:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210709094524.110193-3-chanho61.park@samsung.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210709_103342_073420_AE9EB9DE 
X-CRM114-Status: GOOD (  14.27  )
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
> This patch adds to support phy-exynosautov9-ufs driver for ExynosAuto v9
> series SoCs. The patch adds "samsung,exynosautov9-ufs-phy" compatible.
> Unlike previous exynos ufs phy, the chip uses 0x50 offset as
> PHY_TRSV_REG_CFG_OFFSET.
> 
> Signed-off-by: Chanho Park <chanho61.park@samsung.com>

You received a review tag, so please include it. I understand you did
not include my review for first patch due to changes but here it was
only rebase, so the tag is still valid.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


> ---
>  .../bindings/phy/samsung,ufs-phy.yaml         |  1 +
>  drivers/phy/samsung/Makefile                  |  1 +
>  drivers/phy/samsung/phy-exynosautov9-ufs.c    | 67 +++++++++++++++++++
>  drivers/phy/samsung/phy-samsung-ufs.c         |  3 +
>  drivers/phy/samsung/phy-samsung-ufs.h         |  8 ++-
>  5 files changed, 78 insertions(+), 2 deletions(-)
>  create mode 100644 drivers/phy/samsung/phy-exynosautov9-ufs.c
> 

Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
