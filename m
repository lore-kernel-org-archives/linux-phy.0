Return-Path: <SRS0=p6g3=L5=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94571C07E99
	for <linux-phy@archiver.kernel.org>; Mon,  5 Jul 2021 12:17:53 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5323C6135C
	for <linux-phy@archiver.kernel.org>; Mon,  5 Jul 2021 12:17:53 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5323C6135C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=canonical.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=sgN26kpLBtb6KveUH/tSepzyNRgJfFQbYDtWK6gDULo=; b=tERlr7f/xS9iT438SLi9c5HVVj
	NYSYoj/jzxDGbIbqNuzvGqDbmPSypRRkbaUTEFMhPFjWmcYjAFhVYZOcA/daDHskDT9KMs2m+JSSC
	uyodRcyk70H5GgizyRmMMDQwo/eOM85gbSI7aWdS+KvieEEBcuFXSagwiWZiSoFH+4Qq0q8IAQ+7T
	/NgcBwpbbIA5OqxqvCr6fSv2iVl3qIncufLc8wwPsDloXjAgHnqwF0qVhPMr0rAW0BHDW5Zd6MkUw
	Gn6GO3DSTZFIaYupcNDcyfOEHE/2awU2z5poaQODr23JJWath8Pck433RFJ0bbiRMmcmSjhBAbJZ+
	EpaDS1ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m0NXs-008uDi-R6; Mon, 05 Jul 2021 12:17:52 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m0NXp-008uCd-Gw
 for linux-phy@lists.infradead.org; Mon, 05 Jul 2021 12:17:52 +0000
Received: from mail-ed1-f72.google.com ([209.85.208.72])
 by youngberry.canonical.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.93)
 (envelope-from <krzysztof.kozlowski@canonical.com>)
 id 1m0NXn-0004Tp-Ge
 for linux-phy@lists.infradead.org; Mon, 05 Jul 2021 12:17:47 +0000
Received: by mail-ed1-f72.google.com with SMTP id
 o8-20020aa7dd480000b02903954c05c938so9023457edw.3
 for <linux-phy@lists.infradead.org>; Mon, 05 Jul 2021 05:17:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=KjkcsgqKl7PIEZvAFYPJC0nvkjuV82pbSY+5QiXg28Q=;
 b=ikIrLRdscVsCqCaoz3QYmne5FuvTUma8iZwfGMMZCwlF+SGyrADU1S2uMxVesURzGI
 KxTPV0jkEPsWwavcIFM2uOY1NEmHLdeYhwK1Tp1526UKwN7qLTtW+9Zf9vCFPRclgiM7
 rCivgODqaAlxpmSLYc6ePZjqTkdNA42LMsK2JltImTopNeMXuwUnOqPR6aVCiiQCaV4Y
 CiGqZKynddDepWJbSydAePdg+qmlTMrl5bn881ga1Ant+0yxWoHDGtk2AvZ0+Bg45Xc2
 4jSJrt4nAAi/AzTsF+vR0Lyveyxn7IT/7yRMaLt/lrNCYPID7HpJLnp+IyXe4qyLQNnE
 +zPA==
X-Gm-Message-State: AOAM532DzT2zJ5g2/dNacPW4VSJYMCicyZPkXYHmVw7rEUx32sg+ZFC9
 jYHOApT7JIEdehQxBMm1TkF/UcGSyNKZXonTHZIzUi/8UwJ+xv62SIT9HJMcoLhjiLNayNg0ibV
 1m0GJWojces3eZr1/SP0KjmxNV3QNzrDgfdkE+0o3Vhs=
X-Received: by 2002:aa7:cb03:: with SMTP id s3mr15932570edt.189.1625487467102; 
 Mon, 05 Jul 2021 05:17:47 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw7/IXRA8R7QqBMzYxw3n1BrkjtOebiPhDsWEAn7IXCD6OpSHeFmN/ESEqiONOhVNVL0lz+Vg==
X-Received: by 2002:aa7:cb03:: with SMTP id s3mr15932560edt.189.1625487467020; 
 Mon, 05 Jul 2021 05:17:47 -0700 (PDT)
Received: from [192.168.3.211] (xdsl-188-155-177-222.adslplus.ch.
 [188.155.177.222])
 by smtp.gmail.com with ESMTPSA id c6sm5231762ede.17.2021.07.05.05.17.46
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 05 Jul 2021 05:17:46 -0700 (PDT)
Subject: Re: [PATCH 1/2] phy: samsung-ufs: custom PHY_TRSV_CH_OFFSET support
To: Chanho Park <chanho61.park@samsung.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>
Cc: Marek Szyprowski <m.szyprowski@samsung.com>,
 Jaehoon Chung <jh80.chung@samsung.com>, Alim Akhtar
 <alim.akhtar@samsung.com>, linux-phy@lists.infradead.org
References: <20210705102318.102999-1-chanho61.park@samsung.com>
 <CGME20210705102410epcas2p38a6f148b23f8716725bbc8b879471603@epcas2p3.samsung.com>
 <20210705102318.102999-2-chanho61.park@samsung.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <27d1c119-c502-8459-1d8e-ef224312ddde@canonical.com>
Date: Mon, 5 Jul 2021 14:17:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210705102318.102999-2-chanho61.park@samsung.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210705_051749_614262_F873271F 
X-CRM114-Status: GOOD (  13.17  )
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

On 05/07/2021 12:23, Chanho Park wrote:
> To support custom PHY_TSRV_CH_OFFSET for ExynosAuto v9 series SoC,
> we can add PHY_TRSV_REG_CFG_OFFSET macro which has an offset field and
> let it be used from PHY_TRSV_REG_CFG with the default value.
> 
> Signed-off-by: Chanho Park <chanho61.park@samsung.com>
> ---
>  drivers/phy/samsung/phy-samsung-ufs.h | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)

Hi Chanho,

Thanks for the patches. I think this should be squashed into your next
patch - it does not make much sense as standalone commit.


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
