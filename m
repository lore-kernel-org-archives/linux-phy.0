Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8B9AD13C39
	for <linux-phy@archiver.kernel.org>; Mon, 26 Jan 2026 15:43:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DQpGt1TyU+YIzWsnUPxoDKovC7HHrtB749Ff+k3IYtU=; b=PNddhDEc/b1Hhx
	KAmD+KzZwCoo5z9qdBE34yw9Q9hDNJrVVSONnmE0BLl6PB+pLzeyXMyg6JMYHtoxGN3ymunJ1CFXU
	ukphIFpBWheJFUIVru1mwvtBCSWlEHtGoKmVUH/4jdZ8g7fiNxXZ8hXntK9z9Xi4KOTiZG9dzeDOI
	JNJ9oqjwxnIr6Jyyz5miv+sBcBliRMv6VTqhOckNMTttLjDEaMX29kcR9YkKuBvFpxzB48uNOHiDW
	3KChIAIFx/7jPI51RXDHE2R2yP8xtQ5F23K4rlbIi/yLKd/ndgzl34yI8KDgmQ3BS7VYrascMk03J
	/bYUU0OoDMDIieFXThgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkOkl-0000000Cmw9-1DWG;
	Mon, 26 Jan 2026 15:43:47 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkOkj-0000000Cmvr-1z0I
	for linux-phy@lists.infradead.org;
	Mon, 26 Jan 2026 15:43:45 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 830A26013D;
	Mon, 26 Jan 2026 15:43:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1DBA3C116C6;
	Mon, 26 Jan 2026 15:43:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769442224;
	bh=6ySox9cmKvJhrP6FpRmvarrNPjCueGbh6a3+rXDpTDo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NWbNZmcDP6RPcCwLnaL/B+KQs9WdBKe7U5Cv/AeJU7qEO7THkzIqZ9TI1naNPFy5H
	 +jOgjLKWrUJno8i+NcTCV41L6aFq8RA0h2t3HXkdwEHfEmC+u8jPwhhOKuimLwf/RT
	 BGL1mii0f0HOy1XanOt4d1qD2rQ/KrbJb8Zv20w6/Q1aYK3MTG8zrotvEnvl8vcb8h
	 0qb99n3gkDVgLCQwLPP+u/Mh1rJCYhT3QMhjHrPZjF0GBs0gpZ9zOKMwdLiER9xZuG
	 +4R97ByVtYCpqbgT1RsJ9UAFhfJtBZQEpVFub9Xvq2iOFWj62FWgscCFyIUlvPm1v3
	 qFf3R1cHj4PqQ==
Date: Mon, 26 Jan 2026 09:43:43 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Charan Pedumuru <charan.pedumuru@gmail.com>
Cc: Conor Dooley <conor+dt@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Andreas Kemnade <andreas@kemnade.info>,
	Roger Quadros <rogerq@ti.com>, Kevin Hilman <khilman@baylibre.com>,
	Tony Lindgren <tony@atomide.com>, Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Aaro Koskinen <aaro.koskinen@iki.fi>,
	Roger Quadros <rogerq@kernel.org>, linux-omap@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 2/3] dt-bindings: phy: ti,phy-usb3: convert to DT
 schema
Message-ID: <176944222247.2468561.9882009575651111970.robh@kernel.org>
References: <20260123-ti-phy-v4-0-b557e2c46e6f@gmail.com>
 <20260123-ti-phy-v4-2-b557e2c46e6f@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260123-ti-phy-v4-2-b557e2c46e6f@gmail.com>
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


On Fri, 23 Jan 2026 15:39:03 +0000, Charan Pedumuru wrote:
> Convert TI PIPE3 PHY binding to DT schema.
> Changes during conversion:
> - Define a new pattern 'pcie-phy' to match nodes defined in DT.
> - Drop obsolete "id" property from the schema.
> 
> Signed-off-by: Charan Pedumuru <charan.pedumuru@gmail.com>
> ---
>  .../devicetree/bindings/phy/ti,phy-usb3.yaml       | 138 +++++++++++++++++++++
>  1 file changed, 138 insertions(+)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
