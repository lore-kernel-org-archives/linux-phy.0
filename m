Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E8D2C433EF
	for <linux-phy@archiver.kernel.org>; Thu,  7 Apr 2022 20:42:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AmN9/W0ISf3X8byTKzIGH0XzMg/xP/RZXUphQcDbwvg=; b=XwYezj9/oZQ9KM
	angttV6Hm9DqQDZgiymuO1kO2GfzRBKhMmysx7lIY5hWfHatMdLyGa1210RFZxcny0sFcS5i5oQ9m
	cXAosrPCgngOa3afstZq6BKCN6Wm6Cl142t912xchmROe3YVP59vIuNtfuu0QGiGORsq4NZFjg0sd
	qFO+ne5h4r4cchY5k6mOL0jScD43BOURAgF1RCNbyl32W1vCxp3qxNQFBKy/ZyOZjVjnmCf1dmyOO
	8HfcerxOcsQGOZ6MkoisEh/BuQCeM/JPZ0gUoo06iU4WuynViq0pXnDI4MR2dCahSx5q2dTcBzR/2
	9Ege3kbuhE4aFP0qw4xQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ncYx9-00DycP-NH; Thu, 07 Apr 2022 20:42:03 +0000
Received: from mail-pg1-x536.google.com ([2607:f8b0:4864:20::536])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ncYx5-00DyaA-SA
 for linux-phy@lists.infradead.org; Thu, 07 Apr 2022 20:42:01 +0000
Received: by mail-pg1-x536.google.com with SMTP id 66so5948382pga.12
 for <linux-phy@lists.infradead.org>; Thu, 07 Apr 2022 13:41:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gateworks-com.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hsfikvGKS7EdmIl+2iOk9u6ngpZWIU8z/zrcARIqPHQ=;
 b=tOWDVf5evJdQHKhBdYX/UbCqVT4V8kWTzzwNIFGft9PveKaupbjTyquiq+3tylKDHy
 ZdqxtITaS7Hb31q313DCaJkJjL5Hk3PG7+W1/PXJkFX9VBoIOjA2Dldii8LNZ6iJ3Tf9
 cjkJlKmBe3r4E7WHL2tqXyU8cyJ1TDtj7A0IA0Ka9I193d+UyUAT7Mnpz8C+FXx0B4Cn
 TXiYAH9JmD3kMUuf+ABMol4g0/m2sHuE7aWS6Bac0RwuLcnqnb9m8kuLJnRlf2uSe8fc
 apW8DPB7VP4WqlidUV4aYHwYdPdJeROzrwgkto6xvOkwcIKb5AClXNH+qZ9bA9nMoovF
 BKcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hsfikvGKS7EdmIl+2iOk9u6ngpZWIU8z/zrcARIqPHQ=;
 b=fAiW/aBnvSqEpBPIih+1NOAVZJIo6riIZHrZUimU55IsaBudSe7d48wfoyttLKCq1I
 PWUftZMYr1TbPA/MkfMh56z/36kKvlX+OdW8ZOq6cpZWGbFVxlY9MSLvFe3eKzXKKY5u
 RXxNM8fOC54Diq/3WJ/tOvLUzzqtnQlj4pninP2KjNMr5nTTydx8w0Y7OFvs2PXlCHQk
 vxQB6VAIp0kkwVtMN8XDYip0zVY18WS9VyqnZEhDAkg4YhlJBDU+5mKLh0fUk5n8mU2F
 cIT4CofZCvHKU/9sc92q/ow+5PKcGRxKuYcZKiyCOC87QI3nR5x3blyuzv8XljuAYCtt
 2jCQ==
X-Gm-Message-State: AOAM533GgSMbwhJsaCYhmbUB0ugsHCrcAR1p8GG//RfjzNamO5xjJwdp
 R8Ho8j3LuUobW9UofWDeiL0qHMDwyBsuRo0mG+PBFA==
X-Google-Smtp-Source: ABdhPJyw/X9PAj5hQXkBHgIQHLkpVomaTRwQeIQ9NwMn/1m/zjbBSew3NGRBkecufGNq6ap7srYNrp4wut6BDAAtUN0=
X-Received: by 2002:a05:6a00:14ca:b0:4fb:5d3e:5f77 with SMTP id
 w10-20020a056a0014ca00b004fb5d3e5f77mr16115636pfu.34.1649364117644; Thu, 07
 Apr 2022 13:41:57 -0700 (PDT)
MIME-Version: 1.0
References: <1646644054-24421-1-git-send-email-hongxing.zhu@nxp.com>
In-Reply-To: <1646644054-24421-1-git-send-email-hongxing.zhu@nxp.com>
From: Tim Harvey <tharvey@gateworks.com>
Date: Thu, 7 Apr 2022 13:41:46 -0700
Message-ID: <CAJ+vNU0McZxj_74DC0wCUyHq-NaT14URnvUP+kvudz7YLQq7fg@mail.gmail.com>
Subject: Re: [PATCH v2 0/7] Add the iMX8MP PCIe support
To: Richard Zhu <hongxing.zhu@nxp.com>, Lucas Stach <l.stach@pengutronix.de>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
 "bhelgaas@google.com" <bhelgaas@google.com>, 
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Rob Herring <robh@kernel.org>, 
 Shawn Guo <shawnguo@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 Alexander Stein <alexander.stein@ew.tq-group.com>,
 linux-phy@lists.infradead.org, 
 Device Tree Mailing List <devicetree@vger.kernel.org>,
 linux-pci@vger.kernel.org, 
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>, 
 open list <linux-kernel@vger.kernel.org>, Sascha Hauer <kernel@pengutronix.de>,
 NXP Linux Team <linux-imx@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220407_134159_954710_A8C3CF41 
