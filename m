Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9507606A321
	for <linux-phy@archiver.kernel.org>; Thu, 29 Oct 2026 08:09:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=skIS/kGh;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=cQQUUwqu
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=E/moXgtLE5Gmbu8Dd9e6iUuaPgo6Uo2lql833b+eYl4=; b=skIS/kGhll+5j5YDrpFX+Ly9d2
	uSQ6yXIF9ItBiEPYxOIKvhcbM/41RjWmlSw8fZfHNj8ZHR3c3IWNr0w3UGCl5r4Zt1NeeboQxUVRc
	S58ViaJwmqjDZF5TInLGswEpJNWgVSoElB5nX0rGm0Ivpkp2Bye77do87y8A89n/ymCg7PU0JgCPg
	SpZj7wGgS7mto/gBx5Wk9Mv59R+TwbdzDm16l1sj65iE5vXxAZdqVbCRgxWDHC52BVPU4kyqxjLEh
	e/wNzZNtVeYSA/o6yxX9nzRUf0KltRI/mUoJatxJxyNGfGmr/l7QxDgXUr4OU1ERweuWW9zRzpEzR
	K2Pdkjgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMLCf-00000008gJH-1NoR;
	Thu, 29 Oct 2026 08:09:41 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMLCc-00000008gId-1VLt;
	Thu, 29 Oct 2026 08:09:38 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 4A460600D1;
	Thu, 29 Oct 2026 08:09:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 049331F01825;
	Thu, 29 Oct 2026 08:09:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793261377;
	bh=XcnOgGjQGzD2jt2+DxGN1X1zcvzYzq6x9cioPsXKF5A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=cQQUUwquaWBlsXDYoTLxTQ94mlF1ENpJUtdHRep3gjTCqt4CcYJmg0orM8Av1MiJn
	 lijwkBKZ7LYj7PTQlTnAP3Dv0g8kJMnSbSEZVygjKv9nKRvOVDZ/GEjQbuRl+Wyzt1
	 ZRoA+HU+wX9/MRRSER2kjftPWPbhc0iYqKcjG6ycMATi/mrmHId+n3uVqMJU04qMYB
	 Sb1rwbVtZUIn8OWeclPDIQd8Mi9whmlxnmfgYFwp3ic1VJHqb84SW2ip8N0JyV4jnW
	 g1JHXWYGRyDGGJk0i/RzvjG33Yx/2+N1YVFmQmXsQD/ScyocJ0lTlnZzHZ0On9PTmJ
	 vGmNnfGnH8yYQ==
Date: Thu, 29 Oct 2026 09:09:33 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Florian Fainelli <florian.fainelli@broadcom.com>
Cc: linux-kernel@vger.kernel.org, Damien Le Moal <dlemoal@kernel.org>, 
	Niklas Cassel <cassel@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Ray Jui <rjui@broadcom.com>, 
	Scott Branden <sbranden@broadcom.com>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Tejun Heo <tj@kernel.org>, 
	Yendapally Reddy Dhananjaya Reddy <yendapally.reddy@broadcom.com>, 
	"open list:LIBATA SUBSYSTEM (Serial and Parallel ATA drivers)" <linux-ide@vger.kernel.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, 
	"moderated list:BROADCOM IPROC ARM ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>, 
	"open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>
Subject: Re: [PATCH v3 2/6] dt-bindings: ata: sata-brcm: Describe the NSP IDM
 registers
Message-ID: <20261029-versed-automatic-orangutan-43cfde@quoll>
References: <20261026191618.3178830-1-florian.fainelli@broadcom.com>
 <20261026191618.3178830-3-florian.fainelli@broadcom.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261026191618.3178830-3-florian.fainelli@broadcom.com>
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

On Mon, Oct 26, 2026 at 12:16:14PM -0700, Florian Fainelli wrote:
> Northstar Plus uses the SATA IDM block to enable the interface clock and
> deassert the core reset before accessing the controller registers.

And which compatible in the binding is "Northstar Plus"? I tried to map
them to arm/bcm/brcm,nsp.yaml but nothing is there, so it looks like you
are making changes without having actual compatible documented. In that
case this is not needed. Make changes WITH documenting new compatible.

> 
> Allow an optional third register region named "idm" for the NSP
> controller. Keep other compatibles limited to their existing two
> register regions and allow older NSP descriptions without the IDM.
> 
> Signed-off-by: Florian Fainelli <florian.fainelli@broadcom.com>
> ---
>  .../bindings/ata/brcm,sata-brcm.yaml          | 20 ++++++++++++++++++-
>  1 file changed, 19 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/ata/brcm,sata-brcm.yaml b/Documentation/devicetree/bindings/ata/brcm,sata-brcm.yaml
> index fe7f091e744f..98529784b1fa 100644
> --- a/Documentation/devicetree/bindings/ata/brcm,sata-brcm.yaml
> +++ b/Documentation/devicetree/bindings/ata/brcm,sata-brcm.yaml
> @@ -15,6 +15,21 @@ maintainers:
>  
>  allOf:
>    - $ref: ahci-common.yaml#
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: brcm,bcm-nsp-ahci
> +    then:
> +      properties:
> +        reg:
> +          description: AHCI, top control and optional IDM register regions
> +    else:
> +      properties:
> +        reg:
> +          maxItems: 2
> +        reg-names:
> +          maxItems: 2

Please move entire allOf to the bottom, before "unevaluatedProperties"
line.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
