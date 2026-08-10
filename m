Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5820C5AD55
	for <linux-phy@archiver.kernel.org>; Mon, 10 Aug 2026 15:38:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=11cDsIJ3JtSF9ToofJqQCHLTZ6ykJfSqmLj6ZVDveq4=; b=ypkkxnuB1vCVI1
	lNUyKFVcVZFa8tP1VkDpvfZpTSQ5aSYXSFrzgM1NH+c4Jf6Ei3cB3M37RuEhfiGWamGtgdUvTDWhS
	+IqhocRhIa5woGTgFKRIkzcigWRWpfaTQ0cDgWP2G8KGQDknsZRA98hbL3o5FRGWSmuRgaFVUVjHj
	EXdlHt8FDlFAnilwBV/EqrSNRrFhxAAV6wKKDU1j7mEXstw1Uk0Ml3g5qZujMO7Ko+P1oQ8JbjAFg
	lvpVWoI5JdJDKQIuibOL4jOTQyEFkzpmr/mTYtKYKpcXgzoqBosXWQ5ucsd7IiLTJvP4Wi3iz6jjO
	AUZynD4fIFu/h5SyFmsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtS4m-0000000CHq2-1wL0;
	Mon, 10 Aug 2026 15:38:08 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtS4l-0000000CHpN-0E2J
	for linux-phy@lists.infradead.org;
	Mon, 10 Aug 2026 15:38:07 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id A67884106A;
	Mon, 10 Aug 2026 15:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 607481F00A3A;
	Mon, 10 Aug 2026 15:38:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786376286;
	bh=Pdm0dCEgtDoA3/9bfQ9RuIh2kmBSeSobz6nqZNyNJm8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=JI4t97hrUKWAadZ6KRaJuBXKClGftZ63lpcMJl3UOLDl0f49QOe5LYzAqtmWz9Pr1
	 Z9mEOZz4NhMGD1BEd9LumrWGlyuclTZ25dHShz6A5ePJRW53HcvFr9ttgJtcn1y7Xs
	 BmNk5ciyBIVB0HBgxadEhFMQf4zx4GRyPcITkkhdOXUOZEzC1uYuB9OWHRv+j2YHNA
	 nir1rsvEEfrYgWhjIOdKgtTikOz8d6PvC1ZGKNca+wE7jloihXdyfcdhCS6tPjqs/i
	 PC7F4BMEiDh/OaSODzPxXVMDTN2SA9qEraZDzVUWZ0SobFbeLjI3/dSrERi1n/qp6v
	 sNcTcypGV72oA==
Date: Mon, 10 Aug 2026 10:38:05 -0500
From: Rob Herring <robh@kernel.org>
To: sashiko-reviews@lists.linux.dev
Cc: Stefan =?iso-8859-1?Q?D=F6singer?= <stefandoesinger@gmail.com>,
	vkoul@kernel.org, devicetree@vger.kernel.org, lee@kernel.org,
	neil.armstrong@linaro.org, linux-phy@lists.infradead.org,
	olteanv@gmail.com, conor+dt@kernel.org, mfd@lists.linux.dev
Subject: Re: [PATCH v10 01/12] dt-bindings: clk: zte: Add zx297520v3 top
 clock and reset controller
Message-ID: <20260810153805.GA1793660-robh@kernel.org>
References: <20260810-zx29clk-v10-0-63846490712c@gmail.com>
 <20260810-zx29clk-v10-1-63846490712c@gmail.com>
 <20260810071224.5AA301F00A3A@smtp.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260810071224.5AA301F00A3A@smtp.kernel.org>
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

On Mon, Aug 10, 2026 at 07:12:23AM +0000, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 2 potential issue(s) to consider:
> - [Medium] Missing `resets` property definition in the YAML schema.
> - [Medium] Missing `simple-mfd` in compatible string list for syscon with children.

Neither of these look valid to me.

Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
