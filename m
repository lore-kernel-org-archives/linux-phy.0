Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17EB6C636CD
	for <linux-phy@archiver.kernel.org>; Fri, 10 Feb 2023 17:07:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KUomf9pyP6wUKGLCOmoog6yU+G5GazI3hbf8pza7pGY=; b=SzkV/T+ZTTZU2O
	WgidmXsiv5yC7nf3skDoN7KHFw+PT0zUImnxbJz6KHsk3WAfpZAEvN0oKLCLI2tSFR3P0t9OoM9Sw
	0cKQCeEaCL3NDk7fhH/9cDlTc5A1iDqkETbw4M8NrX0JTPi0G1QHKVYjCCsC3ezfgWTKkql5uWlab
	bfHPJv8Yt0nAcqP0fNvcBoEYaBVD3pKUIWIIjK64s9v4pD7y0Etatkazai1MiddZhnRwO+pq3Bkd4
	PGWNqWcxzOilyValSPsn6M3HrmJdJe7vgwCBz8yFgtYdcPGojmEOq76eGVQfZ0bC4lcj7LSdtPzei
	s7fxT08Qzkc8Cgy3s4Hw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pQWru-006fds-HK; Fri, 10 Feb 2023 17:07:26 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pQWrr-006fcr-T9
	for linux-phy@lists.infradead.org; Fri, 10 Feb 2023 17:07:25 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.source.kernel.org (Postfix) with ESMTPS id 28E02CE2780;
	Fri, 10 Feb 2023 17:07:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 739A5C433EF;
	Fri, 10 Feb 2023 17:07:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676048840;
	bh=8xnEbUe384hDQfmy0gkujDdHwEJmlYJhWIVvttyg4zQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ouvjvsjfj6FEcd9NqZXZ8enkDcwx7PSljl8SoNYZ3XdcejU2Ioq59FBZk72pqEde5
	 1XTXzIZQu1jXtC0GOrtJrAz/PDEtzcgwiCzXqnNJtu24eMSn2Ka51C94Q9+mgsBSgi
	 aW2CsNuMiDqio4/OPNh7kL1Gu/9NgYfenf+xycqfo614duwKZak+U8NJrKkfD3O5tp
	 VA1FhFw+z2CKlRgLZNt7E4CvmDA84ZH7aZfcTiWWaciYGDYIgyucYLIetUpkA3ptys
	 bFD/bIWp1VQOZozNk7ahP68U197WBLrXTFcd3fachMu5SAb8w+XC4GQpvoT//MouvD
	 +hd/0ivyVbzeg==
Date: Fri, 10 Feb 2023 22:37:16 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	Rob Herring <robh@kernel.org>, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: phy: amlogic,g12a-usb3-pcie-phy: add
 missing optional phy-supply property
Message-ID: <Y+Z5xOlAeqO6JyIj@matsya>
References: <20230207-b4-amlogic-amlogic-g12a-usb3-pcie-phy-fix-v1-1-3e437b759549@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230207-b4-amlogic-amlogic-g12a-usb3-pcie-phy-fix-v1-1-3e437b759549@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230210_090724_151537_84047502 
X-CRM114-Status: GOOD (  15.63  )
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

On 07-02-23, 16:03, Neil Armstrong wrote:
> Add missing optional phy-supply property used to power up PHY regulators.
> 
> Fixes: 87a55485f2fc ("dt-bindings: phy: meson-g12a-usb3-pcie-phy: convert to yaml")
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  .../devicetree/bindings/phy/amlogic,g12a-usb3-pcie-phy.yaml          | 5 +++++

I dont have this file in my tree, what was this based on?

>  1 file changed, 5 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/amlogic,g12a-usb3-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/amlogic,g12a-usb3-pcie-phy.yaml
> index 129d26e99776..3314711292d6 100644
> --- a/Documentation/devicetree/bindings/phy/amlogic,g12a-usb3-pcie-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/amlogic,g12a-usb3-pcie-phy.yaml
> @@ -35,6 +35,11 @@ properties:
>    "#phy-cells":
>      const: 1
>  
> +  phy-supply:
> +    description:
> +      Phandle to a regulator that provides power to the PHY. This
> +      regulator will be managed during the PHY power on/off sequence.
> +
>  required:
>    - compatible
>    - reg
> 
> ---
> base-commit: 49a8133221c71b935f36a7c340c0271c2a9ee2db
> change-id: 20230207-b4-amlogic-amlogic-g12a-usb3-pcie-phy-fix-b5daf54fb7d6
> 
> Best regards,
> -- 
> Neil Armstrong <neil.armstrong@linaro.org>

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
