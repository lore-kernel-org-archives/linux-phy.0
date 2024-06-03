Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E83D8C25B75
	for <linux-phy@archiver.kernel.org>; Mon,  3 Jun 2024 14:26:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=INtljWk/8sedpsyR0lRaJHH0mZ1/ae86UZJ5JpfHz/U=; b=L0qvNz9T1t3889
	g+VPjDlkb1/n0sYz3giGQaDxGjdRvddpfVfQI49Vzyjrx2KdU96uk/Sh2uwwy9ff+1iuaXg0RpI1w
	CzCjOIYLqy5PIheqeBOhSHTwNNYeDHSy3TJtEV/4Oz7S7B4UOaFpaAiXQYzlFAVP3bIgttWXhQFDm
	VJf5Jts3F2DSs4A7mwoS+Pvq6VKgtbRc4/EhXA1fv5MuuGQLUa+QWgDaLnXFQuC3seiKqkjXkywwk
	jFIvin8m8HbEqMaksQx0lEttoqvffrOKSr5jFrqDg4iJih4V3/5Afp9+zvOW3abw3h29iPxZGaKuH
	dGpxBg8GJCPwq+LUOXHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sE8eB-0000000H3yX-2YG7;
	Mon, 03 Jun 2024 14:26:51 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sE8e7-0000000H3wg-3U9w;
	Mon, 03 Jun 2024 14:26:49 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 51CC460C6C;
	Mon,  3 Jun 2024 14:26:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AC639C2BD10;
	Mon,  3 Jun 2024 14:26:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717424807;
	bh=ro77ju63wQnu5SRrClZDNDdDunh4smtgqd5dihJwcTw=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=uU8RFvtqIrb4XuK/Z4mDEvv6qQlnBq0q6G3SxryRN9n2jMJuwXzDcAmcyN7OJ+SHD
	 Z/mR5uem+aTRYDnu8ecx4Mk7h7GfvkHUaPjHEWTTS4+xDpMP7VPXpBJBzeQeX/oQ0Z
	 z3GKNmdDjobQFqF1Drc9XFoFqxrmHGi66q9ttcPJBjsHd5ZpcNd//DC594rBx5OSHV
	 oeiakR0yFA93Sd7Ezz7PNrKD700YLuIMaDbsMfwZMCWjj8bSEhrFex8j4GAyb+D3e9
	 GmRtOsvMVfyXbwAINW3C7xETsgHNYXJ4kh7B+5gXSbpAqnJ1xs7JLHlTKkUiEjSDlJ
	 TMHmej29pff9g==
From: Vinod Koul <vkoul@kernel.org>
To: patrice.chotard@foss.st.com, linux@treblig.org
Cc: linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20240527205844.165279-1-linux@treblig.org>
References: <20240527205844.165279-1-linux@treblig.org>
Subject: Re: [PATCH] phy: miphy28lp: remove unused struct 'miphy_initval'
Message-Id: <171742480532.106728.7665267575086699177.b4-ty@kernel.org>
Date: Mon, 03 Jun 2024 19:56:45 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240603_072648_344258_C462330B 
X-CRM114-Status: UNSURE (   4.56  )
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


On Mon, 27 May 2024 21:58:44 +0100, linux@treblig.org wrote:
> 'miphy_initval' is unused since the original
> commit 2c14e9be0c60 ("phy: miphy28lp: Provide support for the MiPHY28lp
> Generic PHY").
> 
> Remove it.
> 
> 
> [...]

Applied, thanks!

[1/1] phy: miphy28lp: remove unused struct 'miphy_initval'
      commit: 3f8bb7a7b4e016df586f464279936a5767c2a36a

Best regards,
-- 
Vinod Koul <vkoul@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
