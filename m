Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63514C44512
	for <linux-phy@archiver.kernel.org>; Sun, 19 Jul 2026 06:28:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+NCF+eQhuv71cNyFK7EJKJsu1SWepdvat+JY2mjnK9M=; b=c0xTpm+X4cHtly
	Y+aJgEoiqUgT6mxSfVhyhy8bjavPWF7P58A5CATTitPRieX5jFMi0guUFlr//TYFA6LUB3qqaFFVP
	mgvSh1Bcl2viVbBLDZBL/V2pY3rt682cdS3XRqDJ/t8shL+fpt7i/kfjbMxBJ+HAIf1dF7iJse0T9
	0INPUbMn534X671k/7OHDhKfb7LpXw0wGrsXHuv4l1++CWsHB+woy49suzGG3BidstINRU2D1zOuc
	2tFqY2WO5pPfNopBN+Hpmkl42qIluKmGFA7ivDItJxq1x/3b+Bo484/nroAdM1XTJaFVqLap0O30N
	VII4lsa9IxVGt6lDwhZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlL0X-00000004nIP-2y2V;
	Sun, 19 Jul 2026 06:28:13 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlL0W-00000004nIH-3XAt
	for linux-phy@lists.infradead.org;
	Sun, 19 Jul 2026 06:28:12 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id DBEBB6001A;
	Sun, 19 Jul 2026 06:28:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 96D6D1F000E9;
	Sun, 19 Jul 2026 06:28:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784442491;
	bh=UQoXqfEBpAt6v+emI5izvhq1VvHsMHK/ap376N19A8A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=m6Yl3eowjZffPDvmmVJ55kv2AJc2VODML6zPwXABUiXiMUgci8v+ocgEnHEVKoL4K
	 3KyXezS2Ee4JG7dTbkf9+vJ9Tf0SZ2LLtxzaKdh9Hf3REXGjwOIQv8ffAegBQlODd7
	 DQaJ16fN0DRr1PZK/9jijyGS6OOTIa5cjdPC6IduaDmN3PIDq+jJrWGOtfAERVRXqy
	 EnlqwTknoZZvoZ4zuoJV72+ztodAof1SMcgCQ04bZOpjFYcWvwMRlyCvDyhFPVfPww
	 4yo9oYN8qPDf570GHVQqLGfmVJK9WVsxpcDS3ZslEzRa0KfkSPRD4Ra9mEGwxCtegh
	 AzB9aJqSekWUQ==
Date: Sun, 19 Jul 2026 08:28:07 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Bryan O'Donoghue <bod@kernel.org>, 
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-media@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v10 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY
 schema
Message-ID: <20260719-electronic-swine-from-hyperborea-b1edbc@quoll>
References: <20260718-x1e-csi2-phy-v10-0-5720a7888953@linaro.org>
 <20260718-x1e-csi2-phy-v10-1-5720a7888953@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260718-x1e-csi2-phy-v10-1-5720a7888953@linaro.org>
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

On Sat, Jul 18, 2026 at 03:38:17AM +0100, Bryan O'Donoghue wrote:
> Add a base schema for the MIPI CSI2 PHYs on Qualcomm SoCs. This PHY
> supports both DPHY and CPHY operation. A special mode of DPHY operation -
> called variously split-mode or combo-mode also allows for two sensors to be
> connected to one PHY.
> 
> The submitted binding here describes the DPHY modes of operation only. CPHY
> is left to future work.
> 
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---
>  .../bindings/phy/qcom,x1e80100-csi2-phy.yaml       | 195 +++++++++++++++++++++
>  1 file changed, 195 insertions(+)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
