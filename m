Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D503CCD185
	for <linux-phy@archiver.kernel.org>; Mon, 13 Oct 2025 07:35:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+S48UVZFyR+WNW9vx4RkQ8EML4eRQUWDAHg0IGyc3pI=; b=1tP7Ck9UbuB6wZ
	t9/Ms/CZVHeSdY8Xla+JwdhwZtOEH1tLDdGr+ktXZPWgd+1BDxWMue5K1ONEnBI6xF3+toXMEs5Dm
	6nMkSPx9EJ+QnEGvPoVUW9KhZ7gd8aDjT20X7BDIA9G3PiDpXE5cQ+/9J4/xVjwv0Ozpye/L8emFo
	XdErf5m8B/lX2/QANxkh5gZsMS8aDDuWIek8dIZbrbDhw0SYL7frhhxAp29GHnQ00Vox7iisGcC7X
	o+6snxi7h6nnYCICjLn/prk+cAstiwMe3m5KSktGa1+Wjanb9zXygKCNBphAXP/58xPK49Eo9YLyV
	4TaKna4l6g9wNGgrNQVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8D5t-0000000CVkX-2xwk;
	Mon, 13 Oct 2025 07:35:45 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8D5q-0000000CVjc-3UDM
	for linux-phy@lists.infradead.org;
	Mon, 13 Oct 2025 07:35:44 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id CFBD944167;
	Mon, 13 Oct 2025 07:35:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 821B8C4CEE7;
	Mon, 13 Oct 2025 07:35:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760340941;
	bh=iEUdbvJi3pvRf67skvtGxBMrtqXcvV211k+jm08OGhU=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=dONLhkKOkRfQ1gfZWRMsLMyO+WZ55No0e2fE/1IaDDXtWKE0bVuZEH5nEx0Q7qLhZ
	 hL4ylUxEic8jlcihASCKXPZwhYeSOwA+v0mbsE1C6w8srDGqpqIU9JZBn7ysVJrToH
	 XJxJ7guXu7obEE1UUR24KabvyEjIXYT3NiHjW3RJ/Pc3T4QaiSjAILHSZUlHzo9ub/
	 m1G5v4bkhuxV3zJoX7LvYjCbXYTZiq/LUTZEjmt7MwjwAarBvKxrAWuT14Hz4TveT3
	 gnzNw7Wo4dXxmvnjb5vLovYWukW18YYWn7FYjP09qSMpz33jDZUNLi2+gJB/chkRCO
	 uHsmVds/S9Brg==
From: Niklas Cassel <cassel@kernel.org>
To: dlemoal@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
 conor+dt@kernel.org, linux-ide@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, vkoul@kernel.org, kishon@kernel.org, 
 linux-phy@lists.infradead.org, Yulin Lu <luyulin@eswincomputing.com>
Cc: ningyu@eswincomputing.com, zhengyu@eswincomputing.com, 
 linmin@eswincomputing.com, huangyifeng@eswincomputing.com, 
 fenglin@eswincomputing.com, lianghujun@eswincomputing.com
In-Reply-To: <20250930083754.15-1-luyulin@eswincomputing.com>
References: <20250930083754.15-1-luyulin@eswincomputing.com>
Subject: Re: (subset) [PATCH v5 0/3] Add driver support for Eswin EIC7700
 SoC SATA Controller and PHY
Message-Id: <176034093826.2889433.376970186266993861.b4-ty@kernel.org>
Date: Mon, 13 Oct 2025 09:35:38 +0200
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251013_003542_893052_EF213526 
X-CRM114-Status: UNSURE (   6.67  )
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

On Tue, 30 Sep 2025 16:37:54 +0800, Yulin Lu wrote:
> This series depends on the config option patch [1].
> 
> [1] Https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?h=next-20250929&id=ce2d00c6e192b588ddc3d1efb72b0ea00ab5538f
> 
> Updates:
>   v5 -> v4:
>     - eswin,eic7700-ahci.yaml
>       - Add "dt-bindings: ata:" prefix to the subject.
>       - Wrap at 80 characters in the YAML description field.
>     - Link to v4: https://lore.kernel.org/lkml/20250915125902.375-1-luyulin@eswincomputing.com/
> 
> [...]

Applied to libata/linux.git (for-6.19), thanks!

[1/3] dt-bindings: ata: eswin: Document for EIC7700 SoC ahci
      https://git.kernel.org/libata/linux/c/c9d869fb

Kind regards,
Niklas


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