X-CRM114-Status: GOOD (  23.61  )
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

On Mon, Mar 7, 2022 at 1:18 AM Richard Zhu <hongxing.zhu@nxp.com> wrote:
>
> Based on the i.MX8MP GPC and blk-ctrl patch-set[1] issued by Lucas and the
> following commits.
>   - one codes refine patch-set[5].
>   - two Fixes[2],[3].
>   - one binding commit[4].
>   - some dts changes in Shawn's git if you want to test PCIe on i.MX8MM EVK.
>     b4d36c10bf17 arm64: dts: imx8mm-evk: Add the pcie support on imx8mm evk board
>     aaeba6a8e226 arm64: dts: imx8mm: Add the pcie support
>     cfc5078432ca arm64: dts: imx8mm: Add the pcie phy support
>
> Sorry about that there may be some conflictions when do the codes merge.
> I'm waiting for the ack now, and will re-base them in a proper sequence later.
>
> This series patches add the i.MX8MP PCIe support and tested on i.MX8MM EVK and
> i.MX8MP EVk boards. The PCIe NVME works fine on both boards.
>
> - i.MX8MP PCIe PHY has two resets refer to the i.MX8MM PCIe PHY.
>   Add one more PHY reset for i.MX8MP PCIe PHY accordingly.
> - Add the i.MX8MP PCIe PHY support in the i.MX8M PCIe PHY driver.
>   And share as much as possible codes with i.MX8MM PCIe PHY.
> - Add the i.MX8MP PCIe support in binding document, DTS files, and PCIe
>   driver.
>
> Main changes v1-->v2:
> - It's my fault forget including Vinod, re-send v2 after include Vinod
>   and linux-phy@lists.infradead.org.
> - List the basements of this patch-set. The branch, codes changes and so on.
> - Clean up some useless register and bit definitions in #3 patch.
>
> [1]https://patchwork.kernel.org/project/linux-arm-kernel/cover/20220228201731.3330192-1-l.stach@pengutronix.de/
> [2]https://patchwork.ozlabs.org/project/linux-pci/patch/1646289275-17813-1-git-send-email-hongxing.zhu@nxp.com/
> [3]https://patchwork.ozlabs.org/project/linux-pci/patch/1645672013-8949-1-git-send-email-hongxing.zhu@nxp.com/
> [4]https://patchwork.ozlabs.org/project/linux-pci/patch/1646293805-18248-1-git-send-email-hongxing.zhu@nxp.com/
> [5]https://patchwork.ozlabs.org/project/linux-pci/cover/1645760667-10510-1-git-send-email-hongxing.zhu@nxp.com/
>
> NOTE:
> Based git <git://git.kernel.org/pub/scm/linux/kernel/git/lpieralisi/pci.git>
> Based branch <pci/imx6>
>
> Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml    |   1 +
> Documentation/devicetree/bindings/phy/fsl,imx8-pcie-phy.yaml |   4 +-
> arch/arm64/boot/dts/freescale/imx8mp-evk.dts                 |  55 ++++++++++++++++++++++
> arch/arm64/boot/dts/freescale/imx8mp.dtsi                    |  46 ++++++++++++++++++-
> drivers/pci/controller/dwc/pci-imx6.c                        |  19 +++++++-
> drivers/phy/freescale/phy-fsl-imx8m-pcie.c                   | 205 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-----------------
> drivers/reset/reset-imx7.c                                   |   1 +
> 7 files changed, 286 insertions(+), 45 deletions(-)
>
> [PATCH v2 1/7] reset: imx7: Add the iMX8MP PCIe PHY PERST support
> [PATCH v2 2/7] dt-binding: phy: Add iMX8MP PCIe PHY binding
> [PATCH v2 3/7] phy: freescale: imx8m-pcie: Add iMX8MP PCIe PHY
> [PATCH v2 4/7] dt-bindings: imx6q-pcie: Add iMX8MP PCIe compatible
> [PATCH v2 5/7] arm64: dts: imx8mp: add the iMX8MP PCIe support
> [PATCH v2 6/7] arm64: dts: imx8mp-evk: Add PCIe support
> [PATCH v2 7/7] PCI: imx6: Add the iMX8MP PCIe support
>

Richard,

Thanks for working on this!

Do you plan on submitting another version soon? I've tried to test
this with an imx8mp board I'm bringing up and while the host
controller enumerates I fail to get a link to a device. It's very
likely I am missing something as this series depends on the IMX8MP
blk-ctrl and gpc series which I also can't cleanly apply. Lucas just
submitted a 'consolidated i.MX8MP HSIO/MEDIA/HDMI blk-ctrl series' [1]
yet I can't find a repo/branch that applies to either.

Perhaps you have a git repo somewhere I can look at while we wait for
imx8mp blk-ctl/gpc to settle and you to submit a v3?

Best Regards,

Tim
[1] https://patchwork.kernel.org/project/linux-arm-kernel/list/?series=629586

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
