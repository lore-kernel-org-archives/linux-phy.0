Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3AAC8CD3427
	for <linux-phy@archiver.kernel.org>; Sun, 10 May 2026 10:44:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tO5FNL53dEqdIB83g4LjSS8DjET8xV1OcILwxOMOuco=; b=mbAJbdcrZp3O6X
	t+E9zjJWpHMlBUHtbyZQSxSTTvDLR5qtF+8eLIWbum80XrnMDCeKNo77i81TvpulFtGR9T0XsNVHS
	nfrD8FqJlF+/h69hBxBZiccjEBHPkASbXIYrsH1Z68RfPWpbFuKOXGH5g9lcVdtEmRnfpR1M7o0x8
	SU1hzokFbLmfTruGJbkEC7Ua7SIRdximclr9pqVu4BaxSH+wr/6OYmqs2lMeS/6Tx//eirBDiEilb
	/Zh9cuPgXRVfHbX+Y3CBnQSs7u488kDP+hGqh/+Y5HoqKjBx4G2DSyfR+4+DAB1VHmsq1DKhmf89e
	ricfPEoudTE1jUNiglFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wM1ds-0000000AaS8-2eZE;
	Sun, 10 May 2026 10:44:12 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wM1dr-0000000AaRu-2C9e;
	Sun, 10 May 2026 10:44:11 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id DF18A60018;
	Sun, 10 May 2026 10:44:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8D820C2BCB8;
	Sun, 10 May 2026 10:44:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778409848;
	bh=xNiK7MIv6vju5B1sy4IAoMXDD3cGJRPMQPKQthwEF14=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Neavf/7wK2DCR2B6tAVILu/VehimNaESaNkCvEbXI5Z5+4Ht9zcJ7RlKJx8e+zr0J
	 NOO4Nbw9/k9ZKR6RrUU7GDt2CI6u8jWssCRsZjEs1zExMtIWwLbJjntkzXp7WmNSXj
	 zJdLkKuCv4QtRa8IizrsfzX9XZ9tI/lRiQJmOQ3HIscsLqowyxSpO7sV6bUEK1V7oR
	 VafMNrcEmGapFLd/PI4z7dvZ5Z/f9U/skiPLz9VGOevYjyRqNJWtmlv/h4FAe0kLan
	 sE5C6QKrSZLOEaz4P7WZDpeRN4jXgJXx9Snf4j4GRf0vOoXqW3lt04uU5UUsDn7YK+
	 ZlicU5XLpo3eA==
Date: Sun, 10 May 2026 16:14:04 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Inochi Amaoto <inochiama@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@kernel.org>,
	Kees Cook <kees@kernel.org>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	Ze Huang <huang.ze@linux.dev>, Alex Elder <elder@riscstar.com>,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org, spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org,
	Yixun Lan <dlan@gentoo.org>, Longbin Li <looong.bin@gmail.com>
Subject: Re: [PATCH 0/2] riscv: spacemit: Add K3 PCIe/USB comb phy support
Message-ID: <agBhdKE7yPPgtvNc@vaman>
References: <20260430022843.1090138-1-inochiama@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260430022843.1090138-1-inochiama@gmail.com>
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

On 30-04-26, 10:28, Inochi Amaoto wrote:
> The PCIe/USB comb phy on K3 is a big phy that contains multiple
> standalone phys for each PCIe and USB controllers. This phy is
> required to configure a syscon device for mux configuration and
> calibration.

Please check https://sashiko.dev/#/patchset/20260430022843.1090138-1-inochiama%40gmail.com

> 
> Inochi Amaoto (2):
>   dt-bindings: phy: Add Spacemit K3 USB3/PCIe comb phy support
>   phy: spacemit: Add USB3/PCIe comb PHY driver for Spacemit K3
> 
>  .../bindings/phy/spacemit,k3-comb-phy.yaml    |  63 +++
>  drivers/phy/spacemit/Kconfig                  |  16 +
>  drivers/phy/spacemit/Makefile                 |   2 +
>  drivers/phy/spacemit/phy-k3-combphy.c         | 250 +++++++++++
>  drivers/phy/spacemit/phy-k3-common.c          | 398 ++++++++++++++++++
>  drivers/phy/spacemit/phy-k3-common.h          |  27 ++
>  6 files changed, 756 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/spacemit,k3-comb-phy.yaml
>  create mode 100644 drivers/phy/spacemit/phy-k3-combphy.c
>  create mode 100644 drivers/phy/spacemit/phy-k3-common.c
>  create mode 100644 drivers/phy/spacemit/phy-k3-common.h
> 
> --
> 2.54.0

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
