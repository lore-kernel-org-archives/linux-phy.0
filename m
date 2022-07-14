Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37AE0C43334
	for <linux-phy@archiver.kernel.org>; Thu, 14 Jul 2022 09:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9oeMGm0lpD05KjtXZjK5qWf/savedXrQbsZEMu4O1Fo=; b=pgwIQ4EEIPlofW
	blvZBVN27VhIgdeFIgkgpCIKx5kJXUu8RLoRaZhEU/Cmpj8C64nej7YocRyUG9n41yEM3KKGPL3j2
	cxgXCTr4YTSvReovcgx7aTs5GblDgKuQ0xOppqrrUSHDFkhY2FFkE286Jfm8Yw7eFi8T4GE7TX47T
	X/xkwGI7x2A3WC3quu0HeIxUUNiMltcp0ELgZauXzQ6u0D3V283ZaD10pLZnb/I3oIFzJ9nWl2w1O
	1yQ3KYTXxzyE5ocsDhojT8hgLQWNOSTJSBZ6lc2FVlAg925S6iBeadXyJdl3+02A1YCanaraG0BLS
	os3J0Z9H1MPue5lOBKdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBvDI-00Ct4N-4p; Thu, 14 Jul 2022 09:32:52 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBvAG-00CqqJ-V0
	for linux-phy@lists.infradead.org; Thu, 14 Jul 2022 09:29:46 +0000
Received: by mail-lf1-x136.google.com with SMTP id y11so1829129lfs.6
        for <linux-phy@lists.infradead.org>; Thu, 14 Jul 2022 02:29:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=yEOuNrBYev+o1IcwiET9jNJzGDCPmfSFpx+DLuvyDlw=;
        b=ADGZGqHS+KsPPXQ2vye8T68IwBUeTG5I19gcCOX86Xr6TeAKosTtwALFoPE+2m4XQK
         t7cxRmQTf22lsmvDTwxcoLpbkgIzoPomlFKlm+RFeQkKN66C4jvX8UM6b7QvNYzDV5uE
         I/7E/1YvL9dP6BGotOxJ/gyihFzm175LEspNeODYpsQaQ3Ltf3Hxd7C6H6V/MAyOV4cs
         WVOk4mapQluVrdenPXMTWgZHs1zhG5kJNyhKax8WKphHyfZeMu58Urwv7XDmgad5lzIR
         ighJygKdnSY1pI/a5HffGtZ07ndjkgiFBSRfL+XDdVeQOZl8DbeZsnbwqybdSHgGU8J9
         IFzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=yEOuNrBYev+o1IcwiET9jNJzGDCPmfSFpx+DLuvyDlw=;
        b=wX9C49e5JLMWe2XOZJDM/x+MbWLASTUobKXMRyTpfQ0Zu0hV4Qt27OzkVUzq2rnhU9
         HIPsW38+2b8To7jCrnsaN5wnkleuJG6qiq9D5P3PwY6KKc0F7xlrhGWXCLjt5ybzQXUJ
         XpPyhtzZO6YISYm9J0gEbULvGm0fYeo3wZS6zpNgxk+/rVrfyy5KEoE6EgNsoqdwwe58
         q3GeC3n0/V3PhzFv+PG+aUkxZ4N/Or2POs/3ETzT5zHvKU0AisTiNYWeASmUchx72kDs
         mDarl5DPhUh9TwAt2ePHuQek4bjLcQxxHlzGX0pUBc94itQvlX9QV3omI8khD8ENiS/B
         QOTA==
X-Gm-Message-State: AJIora9dUKMcgz05CnD5pap3bAGoi2tWR2KUMtfoK4jzRmBQ9qPipgvZ
	ZhsBZz+bBPFUphhbtff9k//T4w==
X-Google-Smtp-Source: AGRyM1uIZ8Aq9O28VGC8BeThyVI5AV6EvuwlsA2x0KZizc6umgDcOhBraI/zRvUjGs9IFGZaOwJ4gw==
X-Received: by 2002:a05:6512:2308:b0:48a:f9d:7389 with SMTP id o8-20020a056512230800b0048a0f9d7389mr3791536lfu.235.1657790983374;
        Thu, 14 Jul 2022 02:29:43 -0700 (PDT)
Received: from [10.0.0.8] (fwa5da9-171.bb.online.no. [88.93.169.171])
        by smtp.gmail.com with ESMTPSA id f13-20020ac251ad000000b00482d0643976sm256243lfk.258.2022.07.14.02.29.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jul 2022 02:29:42 -0700 (PDT)
Message-ID: <90a56db5-f41e-681d-2b3e-c16b6ab456a5@linaro.org>
Date: Thu, 14 Jul 2022 11:29:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v2 28/30] phy: qcom-qmp-pcie-msm8996: drop pipe clock lane
 suffix
Content-Language: en-US
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson
 <bjorn.andersson@linaro.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220707134725.3512-1-johan+linaro@kernel.org>
 <20220707134725.3512-29-johan+linaro@kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220707134725.3512-29-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220714_022945_065836_1A34CD51 
X-CRM114-Status: GOOD (  11.33  )
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

On 07/07/2022 15:47, Johan Hovold wrote:
> The pipe clock is defined in the "lane" node so there's no need to keep
> adding a redundant lane-number suffix to the clock name.
> 
> Update driver to support the new binding where the pipe clock name has
> been deprecated by instead requesting the clock by index.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c | 4 +---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
