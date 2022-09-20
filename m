Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6FDBEC54EE9
	for <linux-phy@archiver.kernel.org>; Tue, 20 Sep 2022 06:10:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ldFozG6VmufeBvdV3cjCePQW6JZ2Q1S0iKqXi9wn0PE=; b=svwfpJzP54+CNr
	v0j/vKC5g4YFuVv3dM+0dV4IQCP/S6dQJ3H/0hP6L893aLvpTn1QtRD36DBrun1rJdv8kHHppHC42
	VMCLC5mDCtDITbge/gcN7LcDXZPAfB2Dim6AtqDlXQEzc6ov+/HOe55h2N5a+kaxEOaewuJlchIra
	EOr/9VsSToSl6HsPiJOjytWstytC2FDZDjpFsrmaEG5vpRokXCeNXXw+W3gCPSWswQuDiwyogAK3r
	1lbBlowO+cdP1U/kIVZZzXhxp3Gyg0i2vUqtgOVxpIw+JUcVY0ilPgDr1V+uy5ZUcnUfq1GcTBQAP
	ngAmqK2Rm93MrJ9ExyKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaWSY-000u0P-Sr; Tue, 20 Sep 2022 06:10:18 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaWSW-000tz4-Ox; Tue, 20 Sep 2022 06:10:18 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 67789B81DB8;
	Tue, 20 Sep 2022 06:10:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 68EE8C433D6;
	Tue, 20 Sep 2022 06:10:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663654214;
	bh=Y6YT1/Ffr14tsM3bpTfrYhn9ayz5RIr5C5L15QBXNkE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qKpS/ppF3a3P6S4K+yWOm2+zwFNYWDOmWfJA7U9VQ8sQhnx1+5Z8K12KN1yMvoqup
	 HXDSc5BejS1K4ZNbiF/n19jELEWomvgM94lmjhCuk2skM+Fz4MQPtsN9jlELFQ4UeM
	 L3VJUT1BTONb7A8uURTE7282lVh0Ndu+r1xEdEgwS0J/Ib8CgUmWf1hk7mbhHANXzK
	 /Lg2cUyNm9Bc1CTZspdc7gT8Ug+VQtJFOqV4/yHrfOuJ7ldxmW3J7wUeVvCpKDyztC
	 dGBCsF21Hu6zyyX9XPSoLgKOp3Dv/L6Nt3DOqfjF//oegx2X8mJXIKMX3eOrGpUdhk
	 xixGXriot8xxg==
Date: Tue, 20 Sep 2022 11:40:09 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org, jbx6244@gmail.com, cl@rock-chips.com,
	frank-w@public-files.de, s.hauer@pengutronix.de,
	michael.riesch@wolfvision.net, pgwipeout@gmail.com, heiko@sntech.de,
	krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
	kishon@ti.com, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH v4 0/3] rockchip-dsi for rk3568
Message-ID: <YylZQaBObE42Ioon@matsya>
References: <20220919164616.12492-1-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220919164616.12492-1-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220919_231016_989452_3627444C 
X-CRM114-Status: UNSURE (   9.52  )
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

On 19-09-22, 11:46, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> This series adds support for the dsi and dphy controllers on the
> Rockchip RK3568.

Applied 1,2, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
