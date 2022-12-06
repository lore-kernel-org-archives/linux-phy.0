Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D41ECC4708E
	for <linux-phy@archiver.kernel.org>; Tue,  6 Dec 2022 11:34:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nUCjnOTkRylm+Td6qjlUuOAXlI6oGlTy5OsYdB6H2D0=; b=U5/cQcfJdn6djG
	VTXZYakOe03GPF6VgJd7P529x0Ygpm+OQLHlw3spW+IchwKx4zin6MCFH7rEhLdQ5q4e44WA7w81d
	rh0HoShI3Y97mCwM1fhhox0+4Xp7zR6ZxolEcva+ghQvhX7EaxAYPohJHB4XEIU+RewL9vyG9ULMy
	r5+ltT1QVyIdO7AH4MuHXvhh3hnB03mff5KRbOOBaiWSrHEAtMRAMdW3usIFsaqco2yuZgFQGH+I6
	lxtW9T1CXh7NPpNSAyTDRDfvoiN1oEAxOH4TYjLAHrhglrnjKzmRujhzP9PJfY5eaavKCFaLgAOHK
	rElSv1v8wTIFObk7ayRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2WD6-008Uxt-Ef; Tue, 06 Dec 2022 11:34:04 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2WBh-008UNh-S4; Tue, 06 Dec 2022 11:32:39 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 3B6D561684;
	Tue,  6 Dec 2022 11:32:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EA8C0C433D7;
	Tue,  6 Dec 2022 11:32:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670326356;
	bh=hdx5lL3XQncm1TjSRW1x2q5YNuSGyRAzdS5G1zXDWa0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MlCsv/t8V2vpnGrUHCIF/11Qv8bxig4oDGbEjHnsMH+44I0TtBb7GXRE91SfRA5a3
	 ou7qtIgP/6raAElyZw4FT5VG76+5E3yqvLTxbuhRTEGytjD9J8EFOBCsGPe3c05lQ3
	 jS9wbc69MK1Ac9b2MjuPwbiERseowl5KynRV2kQW2wEzzXRyztK3+dRD2nJtMLZYBr
	 005k27K09Tep8oPe2QP5kXlIOa46LvK7OMvxXiPw1vLVAyg0AhEXNtmFVRLDtABJtj
	 eFiZQ+DEWnlWHwVXrA5q4EpRPWxGDNK3vetzu5XWoFS6ivnWl/Uyo++KBlHWmko5E0
	 KNrpV6X3WTMuA==
Date: Tue, 6 Dec 2022 12:32:27 +0100
From: Lorenzo Pieralisi <lpieralisi@kernel.org>
To: Frank Wunderlich <linux@fw-web.de>
Cc: linux-mediatek@lists.infradead.org,
	Frank Wunderlich <frank-w@public-files.de>,
	Ryder Lee <ryder.lee@mediatek.com>,
	Jianjun Wang <jianjun.wang@mediatek.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Chunfeng Yun <chunfeng.yun@mediatek.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org, linux-usb@vger.kernel.org
Subject: Re: [next v7 0/8] Add BananaPi R3
Message-ID: <Y48oS3+vR4Pv6izh@lpieralisi>
References: <20221127114142.156573-1-linux@fw-web.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221127114142.156573-1-linux@fw-web.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221206_033238_034931_F2AAF76F 
X-CRM114-Status: GOOD (  23.03  )
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

