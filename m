Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C808E7716B
	for <linux-phy@archiver.kernel.org>; Wed,  4 Dec 2024 15:09:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gRyNnxnpAIJnPoZ/6AkXQ8zeIZ0CrMzoaQ5R87zG0eI=; b=APDVeGaaGv/bTV
	kr2K8nosGOUohOWmcDQUBGDva7OE4EJZ30wxisxbl/XPepakrYpEoDGgkTT3jo0WtGrBnSx/6Nr8P
	GYKya7shwZt3CxnGL46DJrMuVDeXAiiOSPV0wrYizj5Q87U0PtxrXIKf09Zk1unxwK9mOGHYA9lt0
	shuxxwfkamqjeVDsW6YT5jnXePm8IBnAaaolWLV/pReH8XBSrTQ0eS3nuddHB/n6dieluVCjrg7Ii
	kYt6xnBGp7+OfDrXbEacAKbbMt0tNnqMH687dxFz5i4El54P4yRLhWg5Wzyq9f7QPOpzHvb/NHabs
	7pZauiLEDASFl6XagJnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tIr0o-0000000Cx4P-10VX;
	Wed, 04 Dec 2024 15:09:58 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tIqyv-0000000Cwgv-1S00;
	Wed, 04 Dec 2024 15:08:02 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id EE1905C6ABB;
	Wed,  4 Dec 2024 15:07:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 68516C4CECD;
	Wed,  4 Dec 2024 15:08:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733324880;
	bh=0kt2C/BPb11YSq+EhEeua8KQDxctV1/JE1X1KHLEYDA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nkEu+XicCILr1p4dve1n8IUDmckfslbj50hNbRBSVCy1ZeA+s2/RPB++Pt0GQpSkd
	 5Im3F4iNCvBlJTLMierdCw9aFJmC+ArBXI8mNoxMSu5Iggv3PdgcRQYBWnCD9QZaHn
	 OmAWy0UwfWDeQCu0BvNrKZVMeb5E/wAdLEozIavQJlCifk/Q3V0MptnU9vaQncyFP8
	 yRfPfvVuCCoDBhJ2y8fxCarXhjTwjqeOT/69+2F23AnSg3wI17wmuIGWWRThSnFe5b
	 WeBMmSu7pIT+3CH23D5hSayds/q3SWmzX5C5efGPt9saYir1pe6I9e1fh6rvXNsaCu
	 cNFUFCO8ZW0rw==
Date: Wed, 4 Dec 2024 09:07:58 -0600
From: Rob Herring <robh@kernel.org>
To: =?iso-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Peter Griffin <peter.griffin@linaro.org>,
	Tudor Ambarus <tudor.ambarus@linaro.org>,
	Sam Protsenko <semen.protsenko@linaro.org>,
	Will McVicker <willmcvicker@google.com>,
	Roy Luo <royluo@google.com>, kernel-team@android.com,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org
Subject: Re: [PATCH v2 2/8] dt-bindings: phy: samsung,usb3-drd-phy: gs101:
 require Type-C properties
Message-ID: <20241204150758.GA220712-robh@kernel.org>
References: <20241203-gs101-phy-lanes-orientation-phy-v2-0-40dcf1b7670d@linaro.org>
 <20241203-gs101-phy-lanes-orientation-phy-v2-2-40dcf1b7670d@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241203-gs101-phy-lanes-orientation-phy-v2-2-40dcf1b7670d@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241204_070801_473188_C5DA8852 
X-CRM114-Status: GOOD (  23.26  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Tue, Dec 03, 2024 at 12:13:50PM +0000, Andr=E9 Draszik wrote:
> orientation-switch is the standard declaration to inform the Type-C mux
> layer that a remote-endpoint is capable of processing orientation
> change messages.
> =

> The USB PHY on gs101 needs to be configured based on the orientation of
> the connector. For that the DTS needs a link between the phy's port and
> a TCPCi, and we'll need to inform the phy driver that it should handle
> the orientation (register a handler).
> =

> Update the schema to enforce that by requiring the orientation-switch
> and port properties on gs101 (only). We disallow orientation-switch on
> all other supported platforms, since other versions of this phy (or its
> system integration) don't currently support or even need it.
> =

> Even though this new required gs101 property is an ABI break, the
> intention for the driver is to behave as before if it's missing
> (meaning for gs101 it will work in SS mode in one orientation only).
> Other platforms are not affected.
> =

> Reviewed-by: Peter Griffin <peter.griffin@linaro.org>
> Signed-off-by: Andr=E9 Draszik <andre.draszik@linaro.org>
> =

> ---
> v2:
> * squash original patches #2 and #3
> * actually disallow orientation-switch on !gs101 (not just optional) (Con=
or)
> * update commit message to clarify that the intention for the driver is
>   to work with old and new DTS (Conor)
> * collect tags
> ---
>  Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml | 9 ++++=
+++++
>  1 file changed, 9 insertions(+)
> =

> diff --git a/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.y=
aml b/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
> index 1f8b35917b11..c1d16254aeec 100644
> --- a/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
> @@ -51,6 +51,9 @@ properties:
>    "#phy-cells":
>      const: 1
>  =

> +  orientation-switch:
> +    $ref: /schemas/usb/usb-switch.yaml#/properties/orientation-switch

Generally, we don't reference things at a property level, but node =

level. You can just do:

  - if:
      properties:
        compatible:
          contains:
            const: google,gs101-usb31drd-phy
    then:
      $ref: /schemas/usb/usb-switch.yaml#


And switch additionalProperties with unevaluatedProperties.

Rob

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
