Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45D21C38A2D
	for <linux-phy@archiver.kernel.org>; Mon, 24 Oct 2022 13:33:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V3Hd7fz1NUNUTNWaVtW9VRQ+JMp6cZ9pSlxxwmiWoMw=; b=eCXgm8VtTF9Ufh
	Bi1AW/PP67SS61bP1Wt8ji9SfJLWlr2p1rCel2Ff5Eu9DFoSzgFNltLQ4+LbjslgNq4G8YxOyUP3b
	H7Z2Po0NAPSky+j+T6/HLT6ksvLJXIXtxahzQL3bIFcC6kMISYJ2v1YexaGcAb+agsXC/AWb+vQSq
	Ql7L6wdW8gy5AQUKqfkjwBIRHWFolNK9P3agBLiebfJQUAuXETL1/RgG9KwMuICn1Vqp1vXeNTao9
	H/w6zstx3sqvMsvJAXvpH3+dM7fhw+12bEYX1izWt/a7XOt7/fnoSgsd8mZgYtn3bOFT2yIoPdfJa
	TKGCMeWpGS5Y2fyerdIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omxaI-001j85-NS; Mon, 24 Oct 2022 13:33:42 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omxaG-001j6y-9p
	for linux-phy@lists.infradead.org; Mon, 24 Oct 2022 13:33:41 +0000
Received: by mail-lj1-x232.google.com with SMTP id d3so6324733ljl.1
        for <linux-phy@lists.infradead.org>; Mon, 24 Oct 2022 06:33:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OEFP8+56rR9PvuAAqNAvtloZrK4zeXNg7EvBCjIpJgQ=;
        b=Z+wojvNOo17B1XSeQtJq5/B77ewxu77Xa8OqTUUlzdoBdxgs2C9cGp1E71npftPZzp
         E0OoQYLS9WRNzX9AHLW5qOQWMB54EzRdQl5Hp8WUpgTFe0nptilBWJcpjUkVWqWUFQr7
         CFYdh0umW4F5rPD4qf7QCkQsT4A/t7fMdiqpEHJGblm9R/41bkZrXbHjl1sp85HmD51D
         sthw0wmVFzeUhwJW8EoCtXIxsGGfsNl56YZQ69kfnskiTGqnUmAS0p1WThONQtwfDCKd
         4jBgATf0ayOBwQzzZqX5LV92t0Zsr5KuQYUiEqOhiNB+TpakfqbY9Xm9PH2/1uHnLQvR
         sBkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OEFP8+56rR9PvuAAqNAvtloZrK4zeXNg7EvBCjIpJgQ=;
        b=h9s/l8XWWB8PneQoZml7iRzTik5G9FaLpOPPz12n7OmUQR9CZlrqaoLN0TTpBAcyXG
         2eeaenbciHLFPCPOTiBUnrJZjFeLeb062N4yOCjo1I2FzwrTQyHez7uHgMpJfaKqlMFa
         xgIBqgzR6xyJ/ZaQCJwOwV93Ha0bSlnDq+qeyuck8T1udL9EP6qWoYDAxcTWsU7bGbBg
         PJn6FUrbeHxZo9Y6/qb5+xuKbm9c/Bmepj9wkS3+40HIs1Wzo6HCXyrCzHRjyxucC9yH
         AnJyjNcNd9OZcVBnFJuuAljZztzumdHs0MbGPzJt01muya5Y/B3t5LWAVWWzeRuc/iKx
         5vrg==
X-Gm-Message-State: ACrzQf2k55zedLpA7x4CWUFGF2FavkmlUuAUaBS1/XjuumxJWB+VJRvd
	MBuFi5fqMx3IR6ZCWBxK/gdNpQ==
X-Google-Smtp-Source: AMsMyM4Hg7dpthJWZwkUnvoNsm8BSrOEizgPXzEPxmzDJocBi5HppPiwJ7HkmQ1KaardkYsiQuW7oA==
X-Received: by 2002:a2e:b11a:0:b0:26e:4c9:f7f7 with SMTP id p26-20020a2eb11a000000b0026e04c9f7f7mr11599749ljl.522.1666618418471;
        Mon, 24 Oct 2022 06:33:38 -0700 (PDT)
Received: from [10.10.15.130] ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id q21-20020a0565123a9500b004ac393ecc32sm329035lfu.304.2022.10.24.06.33.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Oct 2022 06:33:38 -0700 (PDT)
Message-ID: <0b384fd6-a72b-4975-7649-9376f193700c@linaro.org>
Date: Mon, 24 Oct 2022 16:33:37 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: [PATCH 04/13] phy: qcom-qmp-usb: move pm ops
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221024100632.20549-1-johan+linaro@kernel.org>
 <20221024100632.20549-5-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221024100632.20549-5-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221024_063340_372515_957BE12F 
X-CRM114-Status: UNSURE (   9.33  )
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
> Move the PM ops structure next to the implementation to keep the driver
> callbacks grouped.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 10 +++++-----
>   1 file changed, 5 insertions(+), 5 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
