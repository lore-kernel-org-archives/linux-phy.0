Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3AFF5C4332F
	for <linux-phy@archiver.kernel.org>; Wed, 19 Oct 2022 13:52:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1rDmeAslyRJSOMt01gHGP7DCLma7Gs85GLNjVVbaFPo=; b=XDMenHVWVInPaR
	oRl1GJeI6tFSMdLKWTSHdWfCQv7OEpQYxyWzIeG7oW5XcA04+3SGkESobfVF5AQK5o/1h4x8x00ny
	TSnaeWbWrdFJJgeNuArLpAdqqvRn2Ia3wMUG+5d4BOgX63ybKewyImryVAIe3Gyc00I9oCO80HKq6
	7qt6NGHPX95cdvo9goLCBZSW1ofq1uWeXSF3dMBOXp8FMzpQL+jquo4Muq4XK9ImUMLLgz3ZPQjyw
	QMdUy1YiX5U/Aj5sOEakHDuqg1aXetPDSc69bl1N+XM+bIIN77C08dyVx1Wx4/9DuqNxVDgh75Xa4
	kQFGJmRdxtqv3XFseczg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ol9Uq-002Km9-Md; Wed, 19 Oct 2022 13:52:36 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ol9Un-002KcP-M4
	for linux-phy@lists.infradead.org; Wed, 19 Oct 2022 13:52:34 +0000
Received: by mail-lj1-x234.google.com with SMTP id c20so22270193ljj.7
        for <linux-phy@lists.infradead.org>; Wed, 19 Oct 2022 06:52:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RknYa2NABgYYHyJknMjUhYiHTu2aqnADkUkC2x00Z/k=;
        b=yVyYhg2zBMm+7w3lS+wQf7QQB6OxkvKhhDBuAPYoaZ7jD0KpwgQm287TcPFHMwTTkE
         jryok8brz3+crpof1k38RGlYAy8EknTf68wgzwJcnn3FBydmHK77NIq8gst0QpljcDnr
         lEQvShh77tEZtVCe8fl0GZnP2mCH81by5zLhTlqbuLfUx0UpnWcovEmz96yWNOv810Mr
         lQfdoKcRbsxklj6SU8zBtJVkDk9ttPpnKVB3WgOpCeAy6PAWmY19KZnVd68/6dOt51tZ
         ZrVbOIMPqosRKsDK0eA3b5vgFTfilJ2lUvoaaulDneOt2wSZ4l6ggS6O4BHZOrnDLQIo
         1jyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RknYa2NABgYYHyJknMjUhYiHTu2aqnADkUkC2x00Z/k=;
        b=Vrk1rHWnDLg5zSEs1jvWEGofqNF/PsD7PD9n85W8CI5GnAXOvtNdPAxkW0pjqYQKCr
         Cg/4PUUEvLdbL3U/nNPgaYsuiWptipfPQrpKNhVFFg4CAh7NodWZVi9GpVT14+qXK7Ks
         rnQEJ3+0f3GJF2lmzkGDkooZSTrSvB1sL7EbLhoy1QP/LINP5hF0GiqC2e7Wp9FDJcdT
         9waCDANPqes3SdZDFCaDeK3RJTNFVJ9xh3f4bqqRgKsJoJRHela9NVg5ZHwuq7WUSJBp
         K42xq8f+pNNKd2lRYNCP3lJm0j5kLF/4vemKBEjc84SwRmoL/EmDKkxwajaMNolpKHBR
         4mbw==
X-Gm-Message-State: ACrzQf3OEiR85PuY3vgVEBQ56NALBt+FTOfGoJmo4bPryd8jy7M99SOj
	kQkp9B7P57TU2doOIWmHI7Fp1w==
X-Google-Smtp-Source: AMsMyM7XIZU0I24cerZGyqqlXQ/1nBl3l4sFmHTpzgGVDmR0GJjUQ91snFjYNIxrUZWHEFwuHqEW5w==
X-Received: by 2002:a2e:bc0f:0:b0:26e:15f:51dd with SMTP id b15-20020a2ebc0f000000b0026e015f51ddmr3021059ljf.118.1666187550011;
        Wed, 19 Oct 2022 06:52:30 -0700 (PDT)
Received: from [10.10.15.130] ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id t17-20020a056512209100b004996fbfd75esm2298842lfr.71.2022.10.19.06.52.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Oct 2022 06:52:29 -0700 (PDT)
Message-ID: <02a879d4-cc7a-ca8e-7334-755873baa3e7@linaro.org>
Date: Wed, 19 Oct 2022 16:52:29 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: [PATCH v2 12/15] phy: qcom-qmp-pcie: fix initialisation reset
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221019113552.22353-1-johan+linaro@kernel.org>
 <20221019113552.22353-13-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221019113552.22353-13-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221019_065233_758826_693A55A9 
X-CRM114-Status: GOOD (  19.01  )
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

On 19/10/2022 14:35, Johan Hovold wrote:
> Add the missing delay after asserting reset. This is specifically needed
> for the reset to have any effect on SC8280XP.
> 
> The vendor driver uses a 1 ms delay, but that seems a bit excessive.
> Instead use a 200 us delay which appears to be more than enough and also
> matches the UFS reset delay added by commit 870b1279c7a0 ("scsi:
> ufs-qcom: Add reset control support for host controller").
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> index 2f4bdef73395..9c8e009033f1 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> @@ -1866,6 +1866,8 @@ static int qmp_pcie_init(struct phy *phy)
>   		goto err_disable_regulators;
>   	}
>   
> +	usleep_range(200, 300);
> +

If there is a v3, I'd kindly ask to add a comment about vendor using 1ms 
here.

>   	ret = reset_control_bulk_deassert(cfg->num_resets, qmp->resets);
>   	if (ret) {
>   		dev_err(qmp->dev, "reset deassert failed\n");

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
