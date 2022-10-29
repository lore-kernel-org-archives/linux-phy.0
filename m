Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 798CBC38A02
	for <linux-phy@archiver.kernel.org>; Sat, 29 Oct 2022 21:55:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3RijQe9VPE+NErHS4ISlQtule0O4brhDpqNqGPKbl1E=; b=KYNmygPIac+oJV
	1HBx0edOYcHYmjclpjL2Oozz/uvi4p0E4Dp5Ihq8Ml4BYNasqA+btj70pFw9O7KqvEGFsbR0Xh8GV
	59811DifhLFmYiBD5iCXECobmn7HpdQfDNjICf91JrxKNcm29/yAalQtMGvg/FxCAbdIfy41PIp+U
	8TwDDXRnPoDmSyFzV1xJiRvKi9B16LecGtSMptkGQygVh5uKL2CCgvKIwuqpMxDegsylCndPa8A45
	vLeVmri7Cku14bv7LpvzdWjBedX7ZSBA0lj/+zPhYCgZ7ZAn6bIdaltLh8pNS56RBilBtD4aGZBz4
	Ttsr9qMnMgMbSKFR+uiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ootnc-009lrw-Ps; Sat, 29 Oct 2022 21:55:28 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ootna-009lpV-5O
	for linux-phy@lists.infradead.org; Sat, 29 Oct 2022 21:55:27 +0000
Received: by mail-lf1-x131.google.com with SMTP id j4so13728619lfk.0
        for <linux-phy@lists.infradead.org>; Sat, 29 Oct 2022 14:55:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Le96TyoqyO71hKPmwsgdDPSUks7KkDNO+FXyFgbR+3g=;
        b=sbHJ36rFVY4oQZCenM07QFyh3SZOEdZEzvFWTjW2Mjr1Hcnc4TEFY8rB9sRSvlkVKi
         2lQsHeXZTZTwGHiiMW+YPJ6r8L3yPF4e2O06nR1dh7tNzgyaIV9dTEzs2iE+uT2dQhxQ
         F062b7WDs9eWWmPBOiW1cgS6M1hVrnzJXfaH0UPQwkcrQHXPpfIr5po/VF+5kXOrk5NR
         DdLd24xG1l+eRxbOjBdELvUEZrVVS03/WQ6xnPuCqZ9fWX3eevZKzOJUl7LcYuMZnmTN
         /Z8vTKN2tGs4AplKatysFqKksTPJyFKyVtL6xhCjUBOi2+oGNx4qf6HQJkzUkGg1UBLI
         Ow8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Le96TyoqyO71hKPmwsgdDPSUks7KkDNO+FXyFgbR+3g=;
        b=2hyYAmX4CUwVIuYKAW7MUN7bGOwVMQHDNs1o+zKck4sF3LBT6SzExZYtkPiXB5Vk7n
         GD8Hpy1Ly2m+5zCPruEfwxGb70DtBIFKCKM3HN97vkbL4Mp76CQl+MiV0FfIjKR8yM4p
         gKMy4ZmU9H/6QWTheJHfaim2Tpu0MH9c6y8yM4sf719hSUcHazySEorJ0j+EwPhLfzfQ
         cxMiYIYGVwfsg2yGo0eSmXglEg6OcCZzxL49olIvGZDkDgFDo3FG06OrLeS29nYUOfWA
         bBjqpSTRBMMq7MhxiStz21JatYkvXi3CELMhH1XhdU9ZiYBIiqiiPzF9gIQz5IX2NdGL
         5UXw==
X-Gm-Message-State: ACrzQf0Kw9hCgh5KwzXG/KYwc/2ciCMttmBBVf6NwsmpyVzVuO/RnQOB
	olb1u+g8MuzB0h2o7ruS0N8s5g==
X-Google-Smtp-Source: AMsMyM5n2PVpu+QWVVH0p9VTTSfKpEiBaC5qyqqiq1snd0Dd0+9gKSYHIrqHWQ2AjBmXYNxgqW1jcA==
X-Received: by 2002:a05:6512:10d0:b0:4a2:ad92:2990 with SMTP id k16-20020a05651210d000b004a2ad922990mr2450129lfg.276.1667080524206;
        Sat, 29 Oct 2022 14:55:24 -0700 (PDT)
Received: from [10.27.10.248] ([195.165.23.90])
        by smtp.gmail.com with ESMTPSA id e17-20020a05651236d100b0048af3c090f8sm459554lfs.13.2022.10.29.14.55.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 29 Oct 2022 14:55:23 -0700 (PDT)
Message-ID: <e02498ab-f4f4-d7ec-dcd8-9340d301f572@linaro.org>
Date: Sun, 30 Oct 2022 00:55:22 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: [PATCH 04/15] phy: qcom-qmp-ufs: Add HS G4 mode support to SM8250
 SoC
Content-Language: en-GB
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 martin.petersen@oracle.com, jejb@linux.ibm.com, andersson@kernel.org,
 vkoul@kernel.org, krzysztof.kozlowski+dt@linaro.org
Cc: konrad.dybcio@somainline.org, robh+dt@kernel.org, quic_cang@quicinc.com,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-scsi@vger.kernel.org
References: <20221029141633.295650-1-manivannan.sadhasivam@linaro.org>
 <20221029141633.295650-5-manivannan.sadhasivam@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221029141633.295650-5-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221029_145526_256225_FB4622E6 
X-CRM114-Status: UNSURE (   8.28  )
X-CRM114-Notice: Please train this message.
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

On 29/10/2022 17:16, Manivannan Sadhasivam wrote:
> UFS PHY in SM8250 SoC is capable of operating at HS G4 mode. Hence, add the
> required register settings using the tables_hs_g4 struct instance. This
> also requires a separate qmp_phy_cfg for SM8250 instead of SM8150.
> 
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 68 ++++++++++++++++++++++++-
>   1 file changed, 67 insertions(+), 1 deletion(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