On Sun, Nov 27, 2022 at 12:41:34PM +0100, Frank Wunderlich wrote:
> From: Frank Wunderlich <frank-w@public-files.de>
> 
> This Series adds some Nodes to mt7986 devicetree and the BananaPi R3
> 
> This version is rebased on linux next from 2022/11/27.
> 
> i included sams series for mt7986 DTS with small changes
> https://patchwork.kernel.org/project/linux-mediatek/cover/20220427124741.18245->
> 
> i had run full dtbs-check but i end up with some strange warnings in
> ethernet-node that should not come up as phy-handle and sfp/managed
> properties are already defined. These errors also came up for mt7986a-rfb.
> 
> phy-handle made optional
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/devicetree/bindings/net/mediatek,net.yaml#n265
> 
> property sfp/managed (which is included for mac subnode in yaml above):
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/devicetree/bindings/net/ethernet-controller.yaml#n137
> 
> changes:
> v7:
> - rebase on next so dropped already applied patches
> - squashed overlay-patch into the bpi-r3 base support
> - moved regulators from mmc-dts to common dtsi
> - changed dtsi to dts (as board base dtb) and mmc-dts to overlays
> - renamed overlays to dtso
> - removed angelos RB because of changes in bpi-r3 patch
> 
> v6:
> - dropped regulators from usb-patch as suggested by chunfeng yun
> - moved 3v3 regulator to mmc-patch as it is needed for emmc to work
>   rfbs were tested by sam shih, r3 by me
> - dropped RB from AngeloGioacchino from mmc-patch due to this change
> - fixed links in coverletter which were broken in v5
> - i hope this series is sent without errors now (my mailprovider limited
>   mails last 2 times while sending part 10)
> 
> v5:
> - changed usb ranges/reg/unit-adress
> - added reviewd-by's except usb-part due to changes
> 
> v4:
> - dropped RFC prefix
> - rebase on matthias' mtk dts-next (for 6.2) branch
> - added author information to overlays
> - fixed sfp binding error
> - added fix for moving wed_pcie node
> - readded missing compatible patches
> 
> v3:
> - changed mmc pull-ups
> - added patch for board binding (sent separately before)
> - added pcie node in mt7986 (not yet again in r3)
> - added dt overlays
> 
> Frank Wunderlich (5):
>   dt-bindings: phy: mediatek,tphy: add support for mt7986
>   dt-bindings: usb: mtk-xhci: add support for mt7986
>   dt-bindings: PCI: mediatek-gen3: add SoC based clock config
>   dt-bindings: PCI: mediatek-gen3: add support for mt7986
>   arm64: dts: mt7986: add Bananapi R3
> 
> Sam Shih (3):
>   arm64: dts: mt7986: add usb related device nodes
>   arm64: dts: mt7986: add mmc related device nodes
>   arm64: dts: mt7986: add pcie related device nodes
> 
>  .../bindings/pci/mediatek-pcie-gen3.yaml      |  64 ++-
>  .../bindings/phy/mediatek,tphy.yaml           |   1 +
>  .../bindings/usb/mediatek,mtk-xhci.yaml       |   1 +
>  arch/arm64/boot/dts/mediatek/Makefile         |   5 +
>  .../mt7986a-bananapi-bpi-r3-emmc.dtso         |  30 ++
>  .../mt7986a-bananapi-bpi-r3-nand.dtso         |  55 +++
>  .../mediatek/mt7986a-bananapi-bpi-r3-nor.dtso |  68 +++
>  .../mediatek/mt7986a-bananapi-bpi-r3-sd.dtso  |  24 +
>  .../dts/mediatek/mt7986a-bananapi-bpi-r3.dts  | 448 ++++++++++++++++++
>  arch/arm64/boot/dts/mediatek/mt7986a-rfb.dts  | 120 +++++
>  arch/arm64/boot/dts/mediatek/mt7986a.dtsi     | 122 +++++
>  arch/arm64/boot/dts/mediatek/mt7986b-rfb.dts  |   8 +
>  12 files changed, 934 insertions(+), 12 deletions(-)
>  create mode 100644 arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3-emmc.dtso
>  create mode 100644 arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3-nand.dtso
>  create mode 100644 arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3-nor.dtso
>  create mode 100644 arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3-sd.dtso
>  create mode 100644 arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3.dts

Should I pick up patches [3,4] into the PCI tree ?

Thanks,
Lorenzo

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
