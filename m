Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77268C25B10
	for <linux-phy@archiver.kernel.org>; Mon, 13 May 2024 13:15:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4lkIifX3IauLet7h+dqUvKCSQAQgGHhQfkiMVcQLd8k=; b=lKhatorNmaMpdb
	4Swp4+yWOvUokMHINXxLtJvKQ42HZaOZCuaF3F83iE1y7rtFRSUu6Fpk2K32L9w4z057PTUIdAYNs
	oiQxyNYEp1tUW+4FwDEdbWd8otaGNIspun6s+uS/VtTKRdV3KQa3xVadfCwBp14q2slklwgCLeMqz
	x0qlvR6vDHmcI8FmhnABRYU/jIVbya4tVOyP7ASc7aUQEJMxGDu18U83PYbxt4qdWcYy1PDsFsZLk
	D4Rzsz4H7ly4d9GDORQHXkQY9uoHK/zch0/x11zxi0sX2ekWJ61vfuASmriM7iTheXzZR3r9w1nv+
	fqpa6k3P0+0eZh+kasDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s6VWa-0000000CxqC-0RiO;
	Mon, 13 May 2024 13:15:28 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s6VWW-0000000Cxox-1gpm;
	Mon, 13 May 2024 13:15:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1715606122;
	bh=daSAQj5IpyZ0HnjZJRbgB9oSLshpFm9szm4OU5AcIsI=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=eYl0WvTz8Xh9XGQHodvFpVX63B1OvWEbgFYStNUPC82FERAAWK17g5SYUzmZpaTzK
	 mugDNXF6zgqNGNbKiGulxKZvN9w6qhhuU2MMOX/ySbv5morSyuJowmyUxqh2I7/Kd2
	 deAh7JwY5/EL7XLnY9ULgjg0PuNYEUFUWpVsXj3xtu7hr4Eul6+cwVVW0r5EUscCUy
	 WJYl70M2AL4OoSnuMNF+ZeAfygZAmX8e93RviSmj2JH6g/MnYaTkI5+oQKPIQ7yDo+
	 d3g8JNA0Xn2ykSGaeUzIU6I4fbAqgDSwcKg3si1Z8Bt9reqbOyIanQnQDfCCdUEwbd
	 V/u3o3VCFKmPw==
Received: from [IPV6:fd00::2a:39ce] (cola.collaboradmins.com [IPv6:2a01:4f8:1c1c:5717::1])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id B3DF93782139;
	Mon, 13 May 2024 13:15:21 +0000 (UTC)
Message-ID: <bcdb240f-7e4d-4f8b-aa16-497b39b4c6be@collabora.com>
Date: Mon, 13 May 2024 15:15:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] arm64: dts: airoha: Add EN7581 pcie-phy node
To: Lorenzo Bianconi <lorenzo@kernel.org>, linux-phy@lists.infradead.org
Cc: vkoul@kernel.org, kishon@kernel.org, lorenzo.bianconi83@gmail.com,
 conor@kernel.org, linux-arm-kernel@lists.infradead.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, nbd@nbd.name, john@phrozen.org, dd@embedd.com,
 catalin.marinas@arm.com, will@kernel.org, upstream@airoha.com
References: <cover.1715527166.git.lorenzo@kernel.org>
 <333ce5d4877facd7a7f262bdd8e53f2b772effff.1715527166.git.lorenzo@kernel.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <333ce5d4877facd7a7f262bdd8e53f2b772effff.1715527166.git.lorenzo@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240513_061524_609607_D3BF48D7 
X-CRM114-Status: UNSURE (   3.24  )
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

Il 12/05/24 17:27, Lorenzo Bianconi ha scritto:
> Introduce the Airoha EN7581 PCIe-phy node in Airoha EN7581 dtsi
> 
> Tested-by: Zhengping Zhang <zhengping.zhang@airoha.com>
> Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
