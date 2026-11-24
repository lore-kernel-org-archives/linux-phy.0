Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82F6C606A31E
	for <linux-phy@archiver.kernel.org>; Tue, 24 Nov 2026 07:28:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=jeoE/8gx;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.a=rsa-sha256 header.s=korg header.b=15/CTDVr
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=mBGLujPG4keu5ULp9LxWy9TIKaObKrJEyqLXZppC/Ng=; b=jeoE/8gx76jLcY8sFrazZxEHk3
	a585OhW8Hqyw+33OjeVVcK5b5AdyGPVHS4yDSdYgxf87ThpBsUNWQkFwAgKdmSGOyGRf9nBvJQ0g4
	D5nQsO5irMgL+QYqA8rv98xP2eWLaMAi1qW/WSSTTqLFk0rUiu6UVqBJg5bi4rV9XQuUjmOwbzfOY
	UPTan28HHePscWMdQ1c+/iVAk3jARJHraHDNbekSQ5UgKj5Lpz/fyJU949Wq5vA/z9sRdVC02ZmKn
	SCq2S2VHDxMCprpecsX2gHfb8ThaYv0APtsise30XOM/0jlZQf8plYU8QIEBGG47qvEZEVz4iJ3ds
	GpFlMIUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVkwr-00000005kD6-2p3M;
	Tue, 24 Nov 2026 07:28:22 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVkwq-00000005k9i-0cMr
	for linux-phy@lists.infradead.org;
	Tue, 24 Nov 2026 07:28:16 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 36AC84019C;
	Tue, 24 Nov 2026 07:28:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 03A2A1F000C6;
	Tue, 24 Nov 2026 07:28:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linuxfoundation.org;
	s=korg; t=1795505294;
	bh=66jrq+oJZdf0irrtzpu4akObhjJYRkg//+AlDyPnUv8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=15/CTDVrFH2SxtpCRrv/Y947QZufP/g6l3FNki8VHXKH2JrZsWdGUh9UFqvVpCeAw
	 hMNZRVtFZr52TldkPhxU+uLYGgebjs4LdvlWCSmepZ0tG1wb2COTOQGrI6omSnDRDx
	 5dcdDsWz/CbpmH4nNWzgEKmsgeSAnK6em+bVALEY=
Date: Tue, 24 Nov 2026 08:28:11 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Sasha Levin <sashal@kernel.org>
Cc: Mark Brown <broonie@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
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
Message-ID: <2026112402-squid-king-c8df@gregkh>
References: <awR7nSOWkxRm-iP6@sirena.org.uk>
 <20261123212627.1203724-1-sashal@kernel.org>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261123212627.1203724-1-sashal@kernel.org>
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

On Mon, Nov 23, 2026 at 04:26:27PM -0500, Sasha Levin wrote:
> On Mon, Nov 23, 2026 at 05:45:01PM +0000, Mark Brown wrote:
> > I did not specifically identify the commit that triggered this, it will
> > be some include file reorganisation which causes PHY_TYPE_PCIE from the
> > DT headers to become visible to the driver, clearly there is a
> > namespacing issue going on here.  I have ignored this for today.
> 
> I sent a fix for the driver yesterday. It renames the driver's enum
> values so they don't clash with the dt-bindings ones:
> 
>   https://lore.kernel.org/all/20261122152857.1113943-1-sashal@kernel.org/

I'll go queue that one up now, thanks.

greg k-h

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
