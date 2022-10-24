Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB025ECAAA1
	for <linux-phy@archiver.kernel.org>; Mon, 24 Oct 2022 13:33:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gMorHslVaEwvypoWWw8ypvC6ckIY4mLCx5+N1KurWrA=; b=OlK05EVOry2h4Q
	id5PbLEg5WJUDkFlA3w+eXuAW6IUhXdeFRO8rYATLG5g2HQsi6wjtK8+N4VFVdZ0zPY9WSBt3GlLx
	B/w+i3oigL73bN6LDod8sU4lRBqxaao0MVwyXytOiN7ct/JVSqGayKUMGFYvkymCy+bH1B945CrKZ
	0FWAhFrTyWztvFIUGJH6i+S8golFST/RA70EmRnPanxD30j8f4xYyBEIKUB1JQRG6wIANgURvJno2
	tgiraU6Po1blDjQAOlCJvSBRCN+XOi7mFzHfrX7GefDLUIVIJTtt6mybYedKtFxlR0ispOLxZ0ll9
	Rg0JPMqHHF731h9O2JeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omxZz-001j3C-9p; Mon, 24 Oct 2022 13:33:23 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omxZx-001j0e-KK
	for linux-phy@lists.infradead.org; Mon, 24 Oct 2022 13:33:22 +0000
Received: by mail-lf1-x136.google.com with SMTP id g1so16711395lfu.12
        for <linux-phy@lists.infradead.org>; Mon, 24 Oct 2022 06:33:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=h3gD1nv/Lrd3QPYB7fENBBybs/4CZXBub8RTxNrR1VE=;
        b=R8+rYfXyKsG3jqXrxTyd9WTnA/jEl9RpToVnSG3tIp0JL7QCoLT7as8ZUq5An9M8vf
         u+7Z1K6Jxrgz8EdRH2EiXGoyataMIf+v0Bp42RSps3n13iV/7LMepHJi8pGDyMESkNf5
         L7UEf66aU6voSvnpNe6H+E4HSWKiZdVCXJdz8e66KN2Vvr3BTo91hZxOs0AXeVUJSB+c
         gUSupI414Uvo8JtjA6Bcx0+1VWq7DokCUha0qS7TTgCqGcxJ0tjGcPnGrblkseoEYg6Y
         mqnV4YDIXe9yvY/OU8pmzzQKRRhFIcpHyRHEokKsJTt8ek5lDGHrhUR1M9vsEHWcS1Vj
         IV5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=h3gD1nv/Lrd3QPYB7fENBBybs/4CZXBub8RTxNrR1VE=;
        b=W+Jr7huPJ8UftOb8clgq8sRSBMA5c/ZJxG/hVlgP0BZfEU49XqVoN4gQCONNjOorvE
         ALRtGKfs/T4uDjHd3OBcYa0NCEV+s+W3mqt2oKIXnvze0et9cekmoST72Dib+CMT2Z1I
         /4xlRhR9Syr6yyMeO/VcnUOkag06YzDgx8oVkZVNF/pcQCd5diZHnH51tpuRXvz15cQL
         IkdZsAEVORgSWYG+Lt7qGWs94CFdcJM50JEBNxEcqWvPSUO3QEPJ8wo4Nw/DFYaGtFDO
         m0gCFQVyGyj0q3mix0RiHG1LtZR9+NEqY39zEYDPq2F6SK10iOxL49YD849yXknqD98M
         gUQg==
X-Gm-Message-State: ACrzQf0ZgN0BOBmbl5CAiYkWzAX4Um56bRwWDRjM2MHDHW5nXimPmw41
	9OcwgbIgJiqpW9DmNcNQE7+Ruw==
X-Google-Smtp-Source: AMsMyM6RAtit+Dc9aHBaf8KKnIDnNsKgiMqSjXSFrs+1CHsQZlQxAyKBab0q0Ycd5njTWflwY/UOEg==
X-Received: by 2002:a05:6512:150a:b0:4ab:11d7:4bc1 with SMTP id bq10-20020a056512150a00b004ab11d74bc1mr2149160lfb.447.1666618399373;
        Mon, 24 Oct 2022 06:33:19 -0700 (PDT)
Received: from [10.10.15.130] ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id 10-20020a2eb94a000000b00277129b4a10sm105072ljs.86.2022.10.24.06.33.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Oct 2022 06:33:19 -0700 (PDT)
Message-ID: <0fc47209-54c6-8bcc-0366-f6086d7554ea@linaro.org>
Date: Mon, 24 Oct 2022 16:33:18 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: [PATCH 03/13] phy: qcom-qmp-usb: move device-id table
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221024100632.20549-1-johan+linaro@kernel.org>
 <20221024100632.20549-4-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221024100632.20549-4-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221024_063321_699885_8D9CA665 
X-CRM114-Status: UNSURE (   8.39  )
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
> Move the device-id table below probe() and next to the driver structure
> to keep the driver callback functions grouped together.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 126 ++++++++++++------------
>   1 file changed, 63 insertions(+), 63 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
