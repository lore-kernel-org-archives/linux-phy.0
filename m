Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01E4CC433F5
	for <linux-phy@archiver.kernel.org>; Wed,  1 Jun 2022 09:30:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Omt0qrfQVLLCa1I4xpjpkaGgvapTyY5CqJ+j6l1ZUII=; b=JEGEwzsYZcn2rb
	TxuxSlgcabpT4T1/R9xutlAbXR/GaGOPapgHrQuhUewcOPhy6+MOSBx0yXHX2BmiSt5RtQfR9LPAa
	kG4jAuNaPLFH+nLi0wyw7GMYaUF/NsFxniwHTSLTZ6y93NNFAFkqW8+L2fmqAICCDqatthBLFWBq5
	5eCoxhCxspt29LVKQ+nHU7xntey1qUbdwgnmHnWb23ZlKvcW7PFuG/dtbosv10MpC+l15uNzOD8O+
	dNvDSjOWcaGqthXyXvLqFq5uF9ryFx33XPVnAA1qXnBl33fl3iEBfLgeZKzLfKd38R+mYI9RkwRto
	jRKw7oZYljfXXbxcA6Sw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwKgj-00EvP7-CC; Wed, 01 Jun 2022 09:30:49 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwKgh-00EvNH-1Y
	for linux-phy@lists.infradead.org; Wed, 01 Jun 2022 09:30:48 +0000
Received: by mail-ej1-x632.google.com with SMTP id f21so2467064ejh.11
        for <linux-phy@lists.infradead.org>; Wed, 01 Jun 2022 02:30:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=5IgpHecT0v2thcEdNy9dmhAzLNM0n7jwFfkompLh8aE=;
        b=QZmZ3udwMF+1BVssFRYeb/IuNUXSyd8Qp/RCO0xI7zOGUGWzR9re06s8o9pQJWFxWN
         OHpiyPeo+udBjSXBLTK8WBf+THibRabP/G/E+PAmOfZoVQv5pi3k2lhUjMO689oHTrag
         OSzcCPbc1iqMXY0mc3J5IJfp4l1kJGJ1wwH4SOSAwoBsZwLeZPl8Q+EjOvnldOmJUZGE
         xqO724vayRnZU6BHuLKN/cK40A6tUGuInyZ4DMElDuOLPAOts3BDS9mYbTV6VrcYsMfe
         ygiaooUiRb8cqbn6RKwTvWIUzbJksUsKXxoPkPKj2wDugiaT26nWwiU6kpEYFKUz8ClM
         rH9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=5IgpHecT0v2thcEdNy9dmhAzLNM0n7jwFfkompLh8aE=;
        b=27lJLKLoVxNAPqnWTIvWd0UPvICIUlJczjtJMeIhw9GofuW756RfzSfhI2OaJcXahC
         ybEkVWdKNrjA9xZGFPJe1WsdqOzShHq9sJPsdJ86SuGP0wkBqOyEKdCeAh0HkAjY0Dna
         0JGx2GHhsWCGMRnGDyQclfApbZ82dBqTRSHUcI5J2LleTy5wwT+gb6xTIyRnwSBMxOcT
         dQVlqrFKgkaDPCmf1evKo3+eDDXI5bHFQrPQDDtypuVe3zzXDoZHd8GsjhXXrOydDXUH
         AWmNI4FyoEQUksPTEttBKCzhxY1itthDY89BZwzjdP7/LBFFBGF7FWNobUspRe0J4+u3
         oFyw==
X-Gm-Message-State: AOAM532Y2MiEPnCFf5x8e5sA7NooB8xw+PqkUI80K68yjd6i/uTlLASe
	KnAc9SJ4XzTmNfYgqQn2d2h0Vi4OJka+iVUo
X-Google-Smtp-Source: ABdhPJxctyus0aVviZqlPHl9SGmJhm2M3lqLjAAgTBXgGpOe7SRt5ZSSOcgH7AEIlTWhEWVlKY0pkg==
X-Received: by 2002:a17:906:9c82:b0:6e1:2c94:1616 with SMTP id fj2-20020a1709069c8200b006e12c941616mr56989534ejc.64.1654075843937;
        Wed, 01 Jun 2022 02:30:43 -0700 (PDT)
Received: from [192.168.0.179] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id h4-20020a1709067cc400b006f3ef214ddbsm494870ejp.65.2022.06.01.02.30.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Jun 2022 02:30:43 -0700 (PDT)
Message-ID: <e57de710-1997-d36c-72a7-a9d6db000079@linaro.org>
Date: Wed, 1 Jun 2022 11:30:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH 1/2] dt-bindings: phy: qcom,qmp: add IPQ8074 PCIe Gen3 PHY
 binding
Content-Language: en-US
To: Robert Marko <robimarko@gmail.com>, agross@kernel.org,
 bjorn.andersson@linaro.org, kishon@ti.com, vkoul@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org
References: <20220531214420.916278-1-robimarko@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220531214420.916278-1-robimarko@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220601_023047_128433_4CCDD8D5 
X-CRM114-Status: UNSURE (   8.65  )
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

On 31/05/2022 23:44, Robert Marko wrote:
> IPQ8074 has 2 different single lane PCIe PHY-s, one Gen2 and one Gen3.
> Gen2 one is already supported, document the bindings for the Gen3 one.
> 
> Signed-off-by: Robert Marko <robimarko@gmail.com>
> ---
>  Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml | 2 ++
>  1 file changed, 2 insertions(+)


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
