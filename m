Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EBD06E7717D
	for <linux-phy@archiver.kernel.org>; Wed, 11 Dec 2024 15:56:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AUU/RI53Bh5Sh9k6bSX/4qaSXcHIrxkTCtLV76F1/wY=; b=T4xlIKohGsy6oc
	VCKVRCW4GIa1S99xrLAZ437/7DCmJdpS4RN0LEjlk5s+FEO5xJcEY6OUSJ0Ost26m6ykV3vMZMP4t
	s6qx7eB0AKrciERk2Bwcnwa+atQnfVPzmIQ95tOryUfNP9YKVsdVrsrrap+z750agyjYhwD3kyKAr
	lA9j4C4e+K4bEUO/uAQ4b7HrxoOvskenjvQXzs8F/ScIlgDzeY0wF9fT/P+RfICrqKgsVlhRLnarE
	mZ6ddn2rLar3Rk6s/wHDu/+/+J+lAvG3e1SCXPOds/bLDp5WE990tHOZAz1gek2nwHi1Qqsg5vOaM
	vYhEKhXi4ZdUW3UK7FYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLP51-0000000FLyq-32Mz;
	Wed, 11 Dec 2024 15:56:51 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLOvj-0000000FJsX-3puh;
	Wed, 11 Dec 2024 15:47:17 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 004885C617A;
	Wed, 11 Dec 2024 15:46:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DC786C4CED2;
	Wed, 11 Dec 2024 15:47:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733932035;
	bh=qsPmqbckC0QLNUpCrEGTyFuyNNsWpyK6tx/uRzgBwzY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Y8zqfTprkNTe1s93rc5PaCRN99PLuwqz02R0j6clNhKwEiZz7moxd1G7TSOF/sxLn
	 tqx2PB3FNZHno/X1jtiFVA9FKqXfw+qKjYyws/jH/RGBzrLRBh0oefYfkc00uEzAOM
	 cFH2GMIVQOedciLDQgsrRsgmTWPz4Wv7cjNxdiiao9zs/P343SngRRKTfPCsYeQaU+
	 DcvC3zVRTIUjMWWIwIXhAig6mIbzd967tMnYkdWOXutBqmRdCIkComwQXRj+ewu6Go
	 qtDp66bq4Z9WueQU3wTQdatO6ox7zea5ZP7ffhNMlg/aRxx+RuK+Fi9v898oL907Kj
	 70mmTbcE3KZNQ==
Date: Wed, 11 Dec 2024 09:47:13 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: =?iso-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
Cc: Roy Luo <royluo@google.com>, Tudor Ambarus <tudor.ambarus@linaro.org>,
	Will McVicker <willmcvicker@google.com>,
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	devicetree@vger.kernel.org,
	Peter Griffin <peter.griffin@linaro.org>,
	linux-samsung-soc@vger.kernel.org,
	Sam Protsenko <semen.protsenko@linaro.org>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Vinod Koul <vkoul@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	kernel-team@android.com, Conor Dooley <conor+dt@kernel.org>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 2/7] dt-bindings: phy: samsung,usb3-drd-phy: gs101:
 require Type-C properties
Message-ID: <173393203254.3086087.14024716233496700566.robh@kernel.org>
References: <20241206-gs101-phy-lanes-orientation-phy-v4-0-f5961268b149@linaro.org>
 <20241206-gs101-phy-lanes-orientation-phy-v4-2-f5961268b149@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241206-gs101-phy-lanes-orientation-phy-v4-2-f5961268b149@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241211_074715_992898_ABB6EE86 
X-CRM114-Status: GOOD (  19.71  )
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


On Fri, 06 Dec 2024 16:31:02 +0000, Andr=E9 Draszik wrote:
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
> v3:
> * update as per Rob's suggestion (I hope :-)
> =

> v2:
> * squash original patches #2 and #3
> * actually disallow orientation-switch on !gs101 (not just optional) (Con=
or)
> * update commit message to clarify that the intention for the driver is
>   to work with old and new DTS (Conor)
> * collect tags
> =

> foo
> ---
>  Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml | 6 ++++=
+-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> =


Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
