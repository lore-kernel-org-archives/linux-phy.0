Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F07E1ECAAD5
	for <linux-phy@archiver.kernel.org>; Mon,  5 Sep 2022 03:02:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VfeKpWRf01eBl+e93AQjptsID5PCPNwdFi9tIU/4nok=; b=Z/KcFPL3chz1jp
	lhT1BlbSQg4FeQDViRXxG6srIKw73mhCh8d/OyYVe+nW/yTxhhl6ilHOczw2HsORSPsQFLVUsFUE6
	I2yNSrxnUZZCj2pS5wTLzT4xeuHCht5CM/NqGHvqyCLOTLFKPzsh6HWisB/TL05QN3iE6xYY4OC44
	7rdo1rccclxjdbMs4Pwa6stUQgho5XNxOXI0h4r/wE8ziXqaNS4Nr4IqtjeTETjLUE0ssfTif9xM0
	kXWO4bVp8KIjNHap6nMM4a7bxYwo7MEybcTjG67zXJSh9I/9lemhN0J/eaZsS+1ZlsarfiuI0omUc
	bikkBMf6hpUmg4ZbqANA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV2NQ-006QkH-0I; Mon, 05 Sep 2022 03:02:20 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV1sE-005kXR-Ec; Mon, 05 Sep 2022 02:30:11 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id DF998B80DE2;
	Mon,  5 Sep 2022 02:30:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7C23DC433D6;
	Mon,  5 Sep 2022 02:30:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662345003;
	bh=GUv3cHTZYqaziju52Y1+ZmSvfImbkNQ+/vGCkNqAPQo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VPOK8wqNjqiGe5RcB2YIIBjPuqgJdLiCYpaZTl4HnOFltcQGeIkVKuDhNxUFNsscH
	 37dSe23yogr+Srpt1rh8ONmO1VY7EpW3xnAEAappoV0BRTqZ3kJxyV5x2apURHvvSZ
	 +Yz7QvyQ2WXcqe7+jsJbc2TP13Krba8mhqMn/K4iPZE+uKX/Hk1VzVnifEG0biv/DD
	 yRSQP0M0fITNi0uak5FOgWPwje1zy82OEmI3F7lJptfDP4bSaqTOsM7OyzfcpG+Kl6
	 p9K9l36r3zBGS+Pj0Eg6qreTdy/w2Zy5078X87bVddWp1/dIizoYq4HTDhRqKiuUGK
	 bE7EV7iK4djDg==
Date: Mon, 5 Sep 2022 10:29:56 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Richard Zhu <hongxing.zhu@nxp.com>
Cc: p.zabel@pengutronix.de, l.stach@pengutronix.de, bhelgaas@google.com,
	lorenzo.pieralisi@arm.com, robh@kernel.org, vkoul@kernel.org,
	alexander.stein@ew.tq-group.com, marex@denx.de,
	richard.leitner@linux.dev, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	kernel@pengutronix.de, linux-imx@nxp.com
Subject: Re: [PATCH v7 5/7] soc: imx: imx8mp-blk-ctrl: handle PCIe PHY resets
Message-ID: <20220905022956.GC1728671@dragon>
References: <1662109086-15881-1-git-send-email-hongxing.zhu@nxp.com>
 <1662109086-15881-6-git-send-email-hongxing.zhu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1662109086-15881-6-git-send-email-hongxing.zhu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220904_193010_374329_E9974356 
X-CRM114-Status: UNSURE (   8.81  )
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

On Fri, Sep 02, 2022 at 04:58:04PM +0800, Richard Zhu wrote:
> From: Lucas Stach <l.stach@pengutronix.de>
> 
> Dessert the PHY reset when powering up the domain and put it back
> into reset when the domain is powered down.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>

Applied, thanks!

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
