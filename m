Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6BF45C77B73
	for <linux-phy@archiver.kernel.org>; Mon,  8 May 2023 07:43:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+vgMhqe6nZ36KWlAw7GqE7OGy8HLmyFJcl+C5ZmlDWE=; b=P/m1uXXzhT3sID
	yvfYBy/HgtGHCPbXGNzL/yZQiswmzpzCPHRbmOl2HS0+Ky6ko+RD3fcEp0esH9pHRHZuCNj8LB9T5
	fSuyCN3+4rHj8YSG+qwAMZiLfHXBQCyNXWF+EBhwfnQh+PsiMkIlqWniQ1JMlvdRWUSI4tyVOZyJH
	8JOlj2vmHUTLcvyT7BMOiUDGC/u1WdFe/OaXWBykyoROqGl1O1zkPsjGrT2obaTe5/tffapjSCcz+
	OOPf7fvYxi/iaqq0OThCoBu81BsiFpKGIjfrZ11/6gaNmSbU8Hkq5gIwUoLfEI6FrvRLGfxdx0J7k
	Exvw02JQ64BnOmhxIkUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pvvWe-00HVS9-0H;
	Mon, 08 May 2023 07:43:16 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pvvWb-00HVRa-03
	for linux-phy@lists.infradead.org;
	Mon, 08 May 2023 07:43:14 +0000
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-4f13dafd5dcso4588690e87.3
        for <linux-phy@lists.infradead.org>; Mon, 08 May 2023 00:43:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683531789; x=1686123789;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yjPjUX6thVjPgXrjPxb0/l9T4dtUU8406KHku7EBQZ4=;
        b=ZeKxaXoi5CHooTpR4LwMv0OIjiPAVGbKuZewfE3aRNaodtDtfO2QlRVHjksX1c37pe
         RufXVfDsYbhFt2KfxDvO3NXltmU/YnR7CdIynoLYYkwDCI2H+p3W4cm3zTUf6eZuyUB5
         T+9KadaAl5+xbhhlK8RgLakgaiagsphC5XWAZ+QyazYj/9el8lzFt6oymsoJUgWw2Phd
         UE+QLS6p0mwJcrtADU4/9f7KGP6n84tNWPYSACwlb0vhD4nrV4eF3wJ8HRgTjFjRlKJF
         uEmyZ1knxtGD+dwMavu00I7ZNPMAvT0RE5ssVZh7EhD9KCEKU8QvV4P1/fEXVl2f/ZIU
         bU/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683531789; x=1686123789;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yjPjUX6thVjPgXrjPxb0/l9T4dtUU8406KHku7EBQZ4=;
        b=Jjs8Glme+ngUAkFOsFYYluSyIhHu1SXTVHBpA4oSGCjxa5dSK3xDRbOvpdxEBjgQJf
         2iGbYZq8rzAmayV7QrNTqjMrXdNHhnY9skUNvmhsNAUz8Hg9FJyO/+seVPqXmknPqw7S
         lXgm3PvanmDFy0o13c3SaTgVneQdjUqc257yr9S+fLE7OMn10QEzwkjdRvX/J3eUyoJI
         G80ZLxuxd1ypW6RRzJwzohfXo67bKm3ez3UZD3el+9hyZo5ZJlPGOHHDauenRitD6uvS
         2arbCDs2E1djTtmr183lkdNcn7bkNpFS7uHZkX94tmRp8m+Ln0PklkRlMPPKxNwRnLdp
         zDWw==
X-Gm-Message-State: AC+VfDzjbMSbDt/2inoWaURax7tYcMvsrSDZFj7Fx007kARwUkcSr+ok
	bEPEtCMP0hCssOEvWOXG95LOYw==
X-Google-Smtp-Source: ACHHUZ7OaFgjePxKESMjrvWmiIUT6T7Lf3ly+wgSUjhBZGM66sMPyngZrO40+mH0uOgwwHHXIlA0SA==
X-Received: by 2002:ac2:5289:0:b0:4ee:e10f:8e5d with SMTP id q9-20020ac25289000000b004eee10f8e5dmr2573826lfm.4.1683531788938;
        Mon, 08 May 2023 00:43:08 -0700 (PDT)
Received: from [192.168.1.101] (abyl248.neoplus.adsl.tpnet.pl. [83.9.31.248])
        by smtp.gmail.com with ESMTPSA id r7-20020a19ac47000000b004edc9e9eec5sm1207616lfc.138.2023.05.08.00.43.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 May 2023 00:43:08 -0700 (PDT)
Message-ID: <272c9d42-a107-6743-ec40-cf934be12f90@linaro.org>
Date: Mon, 8 May 2023 09:43:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: [PATCH] phy: qcom-snps: correct struct qcom_snps_hsphy kerneldoc
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20230507144818.193039-1-krzysztof.kozlowski@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230507144818.193039-1-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230508_004313_079516_8F93AE83 
X-CRM114-Status: GOOD (  15.17  )
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



On 7.05.2023 16:48, Krzysztof Kozlowski wrote:
> Update kerneldoc of struct qcom_snps_hsphy to fix:
> 
>   drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c:135: warning: Function parameter or member 'update_seq_cfg' not described in 'qcom_snps_hsphy'
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
> index a59063596214..6c237f3cc66d 100644
> --- a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
> +++ b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
> @@ -115,11 +115,11 @@ struct phy_override_seq {
>   *
>   * @cfg_ahb_clk: AHB2PHY interface clock
>   * @ref_clk: phy reference clock
> - * @iface_clk: phy interface clock
>   * @phy_reset: phy reset control
>   * @vregs: regulator supplies bulk data
>   * @phy_initialized: if PHY has been initialized correctly
>   * @mode: contains the current mode the PHY is in
> + * @update_seq_cfg: tuning parameters for phy init
>   */
>  struct qcom_snps_hsphy {
>  	struct phy *phy;

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
