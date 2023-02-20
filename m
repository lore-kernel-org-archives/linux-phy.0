Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02309C05027
	for <linux-phy@archiver.kernel.org>; Mon, 20 Feb 2023 16:20:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wG4fAz6EYCr24rjY/WB3yp9/bBdMypi1PzUjEUPAyOM=; b=G1dC/qxISaM2+6
	n+DeypfdqYOyARM7thZhD6VZfXcU22ufcSew26p53SbI4ADteEZ5RvxZjXaq6utdXumTOEiIyvXKj
	h+72ySdkzXejyAet6viFKnHy7NqVFxNNuqfYmnHicYnRsMsyyhBSrz+U/Jon92BOIKUO/i/YvnXPs
	RDfVxHS+G6NReYapwWTj5JuFz109nBj+FavQPwR7B5pqg7xHPTCh7tN2o5OuoDmMmN/u0VsXMxl+t
	QXp59ndmFpLJ9HVY2ftWZE+2NNlHa1rAqck9iPa+gg78r7eqQUWUN3hX/h9NQpNwHB05zpjJzTvYp
	IR7JYk1hoy7QtoBI1SPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pU8u6-004rLy-73; Mon, 20 Feb 2023 16:20:38 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pU8u3-004rLd-WC
	for linux-phy@lists.infradead.org; Mon, 20 Feb 2023 16:20:37 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id BF0C260C85;
	Mon, 20 Feb 2023 16:20:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BA5D4C433EF;
	Mon, 20 Feb 2023 16:20:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676910034;
	bh=GugI1KTqWeJVvUyOogjWDktfwoNGBavCoLV6GdN8qsc=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=mkJRVa8mY/VCQYWMTYkp32KrFyOEpyGMQ9PAktnv65UqNwY6FW3HgNMb8GSNN8PKC
	 gIbi3BgsMHVLWhw0olblPpOXH+1I5CvAftFH7QaHeWTwp0KQ62e2upIax2qOaMPfh4
	 jPPL+fWh+27uQE7IRuC35rpYSPNwPiBC6oM6cE79g7eJ3LscY/G1+foTJArNaE1pX6
	 9z7huhzdsmjSJnDpwEUq1vjjrO4GleRNhBuLpo9toauOX2HPt5/5KAmDlyDHLD1yy0
	 Huk7b0pJu1InzeDdPyFMTyYfMwFHYde4y8WWSUXEHBio3Qe/Q5xIriaMI69UngI9ey
	 LtgamDtIIyKxA==
Message-ID: <c7bdaf8f-d377-9fdc-c11a-747c65775b3c@kernel.org>
Date: Mon, 20 Feb 2023 18:20:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH] phy: cadence: Sierra: Add PCIe + SGMII PHY multilink
 configuration
To: Swapnil Jakhade <sjakhade@cadence.com>, vkoul@kernel.org,
 kishon@kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
Cc: mparab@cadence.com
References: <20230220141216.25326-1-sjakhade@cadence.com>
Content-Language: en-US
From: Roger Quadros <rogerq@kernel.org>
In-Reply-To: <20230220141216.25326-1-sjakhade@cadence.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230220_082036_123549_796AEC31 
X-CRM114-Status: UNSURE (   7.27  )
X-CRM114-Notice: Please train this message.
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



On 20/02/2023 16:12, Swapnil Jakhade wrote:
> Add register sequences for PCIe + SGMII PHY multilink configuration.
> This has been validated on TI J7 platforms.
> 
> Signed-off-by: Swapnil Jakhade <sjakhade@cadence.com>

Reviewed-by: Roger Quadros <rogerq@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
