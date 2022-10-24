Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5A9EC38A2D
	for <linux-phy@archiver.kernel.org>; Mon, 24 Oct 2022 13:35:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WVAM5rs0yMJOkvbob0Ps/QPNw1FZJqAJHjphjR2/rVo=; b=OcG9x+1psRwYXZ
	nnWuqB+TT/jj5X++5LIv4D5eKBb7PK3pRhxeWgflV8aVKs+y+UVseQVwLEFNW0Abc/hv6PB5nanHe
	goJBzM8N2xCnco7ft7bjM9SJUby++ZtqNw6esPoNf3pmeGppfGZh3aN0neTMJGCuPlMVnwAbzf1zr
	OKAPsigl4YJMt150J7GkFxohdqzW8KkQ9pCBCsONtKlC6itEZ1j0STWpQIZVmK42NWKRDcYqp0GcQ
	sDoo8EIqmDTVTt5Zn3bBV+2OJgmtzYTpzGmtrEJjIRteEWkC50/t767E73rRN0p1etXBryiyO3fyL
	pPQNOtlcpck0qrLSIUrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omxbe-001jSm-6X; Mon, 24 Oct 2022 13:35:06 +0000
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omxbb-001jPk-It
	for linux-phy@lists.infradead.org; Mon, 24 Oct 2022 13:35:04 +0000
Received: by mail-lj1-x230.google.com with SMTP id bs14so12811779ljb.9
        for <linux-phy@lists.infradead.org>; Mon, 24 Oct 2022 06:35:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fx5nJYBC3Q8DnGw9StujAKQsTNCS9sjAujJ7iNJnrTw=;
        b=jiOWMKP0eMVkW+a+y7F8YqwZrvDEtSXBDMBTZDaeAJd0kaBcpKkzaVXT5BlggRvChq
         PgfumTjH0RCxMyx2pyMVlX9LMq4mGfogusSmzzwc05Ug477Ou5kKYW43pGO2Ah6Lfdmm
         iW9WWsUd5t4rzqDw9jhudGnMX9NcdJ175nTA2AggsKczbb+dNsZqbNH6VeR6Trqwz40i
         gYvtOOAEiKH3Iq+1iwN4CHpsHWrfn5yo5GUZmrmgUdpMUuCeJpWTPbvmsk6m1UpSoHH8
         1irTx5Bo3CPHj6gFWlPWLWEC06tntbOQhEYXZPsGhrkguebYGxvWdJyAqyl5W+nI5l9e
         24Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fx5nJYBC3Q8DnGw9StujAKQsTNCS9sjAujJ7iNJnrTw=;
        b=412ggyXaHNHKxS2Ue/5CxJ7/hggwNwm0Ii2/I8uKyhjnpZoFhkyRebX8N+SETBFwsS
         Q00Rf+rP5RQKY0W9uQn3tsFi8PcGTRxbpnb6HAkT9WxiMfpdh6HvUtTiB600o8CE0yo/
         3SpKYtSwr2UHQMux5W2Pe4qRx/sd5m5g9bDSFG3R13gFKx1eqxxKcJxzmfKsdTH+7kZ2
         lPu0nsbMW1nNhFOHroPCmltSQlFO0XSN8R7BqtGZchxvbLOu3n6KsWa+N0bJ4KoDU3WI
         2uHzz/Li2sKkpYMwqyWjQp9WB9PuTf5aZ4huxhpBxsg/qk6AmS/i5CS0Mn0p+GbR1xPQ
         QK0Q==
X-Gm-Message-State: ACrzQf0OsKE+LgbQlLqLRidqLcwr6GfdDGNA8SY2XRI9yrWUDW59wYf4
	0pnZeqBUG2ee1sKl5CdxIpsGeg==
X-Google-Smtp-Source: AMsMyM7tA0XW4v5SToFTS92Ia64U7XEvhJ2pV2o2X1l42GgkeRZpOXOVYSgCAoofODCrAMzUqPf4XA==
X-Received: by 2002:a2e:8743:0:b0:277:10a8:3e8f with SMTP id q3-20020a2e8743000000b0027710a83e8fmr717491ljj.423.1666618503109;
        Mon, 24 Oct 2022 06:35:03 -0700 (PDT)
Received: from [10.10.15.130] ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id t9-20020a05651c204900b002770f0a742bsm308578ljo.41.2022.10.24.06.35.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Oct 2022 06:35:02 -0700 (PDT)
Message-ID: <a42527fa-f34e-3c4e-7b34-2963c4675668@linaro.org>
Date: Mon, 24 Oct 2022 16:35:02 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: [PATCH 12/13] phy: qcom-qmp-usb: restructure PHY creation
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221024100632.20549-1-johan+linaro@kernel.org>
 <20221024100632.20549-13-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221024100632.20549-13-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221024_063503_654947_618C6C65 
X-CRM114-Status: UNSURE (   9.43  )
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

On 24/10/2022 13:06, Johan Hovold wrote:
> In preparation for supporting devicetree bindings which do not use a
> child node, move the PHY creation to probe() proper and parse the serdes
> and dp_com resources in what is now the legacy devicetree helper.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 46 ++++++++++++-------------
>   1 file changed, 22 insertions(+), 24 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
