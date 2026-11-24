Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89C1D606A684
	for <linux-phy@archiver.kernel.org>; Tue, 24 Nov 2026 10:05:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=4QgjTfBx;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=ituwGa0j
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Hjc/dYoF6XA6gZspvPze7dA1S9x1WSkD/piyjfrob1Q=; b=4QgjTfBxbqGnOReI9zzO78frWb
	a/5Y+Q1NVmQRGpmcx6sAviqxRGnMmMAWxxs0ZS6mh3+BVn75lArIeEFFZC119mbqUfEvHHPsJPg+G
	Wp/dhJmU4zdtHDDNZhEfOewAewuOXZWbo5UbXBTXl7bfsxlK2RuZWwWlClYQpJJ3XZgWj1WOJCWvF
	zf62easz3MnO8yujfWA1jY6qQC8mweN2wz0k0R378G3LRVG/jLrwB2CSpyArNE0EL+hUqsug8wvet
	gZzCp3IlaZfZgT4rxlt9MB41qwdsfB8XMSwnlOoO8YLfmGDUtwRF00sbNoB4jifh6IS7HajxwbqPU
	o6pFsW8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVnPQ-00000006BOh-19Ky;
	Tue, 24 Nov 2026 10:05:56 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVnPP-00000006BNZ-0Tl1
	for linux-phy@lists.infradead.org;
	Tue, 24 Nov 2026 10:05:55 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id A2D4D4101D;
	Tue, 24 Nov 2026 10:05:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BA27B1F000D3;
	Tue, 24 Nov 2026 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795514754;
	bh=T11z0eXVltImi2dicF0V/iMS9/4MgdQi5Pn1QNW6uQo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=ituwGa0jdFaTy5AVQdWLm0ttu70StWHnoAQYvrBvdeygXkmQR8N6QuhAWE62Z9MZ6
	 HomG419TeW/WPc9KhO9fFc5CRVqcbvpTGA9AiRtKHv4aRu/thGNA0C1/qUs0dCFlKr
	 GaKdfYR7ESwKiV9qdcorD9wRDOF+UP7I9tyf/AcSs1mnTI1oUXRuh+mLETdYgOiXik
	 lXXcGmQwKhD6ttVEwPYogYt17Uelxqh8uiE+W16RPGvErTlgVArO0oS0d9SR6fgKex
	 Oa0IFgffRhRS4u/TBu5OinHIzK889omFHYA8h3DExELwpTzFxRfZQgza6zdnQO5WcY
	 W0LnVmHg3i38Q==
Date: Tue, 24 Nov 2026 15:35:50 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Sasha Levin <sashal@kernel.org>,
	Mark Brown <broonie@kernel.org>,
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
Message-ID: <awVhfmwHfOIy_cW9@parshuram>
References: <awR7nSOWkxRm-iP6@sirena.org.uk>
 <20261123212627.1203724-1-sashal@kernel.org>
 <2026112402-squid-king-c8df@gregkh>
 <3dee4f97-5d49-4aed-bb6a-e3f2567566a9@kernel.org>
 <2026112441-reprint-wifi-4398@gregkh>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2026112441-reprint-wifi-4398@gregkh>
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

On 24-11-26, 09:04, Greg Kroah-Hartman wrote:
> On Tue, Nov 24, 2026 at 08:37:30AM +0100, Krzysztof Kozlowski wrote:
> > On 24/11/2026 08:28, Greg Kroah-Hartman wrote:
> > > On Mon, Nov 23, 2026 at 04:26:27PM -0500, Sasha Levin wrote:
> > >> On Mon, Nov 23, 2026 at 05:45:01PM +0000, Mark Brown wrote:
> > >>> I did not specifically identify the commit that triggered this, it will
> > >>> be some include file reorganisation which causes PHY_TYPE_PCIE from the
> > >>> DT headers to become visible to the driver, clearly there is a
> > >>> namespacing issue going on here.  I have ignored this for today.
> > >>
> > >> I sent a fix for the driver yesterday. It renames the driver's enum
> > >> values so they don't clash with the dt-bindings ones:
> > >>
> > >>   https://lore.kernel.org/all/20261122152857.1113943-1-sashal@kernel.org/
> > > 
> > > I'll go queue that one up now, thanks.
> > 
> > Fix is fine, except that Vinod disagreed (and did not review/ack)
> > original PHY patch, so it really should not go via your tree.
> 
> Ugh, ok, so I should just revert all of these now?  I can easily do that
> too...

Thanks that would be ideal, although the fix by Krzysztof is a good one
fixing a future potential issue. I will pick that as well

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
