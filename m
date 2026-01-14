Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF6E0D37E33
	for <linux-phy@archiver.kernel.org>; Wed, 14 Jan 2026 14:17:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cD9Nq+AFxidx8jmCDnhRouirrwwNEWLkII/kcfQH480=; b=b0KpDe1MQAPBSe
	PTPhO7ZBZF7LYwnnMIv1sLohfdU9Uf2OihgFNvfff+w/8ThPbdLOwVgaI78ctf0uJyrYSe6mdeXA7
	v3GLOE1fl2K2yjZsII/cO1je7qJyroJuE9x9s/j9T84j4P0WPo9cXV2LG2kI3ZvwGz8szp3AyMo/o
	tdI2DNELCkCu1fn4lTgupJJa4zIpY15+Pt2Tkc2em51YKe9YcCKUE6ezPDuPQSqK2BBCxiKdKmBbX
	O6srRJcjOX4Um4HLKWrfINermMm0BXn273GRAQrAFWCiG5OLxgfG2Q6RQhSRUsUGAOajMnGKji7Aq
	PFizy04Tb3YgXl6M5BPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg1gg-00000009UfF-1R9d;
	Wed, 14 Jan 2026 14:17:30 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg1gY-00000009UTt-2yj4
	for linux-phy@lists.infradead.org;
	Wed, 14 Jan 2026 14:17:23 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 3D36F43A55;
	Wed, 14 Jan 2026 14:17:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8FDDAC2BCC9;
	Wed, 14 Jan 2026 14:17:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768400242;
	bh=YDsCVs2H7YNQ9ysjzYX1cmm6O3NKFEO7OM3ERJ5sYJQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OIyXnmkQiVnngJi8wGzz323lSTCV/Wi6MbbQYOddwZaw8ndYADSu/Obem+dNXIcsR
	 76ueat5/MUeP3CM9XsI4SmLUAvzUJRD/u7/kWpH3bwUwEZ5THfHEvoPb7oDoZ+a0Hb
	 P5SNsPNFwQLWjDC3ryxWgz0jUr7elQytXQL7W5wV5dhDQaWdEer3Sj28aCQaHUrltt
	 jjJYJJ1V6xtNSBqsOOpssmOqjDQ1vrN7BrEIJnyEt6TZdXWHJ4UOZ9NsznTriqDWh5
	 34L/Zr4eU1u7/1tTyyPnbFDfwmIvYvRO4z5bILTee8Eirr7fEWxx/CU4R+aVduyXEZ
	 78GPYSaYMGXLg==
Date: Wed, 14 Jan 2026 19:47:18 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Brian Masney <bmasney@redhat.com>
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, linux-clk@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Neil Armstrong <neil.armstrong@linaro.org>,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH 25/27] phy: ti: phy-j721e-wiz: convert from
 divider_round_rate() to divider_determine_rate()
Message-ID: <aWelbtaZjS4SZGQO@vaman>
References: <20260108-clk-divider-round-rate-v1-0-535a3ed73bf3@redhat.com>
 <20260108-clk-divider-round-rate-v1-25-535a3ed73bf3@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260108-clk-divider-round-rate-v1-25-535a3ed73bf3@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_061722_785319_51717B3D 
X-CRM114-Status: UNSURE (   9.65  )
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

On 08-01-26, 16:16, Brian Masney wrote:
> The divider_round_rate() function is now deprecated, so let's migrate
> to divider_determine_rate() instead so that this deprecated API can be
> removed.
> 
> Note that when the main function itself was migrated to use
> determine_rate, this was mistakenly converted to:
> 
>     req->rate = divider_round_rate(...)
> 
> This is invalid in the case when an error occurs since it can set the
> rate to a negative value.

Acked-by: Vinod Koul <vkoul@kernel.org>

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
