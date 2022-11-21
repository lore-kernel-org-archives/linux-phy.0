Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56FCDC4332F
	for <linux-phy@archiver.kernel.org>; Mon, 21 Nov 2022 12:08:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=toF4mRxMzWPnLqqiXlYWpvvFMi2LO//nTXVURVNlCUY=; b=JbcBp7FYh+s4AP
	FdITzpucU4NwyfBwEGIytIL3X/gZTt9Bu6YLvxAQ9uRxwC4gcpC8qE86dTeXhsQFGdgCEf+D3CP2n
	Iua4pDHnlkXtw6GNIuEmopnOXvfgqJqvJv1MwOqRO5FXJvdm/6VA2drIlsaLI3JNtB/YUxeXiAzni
	tEAavuihD5VhW6RkPgVzAyynYAkROoUE2MNZVOaaKBl5OYXi1Ized5wHhGNFviZp0BBcnbMLRPXuO
	tf0+nISyOKzkDyA2/JIruuk8FY5hL/okr1ZaqZJ4E83YxqJ5BA/aj0Y88CxtKF+PPzoJoDdVIawu0
	aM7KMWr9qvTv3n2Lky6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ox5bD-00DGzA-M0; Mon, 21 Nov 2022 12:08:31 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ox5bB-00DG0Q-6y
	for linux-phy@lists.infradead.org; Mon, 21 Nov 2022 12:08:30 +0000
Received: by mail-lf1-x130.google.com with SMTP id g12so18535121lfh.3
        for <linux-phy@lists.infradead.org>; Mon, 21 Nov 2022 04:07:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lfG4cik696zUtTBIcgQeTEQkmrpF/e/tKgc3C9UfvMI=;
        b=K7nx5lnfzyOxynPYjR0p0HHRc5IfrvUbf4CaMa1zyzlYDYq01CLKng1A6CbAfP1m2J
         lofU9IbY+WMrD65t1E2woswDiJrB6+bWX/yorIMPkji3TgJ7bjsaEh0ZMF1toWu86hx9
         N1XmMx9Ie0693BDRWwTbtwpHSqTzSc4CXlBKVQG5UsYX6q9PESI08f8NlxQxt7FzVO08
         4KQZpuWxuo1C9RF+vtp9hsmVYpvLAFdxi4bmD/v331ibMOSUJGB7VfLHxQ+6V9qosJgL
         BpinSHXE6DkS377Ydsa4KBVYqP1fekFNlLdcScLHdU7IOCgHiTfu/6MxX5WBAKQH6BUC
         n5UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lfG4cik696zUtTBIcgQeTEQkmrpF/e/tKgc3C9UfvMI=;
        b=mA+yYyoLh6wG38lVH7pR6v8V5TynzcUYewZCngUYtxsfwAntcNPxAoNrA1YHb8rgzb
         5P67l+rAMJl80z121VybntYRB3POD4V1EN8oSOjES+xdvHiGrkw00MEUfmAxc8PRcQeJ
         e8EH1e12TE8LfIPYaVzBO/X05k88s9YM32zPz8cbgch47zPFAbZkl0PNVNIs135DDqDc
         M3vbBrpZlxjPecVzt8NuzMnLQ4JQH0UNS1+fvVywtbeE2pX1Pbqi9Hvy2osq9kkLNnkA
         yPpZZMHCDSw3XsWXD4vCLi2pjcd9idN0MPR7npEyBR4epGc5Pi2QFpCRhQIloHgtotSm
         RvHw==
X-Gm-Message-State: ANoB5plJO+ZXWZXrWg6Yx3tdtfCb0l6gS5fqgrPVxwJ32yCJoNEtvcgG
	uzrql7tCxdgEiZOBiXhS/MtsYg==
X-Google-Smtp-Source: AA0mqf5rEQabyEzmEwn4ur6+5m8qVOBvPw935+wb9q5UxzKEspgNRcHmTLImdMuMncb0C35ujXdA0g==
X-Received: by 2002:a05:6512:3f89:b0:4ac:660b:1f02 with SMTP id x9-20020a0565123f8900b004ac660b1f02mr2247583lfa.9.1669032464923;
        Mon, 21 Nov 2022 04:07:44 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id t22-20020ac25496000000b004b491fe071fsm1979285lfk.36.2022.11.21.04.07.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Nov 2022 04:07:44 -0800 (PST)
Message-ID: <646b30eb-ab89-b4c0-1a71-b296359bd00b@linaro.org>
Date: Mon, 21 Nov 2022 13:07:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH 3/6] PCI: dwc: fsd: Add FSD PCIe Controller driver support
Content-Language: en-US
To: Shradha Todi <shradha.t@samsung.com>, bhelgaas@google.com,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, kishon@ti.com,
 vkoul@kernel.org, lpieralisi@kernel.org, kw@linux.com, mani@kernel.org,
 arnd@arndb.de, gregkh@linuxfoundation.org, alim.akhtar@samsung.com,
 ajaykumar.rs@samsung.com, rcsekar@samsung.com, sriranjani.p@samsung.com,
 bharat.uppal@samsung.com, s.prashar@samsung.com, aswani.reddy@samsung.com,
 pankaj.dubey@samsung.com, p.rajanbabu@samsung.com, niyas.ahmed@samsung.com,
 chanho61.park@samsung.com
Cc: linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
References: <20221121105210.68596-1-shradha.t@samsung.com>
 <CGME20221121104731epcas5p48f96c92e5bfb4ede56ce74a78887a2f3@epcas5p4.samsung.com>
 <20221121105210.68596-4-shradha.t@samsung.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221121105210.68596-4-shradha.t@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221121_040829_287090_5A400F1B 
X-CRM114-Status: GOOD (  10.58  )
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

On 21/11/2022 11:52, Shradha Todi wrote:
> Add PCIe controller driver file for PCIe controller
> found in fsd SoC family. This driver adds support for both RC
> and EP mode.
> 
> Signed-off-by: Niyas Ahmed S T <niyas.ahmed@samsung.com>
> Signed-off-by: Pankaj Dubey <pankaj.dubey@samsung.com>
> Signed-off-by: Padmanabhan Rajanbabu <p.rajanbabu@samsung.com>
> Signed-off-by: Shradha Todi <shradha.t@samsung.com>
> ---
>  drivers/pci/controller/dwc/Kconfig    |   35 +
>  drivers/pci/controller/dwc/Makefile   |    1 +
>  drivers/pci/controller/dwc/pcie-fsd.c | 1021 +++++++++++++++++++++++++
>  3 files changed, 1057 insertions(+)
>  create mode 100644 drivers/pci/controller/dwc/pcie-fsd.c
> 

Yeah, when Samsung started upstreaming Artpec-8 PCI and said "it is
entirely different, cannot be merged with anything else", I had a
feeling it will bite us.

So now we see one more.

Then in some days there will be separate PCI for Exynos in Google
products. Then in company X, then Y.

No, work on unified approach not 3 different drivers.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
