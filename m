Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C227AD3A67B
	for <linux-phy@archiver.kernel.org>; Tue, 29 Oct 2024 18:45:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l6haRC0feN2bDw6db4FakVjIdT0fo6Fxw26qjariZOc=; b=OOennWzs8/ytXL
	i6vJRCtp2hGUhQewfBS/eN9eqKICaglBe69Bm14Pn9LflLEyjKFw6M9XrVNC2q0AH2qhEMIhsGUPm
	hTjXjHMVHSuyMl4kc+oP3c/pMbq2UOCEdIgh/WJ576rHsrNQRKeMe4hxAaX1Dg8DAeoWwGaSLE1Ho
	3JhKdy4eaAnmGZFFenNlfCJmOGZ3IzZ/pauSIuPip9Qu4rqWj31dF7ZziWw1JMC0g0Y9WhuzbYQOn
	tCJceJoUailI7uZ65B9bxSTRzsIE2BYNIjGQfK0UzoEJ3RtQYLjbDwL9PYpCWUJUvaEUeJbGcZBQf
	x9PYhTY5oEcWRH9orgkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t5rDp-0000000FWl7-48Mv;
	Tue, 29 Oct 2024 18:45:42 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t5ox9-0000000F62t-20jn
	for linux-phy@lists.infradead.org;
	Tue, 29 Oct 2024 16:20:20 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 00D075C077F;
	Tue, 29 Oct 2024 16:19:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A1B3AC4CECD;
	Tue, 29 Oct 2024 16:20:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730218818;
	bh=YoLwtosK8vF2mSihsNmeRMh027fIMoq6AZH27ocsMG0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lndVywafESfGJ2Wc/9cjNzyd0zIGDd6y6HZYl3OHSIhu+rPgVmXb/G84VhfzAP/4/
	 oFcZdVtryzEvXL74pNDD7AEeQ5NETD1hn20nv1jWS1ok/XgNmIKUCBe5APjwwFqjpX
	 dQ4f5XASkEmX4QX8eXCO5yc05JZ1Bzyn1llvSvZToEbIo/ecSzzmSfmCM8sXaS9EaU
	 avpgVOw/M9BULnCkaDV7OFbdtBhFOuT2QLYVwvEeHPh7XS7FZcnWf3s77ukB2tZDj1
	 eEDN2A2hGQhRXCTIj/IrvrvxyM97ni2xThW8SuaFisWw6udobBUrPpqWk9J4ZDv4+F
	 6sRkYgICsSNMA==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan@kernel.org>)
	id 1t5oxR-000000006Xf-3ahM;
	Tue, 29 Oct 2024 17:20:38 +0100
Date: Tue, 29 Oct 2024 17:20:37 +0100
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
Subject: Re: [PATCH v2 2/6] phy: core: Fix that API
 devm_of_phy_provider_unregister() fails to unregister the phy provider
Message-ID: <ZyELVe0EUZg9iD0q@hovoldconsulting.com>
References: <20241024-phy_core_fix-v2-0-fc0c63dbfcf3@quicinc.com>
 <20241024-phy_core_fix-v2-2-fc0c63dbfcf3@quicinc.com>
 <ZyDmdsHtxo-gFIFH@hovoldconsulting.com>
 <a6d7efe2-ec92-4ffa-a1f1-bc73ebd49d16@icloud.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a6d7efe2-ec92-4ffa-a1f1-bc73ebd49d16@icloud.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241029_092019_586762_D82C194B 
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

On Tue, Oct 29, 2024 at 11:35:48PM +0800, Zijun Hu wrote:
> On 2024/10/29 21:43, Johan Hovold wrote:

> > And you could consider dropping the function altogether as well.
> 
> Remove the API devm_of_phy_provider_unregister()?
> 
> i prefer fixing it instead of removing it based on below considerations.
> 
> 1) it is simper. just about one line change.
> 2) the API may be used in future. the similar API of [PATCH 1/6] have 2
> usages.

We typically don't carry APIs that no one uses (or has ever used), but
sure, that can be done separately later if anyone cares.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
