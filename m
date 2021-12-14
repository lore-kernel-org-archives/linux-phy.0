Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E08DDC433EF
	for <linux-phy@archiver.kernel.org>; Tue, 14 Dec 2021 14:34:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6cwlhz32VLQDhSTvS2tiMsbWQ6JgulQJK/x+t9Q9/Jg=; b=vW0/n9Q22cb3Z0
	i1rSblA15mJVcrhTQyt2kqk9Kkfb/VHarWyypmNey622jNX5My0AE0qyW225YauDPOHgY0bLfWQzx
	lI63QjNwnhgqE846ycCHDnBA5TXULrGQHHNclypg85cpU9E4pmsxf9dBqGHE3UzaHYwHuVi+5xwCO
	UbatR1WhZnfh1a7Rc4b3UCSoePWOPrTng6+pCat00xm5HB5TvNZrVCX8MEpSXSDpWAOV8TFQ0zcpq
	xD5PR3MkG7HszS6Lbi4wMVn4GQdpIHap2hIhXQU9fS1xFi3h4vJp33+Mt+OLxUaAS+5sTmir+UXFW
	GHZk4SFgyqudsDX3dS/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mx8t0-00EQhb-5n; Tue, 14 Dec 2021 14:34:34 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mx8sa-00EQX3-Ow; Tue, 14 Dec 2021 14:34:10 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 83E17B819DF;
 Tue, 14 Dec 2021 14:34:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 594BDC34606;
 Tue, 14 Dec 2021 14:34:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1639492446;
 bh=/6ZvXKp4GZ+WzFC8Fhrsl8D/1N93RLcPiQqbY3GUb1Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=EfcOSL2JAek2r4kIWlB6D13pRXeUDgUZqMovQfrFrpCqWhp/YjhfdmhboTpYy5PIe
 SGcEFdOcBVTYtzk9llr4x7RAjNJNdG+mWA3/jdyZqKZ5e/7k7xPbpyljD9n5Q38MaS
 /03n+SljBLQ1OAWdDw8gzFD+kzQMjZB6pZEPt/GIPRrrdpLJ3Mgmr5vCHhTeEXXhuV
 IZ0lOZP506Io3Am/0FSB1li092TDBubGDSyEJ8T2zPN4bha2erfKQqAUjBbS3FvNCV
 kdpfUF55SToRI9iGnmx6D+Xhhzklym6Qlr8nTqAbLFcBmhKNaPzKraq3q5OvlBGa5n
 JuNQj5mRIRjDw==
Date: Tue, 14 Dec 2021 20:04:02 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Richard Zhu <hongxing.zhu@nxp.com>
Cc: l.stach@pengutronix.de, bhelgaas@google.com, lorenzo.pieralisi@arm.com,
 marcel.ziswiler@toradex.com, tharvey@gateworks.com, kishon@ti.com,
 robh@kernel.org, galak@kernel.crashing.org, shawnguo@kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@pengutronix.de, linux-imx@nxp.com
Subject: Re: [PATCH v7 5/8] phy: freescale: pcie: Initialize the imx8 pcie
 standalone phy driver
Message-ID: <YbirWnPTgh+vdNWD@matsya>
References: <1638432158-4119-1-git-send-email-hongxing.zhu@nxp.com>
 <1638432158-4119-6-git-send-email-hongxing.zhu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1638432158-4119-6-git-send-email-hongxing.zhu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211214_063408_978847_0E2D1889 
X-CRM114-Status: UNSURE (   5.64  )
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

On 02-12-21, 16:02, Richard Zhu wrote:
> Add the standalone i.MX8 PCIe PHY driver.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
