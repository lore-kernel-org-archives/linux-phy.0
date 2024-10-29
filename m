Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE50BD2AB3C
	for <linux-phy@archiver.kernel.org>; Tue, 29 Oct 2024 14:01:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8chvdvW2nLG/usSsUZu30KgL6wD5OJXKZarVp0OfrGM=; b=4S/fHDIgUS1FNH
	FdDls4Z2YQcmuveP9+6G43lWXi7G8DeaIpGdX5f9mr3HgeQ4RJVh1Qe8R6UNrXJG+kNfJgXbNnPPE
	Q8iIGDEOXoxx95bFrQCBAbEr9v70OnGfAVttr2QwJplS0kRqGmexdmI3qQCsk871Q2x1N77qtjJo8
	qYvvdvlalAZNPEuLgmYdEb/WCALSq482bE6/G9T4DLujqc4RRzzsHekwXf914+dYYeqquG2twtgri
	6E2kl5Oy3SpZoGOUPZHjKUl6+8IhQhNSNDDWJx3RcWLxsYRWTEvoX1atifsnIkby8qgMdgCJCmEYY
	1NOT3TQJIuC9pDZF2q3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t5mmc-0000000EfDa-0YZh;
	Tue, 29 Oct 2024 14:01:18 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t5mWo-0000000EcB3-11GK
	for linux-phy@lists.infradead.org;
	Tue, 29 Oct 2024 13:44:59 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 525EDA42E5C;
	Tue, 29 Oct 2024 13:43:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 93DABC4CEE6;
	Tue, 29 Oct 2024 13:44:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730209496;
	bh=pQHEsCEbFi1AN2z1gIf0oXg2/Tu/i0UAAIzrBe5f5TY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=B7tB+boDnrw9L2Q977u1NOCl3LMbfGWMiT4lAcGj8LXUHSJ4ji2FBayaUzrwc9e1t
	 Tg9eef2JjVN+IuAOwIicmBh3lWYtt8iCuohllyQ6a8t1rfia5mUSZKAtedgvAJOUc2
	 mklFwQ/BeN36/aYXEYUfGe8NICAvW9mXIwVWvRPSpAwAAiw/lyn8QhGuMmqajs8NiC
	 rnYxHmHsTIGNFlfpkUjnY8akJ/Se0RcaIcOwa1mZTuAGKVv05A06WEM4We/kDFyPf6
	 qPnjJf1RGSudjJ3v/RVTHOeZzvlNorO+xseZsKn9NBe0dC0gR6yiabNq0odPbF7lYw
	 ie790g6yPPYTA==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan@kernel.org>)
	id 1t5mX6-0000000031G-0m5y;
	Tue, 29 Oct 2024 14:45:16 +0100
Date: Tue, 29 Oct 2024 14:45:16 +0100
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
Subject: Re: [PATCH v2 3/6] phy: core: Fix that API devm_phy_destroy() fails
 to destroy the phy
Message-ID: <ZyDm7IMUBYkiHPyp@hovoldconsulting.com>
References: <20241024-phy_core_fix-v2-0-fc0c63dbfcf3@quicinc.com>
 <20241024-phy_core_fix-v2-3-fc0c63dbfcf3@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241024-phy_core_fix-v2-3-fc0c63dbfcf3@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241029_064458_363153_E88167FF 
X-CRM114-Status: GOOD (  11.91  )
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

On Thu, Oct 24, 2024 at 10:39:28PM +0800, Zijun Hu wrote:
> From: Zijun Hu <quic_zijuhu@quicinc.com>
> 
> For devm_phy_destroy(), its comment says it needs to invoke phy_destroy()
> to destroy the phy, but it does not invoke the function actually since
> devres_destroy() will not call devm_phy_consume() at all which will call
> the function, and the missing phy_destroy() call will case that the phy
> fails to be destroyed.

Here too, split in at least two sentences.
 
> Fixed by using devres_release() instead of devres_destroy() within the API.

And add a comment about there not being any in-tree users of the
interface.

And consider dropping it.

> Fixes: ff764963479a ("drivers: phy: add generic PHY framework")
> Cc: stable@vger.kernel.org
> Signed-off-by: Zijun Hu <quic_zijuhu@quicinc.com>

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
