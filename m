Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0097DC433EF
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 10:21:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sw67b858NyhpMCfhcdBm8xnCJDwa5xhK7MnMZjc16WQ=; b=vfvAaIfak8Sz96
	PVuEd5dGEBY9Bim+malxIYlT/ks6JcC1Loxu079WjZEyrZBbxU89eBI8r6FMu41t2jIMGLU+nMkTc
	QQi5o1ypI6F3BxKd8YW52h6w70ac1cV6VtZRfv0RgEEvKQDYLenI3E11JDxPmDWk8+Z11FO6MIjQX
	QZpuuUjzoOkQxn0x48zLZlovAH1ioPYHCFainqGP9ESKiUaKsnFh9Mcko6Wxj8yAXssfNy8NUAHag
	s+j1goBpuNETUp5f8knfrEzM+4PQi6xsR+L53h54PHuOP0hH3e8h42EljnKPhZZOeS42akLfDxO4T
	/6w8ckGcDhJB8IqQtKsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fgT-00H8P1-DW; Tue, 05 Jul 2022 10:21:33 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fgQ-00H8Nx-EP
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 10:21:31 +0000
Received: by mail-lf1-x131.google.com with SMTP id t24so19779025lfr.4
        for <linux-phy@lists.infradead.org>; Tue, 05 Jul 2022 03:21:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=XGMtHoXKFHUOtxQpfPNqwVcBdt9ZrEo/gnmcHvqCdpI=;
        b=YNIrcUD68JSfz4ua0vARsk6TgaoUKlrYjTEdQgmnEkSPT76AAHI5ScSd5BhLUmQncP
         PxSqZQd4Zf7wk3YVjh02mUkxWED4hzjK/aG7I10YER2lfp1uyNaZG1BEcfhuzoPjE2/z
         vRjqLIi1n6RYKa1eeIA5BsRohf6ay2qEclz6eNybodcy0wz52Y7Nze0/SBZwRMsu0K5w
         efqEkr8ZXj8k0TG1lyR9loiPGH8zky0K/+mwc6976hi6BesBYSy69NCwF8gZJZpwVkf+
         hkuIDVWNtGpBikqAJ9EO+xlDL0JXMqBoOJn+SHOVRLRTWfp5+5C0Rn65RCLhu9wl1BQ+
         I3aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=XGMtHoXKFHUOtxQpfPNqwVcBdt9ZrEo/gnmcHvqCdpI=;
        b=BUZwg39xZzIyxpcE5PkD1Lzs55ji04D81FSbEUKFcqWNdKCXLXiNPFhxJsgbuAATss
         HtxSvUlHW/WFItZloEPH5tX1tY669exfHXvB9q8XeL5oy9fVLNky7JrbnfHGOHpUoELv
         N2xKLzN2YdJb5kk2lKoAE2czE22W7Fm9eRkVUHj6vrQnywsho28jBlBBFrf7B5oArb5q
         yLmnV6ubWCTs9AgKZgGX7pdh2yQI4wlaIHQj60E8wML+oyl4copP+aG8+vF7lfoG3Ufz
         waL3AGzLA2m5XYaHa28lWJKfsurWFSdGobq/yqYSA517lHea7yw9qaBHFaAONbxkq6eJ
         KOEA==
X-Gm-Message-State: AJIora+rM7Zg8yz1LVNxxjF+kkk1xotipV+Ygbq10cJOzLmnVh1kLx3t
	iUeSIvbp77U4Sh6qrMOafJ40gA==
X-Google-Smtp-Source: AGRyM1t/KkEuOwtyTNFstSAVsdiyHggD1Bgiz4900nTcmTdD0yCoOwliE6uS35rh/DkDuzlfnTKIIQ==
X-Received: by 2002:a05:6512:3503:b0:481:4470:4128 with SMTP id h3-20020a056512350300b0048144704128mr20257291lfs.303.1657016488650;
        Tue, 05 Jul 2022 03:21:28 -0700 (PDT)
Received: from [192.168.1.52] ([84.20.121.239])
        by smtp.gmail.com with ESMTPSA id z7-20020ac24187000000b0047f943112e3sm5601954lfh.285.2022.07.05.03.21.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Jul 2022 03:21:28 -0700 (PDT)
Message-ID: <1fc88380-1960-6ed7-0933-d97bfa820dcb@linaro.org>
Date: Tue, 5 Jul 2022 12:21:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 42/43] phy: qcom-qmp-pcie-msm8996: drop reset lane suffix
Content-Language: en-US
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20220705094239.17174-1-johan+linaro@kernel.org>
 <20220705094239.17174-43-johan+linaro@kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220705094239.17174-43-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_032130_534831_7214F62D 
X-CRM114-Status: GOOD (  16.05  )
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

On 05/07/2022 11:42, Johan Hovold wrote:
> The lane reset is defined in the "lane" node so there's no need to keep
> adding a redundant lane-number suffix to the reset name.
> 
> Drop the lane-number suffix from the lane reset name, but continue
> supporting the legacy name as a fall back.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c | 9 ++++++---
>  1 file changed, 6 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
> index b8481dab54db..9ddb42fa5f7a 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
> @@ -915,9 +915,12 @@ int qcom_qmp_phy_pcie_msm8996_create(struct device *dev, struct device_node *np,
>  				     "failed to get lane%d pipe clock\n", id);
>  	}
>  
> -	/* Get lane reset, if any */
> -	snprintf(prop_name, sizeof(prop_name), "lane%d", id);
> -	qphy->lane_rst = of_reset_control_get_exclusive(np, prop_name);
> +	qphy->lane_rst = of_reset_control_get_exclusive(np, "lane");

As well, just grab first entry and ABI is kept stable.

Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
