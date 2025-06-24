Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6CBA4C77B7C
	for <linux-phy@archiver.kernel.org>; Tue, 24 Jun 2025 08:19:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u5zsqYhfValjZdUZkrDQQHSXs6KuTc5foFvDs9wHkOM=; b=FLrJm8VwcAaCmT
	dc8ETqTrN2jfomcTZGuNgGVhQOVKYyIYqfqt6yvv51Fq8kku9hBB2oQc21h1EUUoCCbZsiIDhV0PX
	oR879Sx8JJUWwbF+sN32aXA3suSUNqE4bOfEds2X0dmCqbhwceOKTe/IDo9xf6n0xrbqxswQ+HQ7l
	CAO6Or5zzzJtb9JVJ/lobg8Utd/8bR+EMCrguXaj8K94KnLDTdGALxejh2I000ZNqY5fK0NM63nAY
	ynB+jeo0ClsGpDQDgIne0YxpelWrPQTHyD4Pp+ZR9K+OKdC9cHl0Kmaq3el0Mdv8o+mgvFAz37GGO
	DQaY6ZXNFkGSH4/RXYEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTysP-00000004zWq-0ph0;
	Tue, 24 Jun 2025 08:19:33 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTyIp-00000004uj3-0LDS;
	Tue, 24 Jun 2025 07:42:48 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 604C3A4F52D;
	Tue, 24 Jun 2025 07:42:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 77F39C4CEE3;
	Tue, 24 Jun 2025 07:42:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750750966;
	bh=WBaglMgmsNR9cwyCV58jjVrD6lxTJfrwBw3z95EKGDE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ras4Z74XQOb6XrKKxaKPMa+A5OowaHyysdGsFElfO18pkL/LpEyC9XZ5QKYk/XpQo
	 FaUKZJTum0nS2x/j0M/k3fDitol6/1/k0H/8TwIGIUOxgqCXhfkHIX+/iXSgZ2Tpq8
	 Yb+peXIzw3ElSIA/gLSgAaUrOhD/8otse1SXC/AYY+ZsvzvKUEsk4rn+x+MInytFCQ
	 6TIIpGmeeoLxO5CIxd1CVzd9KDCf/bZP02jidZpqu1eF0pXNL1NnP3uyZlQ3xxYY/W
	 LuK9jq5UTCY2iEXVkBi7CBTiIp29YpBucYpPbYK8xYoHEzpDLlcIXRC0CWp0ffj4zX
	 Dow6lOMoX5k+w==
Date: Tue, 24 Jun 2025 09:42:43 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Yao Zi <ziyao@disroot.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Frank Wang <frank.wang@rock-chips.com>, 
	Andy Yan <andy.yan@rock-chips.com>, Cristian Ciocaltea <cristian.ciocaltea@collabora.com>, 
	Detlev Casanova <detlev.casanova@collabora.com>, Shresth Prasad <shresthprasad7@gmail.com>, 
	Chukun Pan <amadeus@jmu.edu.cn>, Jonas Karlman <jonas@kwiboo.se>, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 2/6] dt-bindings: phy: rockchip: naneng-combphy: Add
 power-domains property
Message-ID: <nhsqnvfrz5s2635zm33nvhehcxoqowh7kipnh6e2wlvjdbxee2@6yd43t7kariv>
References: <20250624033733.50197-1-ziyao@disroot.org>
 <20250624033733.50197-3-ziyao@disroot.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250624033733.50197-3-ziyao@disroot.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250624_004247_185736_A447ED51 
X-CRM114-Status: GOOD (  10.25  )
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

On Tue, Jun 24, 2025 at 03:37:29AM +0000, Yao Zi wrote:
> Though isn't described in existing devicetrees, most Rockchip combphys
> belong to a specific power-domain of the SoC. Taking RK3588 as example,
> combphy 0 and combphy 2 belong to the PD_BUS domain. Document the
> power-domains property to allow describing the information correctly
> in devicetree.
> 
> Signed-off-by: Yao Zi <ziyao@disroot.org>
> ---
>  .../devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml   | 3 +++
>  1 file changed, 3 insertions(+)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
