Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AECA8C4332F
	for <linux-phy@archiver.kernel.org>; Sat, 31 Dec 2022 22:54:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Cc:To
	:Subject:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jxBOr2l87KrUXWlEDFQLFhKxHjBs5aexfWKyYW5QBp8=; b=n//L/Bt+n7Fiq2WwPDtFYMX0Oz
	dKjuxy2z9h80rfO7xMkCV6ZwNq6Lf43XG90b/Cfx8dwOkXJF5rcE1UjJ1Uzil3JHKYY0bXs3xyf01
	0aVI89iN7gp7o5iNDmLrXzY4nTkBBmq2PmE3bX1AtkZy3jPkAa/+DEyAWEEnjHfgulxw+P5OLNwqn
	vLjpE+qd2llgv1z13pPomfEX0c7ul2fizGRtoIhj4xXZ1Fuipit4g4JWmZ7TqreCsVC9ZExLjJiZV
	uJcCbIC5fzgMaX9pNhezD33B/ouWjRG7tmU5e2BnnprE/jA2ARS8rO0JszIfJPkBHjsdj07bHMPZi
	bqcPN/ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pBkju-00BEDv-JG; Sat, 31 Dec 2022 22:54:06 +0000
Received: from relay05.th.seeweb.it ([5.144.164.166])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pBkjq-00BE78-NU
	for linux-phy@lists.infradead.org; Sat, 31 Dec 2022 22:54:04 +0000
Received: from [192.168.2.144] (adsl-d248.84-47-10.t-com.sk [84.47.10.248])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by m-r2.th.seeweb.it (Postfix) with ESMTPSA id 306263ECF7;
	Sat, 31 Dec 2022 23:53:50 +0100 (CET)
Date: Sat, 31 Dec 2022 23:53:43 +0100
From: Martin Botka <martin.botka@somainline.org>
Subject: Re: [PATCH v5 2/6] dt-bindings: phy: Add QMP UFS PHY compatible for
 SM6125
To: Lux Aliaga <they@mint.lgbt>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	~postmarketos/upstreaming@lists.sr.ht, marijn.suijten@somainline.org,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Message-Id: <K92SNR.NSL5KUUKO4A52@somainline.org>
In-Reply-To: <20221231222420.75233-3-they@mint.lgbt>
References: <20221231222420.75233-1-they@mint.lgbt>
	<20221231222420.75233-3-they@mint.lgbt>
X-Mailer: geary/40.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221231_145402_956749_7CFE7DF1 
X-CRM114-Status: UNSURE (   9.18  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org



On Sat, Dec 31 2022 at 07:24:16 PM -03:00:00, Lux Aliaga 
<they@mint.lgbt> wrote:
> Document the QMP UFS PHY compatible for SM6125.
> 
> Signed-off-by: Lux Aliaga <they@mint.lgbt>
> ---
>  .../devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml       | 1 
> +
>  1 file changed, 1 insertion(+)
> 
> diff --git 
> a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml 
> b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
> index dde86a19f792..a7af57931f32 100644
> --- 
> a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
> +++ 
> b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
> @@ -17,6 +17,7 @@ properties:
>    compatible:
>      enum:
>        - qcom,sc8280xp-qmp-ufs-phy
> +      - qcom,sm6125-qmp-ufs-phy
> 
>    reg:
>      maxItems: 1
> --
> 2.38.1
> 
Reviewed-by: Martin Botka <martin.botka@somainline.org>



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
