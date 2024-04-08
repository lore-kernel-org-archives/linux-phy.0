Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D58A8C67861
	for <linux-phy@archiver.kernel.org>; Mon,  8 Apr 2024 09:34:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6R/XSLKdceI5BCYrg8jez/YHyU3rx1Z74xjWQ+dt2d4=; b=kJRR170tm9lKgE
	opNiKEbFbs+z+tfKwr8vnVnNkjjrYJfAr/z9UW29k0oq26CFwT31rT4gSDQIg4ZTgesif2Vu4H/2s
	09ETBU6F25x+18hlDmZiqNzrALzivTo+FfHRnIN4LhmVOggesN4rmqC4Fgd3iaM0+EOBGO9Rb9PTq
	kRv8JvwjWKzlW8ueQcL3ql/dHHRLvrlMSm+6LKLKS+O7QE9waCVnDOHdR30DjQNI/YHFImQdPtW0G
	6ixp6MqI+6sStNUehNRBDjp1hfNduUyme9JMURHb2z23paNmIrziNR8xXM9Iq1DGdsL6KAA0Fk1jM
	I5WDZL1h1mflqRW5eJ3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rtlOY-0000000F7AK-0HPD;
	Mon, 08 Apr 2024 09:34:30 +0000
Received: from mail-yw1-x1132.google.com ([2607:f8b0:4864:20::1132])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rtlOV-0000000F79Z-2YSB
	for linux-phy@lists.infradead.org;
	Mon, 08 Apr 2024 09:34:29 +0000
Received: by mail-yw1-x1132.google.com with SMTP id 00721157ae682-6181b9dc647so2465347b3.1
        for <linux-phy@lists.infradead.org>; Mon, 08 Apr 2024 02:34:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712568865; x=1713173665; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ccdZGemQtAOmH95htQ33GvCmGD7g1WiaWWMlzba2fiM=;
        b=UXLIOSpfGGj/EUL2r16dWSPm4W6ZwxwakstIlL6jK8B9GpvuBYG22wEBFQ/GmpJZj1
         C1SH6wuar7368rVtiXPujgwVJaL5IjWfOj5rrFUoeNGAaW4yi+uodfqvCLD/OiL75Up7
         RWX8GL1dC4ulmcxNzTV+1T0TaDa5tcBkIle+B8qtuLAocGXsLxu+UY6WGY+J4GhcKR43
         n83Ub74rR4aFeI2WxW/zz2uEBsRsNH6zr6DB/EzBvQZ7dhuBssbAZxdpxQ3EOCcYMwaI
         FT0LXkex0XRzr8uB3UqTxjCLhnLN3nLigN3lRMUpY/dJFx4Vzcz6NQhtZ3hm+0//P0Rm
         C14Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712568865; x=1713173665;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ccdZGemQtAOmH95htQ33GvCmGD7g1WiaWWMlzba2fiM=;
        b=M+3JwJFmVZnr6hL+ukO7oP0u6FEx5YsgS+rUrMmn3JKCWfolG8KHDasnxeQVf5oSGP
         tWkE3+qW54rcXwKXV4Z/KgvGE97fOKbQRT3Hwo1b0+6kshzgmxA27Gi3G7D+ZFqjuTC3
         Z1ge8/B1w6e6mxMy0XcNvJCDEqHnw3K5G/fW5/A7erESszSGxumlOU1M3h79jDA2u743
         cCiZ+Xom25BebfTdPhwNputUtTCZBdCdnou7INMXPyHF0ET6zGJ1rwCHKLkz38FLrNPE
         l7F4gzVTxRulHW4AGfr9vXUvCEH6YZWI+6qOP+KCovS3OwMYlZFZL03Fv2vlel1IPxQJ
         P2ww==
X-Forwarded-Encrypted: i=1; AJvYcCVE4zUqBpQnzovzdotR6x8pHv+lba5rglJl5zH55ZYw0veNO9IheCFSMAbo0x7gGWQIa9Gw8Hjx5A5+DxMMVR+S5gRc4tU5axRqTIH1+w==
X-Gm-Message-State: AOJu0YzZEHO4L0GSE8QVW65di/IVfVgVqDTbqSsT58MmXqFslDmUKz5o
	1eAULzfdS8osEw4I3MfNNHHCX5sQSnSAClNwnFjMUDLnU33LUpWOYMRU9lLSzcXO01Cvsp4pXnD
	xtSfjpsZyX7LG4n3mxH0ovF2TKfi19R7XkCxz0w==
X-Google-Smtp-Source: AGHT+IEeD23qNLKI4LzgG0ATSfJAy0faf9nFICLsUBkFLtFuNSQXk1zU83q6cji04DCofUDq/+oONg6lZ40XGPwiIJg=
X-Received: by 2002:a25:aea3:0:b0:dc6:d093:8622 with SMTP id
 b35-20020a25aea3000000b00dc6d0938622mr6172768ybj.15.1712568863856; Mon, 08
 Apr 2024 02:34:23 -0700 (PDT)
MIME-Version: 1.0
References: <20240408093023.506-1-johan+linaro@kernel.org>
In-Reply-To: <20240408093023.506-1-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 8 Apr 2024 12:34:12 +0300
Message-ID: <CAA8EJpob42m4p_REGyjpM2KrdE02x91pGgCLGVhpW_i1vXSScA@mail.gmail.com>
Subject: Re: [PATCH] phy: qcom: qmp-combo: fix VCO div offset on v5_5nm and v6
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	stable@vger.kernel.org, Stephen Boyd <swboyd@chromium.org>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240408_023427_684108_721FEE73 
X-CRM114-Status: GOOD (  11.40  )
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

On Mon, 8 Apr 2024 at 12:30, Johan Hovold <johan+linaro@kernel.org> wrote:
>
> Commit 5abed58a8bde ("phy: qcom: qmp-combo: Fix VCO div offset on v3")
> fixed a regression introduced in 6.5 by making sure that the correct
> offset is used for the DP_PHY_VCO_DIV register on v3 hardware.
>
> Unfortunately, that fix instead broke DisplayPort on v5_5nm and v6
> hardware as it failed to add the corresponding offsets also to those
> register tables.
>
> Fixes: 815891eee668 ("phy: qcom-qmp-combo: Introduce orientation variable")
> Fixes: 5abed58a8bde ("phy: qcom: qmp-combo: Fix VCO div offset on v3")
> Cc: stable@vger.kernel.org      # 6.5: 5abed58a8bde
> Cc: Stephen Boyd <swboyd@chromium.org>
> Cc: Abhinav Kumar <quic_abhinavk@quicinc.com>
> Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c     | 2 ++
>  drivers/phy/qualcomm/phy-qcom-qmp-dp-phy-v5.h | 1 +
>  drivers/phy/qualcomm/phy-qcom-qmp-dp-phy-v6.h | 1 +
>  3 files changed, 4 insertions(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
