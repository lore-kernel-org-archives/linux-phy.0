Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77BA9C4332F
	for <linux-phy@archiver.kernel.org>; Mon, 17 Oct 2022 05:31:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+kMaZ25nha5ytzw7aIouqiqs4n/Cj/qk9tqYoHsUqjM=; b=oK0DA97rfIAdJb
	hZ5qrsRG3abkRO5+eJswl1XudVD7nNXoJZRlzTJ8snKuYy/4LNF9J//XToM56BHxPCH+IuU0Tv4Of
	btgsqlwrMDRRiMvF85gmS69aF0ysK2tjrFUSIaw8nKkWcFm4pjLyvdYXOqw+bCJbuDfVf+5nEDGhV
	6Ws2uVjrE+lxjQ7TjkbqWVRvBsKGl21ZRaQVzO0QBJ9i3Q1jpIvBJ/8aB9m6YYVT73C2+UmtElIWD
	9bc2jlVMA+vPhuCeUntYO0scY6UuBEJd8m8eAnJkYvVTbz9+pEA0p/sKmNY1tXO53wcAYeuLea5eQ
	5mOAu/YQ4bCELI0HiaRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okIil-007PLs-Tw; Mon, 17 Oct 2022 05:31:27 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okIib-007PJJ-6i; Mon, 17 Oct 2022 05:31:18 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id BB4DBB80F01;
	Mon, 17 Oct 2022 05:31:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A5CECC433C1;
	Mon, 17 Oct 2022 05:31:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665984674;
	bh=sO6545pDBaPqu6+Mn2bqfpIFfvQunPyQ2gJKDlsGsHg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bcrpWc6UvaFIr0BqUGoRxVCl4HW9/4t/oBBmVM4NudRKzTkgrb6Rud5WWZ+4GfpQI
	 0V+hbxhKq74nxlOiWocNjeuwd3nPDiV66FH+mQZtgOgF3VXbB3DPgTth//buaQdgb6
	 49x/i+X7ZGk4BUGklMS2ExE1IgU8rLplTH1qC2lGS55hoQR6Z3eKJy6EHi+YaL/MU0
	 zVZ6jTMJxVFiJhlgksweBOqAYyp9vD61C6iqr77+eBLim+B93MR8SHW0uoTxWV10N8
	 LVJBkrpjz6SxHae/OzG1uoHWX3O2oPTk3MZwJZERriaN1pssWpNB6h4fOjmNBlD22Z
	 bfP9WJPrC8jLw==
Date: Mon, 17 Oct 2022 11:01:10 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Richard Zhu <hongxing.zhu@nxp.com>
Cc: a.fatoum@pengutronix.de, p.zabel@pengutronix.de, l.stach@pengutronix.de,
	bhelgaas@google.com, lorenzo.pieralisi@arm.com, robh@kernel.org,
	shawnguo@kernel.org, alexander.stein@ew.tq-group.com, marex@denx.de,
	richard.leitner@linux.dev, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	kernel@pengutronix.de, linux-imx@nxp.com
Subject: Re: [PATCH RESEND v12 0/4] Add the iMX8MP PCIe support
Message-ID: <Y0zonrL8JFDQwW3o@matsya>
References: <1665625622-20551-1-git-send-email-hongxing.zhu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1665625622-20551-1-git-send-email-hongxing.zhu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221016_223117_411685_798DC09E 
X-CRM114-Status: GOOD (  10.63  )
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

On 13-10-22, 09:46, Richard Zhu wrote:
> Re-base to the pci-v6.1-changes of pci/next branch. 
> Update the cover-letter, and re-send the v12 patch-set.
> This series adds the i.MX8MP PCIe support and tested on i.MX8MP
> EVK board when one PCIe NVME device is used.
> 
> - i.MX8MP PCIe has reversed initial PERST bit value refer to i.MX8MQ/i.MX8MM.
>   Add the PHY PERST explicitly for i.MX8MP PCIe PHY.
> - Add the i.MX8MP PCIe PHY support in the i.MX8M PCIe PHY driver.
>   And share as much as possible codes with i.MX8MM PCIe PHY.
> - Add the i.MX8MP PCIe support in binding document, DTS files, and PCIe
>   driver.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
