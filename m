Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80EDEC43334
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 10:20:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i/C9gBoMq8ePqQ/9scjBowciVmXQW/Pwzs0cPZ8UVUk=; b=o/bqEPwpwE+Km4
	kDNKNRHyrTVz0hS3DPyloCTzboMGbiSw4Txy6xD2Eu0NxHaCX6l6thjviIn25OsxUDg9+/KIHx3sb
	Tm9Y5GA2h6UOwGSesjQEjaT493ObvkTVkFdxm55UGxDbF58K8CEFfi/5KsKo6Nu51xdJjAXOJ+jZg
	vYpsVyTR3n6DoVeez/hOpP4NHxT4cXTUGLmwWgUh06DoOMKq+1a6GDoW/PvDMf7lQsg/GR5AmaRFS
	NHm/2AR+k/EeCyNoDUU85kap+vzehpK5cUY4ITD4cMVyoyb3phC31Ky1kh0CmnV67ihVgOOq/A4BV
	rr5CvMFbDNV/xePL2ONw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fft-00H8Ft-TD; Tue, 05 Jul 2022 10:20:57 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8ffr-00H8EU-Rg
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 10:20:57 +0000
Received: by mail-lj1-x232.google.com with SMTP id o10so3246100ljj.13
        for <linux-phy@lists.infradead.org>; Tue, 05 Jul 2022 03:20:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=/mmU3Wx1JlIcuJQsWUBY6wF04bFzuVZBMWftRGHu/JE=;
        b=Qr6cuvuPcBK+Fgstwz4GREMfZYaZ9mWaMh00nQJCeqbumLKuEK9eM/4lO7rrYhp5Zx
         iml30lPV8P5bSBtwsfQ+CR9so2br7r5VSgfcBTK7iyAmTRvu7QHwYO48vEn8VDUr6xFh
         Jg/V7tCUR5WliakG/O4dmZwskg9cyd8pzayQOalxlnvOtpr40tlvRiAavf6DTJcEgnIw
         H2x8j/pUnrTxWDrZE1FMOdW7W+01A/q5agf0/rpvQLhliVoCOCTPwQ1cKU3LEPGYT+xa
         aA9jkQuD+l4UOViQ0DT3vjM2izRHS/E8rkcK2aItsxH2lFEqDTOu/NTkdpisBxljZuco
         Mhag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=/mmU3Wx1JlIcuJQsWUBY6wF04bFzuVZBMWftRGHu/JE=;
        b=zv4q76hadGOfDVuve2fCOLzjVMPpDs74bTnb6ODhVkR4vj5M9eUI9b5/baqujpN70U
         v6ecASxbi7Kh9S1RtzWoX0dQldC9GncPn4qzbBbpaJMpAYZrkGpNB6yDrLDOQZoSdJj7
         Y1GamKzfkvdajKLIuyetX1a9Jhx5u97nKi7YzuYPTPymHNoBWQT+lsnR1EKa825EeHav
         bN8dxx9TlSRHLebhfTYnkJzIG/03b6TYrgCK03BFTRf+Qi90hUjN3gzGxW6qp4L7xYoQ
         guN+Hg9OZ5ILD8ktc28wsJjb3eLm3RduE54nGIJI1dDsNxIWk14PhO5beXI84nlChSyF
         N5iw==
X-Gm-Message-State: AJIora931pjYvegpn/M3i3xrUU0Br7lBxba2poi6rCXJlmePcYG0TfuL
	aiHOXRuWIhp3vMggTsJTFOKM5Q==
X-Google-Smtp-Source: AGRyM1sy1BAlaJYBA70syO2cxWxY/rOzAqoPb5lkAbBJ4uTalOaHpUBxuP9res7X63bZoHG9NAbOpg==
X-Received: by 2002:a2e:9c95:0:b0:25b:b58f:6080 with SMTP id x21-20020a2e9c95000000b0025bb58f6080mr18848968lji.441.1657016453379;
        Tue, 05 Jul 2022 03:20:53 -0700 (PDT)
Received: from [192.168.1.52] ([84.20.121.239])
        by smtp.gmail.com with ESMTPSA id b7-20020a056512070700b0047255d211f7sm5608253lfs.294.2022.07.05.03.20.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Jul 2022 03:20:52 -0700 (PDT)
Message-ID: <1fed199e-0eb8-a7a5-08a4-141694081758@linaro.org>
Date: Tue, 5 Jul 2022 12:20:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 40/43] phy: qcom-qmp-combo: drop pipe clock lane suffix
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
 <20220705094239.17174-41-johan+linaro@kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220705094239.17174-41-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_032055_941403_9F921F31 
X-CRM114-Status: GOOD (  16.37  )
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
> The pipe clock is defined in the "lane" node so there's no need to keep
> adding a redundant lane-number suffix to the clock name.
> 
> Drop the lane suffix from the pipe clock name, but continue supporting
> the legacy name as a fall back.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> index b266514ae9ee..7b2eb234cfc2 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> @@ -2558,8 +2558,12 @@ int qcom_qmp_phy_combo_create(struct device *dev, struct device_node *np, int id
>  	 * Otherwise, we initialize pipe clock to NULL for
>  	 * all phys that don't need this.
>  	 */
> -	snprintf(prop_name, sizeof(prop_name), "pipe%d", id);
> -	qphy->pipe_clk = devm_get_clk_from_child(dev, np, prop_name);
> +	qphy->pipe_clk = devm_get_clk_from_child(dev, np, "pipe");

Just grab first clock.

Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
