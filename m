Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6EDBC83F3A
	for <linux-phy@archiver.kernel.org>; Thu, 31 Aug 2023 18:25:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YnVCkq8SwLKs1Hxl1152lEQIjmIZv+hCb2PcXlvDlNI=; b=p01XGRymxrt+pM
	vJM4X/nxVwJNwE0mK/i9U+z2pHFBRKofTPpppsz6a7bM0SqCOOUhkCwkrn1PGHxalGuR/XGjbwn9Y
	pJYwbwSvP/TNc6CjgAdCdp4crjw1r0sHxODHAwULjw/LKMLifaMSsJt93Pw7NusVg670/jcK8Srd+
	VE5qRSTimMOHITDdSiNmd2WWxh/Xx5ykpPdBixw2jD0QldpUqZChDDy5+rx3wT/YFe9ylRP8qma35
	zw190KqkTUfw3ogTtvjBjwL4fjdjvdGccxKyXYIY3vPIctBhqGIB03R9M6z5p8p7Y6XqRC5O90qgp
	/3v75VADcD5kxOYFKkPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qbmLw-00Fh4U-0n;
	Thu, 31 Aug 2023 18:25:12 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qbmLt-00Fh40-1O
	for linux-phy@lists.infradead.org;
	Thu, 31 Aug 2023 18:25:10 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 590B863559;
	Thu, 31 Aug 2023 18:25:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9A1FAC433C7;
	Thu, 31 Aug 2023 18:25:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693506307;
	bh=mpdm3+Uw/AcG84Tn6S3nN0xqw5NePOf+tIacyG1BBEw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=V/pgqpJ8Wyt/2JlLhmOrz9U04wwmoSheFQU6IIMCv/7Yxc6HOIKZWpVzGvdKAOq0Y
	 TReVg2jxaC2MwRseCBKkno2WJ/yioMg+onzeYNBrogkHRJ1c+O7fjABxa1gRTQuC2T
	 UJAHY1q32Ya0vPriQL1eNRJXMFul/TFNzn8QjGtw9fubVKUetOOYi3zURzbnSB9qPj
	 ajBV1qmRKEyuwLGy5AOopaozZxO+fhkvTYLe0OFJCD9cFqQAE220lyd/f4p/c1Uag3
	 vdIgwvuOoYtNRxZ3JaJqULZwlSYOGkMHBwuu+nTentgtJF4bj1VIR4UST7qVP/H78Q
	 9L/gJJiERwVtw==
Received: (nullmailer pid 2547623 invoked by uid 1000);
	Thu, 31 Aug 2023 18:25:05 -0000
Date: Thu, 31 Aug 2023 13:25:05 -0500
From: Rob Herring <robh@kernel.org>
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>, Marijn Suijten <marijn.suijten@somainline.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: phy: qcom,usb-snps-femto-v2: Add REFGEN
 regulator
Message-ID: <20230831182505.GA2541736-robh@kernel.org>
References: <20230830-topic-refgenphy-v1-0-892db196a1c0@linaro.org>
 <20230830-topic-refgenphy-v1-1-892db196a1c0@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230830-topic-refgenphy-v1-1-892db196a1c0@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230831_112509_539134_DCB7433F 
X-CRM114-Status: GOOD (  17.62  )
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

On Wed, Aug 30, 2023 at 11:13:51PM +0200, Konrad Dybcio wrote:
> The HSPHY is (or at least can be) one of the users of the reference
> voltage generating regulator. Ensure that dependency is described
> properly.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---
>  Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
> index 0f200e3f97a9..e895b6c4ee49 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
> @@ -53,6 +53,9 @@ properties:
>      items:
>        - description: PHY core reset
>  
> +  refgen-supply:
> +    description: phandle to the REFGEN regulator node

Supply names are local to the device (sink name), but this seems to be 
named based on the supply source. Maybe hard to do if all internal 
stuff. What is this supplying and what's the source if not REFGEN?


> +
>    vdda-pll-supply:
>      description: phandle to the regulator VDD supply node.
>  
> 
> -- 
> 2.42.0
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
