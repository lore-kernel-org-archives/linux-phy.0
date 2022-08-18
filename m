Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8A83C00140
	for <linux-phy@archiver.kernel.org>; Thu, 18 Aug 2022 09:22:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XXwrixgvA5FTezpfRgoLse4LNxFkh1wVSwtlL6l3WI4=; b=jfpDfc/5/gelgO
	nvVACLb2YgN4ON3j293Pv7QIGn72HBzN/13l/pG+6JNF358TdBym79bJz7JkOVkegUbMe2UUU9gLV
	qXLiQ691z5ixbU3jM0QVboXVAAPbemX0TQDe9psb5/N+qWnU5cVAsCp//AcdQACNeVxoo1Kv08h9W
	Xxnjri67N+wSxTsvy34A2jDawYericDtKyRKG+QA5jaBXhU03hme9HZMH9BvXIsg2GGZ0UgwskSfh
	MlrHvJMhOIbpJ8tWjlMIIMYf8pIYQDKutfBpMMGhkQaMvCPrneR9e3uwBNw89HlkSQ9KDv7PNBxav
	DrPFmq7cz36wSqRhayuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oObjA-001YDs-Sw; Thu, 18 Aug 2022 09:22:12 +0000
Received: from phobos.denx.de ([2a01:238:438b:c500:173d:9f52:ddab:ee01])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oObhZ-001Wpz-HT; Thu, 18 Aug 2022 09:20:35 +0000
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 1A36484889;
	Thu, 18 Aug 2022 11:20:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1660814430;
	bh=20C+wP6RLvGXbBd56waFCzKOUBParbX3x6QwIv4oHS0=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=ayUWVnAzMVp/7f2uTUIeUhejcYHkGaDQtAi5WC2REd0FNKzPVxGAWQuTcEMxU72dn
	 wl2NKbMPVENpdmV5SdnFbdrbqgB3IsaN4oXVF4npk9yv0IoIcwJMy0K5nSyMw6VzvG
	 ZoZxpJUD5gnFJSzKDcSE2yGvmEIQHZ+pVKvWoCOpAlGEIfSO3CSVe7kAwVzWp3QrRQ
	 SL4LVFTQ9yLhjGNdF1QRfWtzDlqvIXFPjOMox9upujX5FJyYCpgE+GCUTht6kE9jPg
	 QQA6LgvfAv6ytUS6Gw33uk4l1HwVMeipnBwUSHdNiyu8kMeEDRXq8Tqaq+tXWurqAk
	 XXqvaV8StsQuw==
Message-ID: <2afdb802-9a86-8313-ebfa-9f2fee7e0023@denx.de>
Date: Thu, 18 Aug 2022 11:20:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.2
Subject: Re: [PATCH v3 0/6] Add the iMX8MP PCIe support
Content-Language: en-US
To: Richard Zhu <hongxing.zhu@nxp.com>, p.zabel@pengutronix.de,
 l.stach@pengutronix.de, bhelgaas@google.com, lorenzo.pieralisi@arm.com,
 robh@kernel.org, shawnguo@kernel.org, vkoul@kernel.org,
 alexander.stein@ew.tq-group.com
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@pengutronix.de, linux-imx@nxp.com
References: <1660806153-29001-1-git-send-email-hongxing.zhu@nxp.com>
From: Marek Vasut <marex@denx.de>
In-Reply-To: <1660806153-29001-1-git-send-email-hongxing.zhu@nxp.com>
X-Virus-Scanned: clamav-milter 0.103.6 at phobos.denx.de
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220818_022033_863201_3EEEF0B4 
X-CRM114-Status: GOOD (  16.50  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 8/18/22 09:02, Richard Zhu wrote:
> Based on the 6.0-rc1 of the pci/next branch.
> This series adds the i.MX8MP PCIe support and had been tested on i.MX8MP
> EVK board when one PCIe NVME device is used.
> 
> - i.MX8MP PCIe has reversed initial PERST bit value refer to i.MX8MQ/i.MX8MM.
>    Add the PHY PERST explicitly for i.MX8MP PCIe PHY.
> - Add the i.MX8MP PCIe PHY support in the i.MX8M PCIe PHY driver.
>    And share as much as possible codes with i.MX8MM PCIe PHY.
> - Add the i.MX8MP PCIe support in binding document, DTS files, and PCIe
>    driver.
> 
> Main changes v2-->v3:
> - Fix the schema checking error in the PHY dt-binding patch.
> - Inspired by Lucas, the PLL configurations might not required when
>    external OSC is used as PCIe referrence clock. It's true. Remove all
>    the HSIO PLL bit manipulations, and PCIe works fine on i.MX8MP EVK board
>    with one NVME device is used.
> - Drop the #4 patch of v2, since it had been applied by Rob.
> 
> Main changes v1-->v2:
> - It's my fault forget including Vinod, re-send v2 after include Vinod
>    and linux-phy@lists.infradead.org.
> - List the basements of this patch-set. The branch, codes changes and so on.
> - Clean up some useless register and bit definitions in #3 patch.
> 
> Documentation/devicetree/bindings/phy/fsl,imx8-pcie-phy.yaml |  16 +++++++--
> arch/arm64/boot/dts/freescale/imx8mp-evk.dts                 |  53 +++++++++++++++++++++++++++++
> arch/arm64/boot/dts/freescale/imx8mp.dtsi                    |  46 ++++++++++++++++++++++++-
> drivers/pci/controller/dwc/pci-imx6.c                        |  17 +++++++++-
> drivers/phy/freescale/phy-fsl-imx8m-pcie.c                   | 150 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++-------------------------
> drivers/reset/reset-imx7.c                                   |   1 +
> 6 files changed, 232 insertions(+), 51 deletions(-)

For the entire series:

Tested-by: Marek Vasut <marex@denx.de>

Thanks !

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
