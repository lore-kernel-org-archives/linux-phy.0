Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78035C43334
	for <linux-phy@archiver.kernel.org>; Thu, 14 Jul 2022 09:32:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PVFYipKX4FScdip3NFvYpPiZ5pZpatvpaQyObrlKFOg=; b=Bh+wkt9Qa6gYN6
	gjpWAN7z6UUsEkhHoogiACkY5BKk5ayZL7HD0VIiD3kEcgkWiqqnf17c7ylhVtv2zCN750yCU/5lv
	8g4qz2W5Tt7iWpeIk2O3d5bqamQgo1RmYRXz2agoz7JnBb5fpyhmeOlmhXRjrr+IgiC3VtGdBRLpD
	YJQgXI67W16bgJSSur527hT2xG8ouw1qigdQ/MPtuzH/erIJHDpT1091NqOZnWFB9jojwNlpDO9ZR
	4wMZI8fFtBmSwGgwlQHYf0YIcbx710FkjqQut1Ls+12O3SodmRl9zmzZa4cyKnUcS3yL9wED1Lowp
	o+aLeOlwwRovXFlCS8gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBvDF-00Ct1T-PK; Thu, 14 Jul 2022 09:32:49 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBv9x-00Cqas-Rz
	for linux-phy@lists.infradead.org; Thu, 14 Jul 2022 09:29:27 +0000
Received: by mail-lj1-x22d.google.com with SMTP id o12so1482696ljc.3
        for <linux-phy@lists.infradead.org>; Thu, 14 Jul 2022 02:29:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=jU4sG0mo0OAljG7wSES/D6Zu2DuuJojhSoJOsa882Zw=;
        b=Grxg/mWHPUcGKz59jXb0bd60gQZXJ7Hei+tlpBvvFlEQYViUTWpM+QFD814cRQt+Vw
         RRB45E0w1xR7yse+lUkhZyTzj6PPJaHT49qoFP/3v0ziBK9nzuZZlI+G1lKprJgHA72z
         LDZl5TAyIFI5FvOwlJGI3ZswAwSsc23l4eCjgEqStzhIeT4ryBY4V3iRiwE5LZo3Z4i5
         SId8oKUJTtgNXBRcizuCuXmkDIScup7i8scYDxr4raj3CPpxul8E+JQYN4rfUc/YVSpD
         4XLr5eWca2pLqDR/hGNUtbsxQ0uF33EHtdzDCQaEb1tdMRg3jF8CgyVJ0rJJEjU8Htid
         y4Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=jU4sG0mo0OAljG7wSES/D6Zu2DuuJojhSoJOsa882Zw=;
        b=yZX43hVaUC6ULJON13Gw+Z6vRWXlLk6pfvoGEDVN4FSLC63fE22Wzkd19uYipUdtM8
         k+48h3iQK8N+Brhg9VENhZlma12AoTHkUpE1heaFo/lApwx42fAv9vxaJSDYl8n1Kprc
         JQhfQkr+BW8lSzdtmWD+OkgAnFgpOENRlylsg1zuDaThiehL7Vz9JzpU1dLNzAx9dXoi
         25AlCtVKmB4Po2JUzjkvipJE98f2sd78hLhYiHQB2Z7jBzyT2Ekb8a2m4ljJRXuZkYoM
         k2bhYnRbd74KU43fI9c9uGlbBQYKy5urYpEeKVjgElenKRbxeKdjaMRph052ulIxu0nX
         AHEQ==
X-Gm-Message-State: AJIora+8mIT2oALfy8Z+QVpcJpLmBh1+V0mFXOsjkC9pNwmkW7CCo0gY
	SB4jInh8yuaa/a6ojfv+HE93UQ==
X-Google-Smtp-Source: AGRyM1uDzQxXNKv9FXmqNr2sb7xQqh6CETrz4yVqsX1kCT6W2B6acb3r6llg6Y3sumEdw35Mlo6TUA==
X-Received: by 2002:a2e:bd88:0:b0:25d:5282:48e4 with SMTP id o8-20020a2ebd88000000b0025d528248e4mr3863024ljq.383.1657790962267;
        Thu, 14 Jul 2022 02:29:22 -0700 (PDT)
Received: from [10.0.0.8] (fwa5da9-171.bb.online.no. [88.93.169.171])
        by smtp.gmail.com with ESMTPSA id z8-20020a056512370800b004790506cf98sm258424lfr.303.2022.07.14.02.29.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jul 2022 02:29:21 -0700 (PDT)
Message-ID: <31674dc9-e44d-9757-6428-704bfe58902b@linaro.org>
Date: Thu, 14 Jul 2022 11:29:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v2 26/30] phy: qcom-qmp-combo: drop unused lane reset
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
 <20220707134725.3512-27-johan+linaro@kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220707134725.3512-27-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220714_022925_957392_E13D56AD 
X-CRM114-Status: UNSURE (   7.50  )
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
> Drop the unused lane reset pointer which isn't used by any combo PHY.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 2 --


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
