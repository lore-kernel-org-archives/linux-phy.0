Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C76FBC77B7A
	for <linux-phy@archiver.kernel.org>; Tue, 16 May 2023 13:04:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OxBh1U8esXXNAAeWf47GyRYhBKnSJkAnC4rho13yH0A=; b=SmfqzcY3sOsGmI
	5ydgE1YupnHR+xMnwDBij9ImkVdF5iutg7h6UfqOdhwbJ9JZ8uLEkQuCM7GDsCJiJV0Az72qBcL+c
	mOgX0euanBtc7H8YqyvzCDH/HwY1Qx/VDx6XbB5s4EDvk+m0pre9UTNZ9yjYN35rNZuxYWljeGBvH
	zECS5eL6t1VZscQqmECIYQp9i6P3zZGbHjNpwGHq6LtA4LiK4CrE9ULQ75OpIhPJd+a75ENdkDK1B
	UHqkhL9vrkEqZSwAKOKgr4OTP7MCfmC7KVRiF85TrxMOEa9Xmqo2R/LTCjGZ5cPFnZP6+Fhi6mgJ8
	ECMoh5hkiSujWfuHsm+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pyuLv-005q6I-1W;
	Tue, 16 May 2023 13:04:31 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pyuLt-005q5P-2g;
	Tue, 16 May 2023 13:04:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=xN3bIRZT7nXvd+pIX2LfCtHkMpStFl4+Y6rEWrE9JDA=; b=odIi9hDj1a6RLiM9n86ihBZtz3
	rzlfGANTJ8Sr6ga0RwLNrL1tWNJXc1pmlF4ghC+UIYiu1h5qDSj6iZVhpCjtavDBQRUrSMtgzBhOC
	KZXx1OaLct9F+b1Akb7mYU1EOGM+0mYrCltAomcrESTadaJl3HSP+VOVg3OAi7Z8H3YBQATxyJqPQ
	4OdTDlmu7jpB/tFveOA+A0te3PhyyikohLy8fRmd4n/eOYJAb22xqoC1C3K/hBuCpYbDspcrwYZzu
	xteu6kMGQDE/9I9PryP3V7wSCHY7UlbJ+m9NmCvmrc9b+XSL5StdkiKP3ib6iUTrTcRfA2lqVcUsL
	VIw6/dGQ==;
Received: from dfw.source.kernel.org ([139.178.84.217])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pyuLq-00C7Jw-1c;
	Tue, 16 May 2023 13:04:28 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 8ECE4639D8;
	Tue, 16 May 2023 13:04:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4797EC433EF;
	Tue, 16 May 2023 13:04:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684242244;
	bh=VdqrGbdfxEFS/5J2JfzncnbQSVDrzAf7yrXeYtQkJDs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=eU0fLyUF+iHfuBBjE6jPPhHzUuRLHz9TD24pWt4Mr65p2J1Bq7XiwpnidUWVY4Puj
	 k3TfnR5y0qwVHujY/yCawxLKIBwqf5ovtUAE1BB/vSwk91jHa16v9S9FHa2NcgCI2l
	 ZfOyqs6WQChh8WjrGWLQ1+uresXVQZbbmBn9XwC4PucQnXatCBBXm+VS2PELznSbWH
	 0GtcfnmMdVxHOct08d5q/XniLBDkg75aRH09sBBe7V339A2O0b5BMoFuEH4gxVQXhe
	 UsEnpjlcZ9Auiiw64UTq9zIzWyhsB7lX7UttAhq+DNOYMtLYnJxIU0qm8ZG1rlM82Z
	 xMK/d3yBRYBAw==
Date: Tue, 16 May 2023 18:34:00 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Jerome Brunet <jbrunet@baylibre.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Sam Ravnborg <sam@ravnborg.org>,
	Nicolas Belin <nbelin@baylibre.com>,
	linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v4 10/13] phy: amlogic: phy-meson-g12a-mipi-dphy-analog:
 fix CNTL2_DIF_TX_CTL0 value
Message-ID: <ZGN/QA5ZeVS459Og@matsya>
References: <20230512-amlogic-v6-4-upstream-dsi-ccf-vim3-v4-0-2592c29ea263@linaro.org>
 <20230512-amlogic-v6-4-upstream-dsi-ccf-vim3-v4-10-2592c29ea263@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230512-amlogic-v6-4-upstream-dsi-ccf-vim3-v4-10-2592c29ea263@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230516_140426_739766_5F2D454C 
X-CRM114-Status: UNSURE (   7.98  )
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

On 12-05-23, 15:11, Neil Armstrong wrote:
> Use the same CNTL2_DIF_TX_CTL0 value used by the vendor, it was reported
> fixing timings issues.

Applied to phy/fixes, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
