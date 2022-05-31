Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49EB3C433EF
	for <linux-phy@archiver.kernel.org>; Tue, 31 May 2022 03:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bN3BndPijHKyAWXKocFNzvieWtS9vE9pn2UqzQEWveQ=; b=RH0FriPvqTGO5R
	H7oL4IeCl+gfoCaXaUM/fotdsfJ9SGTPu/yACzT8rhi/4epzuO7AcmtLXn27M13/2sHN3jSvER5R9
	Lp0DSRBMkEq/c48iFdqTDsT091el1n6eON8B8fT9jScWpeoTWYg4OFFwE0+Y9Akm0bhGMqugC9jx1
	zukOFF1ZMWzqvSYCR6+SAGFxFXp0JNAOnBYO8RWcsX3RYuRHjLfuyeswJtKg434lxNcv9w6Ci8fVo
	uIZf5BGlGus29KNtxX5axPGQV77Gq937fy4Y4LBxMRyLNP5T+o+hLUMTZIqD7eaET0UaSzh8Df7Kd
	RQVDfKRWTnc/6zzqjqrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nvsrO-0097hb-JU; Tue, 31 May 2022 03:47:58 +0000
Received: from mail-pg1-f174.google.com ([209.85.215.174])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nvsrD-0097c7-QA; Tue, 31 May 2022 03:47:48 +0000
Received: by mail-pg1-f174.google.com with SMTP id g184so11694937pgc.1;
        Mon, 30 May 2022 20:47:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=J88H2LWRLwC+ieC8JScbnG8mP43mgFvekYycMO4/ses=;
        b=kqUmtq/KOcDmfXTkDLtHpmemdW9dUHAv6fZdUVw2WdQMc0aHNWn7DdGkngGzJCP1Ln
         tDbTI6QyJZy1YfEok140cmR4DQ4B2cRUD9zxnMWnhRwIepcmfD5iap9Ukl8pwb/qzlR6
         cCkFcOx2ad2byOyn8MlEJbcG+tkHVbZ69ZOeeXZwx4USDmI5Yr9Msprmnf7CNGQmnlny
         +0CE1MMT2KSiJFe7Rs/g3EGkDCc5BV2Igp4JhYcZoRYsp6wjgxqyaM8sbcICYJgjAljw
         aS2eqMhMMtEfhjSlhaoEEWSKEffTDG2NAq1QS3EgIdEhZRV9Id5RpPL37DQww8H+ZnOT
         aS2w==
X-Gm-Message-State: AOAM532pDeD9zGTJsGxt/jQKmqo/Mu2QQUjZWvj9yK1IzXArYgfCH1Mn
	tWhdXJfA6JGN/WRP1OvDkys=
X-Google-Smtp-Source: ABdhPJxAE16L0kA27cz2/U35A3Ni4sJOYW6n1ipy9pryUT7sj/V99AF3l1wrhV+18hPF5ybqLWP40A==
X-Received: by 2002:a05:6a00:1ac9:b0:518:a48a:d8f6 with SMTP id f9-20020a056a001ac900b00518a48ad8f6mr41016280pfv.16.1653968858746;
        Mon, 30 May 2022 20:47:38 -0700 (PDT)
Received: from ?IPV6:2601:647:4000:d7:feaa:14ff:fe9d:6dbd? ([2601:647:4000:d7:feaa:14ff:fe9d:6dbd])
        by smtp.gmail.com with ESMTPSA id nh9-20020a17090b364900b001d903861194sm521563pjb.30.2022.05.30.20.47.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 May 2022 20:47:37 -0700 (PDT)
Message-ID: <f4e1d900-5755-c57f-029a-eade78a17476@acm.org>
Date: Mon, 30 May 2022 20:47:36 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH 3/6] phy: samsung-ufs: add support for FSD ufs phy driver
Content-Language: en-US
To: Alim Akhtar <alim.akhtar@samsung.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, vkoul@kernel.org, avri.altman@wdc.com,
 martin.petersen@oracle.com, chanho61.park@samsung.com,
 pankaj.dubey@samsung.com, linux-fsd@tesla.com,
 Bharat Uppal <bharat.uppal@samsung.com>
References: <20220531012220.80563-1-alim.akhtar@samsung.com>
 <CGME20220531012347epcas5p48262cae18c75bb6ed029f7cd920800b4@epcas5p4.samsung.com>
 <20220531012220.80563-4-alim.akhtar@samsung.com>
From: Bart Van Assche <bvanassche@acm.org>
In-Reply-To: <20220531012220.80563-4-alim.akhtar@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220530_204747_895380_DE85DB0F 
X-CRM114-Status: GOOD (  11.87  )
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

On 5/30/22 18:22, Alim Akhtar wrote:
> diff --git a/drivers/phy/samsung/phy-fsd-ufs.c b/drivers/phy/samsung/phy-fsd-ufs.c
> new file mode 100644
> index 000000000000..a03656006093
> --- /dev/null
> +++ b/drivers/phy/samsung/phy-fsd-ufs.c
> @@ -0,0 +1,63 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * UFS PHY driver data for FSD SoC
> + *
> + * Copyright (C) 2022 Samsung Electronics Co., Ltd.
> + *
> + */
> +#ifndef _PHY_FSD_UFS_H_
> +#define _PHY_FSD_UFS_H_

Please do not use header file guards in a .c file.

Thanks,

Bart.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
