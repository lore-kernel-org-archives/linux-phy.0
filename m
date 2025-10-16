Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA20DCCD19A
	for <linux-phy@archiver.kernel.org>; Thu, 16 Oct 2025 15:29:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=A60dzC3gwSlQ4OXMyDVSWTsa6ojGtZY1vv8PZ2Fua+Q=; b=1Yx02qeMNpPF0Qog7WAK+731nF
	/NNlKc9cfllp+S6GLrf3wKmlQNXIHWcggU8G8O1g3tOMUQJhzHcDEdbRIT7ClbdD4dt57S0KPjMIK
	05ZyXwiqhNTupW2Zo2ZSaZgaUIt9txs3CgZrOtENdj/Eeg2XzBotE8bJIZNojL3FUr6Jsp16F8F5R
	ZZv4G/kJ5RgcdkzLTS8VZjLYOL/ocmn0ReLzDPlh9YIMKqgGX+nI8A33IbpI2a9TfkGi1oj6wBhVE
	XtWmw/QUXB5eA/tPZbJ8nLrmb+8RVobxdmEB4mfGKDy/iWD9KGQLHTIe8qFJVN0TUnrFhYCd6XNmZ
	gVjm3bZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9PvL-00000005CIy-2fdy;
	Thu, 16 Oct 2025 15:29:51 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9PvI-00000005CGY-3s7D;
	Thu, 16 Oct 2025 15:29:49 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 7DA2444ADE;
	Thu, 16 Oct 2025 15:29:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8E988C4CEF1;
	Thu, 16 Oct 2025 15:29:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760628588;
	bh=5zk1p7uXJyG52PlTiJ7jqUnfX5vE/Lrp7UbPQeEvOJM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FQneNmV3fhnPk6gQ3KzkiuR6069UmCX3IsMiH2yV1uc64GIREVNxD8GqCuiqG7bio
	 5muhMwudzSKyN6C7D1PT5JKk8gK/7ZuusIDrooi9VlwIRctSC5n5CLd3SOzdIzHu1K
	 +5ZpI5+caDru2iwMUIeW9y7TC3G3fb2JYdwgAoxAfTlpwyCTQJ2sBZDgctDGAXTk/k
	 H/ZJsknAWP7DS9JqRd6w6rK0YFXgAsSXnCGUy5hrtRTE8FQty6go27xad5eGL73mKf
	 xAyFB00JW4JZWPtYMMQPUpPq0cPq+OmrWO+5Xc/+H27GeonxjVJsGaV64b16ehpn2J
	 Yj1+MNOa0JZjQ==
Date: Thu, 16 Oct 2025 16:29:40 +0100
From: Conor Dooley <conor@kernel.org>
To: Sjoerd Simons <sjoerd@collabora.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Ryder Lee <ryder.lee@mediatek.com>,
	Jianjun Wang <jianjun.wang@mediatek.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Chunfeng Yun <chunfeng.yun@mediatek.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Lee Jones <lee@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Lorenzo Bianconi <lorenzo@kernel.org>, Felix Fietkau <nbd@nbd.name>,
	kernel@collabora.com, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org, netdev@vger.kernel.org,
	Daniel Golle <daniel@makrotopia.org>,
	Bryan Hinton <bryan@bryanhinton.com>
Subject: Re: [PATCH 04/15] dt-bindings: mfd: syscon: Add mt7981-topmisc
Message-ID: <20251016-pellet-speckled-fab8e8690051@spud>
References: <20251016-openwrt-one-network-v1-0-de259719b6f2@collabora.com>
 <20251016-openwrt-one-network-v1-4-de259719b6f2@collabora.com>
MIME-Version: 1.0
In-Reply-To: <20251016-openwrt-one-network-v1-4-de259719b6f2@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251016_082948_985001_E85BAD36 
X-CRM114-Status: UNSURE (   6.49  )
X-CRM114-Notice: Please train this message.
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
Content-Type: multipart/mixed; boundary="===============8390056730186385275=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============8390056730186385275==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="It0qxNZczVw/gaKL"
Content-Disposition: inline


--It0qxNZczVw/gaKL
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--It0qxNZczVw/gaKL
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaPEPZAAKCRB4tDGHoIJi
0i02AQCtlo1PhEBtOSpa9tHFh/btZnLURhGuXrndCwW9sNu9YAEAgh9CEJPYY+RU
n/3HO7MCmrIAjvCB4YbZBXt04Uzn6Qw=
=0tqc
-----END PGP SIGNATURE-----

--It0qxNZczVw/gaKL--


--===============8390056730186385275==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============8390056730186385275==--

