Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 649F2C433EF
	for <linux-phy@archiver.kernel.org>; Wed,  9 Mar 2022 07:57:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HyJoEXB+L9TpFiHVnd2WJpf5roRzh0qugPYPbwnCPPo=; b=LiRF3RGwErt3Ps
	79YdcLn39EBPDnAPOMUUEsTLj+YDfCePCYtmagDx5i0y/zjMHUyymfobrCB4jEf6h31cIsbPYU2iR
	jCTXualX+r0aAvKgWevM1ADf5M81yFbdO5fWpRII12S1bEf1U0444VjN7vwMS4uHnyCNeG0icPYLe
	1SmZCk2aS/J3yjYudUdyHtRmgQODoLxH+rqHH8lLkdT6VkKSlfO62zHTwRvyu4l1jO38fg2w9yan7
	Hog5P7FLoM7+3kMipDg8CV68Y/t2iKfJ1RwE0WOtr1RjPCs1EfBodv5AwMkjdI3i2XnYyPGiIrwPi
	7sbwA+uPdVyja+74B7mg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRrCH-007gb8-RT; Wed, 09 Mar 2022 07:57:25 +0000
Received: from mx1.tq-group.com ([93.104.207.81])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRrC4-007gYR-TO; Wed, 09 Mar 2022 07:57:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
 t=1646812632; x=1678348632;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=aZlR3V5nWOBvDPK9gJV01W4WbYt70nLP2OxZKb/+mUw=;
 b=OK3b5yzqbQBBrVyPyOtUrrDIifEPnAv2osgtgDwGflpfBkLqgI9aJvOj
 imz9QgN5XjpcmtbQ5VMhGogyENhIluP8zDrDtZR8gW4Uzti0HxvNLyup6
 bAw+HIaWzQD2gAMYkEoSaChJSF9IK9Fj7DLp0tR3OUiOpCwQ09QLmpaiP
 1MBc3ySq49ZEiXYBXA0+UvpXzV2fQ2vgI/AITgfDhqYIlo4jDG7AZDnys
 NLlIPTARskJUvJA+WiZbL4QHwMOGAyaV1EFSXTt5oE8E6G1LXsIrcJwF5
 wuizwPpcJ0ufiSRiJXfAsqg+jTLG3/d0dmEW9BLuMMi7Ya5sYWdwqCxE4 w==;
X-IronPort-AV: E=Sophos;i="5.90,167,1643670000"; d="scan'208";a="22544451"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
 by mx1-pgp.tq-group.com with ESMTP; 09 Mar 2022 08:57:08 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
 by tq-pgp-pr1.tq-net.de (PGP Universal service);
 Wed, 09 Mar 2022 08:57:08 +0100
X-PGP-Universal: processed;
 by tq-pgp-pr1.tq-net.de on Wed, 09 Mar 2022 08:57:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
 t=1646812628; x=1678348628;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=aZlR3V5nWOBvDPK9gJV01W4WbYt70nLP2OxZKb/+mUw=;
 b=Iz9GJDsFsbHvUMh0pLrQbbDH4q1lirwAkZfxoRvmzTYSudDzWtv/gnjt
 D1tRHMQmtslkIAiGxZBaqfc6Ef4iDrbTVXgBt8YQJYw8JFBvFB2mCNg73
 tjxm5gMjNriaxCrAkHIEU0punMESwZL73/LHdppF8ey2sd/kFW9Z3COrA
 d9l1YxTwrLbJfO0j19hAqbsW5ZPReevArZpaAYAPHYV2Tmb/SCtRJzGXy
 DH6HiaGRwvc7vOeRrkUSt/v4Vf7WA4MuiH2X9r4ECsLItFnda5W1Yhu1M
 0laeu1Rpqya6wYytNdBpEw3G+R/BDxOcEPanCOPBx55zrYN7Po1Ya2iKP A==;
X-IronPort-AV: E=Sophos;i="5.90,167,1643670000"; d="scan'208";a="22544450"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
 by mx1.tq-group.com with ESMTP; 09 Mar 2022 08:57:08 +0100
Received: from steina-w.localnet (unknown [10.123.49.12])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 26BAC280065;
 Wed,  9 Mar 2022 08:57:08 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Richard Zhu <hongxing.zhu@nxp.com>
Cc: p.zabel@pengutronix.de, l.stach@pengutronix.de, bhelgaas@google.com,
 lorenzo.pieralisi@arm.com, robh@kernel.org, shawnguo@kernel.org,
 vkoul@kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@pengutronix.de, linux-imx@nxp.com
Subject: Re: (EXT) [PATCH v2 0/7] Add the iMX8MP PCIe support
Date: Wed, 09 Mar 2022 08:57:05 +0100
Message-ID: <4743587.31r3eYUQgx@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <1646644054-24421-1-git-send-email-hongxing.zhu@nxp.com>
References: <1646644054-24421-1-git-send-email-hongxing.zhu@nxp.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220308_235713_361093_7EF50E41 
X-CRM114-Status: GOOD (  24.20  )
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

