Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 285B6606A336
	for <linux-phy@archiver.kernel.org>; Mon,  9 Nov 2026 10:44:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=U28ObKXx;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=mfOpr55J
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=SF/gDz8P9hRB/dnasLornEH0ZhnwC36qQRrhr++Bqso=; b=U28ObKXxpFVsfE93QKujGYjOH7
	WZz7GWT1sy8QtVTU6xT1xDCEh7AcRrPT35b4K6g8wbkhurA4FF5QMflmASu98e+6RIUgg94sYMLYj
	/IOrXZ0i58P9ouWo2F6W6vrC6RVMCHYElbTEm9E3ixpMyaSLCs6jcRs00ybldXg/IF8ypzaV9wGbb
	5qa6SvKem1L6/iD42Spcll+49wM9WJxY/z6U90iF3iObSe9aTFIwXS3eC7F/r/A8WK0WberTOyEmR
	+SUhFLMROBLthypTftp3MNJaPpfdP8zQ/ZdMZ9YkLoNLjG829UyUP9pb1GYOGz8hR6+H9ApA+Pmls
	yO2h6NIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQMrU-00000000RtW-31PO;
	Mon, 09 Nov 2026 10:44:28 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQMrS-00000000RtF-3WPY
	for linux-phy@lists.infradead.org;
	Mon, 09 Nov 2026 10:44:26 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 3ADBC40B28;
	Mon,  9 Nov 2026 10:44:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 34E151F0089F;
	Mon,  9 Nov 2026 10:44:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794221066;
	bh=TXr2TKEYrIDqnyQ+02ZfHnpl8vf7msiDB6kAkQN1rZM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=mfOpr55JSOEAKsYIRwZlPYVVji4xFQLSCZnYgYFBPvHuYw5tqPT6lpcFI9qJa0aep
	 VERbNONOWWRfHvh/4pt0kOHo5GTHTckTKsADwINYHKcBPYIEykbTiHYKFVvv6Iayco
	 P56iKD/4w8gwEuVziu3200TNGNO+AhB2cOwaCB72Mkz71mMNHxSY5o0Mp5g7LawzBY
	 /hqT65DQ7N9EF/R0bmufgMI1JGQVXsKSu8+Hb/tg6OQ6csPirqc+IoZQPamOaOwii6
	 nfY5lMRBzsqXWKW0jlB2p3CN9fmRVT3ZMcVZGIxc577QjbgavPnbuP3Z9CnA+a/9r1
	 tz7C6CPoEbMHA==
Date: Mon, 9 Nov 2026 11:44:22 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Andrew Gigena <mail@andrewgigena.dev>
Cc: Loic Poulain <loic.poulain@oss.qualcomm.com>, 
	Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Bryan O'Donoghue <bod@kernel.org>, 
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Abel Vesa <abelvesa@kernel.org>, 
	Andi Shyti <andi.shyti@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-i2c@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v3 2/7] dt-bindings: media: qcom,sm8150-camss: Add SM8150
 CAMSS
Message-ID: <20261109-slick-transparent-ostrich-28ddad@quoll>
References: <20261106-sm8150-v7.4-rc1-camss-v3-0-0103e8a0bbcd@andrewgigena.dev>
 <20261106-sm8150-v7.4-rc1-camss-v3-2-0103e8a0bbcd@andrewgigena.dev>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261106-sm8150-v7.4-rc1-camss-v3-2-0103e8a0bbcd@andrewgigena.dev>
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Fri, Nov 06, 2026 at 06:35:34PM +0000, Andrew Gigena wrote:
> Document the Qualcomm SM8150 Camera Subsystem. The IP integrates four
> CSIPHY, four CSID (two full and two lite), two VFE and two VFE-Lite
> instances, with 19 clocks, 8 interrupts, eight IOMMU streams, four
> interconnect paths and three power domains.
> 
> The CSIPHY I/O spaces are not part of the CAMSS container device: each
> CSIPHY is driven by the dedicated qcom,sm8150-csi2-phy driver, so this
> binding only describes the VFE and CSID resources. Each CSI input port
> is described with data lanes starting at 1, as required by the CAMSS
> PHY mode.
> 
> Describe SM8150 in a dedicated schema instead of reusing another SoC's
> schema.
> 
> Signed-off-by: Andrew Gigena <mail@andrewgigena.dev>
> ---
>  .../bindings/media/qcom,sm8150-camss.yaml          | 285 +++++++++++++++++++++
>  1 file changed, 285 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/media/qcom,sm8150-camss.yaml b/Documentation/devicetree/bindings/media/qcom,sm8150-camss.yaml
> new file mode 100644
> index 000000000000..371ff1ce0bd2
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/qcom,sm8150-camss.yaml
> @@ -0,0 +1,285 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/media/qcom,sm8150-camss.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Qualcomm SM8150 Camera Subsystem (CAMSS)
> +
> +maintainers:
> +  - Andrew Gigena <mail@andrewgigena.dev>
> +
> +description:
> +  The CAMSS IP is a CSI decoder and ISP present on Qualcomm platforms.
> +
> +properties:
> +  compatible:
> +    const: qcom,sm8150-camss
> +
> +  reg:
> +    maxItems: 8
> +
> +  reg-names:
> +    items:
> +      - const: vfe0
> +      - const: csid0
> +      - const: vfe1
> +      - const: csid1
> +      - const: vfe_lite0
> +      - const: csid_lite0
> +      - const: vfe_lite1
> +      - const: csid_lite1

Seems you ignored my last review, so repeating:

From which binding did you copy such order of entries?

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
