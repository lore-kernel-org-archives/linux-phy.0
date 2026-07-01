Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D774C43327
	for <linux-phy@archiver.kernel.org>; Wed,  1 Jul 2026 16:59:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TZPoXed3oFc1g/fnLqDlRq9z/Ifxsv4oIg8UVe8k3DA=; b=ODRup1lEmFcIVt4U9gTBr50Ffk
	kWS1wbzc3NAinnQFy+uDbad2Dasd06XYGTg/uq2E7CRmIMjt3RAdspBvC0GIBeZwWudmrtL90yXZX
	n0Q0zl8pNsavfq0uGAEyNVUZB/7zsL4rd9g0ga4c+DqsTRzrukxRnEXRiSZPrWvyFi1k8T93VsGbT
	VDTZUXfjKIfP4R3rDS8W5AImzZ2hOD0ihfORG1qwD6xAfOVjwdfN7gQiAI/tr3o+T4iwrNBinEa6n
	JgZslAu5AeMihMGfJrYmRr4paXNVgm/KIH+rqe3cvvOuE26KPCVexksPW8cKK5g1Bi1Mubt7f6E1v
	9RiG5Tsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weyHt-00000002eQM-0tdH;
	Wed, 01 Jul 2026 16:59:49 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weyHs-00000002ePI-20UB;
	Wed, 01 Jul 2026 16:59:48 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id BC31141FF6;
	Wed,  1 Jul 2026 16:59:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D24801F000E9;
	Wed,  1 Jul 2026 16:59:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782925187;
	bh=6GKUiK4lsUyxfOQTa+DkkuPa9nC5WHhgH6dZ6JcMOVs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=iGr0AfCfMipgDELZfH0oNnfdhHmQ9iHn3TMHt2oyDoUr+mrZrIPry83rqlC/Mpc1s
	 vbUc5VJtHdPnLMYSSuHe3Z4yMiskIo94XfuhGpTksHHZaWVI7NqADY+0sp9Iitiy5o
	 s+aQ67e4zxkdBwYCcpFRgVmEmr0G5G1B6C4N0F1bGTAGHHRuu/oEZgyfkh0hLHm+eI
	 UXl0LOtWFDDp3pJMspLg9z7eYML0G3HAUaf4rmL0VipejFw5s1Gp3acukG6WbfPiUR
	 I/Rvc0p54AyDEg/793xbBZlXOlBiGFZr4tNKf2jTebseP7OTJ57sHxfSnnJbuCpca8
	 MbhMFiCinUFLg==
Date: Wed, 1 Jul 2026 17:59:42 +0100
From: Conor Dooley <conor@kernel.org>
To: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
Cc: Chunfeng Yun <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	kernel@collabora.com, linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: phy: mediatek,tphy: Add support for MT8189
 SoC
Message-ID: <20260701-graveness-program-2cfcab411ef1@spud>
References: <20260701-mt8189-dt-bindings-tphy-v1-1-5848a2be8303@collabora.com>
MIME-Version: 1.0
In-Reply-To: <20260701-mt8189-dt-bindings-tphy-v1-1-5848a2be8303@collabora.com>
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
Content-Type: multipart/mixed; boundary="===============0396145928393710830=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

--===============0396145928393710830==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="9rSKBT53BZC4l7pJ"
Content-Disposition: inline

--9rSKBT53BZC4l7pJ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--9rSKBT53BZC4l7pJ
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCakVHfgAKCRB4tDGHoIJi
0gsbAQCfNvGEjyLqD8GFLj1gnnm4qZzfsFcFiF05x5MMWV//IAD9EICibF/goigl
+KUPdrJ40+4unbogYm9VMeQegp4NRgM=
=p73x
-----END PGP SIGNATURE-----

--9rSKBT53BZC4l7pJ--


--===============0396145928393710830==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============0396145928393710830==--