Hello Richard,

Am Montag, 7. M=E4rz 2022, 10:07:27 CET schrieb Richard Zhu:
> Based on the i.MX8MP GPC and blk-ctrl patch-set[1] issued by Lucas and the
> following commits.
>   - one codes refine patch-set[5].
>   - two Fixes[2],[3].
>   - one binding commit[4].
>   - some dts changes in Shawn's git if you want to test PCIe on i.MX8MM E=
VK.
> b4d36c10bf17 arm64: dts: imx8mm-evk: Add the pcie support on imx8mm evk
> board aaeba6a8e226 arm64: dts: imx8mm: Add the pcie support
>     cfc5078432ca arm64: dts: imx8mm: Add the pcie phy support
> =

> Sorry about that there may be some conflictions when do the codes merge.
> I'm waiting for the ack now, and will re-base them in a proper sequence
> later.

Thanks for providing the dependency list. Unfortunately they did not apply =

without error on my local tree, but this is caused by other patches I track.
I managed to fix the conflicts, I think.
Eventually I was able to get a PCIe M.2 ethernet interface working on my =

TQMa8MPxL based board. iperf showed >900MBit/s Tx and > 700 MBit/s Rx.
Thanks for your effort. Once the depenencies and reviews are settled, you'l=
l =

get my tested-by.

Thanks again and regards
Alexander

> This series patches add the i.MX8MP PCIe support and tested on i.MX8MM EVK
> and i.MX8MP EVk boards. The PCIe NVME works fine on both boards.
> =

> - i.MX8MP PCIe PHY has two resets refer to the i.MX8MM PCIe PHY.
>   Add one more PHY reset for i.MX8MP PCIe PHY accordingly.
> - Add the i.MX8MP PCIe PHY support in the i.MX8M PCIe PHY driver.
>   And share as much as possible codes with i.MX8MM PCIe PHY.
> - Add the i.MX8MP PCIe support in binding document, DTS files, and PCIe
>   driver.
> =

> Main changes v1-->v2:
> - It's my fault forget including Vinod, re-send v2 after include Vinod
>   and linux-phy@lists.infradead.org.
> - List the basements of this patch-set. The branch, codes changes and so =
on.
> - Clean up some useless register and bit definitions in #3 patch.
> =

> [1]https://patchwork.kernel.org/project/linux-arm-kernel/cover/2022022820=
173
> 1.3330192-1-l.stach@pengutronix.de/
> [2]https://patchwork.ozlabs.org/project/linux-pci/patch/1646289275-17813-=
1-> git-send-email-hongxing.zhu@nxp.com/
> [3]https://patchwork.ozlabs.org/project/linux-pci/patch/1645672013-8949-1=
-g
> it-send-email-hongxing.zhu@nxp.com/
> [4]https://patchwork.ozlabs.org/project/linux-pci/patch/1646293805-18248-=
1-> git-send-email-hongxing.zhu@nxp.com/
> [5]https://patchwork.ozlabs.org/project/linux-pci/cover/1645760667-10510-=
1-> git-send-email-hongxing.zhu@nxp.com/
> =

> NOTE:
> Based git <git://git.kernel.org/pub/scm/linux/kernel/git/lpieralisi/pci.g=
it>
> Based branch <pci/imx6>
> =

> Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml    |   1 +
> Documentation/devicetree/bindings/phy/fsl,imx8-pcie-phy.yaml |   4 +-
> arch/arm64/boot/dts/freescale/imx8mp-evk.dts                 |  55
> ++++++++++++++++++++++ arch/arm64/boot/dts/freescale/imx8mp.dtsi         =
  =

>         |  46 ++++++++++++++++++- drivers/pci/controller/dwc/pci-imx6.c  =
  =

>                    |  19 +++++++-
> drivers/phy/freescale/phy-fsl-imx8m-pcie.c                   | 205
> +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++--------=
--
> ------- drivers/reset/reset-imx7.c                                   |   =
1 +
> 7 files changed, 286 insertions(+), 45 deletions(-)
> =

> [PATCH v2 1/7] reset: imx7: Add the iMX8MP PCIe PHY PERST support
> [PATCH v2 2/7] dt-binding: phy: Add iMX8MP PCIe PHY binding
> [PATCH v2 3/7] phy: freescale: imx8m-pcie: Add iMX8MP PCIe PHY
> [PATCH v2 4/7] dt-bindings: imx6q-pcie: Add iMX8MP PCIe compatible
> [PATCH v2 5/7] arm64: dts: imx8mp: add the iMX8MP PCIe support
> [PATCH v2 6/7] arm64: dts: imx8mp-evk: Add PCIe support
> [PATCH v2 7/7] PCI: imx6: Add the iMX8MP PCIe support





-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
