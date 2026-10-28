Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59AC4606A324
	for <linux-phy@archiver.kernel.org>; Wed, 28 Oct 2026 12:59:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=ZoL+r07m;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=NmbrrQyG
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=DxS1718QgkaVykVFtB32DctkT4NnrvtleAuuU6ey2wI=; b=ZoL+r07mb6V1XH1u8DHygI0ojW
	/UJyazsR1CgJly3PPIHxKexhkiXa2C1xTq4w4n0F/VhVGFXSyQDFF4u7czo9mH0A9jfNdCDjeqefT
	qvris1DdWwHK+mR1XCag9xeCUTTQ8HYw7dz9IoQFb4OKAL7mIAk4Hm6ARnh6I0Z2BSyrBUgmNXWua
	caCNC11axtJSVTSWJ2c3c4be4UM9Zgr4svx4ZziuZ1n+VYbjkS09Yi9E64gfpoiDZI6AE7MxzUJTo
	gxOghdxaIqNEY16dw5qv4sIqGIdR7UOEJ1MsKBKXUNhKrChDN35zyguFbsWbtpLByXyOyqYJ8/MxF
	usYdycXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM3FX-0000000701j-3y88;
	Wed, 28 Oct 2026 12:59:27 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM3FW-0000000701b-1oeD
	for linux-phy@lists.infradead.org;
	Wed, 28 Oct 2026 12:59:26 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 9E761601F0;
	Wed, 28 Oct 2026 12:59:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5783D1F01825;
	Wed, 28 Oct 2026 12:59:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793192365;
	bh=AVsMoMAioRRg3QgeW2n061GklGCfmXx55YHt1OOF0Rc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=NmbrrQyGGM05k158KvD50ijX7lp00MtT703y6fmg+avBX75Z0V6nDlF/CSamSSeKX
	 1GGHCanq67ZdgNt0VjwUU4WaRVNSXdxTVBKEeBYNIsztxKoLC9WKMyJDrOeSarB2bj
	 lb7xm7ERMQWSdACDCPmOu8UPes4u6OBbGQumLyNe59+niAXsOELKkATLMNGj5eB33/
	 XGr7CWIdcTbj7l/dvTctND36891R+LPKfKH2k+sqZfMr2tmA1O1dKZsMK/14n/4osw
	 taMWfVX2oI6cjH+poj1UfuTdQzRgUSmd+FJ0XyOZOYopSyMv4C6GaeiGcB6Sr8BETx
	 4eqYyX+q9RHtQ==
Date: Wed, 28 Oct 2026 13:59:21 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Hiren Gohel <hiren.gohel@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Manivannan Sadhasivam <mani@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: phy: qcom: Add SA8797P eUSB2 PHY
Message-ID: <20261028-nice-infallible-mongoose-3befcc@quoll>
References: <20261026094118.3264112-1-hiren.gohel@oss.qualcomm.com>
 <20261026094118.3264112-2-hiren.gohel@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261026094118.3264112-2-hiren.gohel@oss.qualcomm.com>
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
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Mon, Oct 26, 2026 at 03:11:17PM +0530, Hiren Gohel wrote:
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    soc {
> +        #address-cells = <2>;
> +        #size-cells = <2>;
> +
> +        phy@88e3000 {
> +            compatible = "qcom,sa8797p-snps-eusb2-phy";
> +            reg = <0x0 0x088e3000 0x0 0x154>;
> +            #phy-cells = <0>;
> +
> +            power-domains = <&scmi12_pd 1>, <&scmi12_pd 0>;
> +            power-domain-names = "core", "transfer";

Please make the example complete - also phys property.

With this:

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
