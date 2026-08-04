Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1BB79C55172
	for <linux-phy@archiver.kernel.org>; Tue,  4 Aug 2026 08:07:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bN2U2O43tuqsoM6c6j05xwf6vsEJjvK/vNhMfN6EBls=; b=hevK1Oml6T4vM1
	SrlC6H0r2t089F+n9AaudY2WdosyLAwEV1qMTVX7oDqn+UA+861ye7kCoa/3qZtEQotBhhJ6JMt+2
	haKdFmVVfzB42X78KtzercxKeOysYhMFk+AD3b/LW4JHl2GQ4OruYTdYrnBWntOuae8eDa5Fafkg7
	HH0nIsCsmU2OC4haljLIkHxU1xpECmVQIjyYnHNJQ2FNbcoYEvBcERp/0gw1jnXqc3/pOl8fxRhcz
	V5Hm3T7kswqNAi3td8uUBNhxESvYqNdLj7/5Q6BKRALj2w5yrWnuMxo/mEYaaon481fQqV0Ct5FKw
	3T53fCGxKyY//9wwi3fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrABm-00000001Hy3-18LM;
	Tue, 04 Aug 2026 08:07:54 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrABl-00000001Hxx-0S30
	for linux-phy@lists.infradead.org;
	Tue, 04 Aug 2026 08:07:53 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 23401600AA;
	Tue,  4 Aug 2026 08:07:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D26C81F000E9;
	Tue,  4 Aug 2026 08:07:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785830871;
	bh=96QAblQgxs5giL1aBFkUCjlInxNt133EFpvfjqgdHBo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Drn5kOPdRxZal90axb1HjUVJ5oMdCRXxkBMudyVqlaNd90X7Tzh35f03hKBwcdHxX
	 bgD9zpDnnpDd2BAtBVjPc7iVPzlCpCCaru+IipkSfdcVGJUPJxTvomav4ktKzM2aqe
	 7z+yCrwa0LU1D/BzHknmr/Ggyj1dPh70ZV5hD2ixyrk8hNHhC/8nToTDf+vaImuclA
	 J+aoHHfh7YQvcNLV4bC8qxDszRguw78nSrllNZNQeIAifxio3jpqXjR6/QRHnnb4xE
	 NlK7L+aqZFzqOcQED04NwrCz0eu9fuYEd5dymEl0wzK1Fu3K+i8wpHkQvMOjHqxFW6
	 IIZkR+CGP2w+Q==
Date: Tue, 4 Aug 2026 10:07:48 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Mattijs Korpershoek <mkorpershoek@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: phy: Add sa8255p high-speed USB PHY
Message-ID: <20260804-active-sensible-reindeer-f459a3@quoll>
References: <20260730-phy-qcom-snps-femto-v2-8255-v1-0-8b8bf5105a68@kernel.org>
 <20260730-phy-qcom-snps-femto-v2-8255-v1-1-8b8bf5105a68@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260730-phy-qcom-snps-femto-v2-8255-v1-1-8b8bf5105a68@kernel.org>
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

On Thu, Jul 30, 2026 at 03:58:14PM +0200, Mattijs Korpershoek wrote:
> SA8255p platform abstracts resources such as clocks, interconnect and
> GPIO pins configuration in Firmware. SCMI power protocol is used to
> request resource configurations.
> 
> Two power domains can be requested: transfer and core.
> transfer controls clocks and interconnects and core controls
> the GDSC, resets and TLMM (GPIOs).
> 
> Add a new binding for the Qualcomm SA8255p Synopsys Femto High-Speed
> USB PHY V2 found in SA8255P.
> 
> Signed-off-by: Mattijs Korpershoek <mkorpershoek@kernel.org>
> ---
>  .../bindings/phy/qcom,sa8255p-usb-hs-phy.yaml      | 52 ++++++++++++++++++++++
>  1 file changed, 52 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,sa8255p-usb-hs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sa8255p-usb-hs-phy.yaml
> new file mode 100644
> index 000000000000..09f7ca6e7f72
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/qcom,sa8255p-usb-hs-phy.yaml
> @@ -0,0 +1,52 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/qcom,sa8255p-usb-hs-phy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Qualcomm SA8255p Synopsys Femto High-Speed USB PHY V2
> +
> +maintainers:
> +  - Mattijs Korpershoek <mkorpershoek@kernel.org>
> +
> +properties:
> +  compatible:
> +    const: qcom,sa8255p-usb-hs-phy
> +
> +  reg:
> +    maxItems: 1
> +
> +  "#phy-cells":
> +    const: 0
> +
> +  power-domains:
> +    maxItems: 2
> +
> +  power-domain-names:
> +    items:
> +      - const: transfer
> +      - const: core

Here and in your other binding you call these 'transfer' and 'core' but
all other bindings call them 'power' and 'perf'. Why this difference?
What are these domains responsible for?

Commit msg is pretty useless here - repeats the diff. I can read the
diff but I still do not understand why such naming.

And why core is not the first one? It clearly feels like the power
domain thus the main one.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
