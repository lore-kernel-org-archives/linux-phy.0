Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A9227C4332F
	for <linux-phy@archiver.kernel.org>; Sun,  6 Feb 2022 11:33:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V2UrIYh5VL159b1CRgup311qEeSVjZEH4PRNXh493+s=; b=zILeMZndt+1TIv
	y/2FA9J/beZBWCnFl13+2ecq4YlfDRYvzVV13ViHSuocmXLT8sopaHT0eVakZpOn60qYIzkk7xdOz
	5Ip9S901eXiyK/bBVM8eyZjfztgY05+h8IYg4BKHYxheSOnkcPCyN72TzCvJ9VVMpdWtVl9Zg3qc1
	4X4KeUTlR2ipQizuRTrwB7AJ/465BsiNx6htCNLXkcfDAOgOzD21LPp2MKJGPjApZopErT9Wdd0by
	4lPp9/Nbo+1Ioy2ZsEYmIfxsqHM3QgQ480G2IcSc9/TXK5hxXCkbdxeKvkKOkWSlskJWhVTP/w6/P
	cnXxwPEk8DL1/v2Loo6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nGfnS-00881t-1p; Sun, 06 Feb 2022 11:33:34 +0000
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nGfnP-00881J-OJ
 for linux-phy@lists.infradead.org; Sun, 06 Feb 2022 11:33:33 +0000
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 106AE4025B
 for <linux-phy@lists.infradead.org>; Sun,  6 Feb 2022 11:33:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1644147210;
 bh=ZiDU9Eu3x+M8fVHZBfeMoqgYec/dSCr3pkNCtmbnF0Y=;
 h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
 In-Reply-To:Content-Type;
 b=vt9a0OJwHTP5YJBNR4cI0KJmrPJZbHdfA19zAi95Km9ElnUYKVrrVL46KhjP6GEzD
 tfpVKAuCyCl/qhRevWgtSb0DhuK1f0GyXO6+7v+maXLf35ITq3xVNotyWFptWRYMsk
 PEvM4K10M/NXOL2zuOxLziC30D3JHZBbPn3ErxRFGGYVFQzjKj0p8U8qHKvXP1vYgU
 uiMs4VBbppatnwo8jH1es0W5e9Rn2SxhuzVbIcCTyXaPT98r+y6KglKdDlTcg44Qwb
 CCZdzjXuAxHeVb5gN3IgSlBj0878CkqMj3vUacLXPhU0goC2nEnUQvZuioDMVVGSlJ
 k/DFhBfwoM9lg==
Received: by mail-ed1-f70.google.com with SMTP id
 cr7-20020a056402222700b0040f59dae606so789149edb.11
 for <linux-phy@lists.infradead.org>; Sun, 06 Feb 2022 03:33:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=ZiDU9Eu3x+M8fVHZBfeMoqgYec/dSCr3pkNCtmbnF0Y=;
 b=bhllP2knxQFPZslBr7GJ07vN1e4dJqTQ+cNj9kaJbPTfQcNaihnA4c5JsRzsejl0Tw
 E/kryPEocNr2pOTLVHLLwbXZFeF16h9A6943rj8Zh/pMrdpn2XRPogaTteSKdKC1KGyB
 CLhzs3y7K+V5yx/R2e65zwO63cTYYDeYsknMaRCU0IqMs3Y69Y+HfLeEvpzxgPULAOhJ
 hObCyQfSG/4TbJTFyntTiXobkaqqDcPr3LOekWK6tTj0N0ZXPRdhqutxL7eFbJZkQh5e
 8GTHqnhSJnxTq1ueED1MvL/Z8UpuwPa77y5iXM5Ml5Vleyv3zoRxcAwHSGuaPjHQ/fJM
 PiSg==
X-Gm-Message-State: AOAM533UgM+jYKB553EoYeHYx7GZxLyQLWibYqhNv5b17o+LJkvUOMSs
 2psw9vRiaTk1+A8rX4kT17kbVI1kuSACCbdZzFGW3MSQooZKBbWFvao3xqF55XAmMySnckR/vFt
 WHKrU17SMRI6G6i7atRybI6q3bB/W2g1odNXVLXnhcX4=
