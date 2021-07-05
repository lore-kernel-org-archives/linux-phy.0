Return-Path: <SRS0=p6g3=L5=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FC07C07E99
	for <linux-phy@archiver.kernel.org>; Mon,  5 Jul 2021 12:36:01 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 39DD9613B9
	for <linux-phy@archiver.kernel.org>; Mon,  5 Jul 2021 12:36:01 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 39DD9613B9
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=canonical.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:Subject:References:Cc:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=HX+PXXpPNuVXxUvp6TDbl0sVtSuowdpjShDkfNFndWI=; b=t/hpLUBcWnG3wr5q+G5xvJO9VC
	PgoqM0mMPkOhILicQg18QWRHjj9axnhtWpYhVv22qbwLDT8varxasT9TeqEsYYW2QCVsIYVebuS5N
	J9dzhwNkFUDS45kM+eiDJdOkwhWX2pRbgBb7qcZBuSPaEJdgH3skKsWhUyEXwl9l3kD7lCv+S4OP7
	2Y/0M9J2gqg8MxUWL0TY27B4eFhS4JpgEg3/qvRyZSwf83jWUm+vNraPpYQdq3P5dOuhr8qmHeWtd
	gKAWPjrN4eCQ+3nboIy6ucOlroo60htFLvyVtvRju4aeZjVNqv5IphXah9QmgJMrJA3S9Ag72ffSX
	n17WBODg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m0NpQ-008vE2-PE; Mon, 05 Jul 2021 12:36:00 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m0NpN-008vDK-6N
 for linux-phy@lists.infradead.org; Mon, 05 Jul 2021 12:35:58 +0000
Received: from mail-ej1-f70.google.com ([209.85.218.70])
 by youngberry.canonical.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.93)
 (envelope-from <krzysztof.kozlowski@canonical.com>)
 id 1m0NpL-0005dl-N4
 for linux-phy@lists.infradead.org; Mon, 05 Jul 2021 12:35:55 +0000
Received: by mail-ej1-f70.google.com with SMTP id
 jx16-20020a1709077610b02904e0a2912b46so542840ejc.7
 for <linux-phy@lists.infradead.org>; Mon, 05 Jul 2021 05:35:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:references:subject:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Ta6VLBPEmta6jQ9XEWJ9lEqWsD708CIG7y5QQVjvdwA=;
 b=GKfG40BaPHR9e2v3/iSV3lZXadsKyhrA7PwXy1GB/8mnldCTpK0zfISlYPFktklDe+
 WcZ74ESvJ79JRUOtCmxSRAz3wZw4Ov5VUGhMcKWehjd0RXhk6rO7wwTutA8Pf8JVXaxc
 XUcfWEFpVcEB8diUXq3MbzdUghMDxb7IYLXT1zAAR4DAVR9ImfuXtlEtJLRtKQxZJbtK
 OV/kDNOpWHxPGpElA32ZeWxir9U++3y/cu8m3TkFxqDThDNMu8niNfjMX4qYPBjIGDdJ
 //H6VAvTmJ5ScBZfjaShPSQsqEYKpSyic5BWgZT0SPC/GkXK2ZkwbkmWNew4o1IhEaqE
 di+g==
X-Gm-Message-State: AOAM533ItGYxpOF9U3eGRwBfZk4s7UACYq6WFmrqM1R0VaRyuG1iqMrB
 ON1XUkfMJRToyrKzJ8zGh1JgpVfk43WZXZiKWTdPAWmNyne34WOKAB10hfl5shY4xRh6xyKCF2s
 QBCRHzby03dlK9rmBWIN3bUYQQycHwTar5qNOZbUAaP4=
X-Received: by 2002:a17:906:f6c7:: with SMTP id
 jo7mr11094274ejb.306.1625488555039; 
 Mon, 05 Jul 2021 05:35:55 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyF/Gq7iLDT//dFyGYBjVO6AfuzWMsEwiFFqQ7MClHT4bGMv9rNeS/WknF3iLkCPukd78bX5g==
X-Received: by 2002:a17:906:f6c7:: with SMTP id
 jo7mr11094267ejb.306.1625488554923; 
 Mon, 05 Jul 2021 05:35:54 -0700 (PDT)
Received: from [192.168.3.211] (xdsl-188-155-177-222.adslplus.ch.
 [188.155.177.222])
 by smtp.gmail.com with ESMTPSA id z18sm3360123edr.65.2021.07.05.05.35.54
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 05 Jul 2021 05:35:54 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To: Chanho Park <chanho61.park@samsung.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>
Cc: Marek Szyprowski <m.szyprowski@samsung.com>,
 Jaehoon Chung <jh80.chung@samsung.com>, Alim Akhtar
 <alim.akhtar@samsung.com>, linux-phy@lists.infradead.org
References: <20210705102318.102999-1-chanho61.park@samsung.com>
 <CGME20210705102414epcas2p4bfdfa979f08221c6834d64a2faa20b6a@epcas2p4.samsung.com>
 <20210705102318.102999-3-chanho61.park@samsung.com>
 <bb462ea1-7a94-b697-a716-218594439487@canonical.com>
Subject: Re: [PATCH 2/2] phy: samsung-ufs: support exynosauto ufs phy driver
Message-ID: <c7370b7d-ab2b-1423-0e7b-9f0c4d227e4e@canonical.com>
Date: Mon, 5 Jul 2021 14:35:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <bb462ea1-7a94-b697-a716-218594439487@canonical.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210705_053557_279194_AA96FD78 
X-CRM114-Status: GOOD (  16.53  )
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

On 05/07/2021 14:29, Krzysztof Kozlowski wrote:
> On 05/07/2021 12:23, Chanho Park wrote:
>> This patch adds to support phy-exynosauto-ufs driver for ExynosAuto v9
>> series SoCs. The patch adds "samsung,exynosauto-ufs-phy" compatible.
>> Unlike previous exynos ufs phy, the chip uses 0x50 offset as
>> PHY_TRSV_REG_CFG_OFFSET.
>>
>> Change-Id: I4ea333d4565af537c26a8876d1b27144eea3c3c6
>> Signed-off-by: Chanho Park <chanho61.park@samsung.com>
>> ---
>>  .../bindings/phy/samsung,ufs-phy.yaml         |  1 +
>>  drivers/phy/samsung/phy-exynosauto-ufs.h      | 70 +++++++++++++++++++
>>  drivers/phy/samsung/phy-samsung-ufs.c         |  3 +
>>  drivers/phy/samsung/phy-samsung-ufs.h         |  1 +
>>  4 files changed, 75 insertions(+)
>>  create mode 100644 drivers/phy/samsung/phy-exynosauto-ufs.h
>>
>> diff --git a/Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml b/Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml
>> index 636cc501b54f..8e13f8cec6a7 100644
>> --- a/Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml
>> +++ b/Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml
>> @@ -16,6 +16,7 @@ properties:
>>    compatible:
>>      enum:
>>        - samsung,exynos7-ufs-phy
>> +      - samsung,exynosauto-ufs-phy
> 
> I would prefer real product ID (taken from registers or vendor kernel),
> not a marketing name "Auto" because it's too generic, unspecified, too
> much as wildcard.
> 
> If vendor kernel does not define name or product ID is also not
> specific, then it should include a version - so "autov9".
> 

BTW, the previous Exynos Auto SoC was "Exynos Auto 8890", so it already
confuses naming with older designs. It would be actually good to compare
it with other recent Exynos PHYs (Exynos Auto 8890, generic Exynos9xxx
and Exynos980/990) because maybe it's not "Auto" at all.

Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
