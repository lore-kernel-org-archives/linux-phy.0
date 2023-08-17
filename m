Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8AED4EB64DD
	for <linux-phy@archiver.kernel.org>; Thu, 17 Aug 2023 10:06:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qsw3fAhEatXseNkcd0NIABp1YzBx9DQhNRin/zuUmiE=; b=L74YRNat4L2bnU
	Q22aDjNfd6u9+AnmxuEv4+XOcGLC6j2RbOzeGhMOZ1hLbwg25ES4b+X265XPpuOs6zCCAmP04e43V
	gqbKXXchXs/cu9QTzlPH0wAfJskpTAtfDRU40/wWFbP9QMaeGlZ5J00vr95ULEDTf2D3qckjmW6ao
	UDpVF/7u7G/Gsmp01NAmIf1mQgclMpj5SFlok/tpT40vE2014Yv5zslxpv4qiY732yQufHXhp9LLX
	7/lcyYKWYL78TSQW7ko/FJdRVtUtpb2YHexCqW/T/Do+2ysfMYCiVrYkYUYqz0A84lCX1tu3wvfYZ
	CPGWoWY6YnANWVkdSndw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qWZtD-006073-0r;
	Thu, 17 Aug 2023 10:06:03 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qWZt9-00605t-2X
	for linux-phy@lists.infradead.org;
	Thu, 17 Aug 2023 10:06:01 +0000
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-4ff975a9318so1518758e87.2
        for <linux-phy@lists.infradead.org>; Thu, 17 Aug 2023 03:05:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692266755; x=1692871555;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tU1OBnu/6KxECDpM0IzJ/SgAaQcKe+fJT4+4ZHxLk2k=;
        b=o7F1Q+VWc8vFZ8O6jibK3igZE8P/juYrKZZGxZfHPCtZBv/VveZyfn2blr+KinpS0o
         BYsM5RQa9Vekp/1Of4n3WHI72P6R+VBCXIzL5Yi3nCjm2jApUfXOmZlRYSd+ZatQl74B
         zwx2QQ/0hyQmoRvj+dizVxULpy3Jv0KL2KKN2sLlRLZAsUPN5rZSEKR/fa45rOL3eITm
         DdbedVuyXLZRQRRpKs0GVKJnwxH6dwrvNmYoBZxTDgmUCbGryeK2AEgtL2GXtv2VOHlt
         NUudH9bgGBCVBbASmSZtGH/P42s5t2qkTN2BZPq3kWaEIv2CV3PIq6FkbGqknTCjIc6G
         +xyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692266755; x=1692871555;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tU1OBnu/6KxECDpM0IzJ/SgAaQcKe+fJT4+4ZHxLk2k=;
        b=UczwzqGNvVExre+8MI0GeqWHKwxiIAUro554e/Al9dXvu/NwFMlvxyhU+f88M9QwOx
         0rWgTnfHDCBkdTZP6Wxa0t/oyrq/ow9awqEzi0fcgaDb7fkPFyQkqCoi4xh8dIf3Dvk4
         r0wYb/fU5LpanTpFzMNhhIl6HIeo21v7k15cA0ZqH9DgYgYQpQM47SO7Iz+UMvLdf2GA
         WV3PA6VwQK3VfwUVt6935ZNnotmvGr2wPwoLqXQBTHJLs8vDBwNViqONYZYDgG3KTRg9
         NaQdjKYOCHpe+2LDbPyS08E/fzJDLVuCVVORFUi7PUeoZZsnx4uhNNSt7LpXTM6ZMt+n
         feFQ==
X-Gm-Message-State: AOJu0Yxml1mDV9Rp0UTB0GIQ+hkDi+V/Sam4VU5BCUDqW3cRqoNbAH6A
	50psBYpxj9fnDfnKThdn+UaJyw==
X-Google-Smtp-Source: AGHT+IFCG5Al/QsWgxP4N4ZeswwQ4NoxpW9761uM5QnL5lXermAgUtYjDUWYz2a42K4cgDwfPj70ow==
X-Received: by 2002:a19:915b:0:b0:4f8:8be4:8a82 with SMTP id y27-20020a19915b000000b004f88be48a82mr3310881lfj.22.1692266754892;
        Thu, 17 Aug 2023 03:05:54 -0700 (PDT)
Received: from ?IPV6:2001:14ba:a0db:1f00::8a5? (dzdqv0yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a0db:1f00::8a5])
        by smtp.gmail.com with ESMTPSA id h24-20020a197018000000b004ff9ab6463fsm276653lfc.87.2023.08.17.03.05.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Aug 2023 03:05:54 -0700 (PDT)
Message-ID: <c485b64e-3c83-4616-b8d8-76c2c7d56b0e@linaro.org>
Date: Thu, 17 Aug 2023 13:05:53 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 2/7] phy: Add HDMI configuration options
To: Sandor Yu <Sandor.yu@nxp.com>, andrzej.hajda@intel.com,
 neil.armstrong@linaro.org, Laurent.pinchart@ideasonboard.com,
 jonas@kwiboo.se, jernej.skrabec@gmail.com, airlied@gmail.com,
 daniel@ffwll.ch, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com,
 vkoul@kernel.org, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Cc: kernel@pengutronix.de, linux-imx@nxp.com, oliver.brown@nxp.com,
 alexander.stein@ew.tq-group.com, sam@ravnborg.org
References: <20230808083243.3113192-1-Sandor.yu@nxp.com>
 <20230808083243.3113192-3-Sandor.yu@nxp.com>
Content-Language: en-GB
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20230808083243.3113192-3-Sandor.yu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230817_030559_862397_0046DBF5 
X-CRM114-Status: GOOD (  10.82  )
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

On 08/08/2023 11:32, Sandor Yu wrote:
> Allow HDMI PHYs to be configured through the generic
> functions through a custom structure added to the generic union.
> 
> The parameters added here are based on HDMI PHY
> implementation practices.  The current set of parameters
> should cover the potential users.
> 
> Signed-off-by: Sandor Yu <Sandor.yu@nxp.com>
> ---
>   include/linux/phy/phy-hdmi.h | 24 ++++++++++++++++++++++++
>   include/linux/phy/phy.h      |  7 ++++++-
>   2 files changed, 30 insertions(+), 1 deletion(-)
>   create mode 100644 include/linux/phy/phy-hdmi.h

I think this looks good now, thank you!

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
