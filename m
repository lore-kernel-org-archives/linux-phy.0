Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6C05CA0EFF
	for <linux-phy@archiver.kernel.org>; Wed, 27 Aug 2025 06:50:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KrnKSxNpcwqZBFqTRiC6RJamosObIbHWOGrMBl+jzGo=; b=P+0L6EKRVa5e1C
	4j6MFJj//TIEe4Wl+w2DLtvt2GBFpcKG1zmEHH68/p2pWVowRlRb4MNL6/LpS5np1xPekaj+MRj7G
	EAddHHRiMthurQNRwGvRRIt3S5meJmXq5snmiLEXUCqwujw+LGFKWzKWSBq+Wz0CdS7S4F8go/YTU
	ViArHXrfycoWF3ip6Xff9EbEvPFCHMoCp2Bk/wif+x5Rxn0zwv5rpv6sXPJlL5TAnCZBoAsMxI3+U
	OzjXrkSIVA5bqfVi4ESoEG6Tdd/EMmHxwrEaMKvIIVQDEL7hLuuer40wtcmeCQMxvc1TCDcnk5EBG
	ePJci0uW0ki0HJruDhug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ur9yv-0000000EJJL-1Xdh;
	Wed, 27 Aug 2025 06:50:05 +0000
Received: from mail-m155101.qiye.163.com ([101.71.155.101])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ur9pc-0000000EHz7-1VcT;
	Wed, 27 Aug 2025 06:40:31 +0000
Received: from localhost.localdomain (unknown [119.122.212.9])
	by smtp.qiye.163.com (Hmail) with ESMTP id 20c18d712;
	Wed, 27 Aug 2025 14:40:16 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: iuncuim@gmail.com
Cc: andre.przywara@arm.com,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	jernej.skrabec@gmail.com,
	kishon@kernel.org,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	mturquette@baylibre.com,
	p.zabel@pengutronix.de,
	robh@kernel.org,
	samuel@sholland.org,
	sboyd@kernel.org,
	vkoul@kernel.org,
	wens@csie.org,
	Chukun Pan <amadeus@jmu.edu.cn>
Subject: Re: [PATCH 4/7] phy: allwinner: a523: add USB3/PCIe PHY driver
Date: Wed, 27 Aug 2025 14:40:10 +0800
Message-Id: <20250827064010.55675-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250816084700.569524-5-iuncuim@gmail.com>
References: <20250816084700.569524-5-iuncuim@gmail.com>
MIME-Version: 1.0
X-HM-Tid: 0a98ea417a0203a2kunmedb397446d055
X-HM-MType: 10
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlCH09DVkNOHR5PThkYSh9KSlYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlKSkJVSklJVUlKSVVCWVdZFhoPEhUdFFlBWU9LSFVKS0lCTUpKVUpLS1VLWQ
	Y+
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250826_234028_594909_2A53192D 
X-CRM114-Status: UNSURE (   9.69  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Hi,

> --- a/drivers/phy/allwinner/Makefile
> +++ b/drivers/phy/allwinner/Makefile
> @@ -3,3 +3,4 @@ obj-$(CONFIG_PHY_SUN4I_USB)		+= phy-sun4i-usb.o
>  obj-$(CONFIG_PHY_SUN6I_MIPI_DPHY)	+= phy-sun6i-mipi-dphy.o
>  obj-$(CONFIG_PHY_SUN9I_USB)		+= phy-sun9i-usb.o
>  obj-$(CONFIG_PHY_SUN50I_USB3)		+= phy-sun50i-usb3.o
> +obj-$(CONFIG_PHY_SUN55I_USB3_PCIE)		+= phy-sun55i-usb3-pcie.o

Would it be better to call it phy-sun55i-combophy ?

> --- /dev/null
> +++ b/drivers/phy/allwinner/phy-sun55i-usb3-pcie.c
> ...
> +static int sun55i_usb3_pcie_phy_init(struct phy *_phy)
> +{
> +	struct sun55i_usb3_pcie_phy *phy = phy_get_drvdata(_phy);
> +
> +	sun55i_usb3_phy_open(phy);

Maybe we need to add `case PHY_TYPE_USB3:`
And use <&combophy PHY_TYPE_USB3> in the DT

> +
> +	return 0;
> +}
> ...

> +static const struct of_device_id sun55i_usb3_pcie_phy_of_match[] = {
> +	{ .compatible = "allwinner,sun55i-a523-usb3-pcie-phy" },

Would it be better to use "allwinner,sun55i-a523-combophy" as
the compatible?

> +	{ },
> +};
> +MODULE_DEVICE_TABLE(of, sun55i_usb3_pcie_phy_of_match);

Thanks,
Chukun

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
