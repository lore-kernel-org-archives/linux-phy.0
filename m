Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD7F1D31769
	for <linux-phy@archiver.kernel.org>; Tue,  5 Nov 2024 17:30:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eBJ6GkBcNO/oMj/bvxmPaelzfu2oowPB0QcMqAAyHTM=; b=NrXMAkYvhmUovt
	yzN5FEsVVbo1q5av3l/EDOJqdd7jwJG000EFKAZD3qRZI5fyrkDO5vr/nyoO1JwyWoDka5od6Qj6q
	TJuTHdNZl8aH/qQSjtnY/dfHRcoXGBxC/ldnZ1TcJ0KjTZAvdXYFHkA4hNxpOxJ7XyEFDMVZEdwfS
	TIaQxGfYux7uoQM5P4XCMToIfNGF/qZEKTqZJDahdMnHG+A9NPH73s2RtCm0F/WPDYZTtqJTM7BWf
	kvljvDBcQPwuC7gNDVhA9joxBuUgfiMLkMuGgdl7x78vAjIL7yhBGG2lfgul3fB90nrNaheSoUuST
	xH12KM88chfcQEWYViAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t8NO5-00000000DAw-14Hq;
	Tue, 05 Nov 2024 17:30:41 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t8N90-00000000BDd-0nR6
	for linux-phy@lists.infradead.org;
	Tue, 05 Nov 2024 17:15:07 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 3CA3FA43773;
	Tue,  5 Nov 2024 17:13:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CF4CFC4CECF;
	Tue,  5 Nov 2024 17:15:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730826904;
	bh=yPytFdz6f1L1SYg6SCEa40uxUwZxSLiELY6Dcv785F8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=t1ORN88vKrpnA073v9R8XZmFatwTb3I9dLnCneq8cdHEkB8ZdUgWShCLp6cRD7Pio
	 4U9ZcDlj7zlWqOQRA2NFoylpDLXdC2hqTJDKaOVCwhfXJtzNcqGBnaKnQ9JoAiJ7TG
	 wwSq0w+zQcJX3IXxXKJKjheLaD4QPA4Tn761O2VzPSCVUrhr3phLmY79T72Sgjeu4k
	 c4gUMA0pptapaqlDGMf5+sZ2VbBCH9Vw6YXmk8K0BJPWZpuwLLtXFSHea7xjvHQIfu
	 f8fiPjGY81cJFNa1Uye+5FMG6JgFd+pkbm+WMOD4hw0dYq410+QArx4Jlp5xhBUP1X
	 DRIEB/98L5Y0A==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan@kernel.org>)
	id 1t8N8y-000000008W9-3TZl;
	Tue, 05 Nov 2024 18:15:04 +0100
Date: Tue, 5 Nov 2024 18:15:04 +0100
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
Subject: Re: [PATCH v4 2/6] phy: core: Fix that API
 devm_of_phy_provider_unregister() fails to unregister the phy provider
Message-ID: <ZypSmAiJhimXbC3Y@hovoldconsulting.com>
References: <20241102-phy_core_fix-v4-0-4f06439f61b1@quicinc.com>
 <20241102-phy_core_fix-v4-2-4f06439f61b1@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241102-phy_core_fix-v4-2-4f06439f61b1@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241105_091506_317084_AB4597F5 
X-CRM114-Status: GOOD (  13.27  )
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

On Sat, Nov 02, 2024 at 11:53:44AM +0800, Zijun Hu wrote:
> From: Zijun Hu <quic_zijuhu@quicinc.com>
> 
> For devm_of_phy_provider_unregister(), its comment says it needs to invoke
> of_phy_provider_unregister() to unregister the phy provider, but it will
> not actually invoke the function since devres_destroy() does not call
> devm_phy_provider_release(), and the missing of_phy_provider_unregister()
> call will case:
> 
> - The phy provider fails to be unregistered.
> - Leak both memory and the OF node refcount.
> 
> Fortunately, the faulty API has not been used by current kernel tree.
> Fixed by using devres_release() instead of devres_destroy() within the API.
> 
> Fixes: ff764963479a ("drivers: phy: add generic PHY framework")
> Cc: stable@vger.kernel.org
> Signed-off-by: Zijun Hu <quic_zijuhu@quicinc.com>

Reviewed-by: Johan Hovold <johan+linaro@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
