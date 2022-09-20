Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9A68C6FA90
	for <linux-phy@archiver.kernel.org>; Tue, 20 Sep 2022 13:51:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vVwYahnlCSkuDgzz/KTgGkoYrQzs1nigEdaXj12i2Js=; b=1Yo8ndlj9X2z4o
	tuJD+1omN5VUtqgqvEZEuiI44qpIPMhCykTLEqYgJsGy8f8RzVBOCwI9ZDC6yyk5JVtA+WXsQEJ3O
	EPfIEQPI5JcA0+OG/CiBl0wojVI4CyowIj6DVSmXTWeXlxwV2PeyOtFkdF4dSoxByTVY6EK1lvGuh
	4d8ykQiWBJuPPCtT/EP4IigMGgj6ljCJsz/eML75daqcOh8CShcIUfH45dvQR2ORkTlA3AOpJRNhL
	ftxQIzofuXx8nJ65NRlK47R2KWgTG7G21nuz8f0om1lYFvQT0Id60R6h5ZcD0A5QtzdSdxvGtCvbX
	FevjeM7q5f2IEhFHgrlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oadf9-004Frn-Sq; Tue, 20 Sep 2022 13:51:48 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oadf7-004Fn5-1N
	for linux-phy@lists.infradead.org; Tue, 20 Sep 2022 13:51:46 +0000
Received: by mail-wr1-x434.google.com with SMTP id bq9so4419654wrb.4
        for <linux-phy@lists.infradead.org>; Tue, 20 Sep 2022 06:51:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date;
        bh=gmezfN1Xisi/Y28D8CBgw2JKxBcXRNXAGwUqlEq0780=;
        b=TticrSrHXNVtW1E2+32pVgMqJhmUwukqjyuyFRmS50udd03bwD90/L6anJgm2u++79
         lKURGQXHweyVFQsGGzU6B0LzmVDd0I9uLbWN9wWBfsZCvBoji1uYeVF8tzo09gbYQTZk
         OmwEPEcDxZe8a61dP/aAA8kZT6zR+JsNyhTqSDMjMkwwI7oe9b9DAZDlMm3qrTI02BOm
         Y2LvyAdbezNSFoiS/7JhPzUJ5e4zs+C2by9qmLM1TIU95y9GmyhSPrYGidvY5sRl+rNV
         pNqSEIs0i0qdAHkcacQT691Pe9JHhIb0/Q8kku9FWWURm+QWb56RNhPQ/XS2ymnPhwjG
         XPOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date;
        bh=gmezfN1Xisi/Y28D8CBgw2JKxBcXRNXAGwUqlEq0780=;
        b=RTmuL4DW8mzTZRMT02kgyXvJN99xqekjhZ2LLYhzkAxnwGH+kUmndPiyRIvhd1VZ8k
         6xW3PRpoMC2VJZ52tTe+DMk7rv5hH/WOm7QcluMVrGQlQl9xlN08iWg4yVIVeU/QZ/Bl
         JpsUVyfsL1XM6mHKTk1XkKZPWqiL8RW3ukVi92tR1HBBTE2BrWj8BOwSRCnUHhGerps6
         vnRl1ieEBmSIbaT9BatdEAJ7fAY7OVVPTYAt0Qd68l5RY5Za4V7C8RCNiBpgL951Ge1f
         8Kb+/YIxbzF6jCIGSwCwEtbLDvH82aVXVx8oLRI5KDnsg5SFj2CA88RWpIarA8vOtxXK
         ydKQ==
X-Gm-Message-State: ACrzQf1c0cRdaGEY2fXpgKGHeS5fvGQh63dHnRaMJ/YdnzZmcqPKgmR8
	ojSNayz5BBuy5qYkjRRhFZCRHw==
X-Google-Smtp-Source: AMsMyM7ECIzt/fSl1/bV4qil5N/5McfHi6HQSeLKJF4mNeGACnu2MAgU8b7V99M7CFP7GIU5bvHzjw==
X-Received: by 2002:a5d:59a6:0:b0:22a:e22f:79c7 with SMTP id p6-20020a5d59a6000000b0022ae22f79c7mr12748671wrr.511.1663681899630;
        Tue, 20 Sep 2022 06:51:39 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:7e10:f0f:43b2:9b5e? ([2a01:e0a:982:cbb0:7e10:f0f:43b2:9b5e])
        by smtp.gmail.com with ESMTPSA id m1-20020adffe41000000b0021f131de6aesm77101wrs.34.2022.09.20.06.51.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Sep 2022 06:51:39 -0700 (PDT)
Message-ID: <5f8d5e01-6fa7-b0af-bf46-ebfb60dce47a@linaro.org>
Date: Tue, 20 Sep 2022 15:51:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 09/17] phy: qcom-qmp-pcie: drop unused mode field
Content-Language: en-US
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20220920073826.20811-1-johan+linaro@kernel.org>
 <20220920073826.20811-10-johan+linaro@kernel.org>
From: Neil Armstrong <neil.armstrong@linaro.org>
Organization: Linaro
In-Reply-To: <20220920073826.20811-10-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_065145_159502_382CB95A 
X-CRM114-Status: GOOD (  13.38  )
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

On 20/09/2022 09:38, Johan Hovold wrote:
> Drop the unused mode field from struct qmp_phy.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 2 --
>   1 file changed, 2 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> index 666109a11329..65825ca41e96 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> @@ -1374,7 +1374,6 @@ struct qmp_phy_cfg {
>    * @pipe_clk: pipe clock
>    * @index: lane index
>    * @qmp: QMP phy to which this lane belongs
> - * @mode: current PHY mode
>    */
>   struct qmp_phy {
>   	struct phy *phy;
> @@ -1389,7 +1388,6 @@ struct qmp_phy {
>   	struct clk *pipe_clk;
>   	unsigned int index;
>   	struct qcom_qmp *qmp;
> -	enum phy_mode mode;
>   };
>   
>   /**

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
