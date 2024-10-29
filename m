Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0344BD2AB3C
	for <linux-phy@archiver.kernel.org>; Tue, 29 Oct 2024 14:09:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tArvofu7d+KcojjiaKfxDGH0Zb0G2hn5sSsb4L6ZufE=; b=0cBjKTLFoLuMMp
	ZtThoqJH53e2+yiKzC8L7WZTh0n1iLpG8WYc7fSgcNTS+PEmGnBZYeK99ZcCuUtczL5eP32jKzjZq
	wSclMr9Xg3Zts67K3fe+F0T1w2eLCbBcLxP6W0NdjQszhiiR3/Zam7DPtO4oPE8qnnh5lsJZVRiy5
	QZZJZdqaliXT6WvorGWiSXQU7glQJeXKbTFnuCt9CnUxdSd02i57dWShLhkuGorF7j+Q7vZv9JLrj
	02jBIhAAuL81UWXwy0lAGf6NQAXNuXk/4UIQLjy3pwfO/CYxF0VjcTKr1bZ60H/nz7dioOgkoPpN6
	DwQrgO8ys1haFaPURz3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t5mua-0000000EgT5-2dAU;
	Tue, 29 Oct 2024 14:09:32 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t5mZo-0000000EcjC-3wdh
	for linux-phy@lists.infradead.org;
	Tue, 29 Oct 2024 13:48:06 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 03F4FA42E5D;
	Tue, 29 Oct 2024 13:46:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7E4DCC4CECD;
	Tue, 29 Oct 2024 13:48:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730209683;
	bh=/1IAglxa+62OGTxwPnjJEUICAB7kkHqquFY8NIy20NE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=b+1qhOctluYSPhYTvPktKtBzQzbC6kci6oX+GexD6cBLzFYIT14D20Pqe1nOmGPOe
	 /BSu78+33G3aZWOz72nror1XVSvskacqM2zmyW+T5dLH6ceCYmrx+P+IMUl9fh8B43
	 NGAKEjmgDKdlZMnJe+awWj+2K5JwDHj20IdaCVsCqvzRWMfzgsbYzmepi/7Kd0LE4e
	 yEGnLmhoaHbq5hh7USRsUt3VeESiWqFzvUTykTNiZgA+QdS3mFiY9EPHU/sd0+6rK9
	 v1zt6ILOiBXPjyAFT4TTo1IXpZREPrqblAip8J1huSzDBi1r2vj70JyGWwcSxpYzPG
	 yVJz4Ni/CP8vw==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan@kernel.org>)
	id 1t5ma7-0000000035Z-02Ot;
	Tue, 29 Oct 2024 14:48:23 +0100
Date: Tue, 29 Oct 2024 14:48:23 +0100
From: Johan Hovold <johan@kernel.org>
To: Zijun Hu <zijun_hu@icloud.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Felipe Balbi <balbi@ti.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Rob Herring <robh@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
	Lee Jones <lee@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
	stable@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, Zijun Hu <quic_zijuhu@quicinc.com>
Subject: Re: [PATCH v2 5/6] phy: core: Fix an OF node refcount leakage in
 of_phy_provider_lookup()
Message-ID: <ZyDnp5hAii6rAu7a@hovoldconsulting.com>
References: <20241024-phy_core_fix-v2-0-fc0c63dbfcf3@quicinc.com>
 <20241024-phy_core_fix-v2-5-fc0c63dbfcf3@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241024-phy_core_fix-v2-5-fc0c63dbfcf3@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241029_064805_119805_45198682 
X-CRM114-Status: GOOD (  10.83  )
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

On Thu, Oct 24, 2024 at 10:39:30PM +0800, Zijun Hu wrote:
> From: Zijun Hu <quic_zijuhu@quicinc.com>
> 
> For macro for_each_child_of_node(parent, child), refcount of @child has
> been increased before entering its loop body, so normally needs to call
> of_node_put(@child) before returning from the loop body to avoid refcount
> leakage.
> 
> of_phy_provider_lookup() has such usage but does not call of_node_put()
> before returning, so cause leakage of the OF node refcount.
> 
> Fixed by simply calling of_node_put() before returning from the loop body.
> 
> The APIs affected by this issue are shown below since they indirectly
> invoke problematic of_phy_provider_lookup().
> phy_get()
> of_phy_get()
> devm_phy_get()
> devm_of_phy_get()
> devm_of_phy_get_by_index()
> 
> Fixes: 2a4c37016ca9 ("phy: core: Fix of_phy_provider_lookup to return PHY provider for sub node")
> Cc: stable@vger.kernel.org
> Signed-off-by: Zijun Hu <quic_zijuhu@quicinc.com>

Looks good.

Reviewed-by: Johan Hovold <johan+linaro@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
