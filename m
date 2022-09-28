Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC96BC32771
	for <linux-phy@archiver.kernel.org>; Wed, 28 Sep 2022 15:58:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q0uUeCkYlSiaNiRA8nOjJ9W+MTBA8Z+rdoJ2AtIryiw=; b=owDzv0TcDXdlZe
	9De8scLKt7vCjU4OQ92N/OkZH+20Q/mhQng7j7fxFW/Y+I5G3kb4IpBLxGXfFeU2susANKoEhAoxC
	TWO1csOFadV0E2NGUhMrmS5k0RPos0Kk4JeFhVbD2fd3IVflRCroHUiRXrmm8viwPX9Tadfut28V/
	Z9jpL7vJbzhK9G8XYb+EEpJ2M5km4sT4OXO8bWjjMiJEszI5bAbijWC4B2SWQOo7XEo6UXxZyGBru
	MkCzdnDb/O6K4egPHuvkAbTlV8wj4x64ypmRiDCjZ5DKDReUWDUZJaRmVjIYmw4wqS3YEbWWDgl9I
	dlwU9X7o34DaH0vhVJag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odZSS-00H16W-2q; Wed, 28 Sep 2022 15:58:48 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odZQP-00GzoR-RW
	for linux-phy@lists.infradead.org; Wed, 28 Sep 2022 15:56:43 +0000
Received: by mail-wm1-x331.google.com with SMTP id e18so8804154wmq.3
        for <linux-phy@lists.infradead.org>; Wed, 28 Sep 2022 08:56:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:organization:from:reply-to
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date;
        bh=dDShWwrvhx0VR1icMwP79MrRYhMPzc7W3e5rekv8htg=;
        b=t/SRZzjc+5jjgbhTwwdUCsFa3EU64WSIJ+bFwOqKGITlg+sfU0SgozLKTvFhuWxsDN
         cRl7ynGZ6WtdmxLib3TSeaOP8PGpwpDZdm0pyw6SNs8WulacjvbRbXAJKQN0D4sN+ADQ
         noe9yyrhD9j6tsrbdAsnpE6f6GaXW8UWt4aYiSY5bRmJxhx/O+YuGE4O/d+4rqPrMHdi
         XJG16oEqWQo/CjTKbfyIoUV7liH7ArOAmJvd3mkrrINEuQprfBCVi1x7nbjCvFGWENMX
         9WUDNiQIkgyqJbPl6+pu6yUzRWdaNjOVoyFeXNuFo+QbGpf3U2KnrqMuHJjvdJloW24L
         zLMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:organization:from:reply-to
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date;
        bh=dDShWwrvhx0VR1icMwP79MrRYhMPzc7W3e5rekv8htg=;
        b=GjJxxefX5zKD7mdLCJmjv6I9m7HMTYzaiMhwTIH/g5gl1mTV8WDk5uxIOTCIqsfPtL
         un0I49WP72z7YpEbUY2Re2LT4NomCkBEAKxqWJ5+WMuSw2NA7FKnxodsc0fbIM9Bmhc/
         rzC0OiLjmnNy79Lx4ls6Qp1h5N7/CthNaRbdfF5/WEN9R7YRC9Gn9sWyH8Q0aC0OjwkA
         yetsFROSxLx3Ndtho/qVrh8JAbr3JfkAh95CFTGBBFYX2MfkuOx5f4JVs00C/Xt9Y7ve
         fnk5DQMinLam6xkopSGbcAZvgN5JAxNBtxJ/IIlFK7AUtDKHgyHdbjzC0V9Vzo2vpL5y
         oKeA==
X-Gm-Message-State: ACrzQf2Duwe1FWTzs1IYh7ZiLI3bTipsmGyC3CeupY4SZT4gf7GKwdpj
	/E6WDqyCi9MG9N4J3wkmRIHIag==
X-Google-Smtp-Source: AMsMyM6N9kpPNaFjUA289IxvcNaZQDNnPPMbfwiV/i7ACz+D7197zZymQOiB8T2KkiqgSMUDJtLXlg==
X-Received: by 2002:a05:600c:1d26:b0:3b4:a677:ccc9 with SMTP id l38-20020a05600c1d2600b003b4a677ccc9mr7349169wms.121.1664380598283;
        Wed, 28 Sep 2022 08:56:38 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:11d4:7c71:accf:6521? ([2a01:e0a:982:cbb0:11d4:7c71:accf:6521])
        by smtp.gmail.com with ESMTPSA id t3-20020a7bc3c3000000b003b4868eb6bbsm2373519wmj.23.2022.09.28.08.56.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Sep 2022 08:56:37 -0700 (PDT)
Message-ID: <444c7905-6dfa-c4f4-f4b0-c92ee4a4a403@linaro.org>
Date: Wed, 28 Sep 2022 17:56:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 01/13] phy: qcom-qmp: fix obsolete lane comments
Content-Language: en-US
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20220928152822.30687-1-johan+linaro@kernel.org>
 <20220928152822.30687-2-johan+linaro@kernel.org>
From: Neil Armstrong <neil.armstrong@linaro.org>
Organization: Linaro Developer Services
In-Reply-To: <20220928152822.30687-2-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220928_085641_938757_DCD169A1 
X-CRM114-Status: UNSURE (   9.37  )
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
Reply-To: neil.armstrong@linaro.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 28/09/2022 17:28, Johan Hovold wrote:
> All QMP drivers but the MSM8996 and combo ones handle exactly one PHY
> and the corresponding memory resources are not per-lane, but per PHY.
> 
> Update the obsolete comments.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c        | 2 +-
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c | 2 +-
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c         | 2 +-
>   drivers/phy/qualcomm/phy-qcom-qmp-ufs.c          | 2 +-
>   drivers/phy/qualcomm/phy-qcom-qmp-usb.c          | 2 +-
>   5 files changed, 5 insertions(+), 5 deletions(-)
> 

<snip>

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
