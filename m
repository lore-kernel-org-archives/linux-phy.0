Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 383B4C4167B
	for <linux-phy@archiver.kernel.org>; Mon,  4 Dec 2023 15:15:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H9mR9RwQaAM3bOtWkmDJvsaUDpu5pdOLaTImuwlJmys=; b=NpXzoiybJulJhh
	oJ+y66KpYzn1pSz746Kwgl63vgvkDDNfQ0oGtn2qELL1APpFXNH84abpCkBqqFNtrMy0esi1cmD/X
	CLMR+Kgwyd0GyJ+3qZYqkmMw6/GGAtYHQzR5ZYuLtOiDmJgJIuQC2nr6Pa9yDQ0vrUJjyZTSnnhKX
	Q71WJBx3kJqsYolt1DRwlzcZD0Sfg7cwrUtQa++vk4+QDZbrDHOeSwYeWdRpepZ9QrpEVccc4l2ke
	Z1a3T8ywvRxOgK3LJX5PY+eGPIvmgK5MYZ4fOQVySZBz+583nWadtFVNOC/a5kR6V49nmepXLFx6s
	fIsvdnTJOJd6R76po2lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAAfm-004vG5-2o;
	Mon, 04 Dec 2023 15:15:50 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAAfj-004vEL-2h
	for linux-phy@lists.infradead.org;
	Mon, 04 Dec 2023 15:15:49 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 37CAACE117E;
	Mon,  4 Dec 2023 15:15:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B42ECC433C8;
	Mon,  4 Dec 2023 15:15:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701702943;
	bh=lKRmpWH6UR7dQ27BRS9KstFz+7kTpsRB9YknLvU8rlU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Vv/Fx9qEMNFV0KlnfGLl4eFeHmRhbZTXvwqMfQeFytuZoP6LN7riUBwDOB8/Ts2Yf
	 Y9nkN2IRhew5Vmafw/4ybGAnsP71mb0RrZnBlThTmHHTFea4Gm6MMyYSuoGrtgbxwB
	 nXnaHdMWyEwDruCaX45tD2E+jHwQ3eyInCqDvxefavWnPS3kQCabsD8PZpWtKQ5NAq
	 f9FenlvEt7BYvlp03YanuX+LYWDrI0eO9eZCZqac7Je2M7IM0MuDaOgBfS/DtjqnbS
	 hGpDBLPKvXpQ+4vl3C9bElr9d2DwbENkZDLCpZqb4e5yW5HZMUHqtgBHCgR7huqNDZ
	 oN8R+FmDksUmg==
Received: from johan by xi.lan with local (Exim 4.96.2)
	(envelope-from <johan@kernel.org>)
	id 1rAAgJ-0003tX-1d;
	Mon, 04 Dec 2023 16:16:23 +0100
Date: Mon, 4 Dec 2023 16:16:23 +0100
From: Johan Hovold <johan@kernel.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Abhinav Kumar <quic_abhinavk@quicinc.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: qcom-edp: Add X1E80100 PHY
 compatibles
Message-ID: <ZW3tR86MM0upnh9v@hovoldconsulting.com>
References: <20231122-phy-qualcomm-edp-x1e80100-v2-0-114e789f0195@linaro.org>
 <20231122-phy-qualcomm-edp-x1e80100-v2-1-114e789f0195@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231122-phy-qualcomm-edp-x1e80100-v2-1-114e789f0195@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231204_071548_065890_22D2A90B 
X-CRM114-Status: GOOD (  13.85  )
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

On Mon, Dec 04, 2023 at 05:01:36PM +0200, Abel Vesa wrote:
> The Qualcomm X1E80100 platform has multiple PHYs that can work in both eDP
> or DP mode, add compatibles for these.
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
> index 6566353f1a02..190f61c1d0f9 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
> @@ -21,6 +21,8 @@ properties:
>        - qcom,sc8180x-edp-phy
>        - qcom,sc8280xp-dp-phy
>        - qcom,sc8280xp-edp-phy
> +      - qcom,x1e80100-dp-phy
> +      - qcom,x1e80100-edp-phy

As was discussed here:

	https://lore.kernel.org/lkml/20231017032810.GP3553829@hu-bjorande-lv.qualcomm.com/

there should most likely only be one compatible here too as this is just
the same hardware block operating in two different modes.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
