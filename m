Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02DAEC04FFE
	for <linux-phy@archiver.kernel.org>; Mon, 20 May 2024 09:49:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lg4CW7tx1aeptanmJE4ogZ3hB9PeFJL3Tonokfc0GQE=; b=qI6DJDqTqrWQ5k
	+m73oUO3eEBGhvpwkGzG5LkizwzPNl7jNIpeScS4ih+2+qidFJ5MfxhOWFLi49ssgI/henAyzCqVy
	rKtGsaMu03HXSkyfoyMTtFLQHC9YmqQCU6pqgvEjHoovGLhnkF1/jv8h2+l0/vcYUBmZLPHjdDS8M
	HcNyZ9m1wzQ3S/HYqAFeG8U/3Pfj/k2A1lxza3XWcZlNQQHNCguulYPCS7eznh3HKjIdGGrUGvmma
	MfBE5st4qRMcCJ7tjY3jI8lvJFWswDL4T1nilKXSXuYB7tk0tBK9qKqvmy83Ashzp50hb6JDCr5aq
	UDRhx3V4LMojjIZTYtlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s8zeP-0000000E2tv-2Rja;
	Mon, 20 May 2024 09:49:49 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s8zeL-0000000E2tK-1Cjq;
	Mon, 20 May 2024 09:49:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1716198583;
	bh=5kaaqc4sOBPWJZsZR1aq/xSydsIORP5Mc5R3f/xOljU=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=hQbbfEhGMCZHb6IxHVh8piSzmEoPlfnh5c6t8hqHdLVrheIh4P7rM4craL8Xe0reF
	 WDAtgnvjJ9J5ZsYye+LNQ40O8wzW3vydTXXqOoatuLtLVucI2wCz8glvDnGR+MFHo7
	 HK/BdawW25UnOPyLhKoqAqHp4dFvwtrj1SkF9yuPWyvZjSWHEaZiLWqzhPFbz5cyri
	 cMS1KsHoO8AtPBnZlILknGa4dRpxI880rk0Fj/V3dn88MLc3YwHwUZumWpkTtx4qkD
	 cLchGJQRf1Q4IBfCzkWDxNJ3Zjl7Nov8Jv491Pkbf7k2Hkj9qQbvwDJ4cAolaYvnCR
	 /YOG4qW0oWlLg==
Received: from [100.113.186.2] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id B3BC237820CD;
	Mon, 20 May 2024 09:49:42 +0000 (UTC)
Message-ID: <e346b1f0-a2db-4bfd-a29a-ef455d839a04@collabora.com>
Date: Mon, 20 May 2024 11:49:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/4] arm64: defconfig: Enable Airoha pcie phy driver
To: Lorenzo Bianconi <lorenzo@kernel.org>, linux-phy@lists.infradead.org
Cc: vkoul@kernel.org, kishon@kernel.org, lorenzo.bianconi83@gmail.com,
 conor@kernel.org, linux-arm-kernel@lists.infradead.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, nbd@nbd.name, john@phrozen.org, dd@embedd.com,
 catalin.marinas@arm.com, will@kernel.org, upstream@airoha.com,
 amitsinght@marvell.com
References: <cover.1716031610.git.lorenzo@kernel.org>
 <10f28b494988882187ec4c870c70ed09edc9c064.1716031610.git.lorenzo@kernel.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <10f28b494988882187ec4c870c70ed09edc9c064.1716031610.git.lorenzo@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240520_024945_605442_585211EC 
X-CRM114-Status: UNSURE (   3.90  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Il 18/05/24 13:31, Lorenzo Bianconi ha scritto:
> Enables the PHY_AIROHA_PCIE config by default.
> 
> Tested-by: Zhengping Zhang <zhengping.zhang@airoha.com>
> Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
