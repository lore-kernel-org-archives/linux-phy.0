Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CCAECC4332F
	for <linux-phy@archiver.kernel.org>; Mon, 21 Nov 2022 09:33:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HwmOxp/dEguwbFZXq+dlxZbzGGeObttoRjHPOmCmhDk=; b=OMkdOjMUVK5MOJ
	ToHr2wwf5uI7Y0xpPRSstVaK8hb0pEkAeHpYl4e7ijFNVUK3pB9zVqLiERLEFzW50W4rMSIk6JZSQ
	zMPHVJIbODlq/M+5Zjxtnb1QE2zXcWDKua8hW71pXyEuQTIsI/fAfquzGc93+R3aE7qqHRlPpYkFB
	a1/kH9G/Sh3stz7zXMUNSKdrEy6U7/m8UsNT0xiGr4cdmwjh/o0EtLbrmyZNd55+ob1tTSyeXYIBz
	9e1lwsdm8Vi/V3+eeaN/mRiWNOyaqNs1NFnNeJ88NhyjaXiw2Trj3PJyHk8j9cJke2IeMjX6ixTk8
	HrUZzsWq9JxjepdNyK+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ox3BH-00Bp6D-8e; Mon, 21 Nov 2022 09:33:35 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ox3B2-00Bp1f-AR; Mon, 21 Nov 2022 09:33:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1AF341FB;
	Mon, 21 Nov 2022 01:33:19 -0800 (PST)
Received: from donnerap.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 39A1D3F587;
	Mon, 21 Nov 2022 01:33:11 -0800 (PST)
Date: Mon, 21 Nov 2022 09:33:08 +0000
From: Andre Przywara <andre.przywara@arm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>
Cc: Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Samuel Holland <samuel@sholland.org>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-sunxi@lists.linux.dev, Icenowy Zheng <uwu@icenowy.me>
Subject: Re: [PATCH v4 0/3] phy: sun4i-usb: add support for the USB PHY on
 F1C100s SoC
Message-ID: <20221121093308.6c01140b@donnerap.cambridge.arm.com>
In-Reply-To: <20221116151603.819533-1-andre.przywara@arm.com>
References: <20221116151603.819533-1-andre.przywara@arm.com>
Organization: ARM
X-Mailer: Claws Mail 3.18.0 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221121_013320_432459_7370176A 
X-CRM114-Status: GOOD (  19.80  )
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

On Wed, 16 Nov 2022 15:16:00 +0000
Andre Przywara <andre.przywara@arm.com> wrote:

Hi Vinod, Kishon,

is there any chance you could take at least patch 1/3 and 2/3 through your
tree? As suggested, I split this off the original series, which now
somewhat depends on this one - at least dtbs_check and functionality wise,
both series build cleanly in isolation.

Many thanks,
Andre

> This is a spin-off of v3 of the suniv F1C100s USB support series[1], just
> carrying the USB PHY bits. The H616 USB PHY support is already in
> linux-phy.git/next, so this is rebased on top of that, to avoid
> conflicts.
> The actual binding and driver change in the first two patches is
> straightforward. Since it came up in reviews, I reworked the quirk
> handling in the phy-sun4i-usb.c driver, to become more maintainable and
> readable, in patch 3/3. For a changelog, see below.
> 
> Cheers,
> Andre
> 
> [1] https://lore.kernel.org/linux-arm-kernel/20221106154826.6687-1-andre.przywara@arm.com/
> 
> Changelog v3 ... v4:
> - split off from rest of suniv F1C100s USB series
> - rebase on top of H616 USB PHY patches
> - drop phy2_is_hsic in favour of reusing existing hsic_index member
> - add tags
> 
> Changelog v2 ... v3:
> - remove redundant "Device Tree Bindings" suffix in DT binding doc title
> - add BSD license to binding doc file (as per checkpatch)
> - use existing PHY sun4i_a10_phy type instead of inventing new one
> - add patch to clean up sunxi USB PHY driver
> 
> Changelog v1 ... v2:
> - USB PHY binding: clarify the relation with other phy-sun4i-usb bindings
> 
> 
> 
> Andre Przywara (1):
>   phy: sun4i-usb: Replace types with explicit quirk flags
> 
> Icenowy Zheng (2):
>   dt-bindings: phy: add binding document for Allwinner F1C100s USB PHY
>   phy: sun4i-usb: add support for the USB PHY on F1C100s SoC
> 
>  .../phy/allwinner,suniv-f1c100s-usb-phy.yaml  | 83 +++++++++++++++++++
>  drivers/phy/allwinner/phy-sun4i-usb.c         | 59 ++++++-------
>  2 files changed, 107 insertions(+), 35 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/phy/allwinner,suniv-f1c100s-usb-phy.yaml
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
