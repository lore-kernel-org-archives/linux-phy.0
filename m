Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96F7DC4345F
	for <linux-phy@archiver.kernel.org>; Fri, 12 Apr 2024 11:36:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nN8o5TYHVe1H6/e5HV5dzO+/5/JsJRbjO2S3TVCuPWg=; b=JQ9UTsjWyUEORl
	yaAT0dOHBIZ4b4XfSZdxYXInCzi+uBNZ27DlwMY+EtVGU3I02v39TuTd2NXzU8OiUSUltywznHGCF
	/TGRylYxSlzuvTJ8HsP2Mb61vOrIwo7QcD4JIInN9AsHsvQOFTQH0r9/JsAAZX6gQiEtdxszOlBu0
	V95AuZGejjrhbkF9dMBYteCzkAjd5vhr4tZ7+5JZrlwHS61u7TGA5OsQKrza69uex6mQYcmg2ZBH7
	1EP4+TnpOt7LEMraBSx4SXjKWQaJaZZAihmboCEb4dip6TJUvKIE0iS4uZatN8FQux9dXV4a5DS0u
	UVtcf05jeSuazQJHttmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvFCu-0000000Gxf9-0cUO;
	Fri, 12 Apr 2024 11:36:36 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvFCb-0000000GxUe-0xwX;
	Fri, 12 Apr 2024 11:36:24 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 760A561BBA;
	Fri, 12 Apr 2024 11:36:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C5279C113CC;
	Fri, 12 Apr 2024 11:36:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712921776;
	bh=5BQ14V4MwSIWKlfSozpghxE/dQxOXZmas/FIhoygFxI=;
	h=From:To:In-Reply-To:References:Subject:Date:From;
	b=AWpWX4KecPLDinQNtzsEukig5u9fLIEmD9bql4YmS4yCGoqoymU0Ec8riXMDGc2Kw
	 mDZbX6G2+BXQYLh+QO1+hbac7ZLpkujAM6S63jGC46gumbiuE9fYWYxuzyCotphhBf
	 Y1gJnbhYV8wyfXji6hpKFd2VjMDOUR4J5lZstFro1JDIxLxqpHXBHmoyLhLCGBsvXU
	 oEKChHMkhBjZX8zZyYMUyAywc3XD0Yv7tiu4EQVH6G1K8hypBrlUovB+RO1+6FEyjI
	 okhTGpOfR64FRpVyvpFCrmBXO3YVFT5l9umiwpKN9efS1MKboixziSgC97dX7C3ssH
	 NLVQO8cCXcEUw==
From: Vinod Koul <vkoul@kernel.org>
To: Bc-bocun Chen <bc-bocun.chen@mediatek.com>, 
 Steven Liu <steven.liu@mediatek.com>, John Crispin <john@phrozen.org>, 
 Chunfeng Yun <chunfeng.yun@mediatek.com>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Qingfang Deng <dqfext@gmail.com>, 
 SkyLake Huang <SkyLake.Huang@mediatek.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org, 
 Daniel Golle <daniel@makrotopia.org>
In-Reply-To: <da5498096f71a40ca1eac4124b7bb601c82396fb.1712625857.git.daniel@makrotopia.org>
References: <da5498096f71a40ca1eac4124b7bb601c82396fb.1712625857.git.daniel@makrotopia.org>
Subject: Re: [PATCH v4 1/2] dt-bindings: phy: mediatek,mt7988-xfi-tphy: add
 new bindings
Message-Id: <171292176938.599803.1671196467939559140.b4-ty@kernel.org>
Date: Fri, 12 Apr 2024 17:06:09 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240412_043617_703502_2A7C8375 
X-CRM114-Status: UNSURE (   5.93  )
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


On Tue, 09 Apr 2024 03:23:54 +0100, Daniel Golle wrote:
> Add bindings for the MediaTek XFI Ethernet SerDes T-PHY found in the
> MediaTek MT7988 SoC which can operate at various interfaces modes:
> 
> via USXGMII PCS:
>  * USXGMII
>  * 10GBase-R
>  * 5GBase-R
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: phy: mediatek,mt7988-xfi-tphy: add new bindings
      commit: f482f76c9d0933b91f32f170fbc421a4d0ebaf56
[2/2] phy: add driver for MediaTek XFI T-PHY
      commit: ac4aa9dbc702329c447d968325b055af84ae1b59

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
