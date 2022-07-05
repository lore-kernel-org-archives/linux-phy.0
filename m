Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D241BC43334
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 10:20:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xz1FVwxCNnENQld10SwG3vb8hnjZRby/acVVyRZZ18M=; b=Wog2B7+mUzPKEL
	m2n2U8ewi+fNVjC5fq8kBQM1TjF71en08Ke7tBERuNtjCbEqH506bcuVJ0IUGPCKPNvCitLpmVGe2
	GmsKFGFf3rkt+4Z47EhIYirlXucUQAb0/YXxYuyBHm6KfR9UCsJMrRcYynN+mtQMGLaGmiRD9QLx/
	VBMSprgthh2UQheMIPmiMuAnpZpdWpV2YZgITlaixegP4dRTDAjDMwXIVWf+KUjNRhUesmVjlobwD
	6F0D/YN1rDUnwhMUzwjHMP0av0+xY94/PbpAmY6a0G2/pwWipU2lLorWDC/lu4Dgf4nFXbgNfWaao
	iYKt5oGsnfM61+BtZWjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8ffd-00H8Aq-9j; Tue, 05 Jul 2022 10:20:41 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8ffa-00H8A9-U8
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 10:20:40 +0000
Received: by mail-lf1-x132.google.com with SMTP id a4so19828919lfm.0
        for <linux-phy@lists.infradead.org>; Tue, 05 Jul 2022 03:20:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=T2FSykbTV2E4OHdBjXQOKH96xW/Wt4fBDyh12Wd4k0U=;
        b=wriOUSl810ShuxxSrmpXg72RcW7CIYjuLYB0dvgRwI+U69FYJmuMslaW4rYL3GHg4Z
         J3zs9cDmjFc9/2FQZ0BU54XJebEjC84K99kAmuZr7EbEBtysf0K4D3ZtHjg80VhwLx6H
         okKUK0/FI6+s8VSRnxsJmGvWBY2RLGCtWBofMEnzjGyjz2vYmoL36Nb8heAkjiDApg+u
         T/rcc1sTBs/Dpd7HW54gl52ciTbrxsw5IfH6GeDfDAJ6sVo6H1aK3qt/gm7mfYn5NMf8
         FGvLDkg7/tMlmIdAzJnlTtWeIxZxCuqlHqgVLhugVIRBqh8nyzNLk3sGdLNuS2cwzbn9
         eJ9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=T2FSykbTV2E4OHdBjXQOKH96xW/Wt4fBDyh12Wd4k0U=;
        b=kKR+4d6aG4fBNzbAiS8FsxKGYgB5HKdg6wW7wbPPIfdq+kDfpgZvSjR2MFEIvSmx0O
         CSN0VXSfmMvjGXdcuju6Bn4Svv83B+FU4w6MDoaLdCQCneIkuiS6W73gBhp56yVLbrqE
         BP9kVLD9D45JYXeaidxKv9DgoxLxtr2+5BkIjf4Mo3OUfL5HJB41XrsXPIjqaoD+FzL7
         IxIR+MoC/EycrqbAKzrd/tArZOGn1uLFvNz5yOkPXpA4YrqOK9hD8C1HvVBO0bBf+C2H
         1nFzjaDFe4mKAJI8BVG4PLY7IhKP7lpHr+xH0QYSrgebLlBiIDrff+DyiwsQHDVA+74N
         y3GA==
X-Gm-Message-State: AJIora9IayjP6bk8Dyr1LjRKILlrznrxu/86JLm5pRmZS0nx8hojMDSW
	Ob+i6hqd2Jwe2GGIalwWknNSvQ==
X-Google-Smtp-Source: AGRyM1uAPURNjrcuseQ0j/CUQyF5c4qfoAV1p4sqrmYV21cGEiBcc1Zm6ftiO1WnF/1n6HZsiau38A==
X-Received: by 2002:ac2:5dfb:0:b0:47f:9dac:3bd7 with SMTP id z27-20020ac25dfb000000b0047f9dac3bd7mr21230732lfq.501.1657016437533;
        Tue, 05 Jul 2022 03:20:37 -0700 (PDT)
Received: from [192.168.1.52] ([84.20.121.239])
        by smtp.gmail.com with ESMTPSA id v9-20020a05651203a900b0047f74e4ade2sm5640015lfp.21.2022.07.05.03.20.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Jul 2022 03:20:36 -0700 (PDT)
Message-ID: <dcff330c-92ec-2302-8e2a-4ac124e72942@linaro.org>
Date: Tue, 5 Jul 2022 12:20:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 38/43] phy: qcom-qmp-pcie: drop pipe clock lane suffix
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
 <20220705094239.17174-39-johan+linaro@kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220705094239.17174-39-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_032039_020505_AD759CB2 
X-CRM114-Status: GOOD (  15.89  )
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
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> index 385ea3d8de08..254ad25591b9 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> @@ -2210,8 +2210,12 @@ int qcom_qmp_phy_pcie_create(struct device *dev, struct device_node *np, int id,
>  	if (!qphy->pcs_misc)
>  		dev_vdbg(dev, "PHY pcs_misc-reg not used\n");
>  
> -	snprintf(prop_name, sizeof(prop_name), "pipe%d", id);
> -	qphy->pipe_clk = devm_get_clk_from_child(dev, np, prop_name);
> +	qphy->pipe_clk = devm_get_clk_from_child(dev, np, "pipe");

Just get first clock and no need for handling any deprecation.

Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
