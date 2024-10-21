Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CA771D15DB3
	for <linux-phy@archiver.kernel.org>; Mon, 21 Oct 2024 15:47:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hEWkWycsXHYaifjjxgPqO5k3lz+wgHtGVGcMAccWudE=; b=qYxgIz8dx0QPMw
	12UxITmYQTp8QRZ4FSzegdT+oeuoIEhkfOye31lniwwZ71AEJgLLUYXfWhnPbC+K9bp3O959fhk4k
	SPO3l9VbUIt6G75TZPc6WRviUu2WWPxJYG73LoniKrp5qVCK/g3QmFo+ecm/eeDNO7hl+cJg3CkPR
	vq2f1GsrywIdfZ5lMjrmAL8HzvSWxBfB5RLXw9Dwn1PkSu7DMZEKy0zRbtctdImQIVk3b0cid20N/
	P8R7Cvef/p133pgliIeSyo2CS/HQWA5uaHQhXEy/Yw51cdNaWJNSodgBTq3hamk/RbMshDnbb6jmS
	sDFI77qL6UWm2ecniu/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2udK-00000007r2z-26wN;
	Mon, 21 Oct 2024 15:47:50 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2uaL-00000007qDB-0pkJ;
	Mon, 21 Oct 2024 15:44:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=xDCNswJHdW1wcr7CUV4vOH+mR7TSmuOCdCXWRnBHbDc=; b=J45pCSWoGzrGV2fskzmr6i2tWI
	f48wcvIrVhi55k4hst9H8RBHd9xMHoZgZcqJLHwmeqJmsOtO5tNGkIqne2SYK8ugbuq18rixOAfxM
	650QBw3xlDrfhGCgIBCiIVwVgqHfVe7gIk5H04IrDXdLfPTf1bwZHhdVmE2FyYuyC4oj7D+xU1WTR
	rAqr9iyQi3A8f0vKK+v3zGpp8n6eBbdxjWBLBP2m0+mxGFgfCpOg8TMyMmxHdlhDMPXr85bh3nF1h
	lARDT2ovIOPdm774vZBzLLzNnyhrW4lhm9/Tp6ilkH8nvZnr+Wc8tsA2mr6+PgNOzWJaUARtsQnO/
	psPXw2jQ==;
Received: from i53875b34.versanet.de ([83.135.91.52] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1t2uaJ-0005jR-4m; Mon, 21 Oct 2024 17:44:43 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: vkoul@kernel.org,
	Frank Wang <frawang.cn@gmail.com>,
	kishon@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	conor+dt@kernel.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-phy@lists.infradead.org,
	Frank Wang <frank.wang@rock-chips.com>,
	linux-rockchip@lists.infradead.org,
	william.wu@rock-chips.com,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	tim.chen@rock-chips.com
Subject: Re: (subset) [PATCH v6 1/4] phy: rockchip: inno-usb2: convert clock management to bulk
Date: Mon, 21 Oct 2024 17:44:36 +0200
Message-ID: <172952545664.1342338.17900988548616491240.b4-ty@sntech.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241016073713.14133-1-frawang.cn@gmail.com>
References: <20241016073713.14133-1-frawang.cn@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241021_084445_377584_2EBF88E2 
X-CRM114-Status: UNSURE (   9.68  )
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

On Wed, 16 Oct 2024 15:37:10 +0800, Frank Wang wrote:
> From: Frank Wang <frank.wang@rock-chips.com>
> 
> Since some Rockchip SoCs (e.g RK3576) have more than one clock,
> this converts the clock management from single to bulk method to
> make the driver more flexible.
> 
> 
> [...]

Applied, thanks!

[2/4] dt-bindings: soc: rockchip: add rk3576 usb2phy syscon
      commit: 3b8a7753131a9db25e81dd3f5c0ecae96400f334

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
