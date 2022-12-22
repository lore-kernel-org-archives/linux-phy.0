Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3DF7AC4332F
	for <linux-phy@archiver.kernel.org>; Thu, 22 Dec 2022 20:38:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B/Sore8y6Ydn+fIt88xh//JyjZcPNSYv9+IOCSDq45Q=; b=zRjwBXcj9anaXN
	rNK0ElWiIXrc2DXiQbA17XbVf8/oZbkCBLfdMGYzEM3kblpeQam9vFc+A9bGioOBJ7fqyzKoRWEPL
	kfsCLp4ygP43tYDxqjWn4ol14wJUcFAz9BkLl6g6bHkzX/kMiqWDpYwVKvsbrprf/+tZuWQ3s5TU+
	qEDFHZnpPot5nyaU3uwEquB3iDqMYNopzG7Q9vDDZc1t30jdRE4ru+7CpWOoCBe0CQJUjxKLckCoN
	tNZ98sSaEVarA8kIzYFkFOuUy14wuk+S3WwcPFiRJRBwPOmXA8EsDex5pdrSh0739gY/36HgSpHFj
	UPmIRKSgxPfAd6Z3c/cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8SL4-00GyJJ-MR; Thu, 22 Dec 2022 20:38:50 +0000
Received: from mail-oi1-f176.google.com ([209.85.167.176])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8SL1-00GyHr-Ov
	for linux-phy@lists.infradead.org; Thu, 22 Dec 2022 20:38:49 +0000
Received: by mail-oi1-f176.google.com with SMTP id r11so2901526oie.13
        for <linux-phy@lists.infradead.org>; Thu, 22 Dec 2022 12:38:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8m3vdeoqRapejnKIbOke3igL2UHNLgon/GdxcFm+kZ8=;
        b=8Rz+BYNluhzV0GMOFFf9zfgaqAx9UlUOo7USGSDNcCNXq9/CGhd4LgZX5PBEf1tlru
         U7hS6a6eqVZ/UKe4++Lmv8MtHP/REZmyk/R5krWd4siiHB62wlUzxJS8sAmlCkjPq8Cu
         zGGAeP8EbHT4XU2+sXPF+zJnyehHp++ojcJ3mmqxVUuaKrnJpkqRQwi0/GTWdKWQkl7m
         4ggP9iKddo2N/wn2HFOvGfAmYjrKWSamzlrhPul9wjdNB/Yud8Nyww7Q4391RnesqlKw
         UbYfFaZcCMYhddGURj40dAL1SVyhZLjv1KwKYr54T05Z0AorujUFoV7Gg1be8ajnfEwz
         jX1Q==
X-Gm-Message-State: AFqh2kp88NuSV1EHoLBVeP2ayUDsA2xuiguZsmXGH802GasrlcGMC5yd
	4eECw64sw2b96cd4PgvsGPwnejNOZQ==
X-Google-Smtp-Source: AMrXdXuYdVVTMMnQkm5gnhNsazhIx/OOOqoRnvH+O9vVz6IawyTzbghgBPgrK7U/Dw/pm+YKbyV4uw==
X-Received: by 2002:aca:3d88:0:b0:361:8d6:944d with SMTP id k130-20020aca3d88000000b0036108d6944dmr2841162oia.47.1671741525643;
        Thu, 22 Dec 2022 12:38:45 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id e9-20020a544f09000000b0035aa617156bsm743444oiy.17.2022.12.22.12.38.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Dec 2022 12:38:45 -0800 (PST)
Received: (nullmailer pid 2079648 invoked by uid 1000);
	Thu, 22 Dec 2022 20:38:44 -0000
Date: Thu, 22 Dec 2022 14:38:44 -0600
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, Rob Herring <robh+dt@kernel.org>, linux-phy@lists.infradead.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Bjorn Andersson <andersson@kernel.org>, devicetree@vger.kernel.org, Andy Gross <agross@kernel.org>, linux-kernel@vger.kernel.org, Vinod Koul <vkoul@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, Peng Fan <peng.fan@oss.nxp.com>
Subject: Re: [PATCH] dt-bindings: phy: qcom,usb-hsic-phy: convert to DT schema
Message-ID: <167174152396.2079609.894160712392200876.robh@kernel.org>
References: <20221222155805.139284-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221222155805.139284-1-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221222_123847_852376_E288C44E 
X-CRM114-Status: UNSURE (   8.66  )
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


On Thu, 22 Dec 2022 16:58:05 +0100, Krzysztof Kozlowski wrote:
> Convert Qualcomm USB HSIC PHY bindings to DT schema.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  .../bindings/phy/qcom,usb-hsic-phy.txt        | 65 ------------------
>  .../bindings/phy/qcom,usb-hsic-phy.yaml       | 67 +++++++++++++++++++
>  2 files changed, 67 insertions(+), 65 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/phy/qcom,usb-hsic-phy.txt
>  create mode 100644 Documentation/devicetree/bindings/phy/qcom,usb-hsic-phy.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
