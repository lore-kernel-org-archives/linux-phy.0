Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1153606A33F
	for <linux-phy@archiver.kernel.org>; Fri, 13 Nov 2026 10:07:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=17UVGUf8;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=I9Yt+iaJ
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=fqmLZSQUQljZUOws+ZJy7faEkYRe4RDowsXyT5RKHGI=; b=17UVGUf8PjSeqPMyUezE5VQqBI
	tShlC6Dnqu8NthHcGuq9cJUQ+jlqvHVNnTdvgZbBX75Rw8z/+VhHt5UyR+JwojdbOubn5FuNroE6S
	1e2f+BooS+oCvcfSmLFb4QhNtgZqqTqhP7dM+lCJDvQ32vfiiLvr0oxtQolIKPlR8JHQTrv48IVRB
	WWqENBhLmdl/3QaimLeekW37oxfKHh4rj9IMIBe3PoPeWOsDl3biT3YnRbXsGKwi7/TEJULaKuXNX
	6WLcWlf/uVMGuNlX1W252HYzBf6csrpRh/uXOnIn+phuKxk6TQFBziiGjuIOrjpkJwaFJsQRNiJ3U
	pcTr4KHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRoC9-0000000CIpk-0SaZ;
	Fri, 13 Nov 2026 10:07:45 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRoC7-0000000CIpP-249f
	for linux-phy@lists.infradead.org;
	Fri, 13 Nov 2026 10:07:43 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 77ECF6263B;
	Fri, 13 Nov 2026 10:07:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 32D671F000C4;
	Fri, 13 Nov 2026 10:07:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794564462;
	bh=M+He5GZ0KmkxtjNbEWExh1PZmwL5eABb9JK/dacBH4M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=I9Yt+iaJbuNFlNOCkkutSaWBe/lzHAoF1Keu3hWDVpP1eWmxaA+tYDjESE06inLOh
	 YQkoX159KwVyYKuFthiScAuIWxSCKTOA1SIDlLn0ImN+PkprICp9eTGFCnqGTbpJCy
	 5n6+yXSnAmQ0YBLbbOFXzBtxQ1qvOgbddw+eO8U43CSu84bJRxfLrpYj3s/wWu5yRU
	 BNblnl0INpSDZxG4yEXhU68kF72z6e+8WOZTpBrKE8fqERyrKSBUiAJ5tk1G29bOU5
	 v8u0ikf4vTSr95pPWoeQjSKk22x/o4Zk0Y6gcgAWV0gGfkyYzzdfL3ptYzJydcbLrf
	 /51w0hsmt9hjw==
Date: Fri, 13 Nov 2026 11:07:38 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abelvesa@kernel.org>, 
	Shawn Guo <shengchao.guo@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/3] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy:
 Add the cfg_ahb clock for Nord
Message-ID: <20261113-influential-lumpy-goose-68ec0f@quoll>
References: <20261112-qcom-nord-ahb2phy-clk-v2-0-30ad3d947217@oss.qualcomm.com>
 <20261112-qcom-nord-ahb2phy-clk-v2-1-30ad3d947217@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261112-qcom-nord-ahb2phy-clk-v2-1-30ad3d947217@oss.qualcomm.com>
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
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Thu, Nov 12, 2026 at 04:36:38PM +0100, Bartosz Golaszewski wrote:
>  .../devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml         | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> index 13e64fe510b8f..8d09e6937fef0 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> @@ -209,11 +209,13 @@ allOf:
>          compatible:
>            contains:
>              enum:
> +              - qcom,nord-qmp-usb3-dp-phy
>                - qcom,sc7180-qmp-usb3-dp-phy
>                - qcom,sdm845-qmp-usb3-dp-phy
>      then:
>        properties:
>          clocks:
> +          minItems: 5
>            maxItems: 5
>          clock-names:
>            items:
> @@ -229,6 +231,7 @@ allOf:
>            compatible:
>              contains:
>                enum:
> +                - qcom,nord-qmp-usb3-dp-phy

I don't understand why it is added to two blocks constraining clocks.
Does it even pass checks?

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
