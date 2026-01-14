Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4905AD37E39
	for <linux-phy@archiver.kernel.org>; Wed, 14 Jan 2026 14:01:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=shL6rcOHpUx+WmKXnfj+1LdzkQGhfLIuCNG3jRw0d7E=; b=VKsfKp3YQhu/Fh
	OYUPNZU9znMGtwENK4d0FkDwEI0A/7c2IzqOzYeJQh+QBpiSWZ3c3D1Wh3gWfkaZc8PvlmUxYrcnR
	Rw088N4V0649lxuhtJUGajLeGAAM//vxnZIhrdGjKK3Nrii4mSrqeyAfwTIAte0JgwL9pKs/lpk3N
	RjpMs6qkoq/RPocMAZmBtYsIKWmMN4soohfED0ZCV/vsTzhMImf9tOH0rEbeeHshCwfNE2VTQ0t0R
	XFMgUf1rhgpCiClrnnQdIJBOp/XbOLA3Aw/Y0nNJ2cBfzkwIPak56ffAAa2enmtM5OMBGc83R9eHm
	Wt8idpja89OE9oIjEiDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg1RI-00000009RHr-0cmR;
	Wed, 14 Jan 2026 14:01:37 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg1RG-00000009RH9-1Zc7;
	Wed, 14 Jan 2026 14:01:34 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id CC32F600AA;
	Wed, 14 Jan 2026 14:01:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DF47CC19422;
	Wed, 14 Jan 2026 14:01:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768399293;
	bh=+PlGFhehw9pvT1fTeNTIF8koULdH0BUOJ+fDH8yqZwY=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=Ugq2Q7NMaYTXFV1ThT3q7e3DBYSOPt5A5bWniBbCjgJXaA05WP/krfSl5A9BbkAGX
	 BTZwYp7zx0Zrm/Z7kw76XROcjIZVCBX/4KwGQ/P6kqE2GSxSiALKqjwCyC+aSXSFr4
	 0nX7SOjhtqgmL611RkqV7D+ScQM8xafLX89pziD86o6Ax6/LuWtQbeh82PZ6mkJLh3
	 Tz3v8cz/PVjXFsztQv35sTwE8Stzg20MW66DmT4SJMbD8GghbNumwbTOal/Z3+B1p0
	 2wjDQn3sWPuqdC2Guy9TeUUank2Rg16llMwtHneJzS7ZifJosxHckmcZgdNXNP2lKO
	 VOkPUF6U1iVfw==
From: Vinod Koul <vkoul@kernel.org>
To: linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
 Marco Crivellari <marco.crivellari@suse.com>
Cc: Tejun Heo <tj@kernel.org>, Lai Jiangshan <jiangshanlai@gmail.com>, 
 Frederic Weisbecker <frederic@kernel.org>, 
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>, 
 Michal Hocko <mhocko@suse.com>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, Chen-Yu Tsai <wens@kernel.org>
In-Reply-To: <20251105152023.259813-1-marco.crivellari@suse.com>
References: <20251105152023.259813-1-marco.crivellari@suse.com>
Subject: Re: [PATCH] phy: sun4i-usb: replace use of system_wq with
 system_percpu_wq
Message-Id: <176839928954.937923.15095865192573263958.b4-ty@kernel.org>
Date: Wed, 14 Jan 2026 19:31:29 +0530
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


On Wed, 05 Nov 2025 16:20:23 +0100, Marco Crivellari wrote:
> Currently if a user enqueues a work item using schedule_delayed_work() the
> used wq is "system_wq" (per-cpu wq) while queue_delayed_work() use
> WORK_CPU_UNBOUND (used when a cpu is not specified). The same applies to
> schedule_work() that is using system_wq and queue_work(), that makes use
> again of WORK_CPU_UNBOUND.
> 
> This lack of consistency cannot be addressed without refactoring the API.
> 
> [...]

Applied, thanks!

[1/1] phy: sun4i-usb: replace use of system_wq with system_percpu_wq
      commit: 877686f9f42b58b04e4e25d07034bc95cadc20f3

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
