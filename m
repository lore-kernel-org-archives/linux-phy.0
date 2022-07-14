Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3A9E0C433EF
	for <linux-phy@archiver.kernel.org>; Thu, 14 Jul 2022 09:22:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q5bJUyVFfpgWp+ARf5vnmyVZBLkTL6BkUFrRsI/TBBQ=; b=MGsuKxELF+EkL0
	L8Jc8AZbevyR/8t2THQKraLdZWbC+XXxupQeTtcVJExob2Uwhs49pDV+6h76FhDODUViwVxTQtsDs
	c7wiNQdiEShwjYPTHh2gV9ZX5Nz0YbCyd8vZ9WgW8uJMfXA8SH7Ul07f/eMkOps1yn2LeRO/09Utt
	7smda0L8G8LALpNAVLMFM8z34HfjVmbX/WXQqRFfaYavXDu84iMywgm1+z7BzoSjniBSJvdIw361F
	6pIP5rRH3JxBBipHs7o8FxCS2nbQFTmhfIc8ry2lSEgd7RDGErVsmMZDrm8F5xtPWTiDVmlIcwFxO
	CZdYTdlFcJPC/aKW6Jow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBv33-00CmJe-Jf; Thu, 14 Jul 2022 09:22:17 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBv30-00CmGQ-HK
	for linux-phy@lists.infradead.org; Thu, 14 Jul 2022 09:22:15 +0000
Received: by mail-lj1-x232.google.com with SMTP id c15so1501585ljr.0
        for <linux-phy@lists.infradead.org>; Thu, 14 Jul 2022 02:22:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=B/xjtzcXEiWFgZGhwmmBD0ibwE58wiTB3BScm/ZHlDY=;
        b=wH5xQk3N8+aE8PtQAiK4F3u/hi1aEADCbuFm3AIdMHc9I5FzMG6GFMJL0x8PuLaqy6
         vpjw71DkbHiT/lCNiGu9nJcEN/vrCI/XC7QoFy1V78bgBe6lWni1MVveJ+NrGs+tLi48
         PY3Zp6hs2aq362cf8aC6iGaFR01e0Gxa6t+6TSYmsw9Lb2qWMlKzPXwdCYibjjucww6M
         5V3HZmCoXFShQTOWSFOEBr34S/y4Ug438b3yc7uXg2N9McbMvUVyi7OAHrx2naqj/zkU
         bPwe8Z4RgXfK7d1eFWOukCw/sIIO2v0Tm6BmcPOkq775zgEBp2jDnwGp/ztZCxrwhSr2
         tySw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=B/xjtzcXEiWFgZGhwmmBD0ibwE58wiTB3BScm/ZHlDY=;
        b=byVfwUdk1Chao7z7kpQ7QJWgycgb0L8LIj1Qt69DnAw3Lzva6p6sxlxAR6d1Fik9KN
         EtG1OclUEtTypHZ7XZrXFK3hEJ0wbN+gIUZvwZ4vz7rLncf+zPfkA/VZj2ZRJxlvMA7e
         ezpQvPrclslMCVuITocGjV9K29vsT4Km5ddjo30c/kv25IoLe/GJ/ZznBDhVOEdA6AGB
         6yO97x4JSGsknu8Q6rgu8WxM/Ht/Ob3hRUYDOMIohRdjaTN+KbyJzTvlUaSZ8ES46vrb
         uiJZ1yoMHdyKqc6RrlPIMM9bvcY0/W0buD5Hpr+5hvWC6B6nrCtsHKa9jXYZyt95EFKG
         Vbjg==
X-Gm-Message-State: AJIora8vo9N/ixIxNOGoeVS882c+EehHgoGb0wmRdVgmOZhMEgFWGcGi
	QUiXD2MUfStdh9Dh+rSIpXKcEQ==
X-Google-Smtp-Source: AGRyM1sq0bNAc4G3wPDov6sHmB5Rov97g+yn2qQ+x/4aiQ0MudZsoqgQMErkwNSVIg3IZPPgqKPMrw==
X-Received: by 2002:a2e:2284:0:b0:25d:490f:60d3 with SMTP id i126-20020a2e2284000000b0025d490f60d3mr4150278lji.486.1657790532975;
        Thu, 14 Jul 2022 02:22:12 -0700 (PDT)
Received: from [10.0.0.8] (fwa5da9-171.bb.online.no. [88.93.169.171])
        by smtp.gmail.com with ESMTPSA id b14-20020ac2410e000000b00482e7f07dfcsm251664lfi.309.2022.07.14.02.22.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jul 2022 02:22:11 -0700 (PDT)
Message-ID: <9d9527ca-aa84-f1a3-3777-647e34b134eb@linaro.org>
Date: Thu, 14 Jul 2022 11:22:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v2 17/30] dt-bindings: phy: qcom,qmp-ufs: add missing
 SM8150 power domain
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
 <20220707134725.3512-18-johan+linaro@kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220707134725.3512-18-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220714_022214_601614_D114ED72 
X-CRM114-Status: UNSURE (   7.46  )
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
> Add the missing optional power-domains property used by the SM8150 UFS
> QMP PHY to the binding.
> 
> Fixes: fe75b0c4a691 ("arm64: dts: qcom: sm8150: Add ufs power-domain entries")
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
