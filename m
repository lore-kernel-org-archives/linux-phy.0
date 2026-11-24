Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4011606A32A
	for <linux-phy@archiver.kernel.org>; Tue, 24 Nov 2026 08:05:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=B+u6Cp0g;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.a=rsa-sha256 header.s=korg header.b=Yi0u1s0x
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=DltyStEJD3JZ3MJmcNgP08/wbQ5Gfz+MGtvwqjLLjSU=; b=B+u6Cp0g2dyEoeERllnCl/1f7D
	gLoNKmEilNM0VkJkqi12Cj5RiqUozMa2kF1zmufqq6Jp8c96xEJs2/VwKBUOrs0NX4Xv768W96VyE
	Jbp+rRc2LQhtJ0RHPeFgNHA7k6LXRsISmLRGwNkNXbDWikZzhIwPVPyBoWMGP4mb2SlUj4l88G1j2
	vXL5OF+WsCmeuHziSrv6+DxykgiTIbX6k0Ao9ChIIpvVe8WQ9jDfsfvC2pw6p/FRI8ZdYxzE2miU4
	Vi/3VHUuYslzCkt3OT/IbPPMJeh6vQil19ESlKTkxK7kv7xVshjkV5mBREtHNfyDMvnXsVzuLnFY6
	QlDbOO5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVlWS-00000005qLQ-10AK;
	Tue, 24 Nov 2026 08:05:04 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVlWQ-00000005qLI-3MMk
	for linux-phy@lists.infradead.org;
	Tue, 24 Nov 2026 08:05:02 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id E2ABD4238F;
	Tue, 24 Nov 2026 08:05:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CA00D1F000C6;
	Tue, 24 Nov 2026 08:05:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linuxfoundation.org;
	s=korg; t=1795507501;
	bh=3HC82NVkbK8m0ga+W4WqoNzdUyFnsAsAxDCHHKqThXY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Yi0u1s0xTDjXiFCGrH+PYO6uyNf2nNnbcaT2FNBiv1lg45sqzBE1ibk3ba7Cc7CUa
	 /Ga5a8o1TMgnQWK1yQzwoN6N6I6C8AhHBmJhu4GG7OgUXQBQFCjRuxbtH1uK4W9uS7
	 qbdcHKEtOuM4olSP89Pktl9wYkEKIglOSLXESosI=
Date: Tue, 24 Nov 2026 09:04:58 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Sasha Levin <sashal@kernel.org>, Mark Brown <broonie@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
	linux-phy@lists.infradead.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Linux Next Mailing List <linux-next@vger.kernel.org>
Subject: Re: linux-next: build failure in the final build
Message-ID: <2026112441-reprint-wifi-4398@gregkh>
References: <awR7nSOWkxRm-iP6@sirena.org.uk>
 <20261123212627.1203724-1-sashal@kernel.org>
 <2026112402-squid-king-c8df@gregkh>
 <3dee4f97-5d49-4aed-bb6a-e3f2567566a9@kernel.org>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3dee4f97-5d49-4aed-bb6a-e3f2567566a9@kernel.org>
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-3.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Tue, Nov 24, 2026 at 08:37:30AM +0100, Krzysztof Kozlowski wrote:
> On 24/11/2026 08:28, Greg Kroah-Hartman wrote:
> > On Mon, Nov 23, 2026 at 04:26:27PM -0500, Sasha Levin wrote:
> >> On Mon, Nov 23, 2026 at 05:45:01PM +0000, Mark Brown wrote:
> >>> I did not specifically identify the commit that triggered this, it will
> >>> be some include file reorganisation which causes PHY_TYPE_PCIE from the
> >>> DT headers to become visible to the driver, clearly there is a
> >>> namespacing issue going on here.  I have ignored this for today.
> >>
> >> I sent a fix for the driver yesterday. It renames the driver's enum
> >> values so they don't clash with the dt-bindings ones:
> >>
> >>   https://lore.kernel.org/all/20261122152857.1113943-1-sashal@kernel.org/
> > 
> > I'll go queue that one up now, thanks.
> 
> Fix is fine, except that Vinod disagreed (and did not review/ack)
> original PHY patch, so it really should not go via your tree.

Ugh, ok, so I should just revert all of these now?  I can easily do that
too...


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
