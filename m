Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E9E21C54798
	for <linux-phy@archiver.kernel.org>; Tue,  5 Mar 2024 13:26:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GBloh4r6YfKApRaw2aPkWdh+bSJa0eO+y+IktALedOg=; b=vibUmEt87o6oZV
	aEmXSbYUqemXwza4SWidpRXL9m99DSChorjDIL1Bgc0Ot5Xj+bR5x66Hy3efcPwPfjAZHx0QuPJU6
	y51dZNEtm3mnB7LQm2tOPlsJmwwazMm6o+HN/UY+Uh8sI00KXhTlriC8jZZ3To/4d/sr6/V5pYQE0
	mqiarYbFS+3qDs9CV74xQ2Gr2KEp75WxyJCobEmP+/XD4AjZRZMSFvRXT/cFYqKrbd0U3iEmRSrVp
	vY+Vy+WvLglNGFNonV4O1Wu4pcuRAlt3duzGz5DKVTvg+qAf9PiJEeIJLthKGZDUJDDsJTB3srVMQ
	dVKMIWiPibX19c64wsPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhUob-0000000DkRe-2eCj;
	Tue, 05 Mar 2024 13:26:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhUoY-0000000DkPy-0m0Z
	for linux-phy@lists.infradead.org;
	Tue, 05 Mar 2024 13:26:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1rhUoI-0004zr-7l; Tue, 05 Mar 2024 14:26:22 +0100
Received: from [2a0a:edc0:0:900:1d::4e] (helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1rhUoG-004YsK-CV; Tue, 05 Mar 2024 14:26:20 +0100
Received: from pza by lupine with local (Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1rhUoG-000C5R-11;
	Tue, 05 Mar 2024 14:26:20 +0100
Message-ID: <f19eb5bb48898e0c843e936711c2fd3d4c2ee908.camel@pengutronix.de>
Subject: Re: [PATCH v4 5/5] phy: hisilicon: hisi-inno-phy: add support for
 Hi3798MV200 INNO PHY
From: Philipp Zabel <p.zabel@pengutronix.de>
To: forbidden405@outlook.com, Vinod Koul <vkoul@kernel.org>, Kishon Vijay
 Abraham I <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>, Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>,  Jiancheng Xue <xuejiancheng@hisilicon.com>, Shawn
 Guo <shawn.guo@linaro.org>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>, David
 Yang <mmyangfl@gmail.com>
Date: Tue, 05 Mar 2024 14:26:20 +0100
In-Reply-To: <20240305-inno-phy-v4-5-a03204c9cf1c@outlook.com>
References: <20240305-inno-phy-v4-0-a03204c9cf1c@outlook.com>
	 <20240305-inno-phy-v4-5-a03204c9cf1c@outlook.com>
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240305_052638_243557_3C9D2772 
X-CRM114-Status: UNSURE (   5.19  )
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

On Di, 2024-03-05 at 10:19 +0800, Yang Xiwen via B4 Relay wrote:
> From: Yang Xiwen <forbidden405@outlook.com>
> 
> Direct MMIO resgiter access is used by Hi3798MV200. For other models,

See

https://lore.kernel.org/all/4bf4146749abb1500f8a412deb4d61ab0f3c80e6.camel@pengutronix.de/

regards
Philipp

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
