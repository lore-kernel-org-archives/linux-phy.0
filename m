Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 97EEEC433F5
	for <linux-phy@archiver.kernel.org>; Wed,  9 Mar 2022 17:03:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/HLnNHTahEs9vjKq12eFfzOQFF/kJnJu0bBED5dk0AE=; b=YzmPLHEDnYbtkd
	uVE/WNQKO+s9KwKhw/Qq1BRQE7U+bUdMQL/j6n7fvSETNz4rUsLRDcoat6hhGOPc3YepDkMjexbig
	7uVcsNfDeNT6HVhl/yEDX1P/0J9cSQQSol6d9zE3XYzp933w4E2du2800QNo73aleL0dkdijgEpNT
	C/O5Yq8iRTQMMBAxHRQVJjvTFkhmOBeIC0OHyOVcPvkaXyLMriilEgaguUaejeHjrnKw1HpLNbnAP
	1EBTDvH2cKKvTBTE+GG7sZWnaq39O3IphVbOZPlEBpxJmVzTE5UKcQhj1aRaptWd1mF37c1A9oh8i
	A8NAP67DOrlfSIYjkVbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRzin-009fb2-NB; Wed, 09 Mar 2022 17:03:33 +0000
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRzWF-009ZuP-IL
 for linux-phy@lists.infradead.org; Wed, 09 Mar 2022 16:50:37 +0000
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 0023B3F19E
 for <linux-phy@lists.infradead.org>; Wed,  9 Mar 2022 16:50:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1646844630;
 bh=n3bsDkHLKbob4SpB/QLI8yY+wMazsO7AAgENM4v1TGo=;
 h=Message-ID:Date:MIME-Version:Subject:To:References:From:
 In-Reply-To:Content-Type;
 b=J/HiKAU9CaZYOvJLxNrLIIC6LmqGO/kH628kKGOcfmjzXj2Iox2doHLJay+VxVgnc
 MnGrd9XTho9G24bvs4chQ75KhspVqz2tpf5r2DXln5Rptvy7O7XyunrowrwRs7Obem
 JMv8tzoOKP8ABxHWUXYemFjxZhT1TKNllPaZyMpiN625rgGvjnfqlP5W4NpADbIp6L
 80Y8vaSUeG2LfvkUDVf8NvB4z4PneSySoXSXLybBuH+vG2IKLO/c9HDHFvsk6fYUfm
 gTice2akRXr54FdX204DhRFnezfoJ9sjVzHBjss4Oy5bzCVMpzegl7MT4lm1K5sLFy
 lZyZ0u8mPVAgA==
Received: by mail-ed1-f70.google.com with SMTP id
 cf6-20020a0564020b8600b00415e9b35c81so1586166edb.9
 for <linux-phy@lists.infradead.org>; Wed, 09 Mar 2022 08:50:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:references:from:in-reply-to
 :content-transfer-encoding;
 bh=n3bsDkHLKbob4SpB/QLI8yY+wMazsO7AAgENM4v1TGo=;
 b=uyG7L2oxQMljOBgJ0c6Sv4opoH35uUy6zcjcRamhgEUVqMl1avJL84o11f6BDuOH6O
 1Rg30Kb2qXYZXmugL9s06oSAk0MiS9DbY/L6/1CIyCIr4E2bPLtDWA4L7mnzrpCTK+0w
 /rGWS6Mzyi3ifo+ATAHTW+o5KlZHldYHQHBphiCaD1yz70cNfSnmxi9hVyu7qAU8cY/l
 f86JeNG+7kPaPAbDok5LIMNHoilD+QVlqCIgRwR0oQQu6B2rUvFEzJfcXmcAGa/nBVra
 IRezZgAwclxYf6X4eiel+aEwYtdny6nFl0Irpc3aiaTpjJ/NZhcwKyP1xaNA0Ux7e/u9
 79OQ==
X-Gm-Message-State: AOAM533yw/Obkh2Fdt2NcRXr/V4XZ2DTcgDv6/SEv3fIksJ/lujGXfdC
 bdTmTnj0uNuo1soPyVhxgozKJV0sTak+ZOKycs86C4J/hXmPmtMY22hThVh0+wU/IuKxHDOBOzq
 GnQjpv3XrcGwCxPpS5CyegFD0Jj0PHI+mi635c4HKQFc=
X-Received: by 2002:a17:907:7205:b0:6db:706e:9453 with SMTP id
 dr5-20020a170907720500b006db706e9453mr639838ejc.406.1646844629563; 
 Wed, 09 Mar 2022 08:50:29 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxCxaTei6vOMnlujVwxaQYI8z9747SILBVem6r7T6w8d5qi1Y8LIsUHSSxKjRH2289mhNKSEw==
X-Received: by 2002:a17:907:7205:b0:6db:706e:9453 with SMTP id
 dr5-20020a170907720500b006db706e9453mr639816ejc.406.1646844629326; 
 Wed, 09 Mar 2022 08:50:29 -0800 (PST)
Received: from [192.168.0.144] (xdsl-188-155-174-239.adslplus.ch.
 [188.155.174.239]) by smtp.gmail.com with ESMTPSA id
 w15-20020a056402268f00b00416474fbb42sm1032819edd.19.2022.03.09.08.50.28
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 09 Mar 2022 08:50:28 -0800 (PST)
Message-ID: <3eed8d0c-e009-2daa-ba66-899fe8f48a90@canonical.com>
Date: Wed, 9 Mar 2022 17:50:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH] phy: samsung: Fix missing of_node_put() in
 exynos_sata_phy_probe
Content-Language: en-US
To: Miaoqian Lin <linmq006@gmail.com>, Kishon Vijay Abraham I
 <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Girish K S <ks.giri@samsung.com>,
 Vasanth Ananthan <vasanth.a@samsung.com>,
 Yuvaraj Kumar C D <yuvaraj.cd@gmail.com>, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20220309124856.32632-1-linmq006@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220309124856.32632-1-linmq006@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220309_085035_894335_66EBDB08 
X-CRM114-Status: GOOD (  11.03  )
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

On 09/03/2022 13:48, Miaoqian Lin wrote:
> The device_node pointer is returned by of_parse_phandle() with refcount
> incremented. We should use of_node_put() on it when done.
> 
> Fixes: bcff4cba41bc ("PHY: Exynos: Add Exynos5250 SATA PHY driver")
> Signed-off-by: Miaoqian Lin <linmq006@gmail.com>
> ---
>  drivers/phy/samsung/phy-exynos5250-sata.c | 1 +
>  1 file changed, 1 insertion(+)
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
