Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE9D7C4708E
	for <linux-phy@archiver.kernel.org>; Wed,  4 Jan 2023 00:44:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hz+b0Z4n6799DxRPJoK4mKivvsNtjgsvZxrzBY9fEsI=; b=LAyB+BvVP9547/
	MEqUmXQ8r9KBZWMxQ4iKXFlsXr9oDR1n/zgNgL816qAhdg7tBP6citdwxhh73QcxDrARGNogP7LPP
	K0fAkYfMfKWDXQD6/OrPqqpMtwNn4YoYSneqKvD/gP7qx77plOyCTzTIiLSQZCCrINalaKisn6Pfg
	13jFPc79WxpCaOHH4YgsJFPTO1LKh9e83QANcpuJoEs8jQRR5L6iWh0aAyDDYIZKB5icB+C6wZzqO
	1MI42E1PcEjiGkCcVNB/sel9eXGT/nTW6xqY/MnoiATpDPS5cRymuBewoU0cwW4ucs2LaLDsNiHmF
	wQO8qhnQHA9WZF1idOnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pCrsz-005xLa-3P; Wed, 04 Jan 2023 00:44:05 +0000
Received: from mail-il1-f173.google.com ([209.85.166.173])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pCrsU-005xCv-Th
	for linux-phy@lists.infradead.org; Wed, 04 Jan 2023 00:43:36 +0000
Received: by mail-il1-f173.google.com with SMTP id u8so11303428ilg.0
        for <linux-phy@lists.infradead.org>; Tue, 03 Jan 2023 16:43:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i2k4JM3Ism4CtFSfuJ+KhOjo2x1iFKu4VD5n/toK9X4=;
        b=HdPWX6nD9a0regwCzmBDUGpCewE5CiMSkjaboVXX6LXdGNc0aJj5S42Mcg8jOX/IX/
         DI4qz9YrwJr2HiJWU8UWIlQqjbjOnYSrB6VA+pGmeWKL0baEosOxV9LVhbdWmhRhAkmo
         eFiRgHcSoCamEWWMxfg6pY7ZrU2aFU+iOBCj8rOLqkLA8wP7Mcjn+dmVgxuJZQFaOAMU
         0mbbhJktGl0dzJ+PBNTRRvJnhsgIZ098VZzUHp2zO02ze8BXOFJUJhCGtxA1x8Utv7IM
         vrC9mSma4G2Dcfku5k8Frh3dXCEZw1QorFG0FJkQTU5BtW1sPKK8qiA/oZLO+4FqPYw9
         wSfQ==
X-Gm-Message-State: AFqh2kpr/BTzcoWrH7mObdPDYR7MCtq3SYSd35FCyedMis3N70hgeOFA
	cWkVdt3SkuUgGuCyVGu3pbjgBuuQ7g==
X-Google-Smtp-Source: AMrXdXtILk8jSL6XxrjL11edtqTvq8MgBnBVfj9stmJ9CBSU3lgBfbjF8YYJIlpeP21SrJb7+XBvhg==
X-Received: by 2002:a92:ca85:0:b0:30b:cf5f:1275 with SMTP id t5-20020a92ca85000000b0030bcf5f1275mr30677323ilo.8.1672793013304;
        Tue, 03 Jan 2023 16:43:33 -0800 (PST)
Received: from robh_at_kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id v17-20020a02b091000000b00356738a2aa2sm10234717jah.55.2023.01.03.16.43.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Jan 2023 16:43:32 -0800 (PST)
Received: (nullmailer pid 163282 invoked by uid 1000);
	Wed, 04 Jan 2023 00:43:31 -0000
Date: Tue, 3 Jan 2023 18:43:31 -0600
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: linux-kernel@vger.kernel.org, Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>, linux-arm-msm@vger.kernel.org, Kishon Vijay Abraham I <kishon@kernel.org>, linux-phy@lists.infradead.org, Bjorn Andersson <andersson@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, devicetree@vger.kernel.org, Vinod Koul <vkoul@kernel.org>
Subject: Re: [PATCH 1/4] dt-bindings: phy: qcom,usb-snps-femto-v2: use
 fallback compatibles
Message-ID: <167279301050.163217.7817410182620857350.robh@kernel.org>
References: <20221223161835.112079-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221223161835.112079-1-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230103_164335_030315_9F11DFD1 
X-CRM114-Status: GOOD (  13.25  )
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


On Fri, 23 Dec 2022 17:18:32 +0100, Krzysztof Kozlowski wrote:
> Document SoC-specific compatibles with generic fallback (e.g.
> qcom,usb-snps-hs-7nm-phy) already used in DTSI.  Add SoC-specific
> compatibles for PHY on SDX55 and SDX65.
> 
> This disallows usage of the qcom,usb-snps-hs-5nm-phy and
> qcom,usb-snps-hs-7nm-phy generic compatibles alone.  Do not touch
> remaining two compatibles - qcom,usb-snps-femto-v2-phy and
> qcom,sc8180x-usb-hs-phy - because there are no upstream users, so not
> sure what was the intention for them.
> 
> This fixes warnings like:
> 
>   sa8295p-adp.dtb: phy@88e5000: compatible: 'oneOf' conditional failed, one must be fixed:
>     ['qcom,sc8280xp-usb-hs-phy', 'qcom,usb-snps-hs-5nm-phy'] is too long
>     'qcom,sc8280xp-usb-hs-phy' is not one of ['qcom,sm8150-usb-hs-phy', 'qcom,sm8250-usb-hs-phy', 'qcom,sm8350-usb-hs-phy', 'qcom,sm8450-usb-hs-phy']
>     'qcom,usb-snps-hs-7nm-phy' was expected
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  .../bindings/phy/qcom,usb-snps-femto-v2.yaml  | 33 +++++++++++--------
>  1 file changed, 20 insertions(+), 13 deletions(-)
> 

Acked-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
