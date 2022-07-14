Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56644C43334
	for <linux-phy@archiver.kernel.org>; Thu, 14 Jul 2022 09:27:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qdw4Tq5GKfG/EtG7mK/ZK/6ix6iIvUnBIHMkzMrWFyQ=; b=Ge3j88ovJA/spu
	KeqYBdREyVk5incp73Oqn7R3W7BOJv2hk43qgaLNeyJ4N+x1Im5BEwJrH7g1dmDEC845efp9IusJ2
	Uq49pxEnzLtF18ER9I3ZS7kNRnsl+fqeDoKy1/+QGm2PEsfyYGlTZFTAUY/k6GyeEyp7UFeh7B2S3
	Q9aFfweC9YjgYPxeCl96dYlynjRDcx97svk409GQKAWPj4js+xzh1etIn69iHPkyq3QHHMVx2T+XK
	dOPr8aSucO2RPmmxD4hWBCcMHGjtBegzj1bzpTf2RGj/1T167ZjIt2YUF6NvDTjBQLGoJhzHvyR4a
	qawLCZm2uvpeyTOQvXfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBv8N-00Cpf7-MO; Thu, 14 Jul 2022 09:27:47 +0000
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBv8K-00Cpbx-UW
	for linux-phy@lists.infradead.org; Thu, 14 Jul 2022 09:27:46 +0000
Received: by mail-lj1-x22e.google.com with SMTP id x10so1001016ljj.11
        for <linux-phy@lists.infradead.org>; Thu, 14 Jul 2022 02:27:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=5kERBfu2u0yQifkg6NJHXWKfySdIdi+/ghX35tJ7sns=;
        b=ZD/rQ7+fU7naryuvlDTHSHK2WIkXmueWVrFilteyC14gChElaaePf6ptschFP+oBNg
         FFbiOYXdlXVtR/YFcY4cpSZx84Lb0V+QzyvtQEI8NTHqz4VBYw2U53o17LfujM0xwRWc
         Da7c+3FbwC34Otb+ie6jqUJliW6r92HGVWVBi5fcJee1FU2CSKOHBV9jDxuut5FxcMDr
         rHV8jnNqLz1IdfAY08kjdKeDkwWinpidL6Be0W1Y2E3RKvto5B6AF1Hrja80SW33253i
         TYu2ITeJUSxLGijI5BF3Ug8R7JUkJNjmiK567hl0IWZ6YUfbqZdfmWIkU8gVmRC9c/Vq
         ulOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=5kERBfu2u0yQifkg6NJHXWKfySdIdi+/ghX35tJ7sns=;
        b=fgztda1TEbUNS0zE3/nrIJevbELPNXwkUlO9v2014DdZvbvEYPFk93naL3fP5bpuXE
         1tmqTYAXAa8OUOAnMSBrU7ZskZnI6NTC/vg7hzz0p0jov/fX9UxfRoae7xo6wmf2QkHA
         qTxiP3eqFS3yUvgS3N7MWYp7Q6PjI64wb7ezghueIpxaQLQRjwh2Y+D9LLDdr3iJgQAV
         iabLCbqXnGMWo+dV8933hhW9gON+nX0+656Qob3yal3L/vtI6Guob42R6D10TiWBtgPF
         t+A36tXTsdmZZxYyvKyK+tUuYT+ZLeAQtGywtUMxzbjrMDf6jeUg4Y0J76ECSzNTj/49
         NZvg==
X-Gm-Message-State: AJIora/NPvq0eo5VmDhluGgC83KeUllO2U+XfKU8o+zd+4azzXJrToE7
	hMDUYqMXf19ph2nC3onJVi1dAQ==
X-Google-Smtp-Source: AGRyM1sLRCOfta1n0D/DoStdCTk99jtmvBTjUIbBApC3ZbGXq7Fcamvwx+mghBTI2BNoJd8SWvVL2Q==
X-Received: by 2002:a2e:8850:0:b0:25d:6777:3156 with SMTP id z16-20020a2e8850000000b0025d67773156mr3878547ljj.106.1657790862361;
        Thu, 14 Jul 2022 02:27:42 -0700 (PDT)
Received: from [10.0.0.8] (fwa5da9-171.bb.online.no. [88.93.169.171])
        by smtp.gmail.com with ESMTPSA id q9-20020a056512210900b0048905c6103csm261418lfr.9.2022.07.14.02.27.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jul 2022 02:27:41 -0700 (PDT)
Message-ID: <704147ea-3f8f-4a4c-7e21-bde919ffbd76@linaro.org>
Date: Thu, 14 Jul 2022 11:27:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v2 24/30] dt-bindings: phy: qcom,qmp-usb3-dp: deprecate
 USB PIPE clock name
Content-Language: en-US
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson
 <bjorn.andersson@linaro.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220707134725.3512-1-johan+linaro@kernel.org>
 <20220707134725.3512-25-johan+linaro@kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220707134725.3512-25-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220714_022745_016196_9BDF61FD 
X-CRM114-Status: UNSURE (   8.90  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 07/07/2022 15:47, Johan Hovold wrote:
> Deprecate the USB PHY node 'clock-names' property which specified that
> the PIPE clock name should have a bogus "lane" suffix.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>  .../devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml          | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
