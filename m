Return-Path: <SRS0=BhbR=OD=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 38A16C433EF
	for <linux-phy@archiver.kernel.org>; Mon, 13 Sep 2021 08:18:54 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EEF4260FBF
	for <linux-phy@archiver.kernel.org>; Mon, 13 Sep 2021 08:18:53 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org EEF4260FBF
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=cerno.tech
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7n59qlOu5R6sFBP5CbGFCdS4eRr44yWP8hljfExsXYU=; b=FLNZ0JgXyaVZYo6FXtS4Mqqah9
	JQxbD38Hc4IoxV9pThz6ppPkWKlWlQk91zhu2Tsfns9HYhV2JSspXxEb+5AOmRptVz/yF9BPiRX/S
	fbrFyMM53fWPSXVB9vKRXkLjqdC/OCi41KP3YYfs/VTM8Gv9mDkzXzfihHhN6gZmhA+TIv9xQLlIM
	iMHJyPvfkJkIkqW81rXwFrZhxOtaf06NX2JCFnYjWq5G2KEWJhW4K3/i8K1ok4aJd+V4M3jemqwP0
	0c33//LPJ9cUVej0vJIfGGWtqL6AlDd/I/B0ZEZVGOaFf4181v3RS7bfXSAoAlnG+wRyJp7jB68gZ
	MSrfwfhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mPhAz-000hNo-Cu; Mon, 13 Sep 2021 08:18:53 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mPhAK-000h8C-Jr; Mon, 13 Sep 2021 08:18:14 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id 75DDC580B92;
 Mon, 13 Sep 2021 04:18:11 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Mon, 13 Sep 2021 04:18:11 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm3; bh=Q/fC65yGDoBYl/ELDK8wk321UEy
 fRbfkHgYZ5KDCjxY=; b=e0eGQYPcf6km0clE+c4JZyfbBuHvc+/sI1gzIK2u/O+
 oyZTNIa3xl+5C/GvUyEh/oKL8LjwsZoKb3oAAp9NZrFpwg55aDD0MxVYMSU4+EPB
 fiUBphzo66ihLjuucm3kLUENH+2DC8Hg6R287Q10/2OvgQa4KYkCBdfdQT+O6wCl
 8rFtPo5onnUfuPgmfLXlYbtFz/kZyxfHK2zs/Gu2DrFwRdb5ZRHnm/plEpDwno0c
 Fkk608VBqgulakZELGkMiaugPBfMQT7lnT0yanBtEGesDkrbxq4UcHCmFZEuv79a
 9j30jDlg/FoMmQdDPSk+WN2sWXmexwQFnQZU347f1fQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=Q/fC65
 yGDoBYl/ELDK8wk321UEyfRbfkHgYZ5KDCjxY=; b=bhkwBWZhT9SOr4FP+7+/Vg
 ikaOhf2LCqXTfz9gfQiAHhQOZXNgH3JUYMf/Pi4iixbEDDrr2hQaa3MTAWyUxt6e
 AJdke3UAPKYbiHalULWw5LILqHzlNHsvAWW7zN4INRb8GY0boDcyydAnhAw2gkNx
 QTHbFw78lrHXPWKL9xQSX+J2aFPfJW/4TdhDujdo0b9UARvpiEhmB6Bpaa7mkTM0
 KWlqPONTWGMBhDNDSFtCCbx3Kjm0iK6yPBCq/cDQXp513KjV7KAMi/TmetNQrWvT
 V+KBrKlZpS2CGuyF+uExuXhuKHbFfQYAp3kpq3glQt8rKjZ0wD1ecbS1rFWbqJdA
 ==
X-ME-Sender: <xms:QQk_YZApqI9u_gMm4YDL7mszIB5KWw_Z4h0zfxjaB7WiMy-xWwDieA>
 <xme:QQk_YXgup7juhc-JRaIbSUh2h9h_wzb2hHzToWX8M2q81lqfqBf9FH1MEatpw2FGc
 WuB8DUasBH7h5BqQ6Q>
X-ME-Received: <xmr:QQk_YUnx7rDXyXiV2Fz5SiXioOzanNKHqUwGHGo1_KkeBKYFATROuCvGQGmYK-DbfuwUx5rqGJdaZh0Gei3fjD9Bg7nO2rVIpaN4>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrudegjedgtdduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepffetteevieejteeuhfffgeektefghfeileehhedtuddutefhhfejtddvtddu
 ledvnecuffhomhgrihhnpeguvghvihgtvghtrhgvvgdrohhrghenucevlhhushhtvghruf
 hiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdr
 thgvtghh
