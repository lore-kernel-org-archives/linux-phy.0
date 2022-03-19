Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 672FDC433EF
	for <linux-phy@archiver.kernel.org>; Sat, 19 Mar 2022 14:40:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vQpTod9QOhKI/yGB5j+fmK1vvRxeajYJDtxhzUAtpt0=; b=WUL1J+nDWHkpAp
	oFU6D9y4jOXMAuPAS4Cm5u+6VsIvKsez/pgWFAgJSNp2MWSnWNOqRT5o6aFCDAbhacHZm6Ark5xw1
	GeVIHDaB7EjUaMc9RIxr90iRhPuGqQQOZzsnPdsFmQ8V04NIDvcYnkn8mW+XuahcO3avXlEL6BG5y
	+AwvdHmS9Ki1icvJFRo9CGxsX7ciREQjQ66+jfON1ceUieE7q9+S/AZIbcjtJ35cCoe0p5Y22gneA
	GwIigIdLB+xOV0PoloayBjkOTpAkmuccOSWzWTWI5hcaJa0cBK7sIaboP3tunsATPmp8fA1DfVuve
	XlnZqPqqaCdLoo2JUsIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nVaFk-003vlN-TH; Sat, 19 Mar 2022 14:40:24 +0000
Received: from mail-ej1-f41.google.com ([209.85.218.41])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nVaFi-003vkV-Jf
 for linux-phy@lists.infradead.org; Sat, 19 Mar 2022 14:40:23 +0000
Received: by mail-ej1-f41.google.com with SMTP id d10so21970347eje.10
 for <linux-phy@lists.infradead.org>; Sat, 19 Mar 2022 07:40:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=51MF7CMveV1FPVM1stqHHfoXDZB2HvnqZFW3qb4HPvg=;
 b=zSrnO4xoQ3dLx2j4Rf37RYcYcH18Dk8mNv0xbvMRoIhka01kaNRlvJ7ApLDfcu+BlV
 7igIC9qHlLmkgimgp3/tofU5d/9RTGXCKSOwlbCf1BZZjzipTW+HMiFexc0Q3oca8v/J
 Rtp44DvxZIFlMOn7op8gcHMV3kBd2pf6pFHMY499m4sjmPSG40QayNy3pHyUl7FRHliA
 kg9SnwjiSs43gQK2pFooCCPL8rQDhNnovibKaXfd8chkHaDUR4vYW4LaMprSltj/6YRQ
 4o4KAzp6pxDD/SCRPn1Hzjp77de8kN8hXmrl8r/3OEZ/0SY80q8Qe52Ip1i7XLKPksBM
 t2vg==
X-Gm-Message-State: AOAM532F+mLyWB6Q793hprAyiPdnGS+apQydnJKyofmS1V1F7GKPy6Y7
 ZfBV5kz1cLl9No7jSp3TPf0=
X-Google-Smtp-Source: ABdhPJzTCHBns8Of5aWkggpbK2hL/YYJMUO6iz0EeO/XI+KIAn3YnmSkyRfVvIMxKQxf1sKzq+oq6A==
X-Received: by 2002:a17:907:216f:b0:6ce:d85f:35cf with SMTP id
 rl15-20020a170907216f00b006ced85f35cfmr13488896ejb.517.1647700820629; 
 Sat, 19 Mar 2022 07:40:20 -0700 (PDT)
Received: from [192.168.0.17] (78-11-189-27.static.ip.netia.com.pl.
 [78.11.189.27]) by smtp.googlemail.com with ESMTPSA id
 u10-20020a50d94a000000b004131aa2525esm5752540edj.49.2022.03.19.07.40.19
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 19 Mar 2022 07:40:20 -0700 (PDT)
Message-ID: <ae73a362-cbfe-4e33-37a3-61614fcde9c0@kernel.org>
Date: Sat, 19 Mar 2022 15:40:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH 2/6] dt-bindings: phy: qcom,qmp: Add SM6350 UFS PHY
 bindings
Content-Language: en-US
To: Luca Weiss <luca.weiss@fairphone.com>, linux-arm-msm@vger.kernel.org
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
 Andy Gross <agross@kernel.org>, Bjorn Andersson
 <bjorn.andersson@linaro.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220318183004.858707-1-luca.weiss@fairphone.com>
 <20220318183004.858707-3-luca.weiss@fairphone.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <20220318183004.858707-3-luca.weiss@fairphone.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220319_074022_689526_7B0EFE96 
X-CRM114-Status: GOOD (  12.03  )
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

On 18/03/2022 19:30, Luca Weiss wrote:
> Document the compatible string for the UFS PHY found in SM6350.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
> index e20d9b087bb8..934aa9101ddd 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
> @@ -39,6 +39,7 @@ properties:
>        - qcom,sdm845-qmp-usb3-phy
>        - qcom,sdm845-qmp-usb3-uni-phy
>        - qcom,sm6115-qmp-ufs-phy
> +      - qcom,sm6350-qmp-ufs-phy

Please also add constraints to clocks, resets and any other necessary
properties in allOf:if:then section.


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
