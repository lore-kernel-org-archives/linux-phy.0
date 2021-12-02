Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1CDFC433F5
	for <linux-phy@archiver.kernel.org>; Thu,  2 Dec 2021 06:04:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OCgtirU1sO32vKMqkmxkoyafrem9Oo5rIjjHuJp2ipM=; b=Cg9mXwTb0EYyNJ
	4HLdHf2TxWHdtC4KbfYtRzlhzm1kftpknAxQVnSdo/Ty1sx+Fku3qQcquxGClhmDFd+KQgiVb98OF
	f6mfcK8TuYuXqSiUGf2BRr89J7QVq3FJtglpVbo46cCgalSOYLQOIp5x6EsMtdBKskOsAXtLm9vO8
	HaD16gol8A1bXgIZhkyDpLur5hPOJ7YoPZxvsRo6kbO3i5SpWMUwIJIJ1qNrNoLcrHK4H5TY5qNc4
	a1CSRCwqexhF4b2c7cLMa+a+3iJnj52Jqwoi2jCpytELmzYZL94WpN6xHj4NaKE3+YqHA6mFH0GZa
	bdi0td7izMM5cZK6R6Jg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1msfCe-00B03F-9N; Thu, 02 Dec 2021 06:04:20 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1msfCQ-00AzzM-I0; Thu, 02 Dec 2021 06:04:07 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by sin.source.kernel.org (Postfix) with ESMTPS id 2AA21CE21B2;
 Thu,  2 Dec 2021 06:04:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0A300C53FCD;
 Thu,  2 Dec 2021 06:03:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1638425039;
 bh=ksIcEbsRoBkbfM3zaWP1sODJMdlrDTDISmF13hxnf2Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=D6Y8Eku9+XGzi38oc7hCfrFeqNgu9ivT/YL8AplMya1r7JWAwZgX2vfPXwNrT6bGi
 lEVRfEAnZnyBQJ1D2eEccjOJIkyDyv/NgDNY8BGkIYhz7sesICrb028I2nqe1piCJL
 Qv4fR9jQAWEd8ONNSi9gihncedrg8nb4BbpkPqO1gFzHs8slncqjDPVBy1uU/1ubcg
 /Kh3iPNqS+OwEVm2exM/F+jkS3+OCtUnjqMrsoFOmOXQGjLgE6lZLxQaQkZQDxFpVf
 hohB7jVEsBhFosRw7k05rsQhBJpucwNJ9zj9jdEWdPRo/eWV2UpcAYGEy6XYY86G7c
 JFOGqHgdh4x6A==
Date: Thu, 2 Dec 2021 11:33:55 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Hongxing Zhu <hongxing.zhu@nxp.com>
Cc: "l.stach@pengutronix.de" <l.stach@pengutronix.de>,
 "bhelgaas@google.com" <bhelgaas@google.com>,
 "lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 "tharvey@gateworks.com" <tharvey@gateworks.com>,
 "kishon@ti.com" <kishon@ti.com>, "robh@kernel.org" <robh@kernel.org>,
 "galak@kernel.crashing.org" <galak@kernel.crashing.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 dl-linux-imx <linux-imx@nxp.com>
Subject: Re: [PATCH v6 5/8] phy: freescale: pcie: Initialize the imx8 pcie
 standalone phy driver
Message-ID: <Yahhy4neHWY/ETtQ@matsya>
References: <1637200489-11855-1-git-send-email-hongxing.zhu@nxp.com>
 <1637200489-11855-6-git-send-email-hongxing.zhu@nxp.com>
 <YahL1TMkt8S0RNX5@matsya>
 <AS8PR04MB86761C166EB0A6555252C4178C699@AS8PR04MB8676.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AS8PR04MB86761C166EB0A6555252C4178C699@AS8PR04MB8676.eurprd04.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211201_220406_792956_3FE00829 
X-CRM114-Status: GOOD (  11.32  )
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

On 02-12-21, 05:57, Hongxing Zhu wrote:

> > > +static struct platform_driver imx8_pcie_phy_driver = {
> > > +	.probe	= imx8_pcie_phy_probe,
> > > +	.driver = {
> > > +		.name	= "imx8-pcie-phy",
> > > +		.of_match_table	= imx8_pcie_phy_of_match,
> > > +	}
> > > +};
> > > +module_platform_driver(imx8_pcie_phy_driver);
> > > +
> > > +MODULE_DESCRIPTION("FSL IMX8 PCIE PHY driver");
> > > +MODULE_LICENSE("GPL");
> > 
> > This does not match the SPDX tag you have given
> [Richard Zhu] Should the "GPL v2" correct one?
> If yes, I would change it this way later.

That would match spdx tag

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
