Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35134C433F5
	for <linux-phy@archiver.kernel.org>; Wed, 23 Feb 2022 06:12:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nlsRIFWZq5BP9STDtvHlvsgxC19cFfjPLrcllX7ntf0=; b=rRohgNftr8Sf5S
	x86vkrXiISO2QZgOAS2FvrehNRIAJzdWowwd8HsSVw18kWHOq7EJovX6xA3yCL3LzA05hKp+ocS/G
	21Ow49ZmGlvWS7a0t30XstLGJydcvai3mNEpZKXWdlKTlIxxhq0kfL1AVdxqFpUx3c2VRADCSroqG
	sYqTGfopN0dqw4Rw84734nDuRNYafuRI4WEXVRB9vpaRdknhZbL2Kwb3ZfOCVqzKlXSh/rmeJ2Yfs
	ujhmzBWZFg74hrz9qHezv0gHcJ3u84mYVJrNugSK8bf0tM3VPezSiqRTUkwDrzQCoPnN3JfQWzN10
	ZSF3FkU7V5sWkbRdgF1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nMksc-00CwF7-Lu; Wed, 23 Feb 2022 06:12:02 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nMksa-00CwEI-CH
 for linux-phy@lists.infradead.org; Wed, 23 Feb 2022 06:12:01 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 07F6F60C57;
 Wed, 23 Feb 2022 06:11:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D52AEC340E7;
 Wed, 23 Feb 2022 06:11:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1645596718;
 bh=Zzp79czQ3FQU8Aa3rLV91ozFlYAoZO237NxSGoIc2KM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=VJYkAMFGNzU0dC8I/5eWGEjC7KNcue/AbTZy0tg/Ui7zJMnogyeYmokKFtmrD68hc
 KXJ2cbWw2MuxxW4LgT4Fk6I6bMDOMAi7E4RHYX+aN1EAfx3Qe/+2qJ8KYMqnX0u7TY
 w6wMasYjGj5N62cMKKotdTy3q+0L68ZPNtuSOLuFQ/ubuGldJiw69x5/XkxPmBv5Vz
 V+crRvn/TsrEMsoP5mnlN0HGfHPcSikh6y1Tj6bSxqBNQrZapqt84r7hVrRMj1uQO5
 En0hLVKHuiEMHAzkprlwAjJHX5Jrs2ramR2L9FpbKCzd23y5o7i9ToMc2Mcjc2y5p/
 3S9uYSIctIQ5g==
Date: Wed, 23 Feb 2022 11:41:54 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: phy: qcom, qmp: add sc8180x and sc8280xp
 ufs compatibles
Message-ID: <YhXQKiVIa0eOhMFR@matsya>
References: <20220223044213.3776600-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220223044213.3776600-1-bjorn.andersson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220222_221200_504056_C977362B 
X-CRM114-Status: GOOD (  13.64  )
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

On 22-02-22, 20:42, Bjorn Andersson wrote:
> Add compatible for the UFS PHY found in the Qualcomm SC8280XP platform
> and document the required clocks for this and the SC8180X UFS PHY.
> 
> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> ---
>  Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
> index e417cd667997..455317dee5ea 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
> @@ -32,6 +32,7 @@ properties:
>        - qcom,sc8180x-qmp-pcie-phy
>        - qcom,sc8180x-qmp-ufs-phy
>        - qcom,sc8180x-qmp-usb3-phy
> +      - qcom,sc8280xp-qmp-ufs-phy
>        - qcom,sdm845-qhp-pcie-phy
>        - qcom,sdm845-qmp-pcie-phy
>        - qcom,sdm845-qmp-ufs-phy
> @@ -280,6 +281,8 @@ allOf:
>                - qcom,sdm845-qmp-ufs-phy
>                - qcom,sm8150-qmp-ufs-phy
>                - qcom,sm8250-qmp-ufs-phy
> +	      - qcom,sc8180x-qmp-ufs-phy
> +	      - qcom,sc8280xp-qmp-ufs-phy

The indent does not seem to match here

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
