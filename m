Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2E991C3DA64
	for <linux-phy@archiver.kernel.org>; Thu,  1 Aug 2024 19:27:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yHYlXiwjpcfXHfBJQZYRijL+rBDKU/ZimD/Pk7jRjAU=; b=TQTj2vyAtqRYaX
	Ucyoww9yWe46fnzCgpN6LOC0vVkRf/zhB76geCX189gfOcYznAt/d/NIXnfwOCui/lwiGKmqRerFF
	AYOYosz6jMJR3vIXtdsJao9gGqJsdar9hRMtUB1L3i7SM6znf88z0Bq4py0DgXM+bTkRIaEKHmvvz
	+OSHTcmtJ3eLLaH+I3TY6ZvKvqPC5//AUpCBQMPmKeQTsX1NeYbGsxcnNyB/0oAEgJ5ZsShv0rP6K
	I/+E+m4RU4nfi6MQekFEHpeGVo9mHbp8VbYY1+8/Xx5Z0LylEv/4ZQpWdDzVN8o+XZ/7qILuWAEGx
	88/CIdboawZePK60snfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZbSD-00000006XhD-3UFW;
	Thu, 01 Aug 2024 19:27:13 +0000
Received: from mail-lj1-x22f.google.com ([2a00:1450:4864:20::22f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZbSA-00000006XgI-3xtj
	for linux-phy@lists.infradead.org;
	Thu, 01 Aug 2024 19:27:12 +0000
Received: by mail-lj1-x22f.google.com with SMTP id 38308e7fff4ca-2f029e9c9cfso111528031fa.2
        for <linux-phy@lists.infradead.org>; Thu, 01 Aug 2024 12:27:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722540429; x=1723145229; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=xDiQzKV7V2fFU3bp2HZ8kCtvzTR2/LI8LX+WVgvxAC8=;
        b=gPEthRGpRZGiRKNk0mfGB2OIP9gpmHW8RRTNrTZw3dJUp6pFC3D+tmVN++nNVxzl1F
         +xLOCR6Xq2m04PMpm1ooyiVQfp4jz1uE0gYkbDLwoAmAc2AfM+lI397UEuZ5xB0+Ddxz
         dfk+AHnGbtrpI+c1E3lEyhLVnKjW8nqNYOHlswg8JFdL2XqGweGHcBvjF8lXh1BmUbd3
         GJrmws2bTN61iVzLN5UXOJWrBohdYDeZ3l9g1NyamimxTdcvujrGqPHoXdzrZeKgq7tb
         3UFQw6us9Q9l5383Umuz8wsZ8svit7eMv7qdoDiqC7A2BALubOjbFX/fZ+mLpPNmwBGq
         PjqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722540429; x=1723145229;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xDiQzKV7V2fFU3bp2HZ8kCtvzTR2/LI8LX+WVgvxAC8=;
        b=Jz24NJXFIGhrQTKf5XRxRugIJNSx9IEhZ3kYjKX7Q/6KRU5uH233igzX/WLCfCHzlH
         77YmXiqzm2zVrwuN+itf/nSmL00GvSWsV9zPcUfuiILXFo9+3YEAPGGvn20/cGcUwiYa
         gG6c0MJWYazuAFRvPdr8Yttx+DISPMC/0tT4OGDlWLBsDS/g95e0Ejh6i3ehnPfNHW0f
         V2YOeORcw8tk5zE2Q+jT02T1n0H2mV7j4hQH5IT0fGIonFjj1x2E8j/WwK4+5cLszlo2
         cC3hGXkFms7UJxduq6EHpV0oESyVYVO1k89TmANsVwUbhQpfMxVq+Ajk1vwFhS8oclG3
         SohA==
X-Forwarded-Encrypted: i=1; AJvYcCUEVRlQ+iyq8tGuiAbr6U9vhY4zO3DwxZrctAqqwfI19ZI4v9n5a4oA+LZefR2eFisKaN+r1LxPZsqseWfcpTgqyprbBthSAYClkOMfRA==
X-Gm-Message-State: AOJu0YynufQ8aJU2Wd3O3s4/Znh0f2VAeQkYfmNFd/rvDUITG4Ee6YEN
	szEO9RvLidq+jZ8pQ8JqyQTVmW/EvzKea4IyTxEAazs11lcUfGxF54gr6JQoKY0=
X-Google-Smtp-Source: AGHT+IHKqGnemhTJWJyNS+fY4snJ4ynvhZOVxkj5ompO665PXfS0Z2yTSf0YbR0e5lrQvkeMNSvYGA==
X-Received: by 2002:a2e:b70a:0:b0:2f1:561e:c329 with SMTP id 38308e7fff4ca-2f15aac4fb2mr11233151fa.26.1722540428301;
        Thu, 01 Aug 2024 12:27:08 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2f15c45062csm301111fa.109.2024.08.01.12.27.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Aug 2024 12:27:07 -0700 (PDT)
Date: Thu, 1 Aug 2024 22:27:06 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Johan Hovold <johan+linaro@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Qiang Yu <quic_qianyu@quicinc.com>
Subject: Re: [PATCH v2] phy: qcom: qmp-pcie: Configure all tables on port B
 PHY
Message-ID: <37id2c7h33sj7p3vlo3tiv35qta7utee6aswieyy2b64get4bk@eqjjakr743fx>
References: <20240801-phy-qcom-qmp-pcie-write-all-tbls-second-port-v2-1-6e53c701e87e@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240801-phy-qcom-qmp-pcie-write-all-tbls-second-port-v2-1-6e53c701e87e@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240801_122711_008949_EA636BF5 
X-CRM114-Status: GOOD (  12.88  )
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

On Thu, Aug 01, 2024 at 06:54:53PM GMT, Abel Vesa wrote:
> From: Qiang Yu <quic_qianyu@quicinc.com>
> 
> Currently, only the RX and TX tables are written to the second PHY
> (port B) when the 4-lanes mode is configured, but according to Qualcomm
> internal documentation, the pcs, pcs_misc, serdes and ln_shrd tables need
> to be written as well.
> 
> Signed-off-by: Qiang Yu <quic_qianyu@quicinc.com>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
> Changes in v2:
> - Reordered tables as Johan has suggested
> - Link to v1: https://lore.kernel.org/r/20240726-phy-qcom-qmp-pcie-write-all-tbls-second-port-v1-1-751b9ee01184@linaro.org
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 14 +++++++++++++-
>  1 file changed, 13 insertions(+), 1 deletion(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