X-Received: by 2002:a50:fc06:: with SMTP id i6mr6183200edr.89.1644147209695;
 Sun, 06 Feb 2022 03:33:29 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwy3U1ftL3UccDBSq+2ALlKh+KNAz5yKkEnqRtTK4p/TCdyp5nH+nET54fdFXxmYZ3tk3uTmg==
X-Received: by 2002:a50:fc06:: with SMTP id i6mr6183183edr.89.1644147209552;
 Sun, 06 Feb 2022 03:33:29 -0800 (PST)
Received: from [192.168.0.83] (xdsl-188-155-168-84.adslplus.ch.
 [188.155.168.84])
 by smtp.gmail.com with ESMTPSA id ck7sm1294186ejb.44.2022.02.06.03.33.28
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 06 Feb 2022 03:33:28 -0800 (PST)
Message-ID: <4e2bec9b-4759-b699-fa7b-974f5f43da9d@canonical.com>
Date: Sun, 6 Feb 2022 12:33:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH V1 03/10] dt-bindings: memory: Add Tegra234 PCIe memory
Content-Language: en-US
To: Vidya Sagar <vidyas@nvidia.com>, bhelgaas@google.com,
 lorenzo.pieralisi@arm.com, robh+dt@kernel.org, thierry.reding@gmail.com,
 jonathanh@nvidia.com
Cc: kishon@ti.com, vkoul@kernel.org, kw@linux.com, p.zabel@pengutronix.de,
 mperttunen@nvidia.com, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-tegra@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 kthota@nvidia.com, mmaddireddy@nvidia.com, sagar.tv@gmail.com
References: <20220205162144.30240-1-vidyas@nvidia.com>
 <20220205162144.30240-4-vidyas@nvidia.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220205162144.30240-4-vidyas@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220206_033331_978304_C7B69295 
X-CRM114-Status: GOOD (  17.76  )
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

On 05/02/2022 17:21, Vidya Sagar wrote:
> Add the memory client and stream ID definitions for the PCIe hardware
> found on Tegra234 SoCs.

I could not find dependencies or merging strategy in cover letter.
Please always describe it, so I don't have to go through all the patches
to figure this out.

> 
> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> ---
>  include/dt-bindings/memory/tegra234-mc.h | 64 ++++++++++++++++++++++++
>  1 file changed, 64 insertions(+)
> 
> diff --git a/include/dt-bindings/memory/tegra234-mc.h b/include/dt-bindings/memory/tegra234-mc.h
> index 2662f70c15c6..60017684858a 100644
> --- a/include/dt-bindings/memory/tegra234-mc.h
> +++ b/include/dt-bindings/memory/tegra234-mc.h
> @@ -7,15 +7,53 @@
>  #define TEGRA234_SID_INVALID		0x00
>  #define TEGRA234_SID_PASSTHROUGH	0x7f
>  
> +/* NISO0 stream IDs */
> +#define TEGRA234_SID_PCIE0	0x12U
> +#define TEGRA234_SID_PCIE4	0x13U
> +#define TEGRA234_SID_PCIE5	0x14U
> +#define TEGRA234_SID_PCIE6	0x15U
> +#define TEGRA234_SID_PCIE9	0x1FU
>  
>  /* NISO1 stream IDs */
>  #define TEGRA234_SID_SDMMC4	0x02
> +#define TEGRA234_SID_PCIE1	0x5U
> +#define TEGRA234_SID_PCIE2	0x6U
> +#define TEGRA234_SID_PCIE3	0x7U
> +#define TEGRA234_SID_PCIE7	0x8U
> +#define TEGRA234_SID_PCIE8	0x9U
> +#define TEGRA234_SID_PCIE10	0xBU

I don't see usage of these...

>  #define TEGRA234_SID_BPMP	0x10
>  
>  /*
>   * memory client IDs
>   */
>  
> +/* PCIE6 read clients */
> +#define TEGRA234_MEMORY_CLIENT_PCIE6AR 0x28

I see you use them in DTS but not in mc driver. Don't you miss anything
here?

> +/* PCIE6 write clients */
> +#define TEGRA234_MEMORY_CLIENT_PCIE6AW 0x29
> +/* PCIE7 read clients */
> +#define TEGRA234_MEMORY_

Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
