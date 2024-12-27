Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66CE9E7718B
	for <linux-phy@archiver.kernel.org>; Fri, 27 Dec 2024 09:03:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/R34nuzqcm1y2xI/hzrn2DxiSTxJ8cacABNWh1rJKng=; b=WGCD4LiBatPs2N
	vkJ6PWYL9qy4d2lE7fMevryXopEBaUZAiBRqpStuZVsT0Zdaov4KmGcQmF7iVpScMjSQbqXWZEle0
	9x0sK46wbBU5NERx1CfUz+Cnok+NWD/sNURvedIRtQt1ASa8RFxOUTLu1RBwU78G9boNv9y9SPXzq
	sLwPHQm0rJeuKdQsmXKPOthmyXlHuHTr4Rd8Qt0HwX1/LzRfjdafwIRFtXnOZN10wbg/+QhRr+2NP
	nBhlw78vHFR13hIsCiAUPHIWkTGgOGKJlNYf1roexpKBBlk1SwgowMKa8E+OWpZprqXIBmB+71E/M
	RwgAYLS2YFQ1GT9sWqVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tR6FM-0000000HRpx-0Zwe;
	Fri, 27 Dec 2024 09:03:04 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tR6C8-0000000HRKL-0y2s;
	Fri, 27 Dec 2024 08:59:45 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 1DD5D5C621C;
	Fri, 27 Dec 2024 08:59:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E1F0EC4CED0;
	Fri, 27 Dec 2024 08:59:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735289983;
	bh=Ha9eaZKe2pPLaVPj/BlrvwxCVnKMNdxIOtRX6jvdDl4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=b0OgJ3LWV3lMZcfL0iy221Bm/Ia5/6HMN8xhv1smt/qqzKgO37JkxWiXmyBruURwU
	 ZzxARQxgi68rbBqmP33CfcmCzIhixmWwdAheU/6St2LKkvpL0g92hNYLDgopwbBxFh
	 YP8WVjpFltuTYCTwGYrlHsClX992XwjP5Ipsl9wAuxTs8W527T8hqXkQmdOWWiKPZr
	 O/9Z5gX8uKbBkcJOjhYT4WUinUjUVt2XZ96B0x0+lQfbXmxCCP4WvYsw2TYr2XdwpK
	 yS5lREtCxJvHxD0+XNTB8xKgvZG6YhFJJ8RzX2T+GTgw1euxmLV7Dy8HG/qIO2elgc
	 1Z2QNDajBKpSg==
Date: Fri, 27 Dec 2024 09:59:40 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Kever Yang <kever.yang@rock-chips.com>
Cc: heiko@sntech.de, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, 
	Rob Herring <robh@kernel.org>, Vinod Koul <vkoul@kernel.org>, linux-kernel@vger.kernel.org, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-phy@lists.infradead.org, 
	Kishon Vijay Abraham I <kishon@kernel.org>, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/2] dt-bindings: phy: rockchip: Add rk3562
 naneng-combophy compatible
Message-ID: <m3iznr4xjh5hgnca4jyj64uejesf3ulgfpycvrw5phrirca5wv@hx5rx2tumw36>
References: <20241224094217.3817100-1-kever.yang@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241224094217.3817100-1-kever.yang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241227_005944_313972_3D4903B2 
X-CRM114-Status: UNSURE (   5.31  )
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

On Tue, Dec 24, 2024 at 05:42:15PM +0800, Kever Yang wrote:
> rk3562 use the same Naneng Combo Phy driver as rk3568.

Usual comments...

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
