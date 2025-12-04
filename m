Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3607D29FB2
	for <linux-phy@archiver.kernel.org>; Thu,  4 Dec 2025 19:54:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SCktXTKwluEPFaQTsLeg/YQhVgcKH5pH2klOaEm4Jq0=; b=ayDyKlEVPbdauw
	1riQyQT1dAdmZblhwfl8DwdjXrHw/gZygDcWIqrdwbk6PNT9XTAjt3PwxYqlpwwXpqY0SYqJdqUJ6
	Zpyk9omWs2lp/XhoGOb86oLeWlh0o1ZXCdDEbkJ0fTMSDL/ZD9ayHmoNGhW9ZgaOoCBqc2pSr8IHR
	IuIYUHszyAO5CyC64dPP7KMOmoWOVF+8MI5h2hnVnb2OOL2WCyA6lcBaD8OblwVvux9Uxv85aOfrB
	Yv6upOEbp1zk7EqVBlqO6YJ7BDMF0C1LSzIET2OcrDxRkG3oPmk1UNXhKFaNPPiIVd6LstM+jp2ps
	40uYv5gGnPVMdFnDSp5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRFOr-00000008X1t-0ghk;
	Thu, 04 Dec 2025 19:54:01 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRFOp-00000008X1P-1mPz;
	Thu, 04 Dec 2025 19:53:59 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 8E5D06017F;
	Thu,  4 Dec 2025 19:53:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0DC75C4CEFB;
	Thu,  4 Dec 2025 19:53:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764878038;
	bh=IlWhPGE3xUkVs9noGqN8k3YfY0Ubf/0Tz/7YbiNoNOw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CRDyqcy+7t1NqBpjwfvt6EVa8fBQkxIXQGm3UhSM6pF/wQO2GB/GsLsPVU/5x5GEi
	 ISuzg0kUbHZykMWfUetqINwESVLOMc5Fmkby09hgB/u7SERCzYnp0wawyGV2PlT7/n
	 5l87bi2MeH9BDcFb4RYVZv5QJbaJ1y96IceT5JXqsVQb4D3G9VqtQmvZmKYyR8TlJc
	 Kvw7JWiTUYPVYuFB9UIihbWz7Pzyesd0xuz9ohN9oj0Fd4ZSSgOfGwZqBkdh2dU7D4
	 SjUBhWCsYAnJLC6nKdnqRUem9TAlPRZT3hfEV3yMJUy6kE89pMlaWtQcaBAKjIyVu9
	 WVBxr11PatfhA==
Date: Thu, 4 Dec 2025 13:53:55 -0600
From: Rob Herring <robh@kernel.org>
To: Jacky Chou <jacky_chou@aspeedtech.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@codeconstruct.com.au>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-aspeed@lists.ozlabs.org, linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	Andrew Jeffery <andrew@aj.id.au>, openbmc@lists.ozlabs.org,
	linux-gpio@vger.kernel.org
Subject: Re: [PATCH v6 0/7] Add ASPEED PCIe Root Complex support
Message-ID: <20251204195355.GA1975043-robh@kernel.org>
References: <20251201-upstream_pcie_rc-v6-0-8c8800c56b16@aspeedtech.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251201-upstream_pcie_rc-v6-0-8c8800c56b16@aspeedtech.com>
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

On Mon, Dec 01, 2025 at 02:29:10PM +0800, Jacky Chou wrote:
> This patch series adds support for the ASPEED PCIe Root Complex,
> including device tree bindings, pinctrl support, and the PCIe host controller
> driver. The patches introduce the necessary device tree nodes, pinmux groups,
> and driver implementation to enable PCIe functionality on ASPEED platforms.
> Currently, the ASPEED PCIe Root Complex only supports a single port.
> 
> Summary of changes:
> - Add device tree binding documents for ASPEED PCIe PHY, PCIe Config, and PCIe RC
> - Update MAINTAINERS for new bindings and driver
> - Add PCIe RC node and PERST control pin to aspeed-g6 device tree
> - Implement ASPEED PCIe PHY driver
> - Implement ASPEED PCIe Root Complex host controller driver
> 
> This series has been tested on AST2600/AST2700 platforms and enables PCIe device
> enumeration and operation.
> 
> Signed-off-by: Jacky Chou <jacky_chou@aspeedtech.com>
> ---
> Changes in v6:
> - Refer to pci-cpi-bridge.yaml to update aspeed,ast2600-pcie.yaml and
>   the pcie node of aspeed-g6.dtsi.

Where is this? You don't describe the root port and its properties at 
all now.

> - 'dt-bindings: pinctrl: aspeed,ast2600-pinctrl: Add PCIe RC PERST#
>   group' have applied, remove it from this version.
> - Adjust the defnitions in pci.h. 
> - Link to v5: https://lore.kernel.org/r/20251117-upstream_pcie_rc-v5-0-b4a198576acf@aspeedtech.com

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
