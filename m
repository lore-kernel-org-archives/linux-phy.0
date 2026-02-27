Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8ED1BFEFB56
	for <linux-phy@archiver.kernel.org>; Fri, 27 Feb 2026 15:29:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZdvFYr0Q8ly8Gk3q1nJfEDoziBE0fJabe0osbYWhlbc=; b=EImQc1dyU2hWt2
	WHUrcHe43PY+BJHIs0jTUiVhtHRVCcnY2JreCuxmcyPA2U5Ick9vPRXes0F3PmaoJzEyS1oHZ3RJF
	AtsZRT8WUnlZmc8bRzWuZfN2Fpi/6RZC5acn3O2lsUtS2nHJs+G5Dv57ULqsbNl8MLnwEejKDSQzv
	J7bql1jk0KuGutAbzzl0W80yIdosKHgT8kQZPSJxp6G36TvOhb+wjDyzRAyK7YU6SXAlKdTNHp7T+
	Ql255L+ALF8zg+0HrUyB2LXuKVzHBFCxAo+pWtw8GcKq0ulySi3sNJlM4IUJBKZ+vbwrsLao0ffBc
	jhbsRU6IJfYzhcCkUmtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvzmB-00000008cup-1JLq;
	Fri, 27 Feb 2026 15:29:11 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvzm9-00000008cuB-1qw4
	for linux-phy@lists.infradead.org;
	Fri, 27 Feb 2026 15:29:09 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id D727B600AD;
	Fri, 27 Feb 2026 15:29:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 58248C19423;
	Fri, 27 Feb 2026 15:29:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772206148;
	bh=0p+4yRaqh7tFWKzbEW+zqzakXSo60O20OI52o9TUa5I=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=mnOOf6u5CCygPKyTW2hOxsRuHQw5eKfSNnAEdc25qk16c+3X6R6o0qioGzhu0ATa5
	 e8mUQiBxdq4BAMYB3+ty62Oq9iTMXH+BpKx+jazrHle2Ct4Roimjf5AybZKtyTERfb
	 29FfxqwGUOJWca3s1ONvscZ1GzMOuwoX2OJ8phCQAijI0tRDGUqYrqaO87Ng/+tYVB
	 bLMJgK8aSLMIzAmBL4RZDs2Uf9JfPUKdjDxxQ5lvpodxsWIBF+sPbYgrkkgac7i6go
	 Ne8AoDBybKbut5UPJiUlFBx9/wTDXC92re8eXVfkI+4M9TRNdaYyBn0OWcMg9UIE++
	 ts1CyECR3nrcQ==
From: Vinod Koul <vkoul@kernel.org>
To: linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
 Vladimir Oltean <olteanv@gmail.com>
In-Reply-To: <20260223065743.395539-1-vkoul@kernel.org>
References: <20260223065743.395539-1-vkoul@kernel.org>
Subject: Re: [PATCH] phy: Sort the subsystem Makefile
Message-Id: <177220614698.330302.11179743387963427690.b4-ty@kernel.org>
Date: Fri, 27 Feb 2026 20:59:06 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
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


On Mon, 23 Feb 2026 12:27:43 +0530, Vinod Koul wrote:
> Makefile is supposed to be sorted alphabetically, sadly it has bitrotted
> so fix that
> 
> 

Applied, thanks!

[1/1] phy: Sort the subsystem Makefile
      commit: d8f0ef2aebaa90c0155e266c1fdd6fa2aef44bb1

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
