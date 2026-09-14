Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4611BC88E64
	for <linux-phy@archiver.kernel.org>; Mon, 14 Sep 2026 03:33:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lsAeOEbvKKkQ3bIgo7x4ZTKjUJ5wyAOId+8i+HLp7Yk=; b=BfjcymBA5eJO/7
	hwkId36E5VCKT3mijHTVMrlUfU9LoGvL5zb3lupW5c1PWMiOKxAzwUbMP/xPiHQ7Eny/Pn6IDZpq8
	DLUCnlIwvxVaNo64lDTOfkidBLOvOCfaB4znqqC9Y7FgC5un5KD9exvza+pdCJuFcMoN3Qaz6yNQN
	osiCYcWve9opY/JwiOalCju6N7V6bvihsouKafhwdRZ3B07rn8IZokE5la7uIgCqm3pMM7ujwdmEU
	ZxUpChiec3H8ks4zXKN76xYfa5Nw5qhWg47WtL66WII0JQgb6umWLE6YYriEOVDvVivAi0y0/a+7q
	+1AFvEEKcndkE8VIZFXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5xRy-00000002H7V-3JSP;
	Mon, 14 Sep 2026 03:33:46 +0000
Received: from mout-p-101.mailbox.org ([2001:67c:2050:0:465::101])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5xRv-00000002H6w-3dFG
	for linux-phy@lists.infradead.org;
	Mon, 14 Sep 2026 03:33:45 +0000
Received: from smtp202.mailbox.org (smtp202.mailbox.org [10.196.197.202])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-101.mailbox.org (Postfix) with ESMTPS id 4hjrN11n10z8sqP;
	Mon, 14 Sep 2026 05:33:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1789356817;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=zi/HNH51DYMqF6FrKwXWRt/DS3wGH248vhAG+zCzkeg=;
	b=xirn+Venw00wFe+IUQ/RNMvSnxo+YxdBpuOkeFNaf8GxFGck+yfpKHTWTVWaE8ewbq5Erd
	6W6Xsheui0UA/3iOKYpuHARwG2zg1EOslox7KPmeX9JTLVs+grgYayBb+4xe4CATN0votw
	KJDukKN8RQ+Sft9qJYtx6F6uaHRYPNODsOHITu9soAP6a7WUt8dxmUtT8RfoomqR1e3Fgk
	jSpzWcS6sHnSCXnjnVykK14cm+gGRmxRxK5/IHF63/JesQgPg+g+G2MV/xKjC7IVfHL7Pt
	WIgqHQzrEn/0kQthFqruGUszK/GfHLqZG6IwDsIKIBDHb05UHMRZLrf5pyqIyg==
Message-ID: <c88cad21-dc3c-4791-837c-49a6a41a811c@mailbox.org>
Date: Mon, 14 Sep 2026 05:33:31 +0200
MIME-Version: 1.0
Subject: Re: [PATCH 2/2] phy: renesas: Add Renesas Multi-Protocol PHY driver
 for R-Car X5H
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-phy@lists.infradead.org, Thanh Quan <thanh.quan.xn@renesas.com>,
 Phong Hoang <phong.hoang.wz@renesas.com>, Hai Pham
 <hai.pham.ud@renesas.com>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Arnd Bergmann <arnd@arndb.de>, Biju Das <biju.das.jz@bp.renesas.com>,
 Conor Dooley <conor+dt@kernel.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Magnus Damm
 <magnus.damm@gmail.com>, Neil Armstrong <neil.armstrong@linaro.org>,
 Rob Herring <robh@kernel.org>, Tam Nguyen <tam.nguyen.xa@renesas.com>,
 Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>,
 Vinh Nguyen <vinh.nguyen.xz@renesas.com>, Vinod Koul <vkoul@kernel.org>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org
References: <20260828192223.402422-1-marek.vasut+renesas@mailbox.org>
 <20260828192223.402422-2-marek.vasut+renesas@mailbox.org>
 <c2rlwdyn2xm3tti7skniz3uldwh4lly4jlqdmggqjm2a2xpyxq@nczmbl7tyqa7>
Content-Language: en-US
From: Marek Vasut <marek.vasut@mailbox.org>
In-Reply-To: <c2rlwdyn2xm3tti7skniz3uldwh4lly4jlqdmggqjm2a2xpyxq@nczmbl7tyqa7>
X-MBO-RS-META: 8bfkjky1pt3whjxf1p558bchj4awyzb1
X-MBO-RS-ID: 2deee22f53a4f685405
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260913_203344_055699_8A1F0540 
X-CRM114-Status: GOOD (  11.35  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 9/3/26 12:15 PM, Manivannan Sadhasivam wrote:

Hello Manivannan,

>> +/* Firmware update */
>> +#define MPPHY_FW_BASE			0x10000
>> +#define MPPHY_FW_CH_OFFSET		0x20000
>> +#define MPPHY_FW_NAME			"rcar_gen5_mp_phy.bin"
> 
> Is this firmware redistributable? I would assume not as like other Renesas IP
> firmware. If so, you should add a documentation about how an user can get the
> firmware, and package it. Like,
> Documentation/PCI/controller/rcar-pcie-firmware.rst

I will do so in V2 .

The Gen4 firmware is now part of linux-firmware, so I updated that piece 
of documentation and sent a patch.

[...]

>> +static int mp_phy_probe(struct platform_device *pdev)
>> +{

[...]

>> +	return pm_runtime_resume_and_get(dev);
> 
> Since the runtime usage count is incremented and not dropped anywhere else, the
> driver will never runtime suspend.
> 
>> +}

I do not think we can actually runtime suspend the PHY itself, so this 
is expected.

The rest of the feedback is handled in V2, thank you !

-- 
Best regards,
Marek Vasut

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
