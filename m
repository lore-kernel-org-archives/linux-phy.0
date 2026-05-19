Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E72DDCD4851
	for <linux-phy@archiver.kernel.org>; Tue, 19 May 2026 10:27:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0edsq/jE9arCZ1JdusYkOky4IdMyV2bfD2AGooFuY/0=; b=pXfYANAfs+upn7
	RRCImAWHWiioiz8E4109OBaI5qEdVNVgJexWt4z+Q5dQzupa1AShsQweopFMUFMLmWc3aijguDnH7
	1gqU3jr2K53ubSyJ9d6WciB9wR8sHwr+xJBBHMqUni51yg1orDY1/zgvHTxfa1j8f321x1l4mTZ7h
	yVeBs3/TWbxfcBW64LamRFZFGKILC0PP1bdSgUyWoPPN5oKSCnopDQnOCaXmfxd3Kz75CFNGisdg/
	LnqpFSVD+DOAlXWlFceK5CP9L164vmZRPDwdDe9AfY0lQbd/UsM3FEINnEXJH/6IsxSRryzGvWruk
	kU+01hBYDVPs7hpj55+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPHfV-000000015NK-2LLm;
	Tue, 19 May 2026 10:27:21 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPHfT-000000015Mv-3pj5
	for linux-phy@lists.infradead.org;
	Tue, 19 May 2026 10:27:19 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 6077160126;
	Tue, 19 May 2026 10:27:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 97D4DC2BCC6;
	Tue, 19 May 2026 10:27:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779186439;
	bh=0i5FsVMF//nNuyNTkNv/F4YoY7Rveqh0k1TqngT2iUY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=F0+fECjJzhLxiDly7mRmI6nzzvaYsaUAAnDUAyyR+aOiuliJA0cpddF0HPf4Ib2hI
	 SPyjGaRSJ+jRy31hvWFF89TcjoBwaCGyhUNpFr/Y38Z6J8ln2ZYDTE2jGOWw4/y+jb
	 33D2ZnI+KIwCB5BU6W80iSVMefJ3fB57es/0l+90deD2F3VjkrqVwijFKY1jVgdEWR
	 jtFwvt2vh1kDX7sZLTwosRi0othHQ13qN0GV779JP04/Io46BKOx/15UcNlJpwiZc8
	 tqULGoTA5QGkIRy8O8ooOq2XWc1fLDqqsaC61yb6DSkBeXTc5jos+765qA204Aue43
	 lqpRLl0kSYp0A==
Date: Tue, 19 May 2026 15:57:15 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Marco Felsch <m.felsch@pengutronix.de>,
	Maxime Ripard <mripard@kernel.org>, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/4] Extend phy_configure_opts_mipi_dphy to support
 position and polarity
Message-ID: <agw7A9qkiAs0OUiq@vaman>
References: <20260325-dphy-params-extension-v1-0-c6df5599284a@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260325-dphy-params-extension-v1-0-c6df5599284a@linaro.org>
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

On 25-03-26, 21:47, Bryan O'Donoghue wrote:
> struct phy_configure_opts_mipi_dphy currently passes @lanes as a linear
> count of data-lanes starting from lane zero to a consuming DPHY driver.
> 
> This proves insufficient when we want to specify lane location and lane
> polarity.
> 
> To address this gap extend the structure to pass four new fields.

Sure, but where is the user...?
Please repost with users added in

Thanks

pw-bot: cr

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