X-ME-Proxy: <xmx:QQk_YTy-swT6w_J21NltbLyuzhxusHfhdfA2bef4dBeq5i5i3Bc_3A>
 <xmx:QQk_YeSrBSF8VsmAdhJvMUcFGeFzxJmzeeeFdxxGhDGeDsXKyvc8Ew>
 <xmx:QQk_YWak79bYYtVayOBteIWq7L_TPxmD6VE9Zxx7dpvxDzDN4Tp73w>
 <xmx:Qwk_YfLk3cKWbpX1j1vfj3mwE681eu_9kOMCs64CnG1imQ8CKP1JIA>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 13 Sep 2021 04:18:09 -0400 (EDT)
Date: Mon, 13 Sep 2021 10:18:08 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-staging@lists.linux.dev,
 Yong Deng <yong.deng@magewell.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Hans Verkuil <hans.verkuil@cisco.com>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Helen Koike <helen.koike@collabora.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH 17/22] dt-bindings: media: Add Allwinner A31 ISP bindings
 documentation
Message-ID: <20210913081808.esgqvz4eeatp4hkp@gilmour>
References: <20210910184147.336618-1-paul.kocialkowski@bootlin.com>
 <20210910184147.336618-18-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
In-Reply-To: <20210910184147.336618-18-paul.kocialkowski@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210913_011812_774645_F2538641 
X-CRM114-Status: GOOD (  17.65  )
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
Content-Type: multipart/mixed; boundary="===============7264207575417903439=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============7264207575417903439==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="menbmu3mm5gvaxqx"
Content-Disposition: inline


--menbmu3mm5gvaxqx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 10, 2021 at 08:41:42PM +0200, Paul Kocialkowski wrote:
> This introduces YAML bindings documentation for the Allwinner A31 Image
> Signal Processor (ISP).
>=20
> Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> ---
>  .../media/allwinner,sun6i-a31-csi.yaml        |   2 +-
>  .../media/allwinner,sun6i-a31-isp.yaml        | 111 ++++++++++++++++++
>  2 files changed, 112 insertions(+), 1 deletion(-)
>  create mode 100644 Documentation/devicetree/bindings/media/allwinner,sun=
6i-a31-isp.yaml
>=20
> diff --git a/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-=
csi.yaml b/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-csi.=
yaml
> index f4a686b77a38..c60f6b5403fa 100644
> --- a/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-csi.yaml
> +++ b/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-csi.yaml
> @@ -1,4 +1,4 @@
> -# SPDX-License-Identifier: GPL-2.0
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
>  %YAML 1.2
>  ---
>  $id: http://devicetree.org/schemas/media/allwinner,sun6i-a31-csi.yaml#
> diff --git a/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-=
isp.yaml b/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-isp.=
yaml
> new file mode 100644
> index 000000000000..a0f82f150e90
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-isp.yaml
> @@ -0,0 +1,111 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/media/allwinner,sun6i-a31-isp.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Allwinner A31 Image Signal Processor Driver (ISP) Device Tree Bin=
dings
> +
> +maintainers:
> +  - Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - allwinner,sun6i-a31-isp
> +      - allwinner,sun8i-v3s-isp
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    items:
> +      - description: Bus Clock
> +      - description: Module Clock
> +      - description: DRAM Clock
> +
> +  clock-names:
> +    items:
> +      - const: bus
> +      - const: mod
> +      - const: ram
> +
> +  resets:
> +    maxItems: 1
> +
> +  ports:
> +    $ref: /schemas/graph.yaml#/properties/ports
> +
> +    properties:
> +      port@0:
> +        $ref: /schemas/graph.yaml#/$defs/port-base
> +        description: CSI0 input port
> +
> +        properties:
> +          reg:
> +            const: 0
> +
> +          endpoint:
> +            $ref: video-interfaces.yaml#
> +            unevaluatedProperties: false
> +
> +        additionalProperties: false
> +
> +      port@1:
> +        $ref: /schemas/graph.yaml#/$defs/port-base
> +        description: CSI1 input port
> +
> +        properties:
> +          reg:
> +            const: 0
> +
> +          endpoint:
> +            $ref: video-interfaces.yaml#
> +            unevaluatedProperties: false
> +
> +        additionalProperties: false

port@0 and port@1 required?

> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +  - clock-names
> +  - resets

ports required?

Maxime

--menbmu3mm5gvaxqx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCYT8JQAAKCRDj7w1vZxhR
xZNAAP46Yko6Ls0D9aw1lxu7i05pPd3ZqX3GT6b9KfjUV53/eAEA3V+K3VWujOkc
i9uv/M1/MIUThJ7WBSs2tuSEBCcS9AM=
=2NXq
-----END PGP SIGNATURE-----

--menbmu3mm5gvaxqx--


--===============7264207575417903439==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============7264207575417903439==--

