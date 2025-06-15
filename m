Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 499F9C61CE8
	for <linux-phy@archiver.kernel.org>; Sun, 15 Jun 2025 16:52:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uI+4hiSusd6+C+w9H2mVWJUfcUJlBe7ZysNviB8G5rw=; b=0UdKR+WR9jqaC0
	xoqMWV86V8KRChxTy37nf3sfPBXGzVm1wLCSS4zhNINyTHMUv/bX5/onylr/DzV1gE4FUcrERyclz
	/Ut6MhXdmRSJuzk5of3heVIkJbrXQ3XIBt275r/v0iqZwqe05RCZD79zP81PHG2gWpOFCZAfXywoq
	9r2i9fcA02JjvutNzvPXZIcNzX1z3qt26bXqXgnup7Jx3CdqkFBoujyRxxxZk0I3LsFkysDY12N9I
	ZTm6BkIEf1Q+w81Dhu3nAaXJtdFbqM7urwkuTzMMpjMsDvPj0YpSOVQ1YZmUwNFuHlZZoUyGqcRe2
	U7OhgYJHqHpQpWpqBorg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQqaX-00000002flu-3CUj;
	Sun, 15 Jun 2025 16:52:09 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQqaW-00000002flm-2QHP
	for linux-phy@lists.infradead.org;
	Sun, 15 Jun 2025 16:52:08 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 2897961120;
	Sun, 15 Jun 2025 16:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 46C14C4CEE3;
	Sun, 15 Jun 2025 16:52:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750006325;
	bh=eQhy7wTqmA7Th7Sg0Iuj5eoKYhPZYEf/yoxdoGc0Wkk=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=C/qzwb0D5z/ffIt3Pa/cpHVflVJPIsj0Lg0ZUyQ47dblRO4RqLI0lkkR72hoETsSE
	 qKvTAaXjLFfLHTCUb95YqfbhqY0xxKckdCMTyQ58NR4+y2s2rGl5DLoWDSN1B7uQrY
	 mEIXNojUZLFYMkR7ZpbwYbaYKleB9Q3AwHFvzgbikUKPsxLRRChTgpCxMHjk/XxYT1
	 Z7doCzYxKMzdksPTxciYyS1fkJfuVW7UMlQCuXPxPZIzdxrXesUtpaP4FH3RRh5NIm
	 s0GDV5I4w7dWpBLklDG2RUVxxDeoYmVCo3MqJo40/O12nWtOL1IQecq3c5mhIcFB2b
	 Vir1aVL+h04iA==
From: Vinod Koul <vkoul@kernel.org>
To: jckuo@nvidia.com, kishon@kernel.org, thierry.reding@gmail.com, 
 jonathanh@nvidia.com, Wayne Chang <waynec@nvidia.com>
Cc: linux-phy@lists.infradead.org, linux-tegra@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20250519090929.3132456-1-waynec@nvidia.com>
References: <20250519090929.3132456-1-waynec@nvidia.com>
Subject: Re: [PATCH V2 0/2] Disable periodic tracking on Tegra234
Message-Id: <175000632281.1180789.12546166906023856282.b4-ty@kernel.org>
Date: Sun, 15 Jun 2025 22:22:02 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
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


On Mon, 19 May 2025 17:09:27 +0800, Wayne Chang wrote:
> Decouple CYA_TRK_CODE_UPDATE_ON_IDLE from trk_hw_mode and disable
> periodic tracking on Tegra234
> 
> Haotien Hsu (1):
>   phy: tegra: xusb: Disable periodic tracking on Tegra234
> 
> Wayne Chang (1):
>   phy: tegra: xusb: Decouple CYA_TRK_CODE_UPDATE_ON_IDLE from
>     trk_hw_mode
> 
> [...]

Applied, thanks!

[1/2] phy: tegra: xusb: Decouple CYA_TRK_CODE_UPDATE_ON_IDLE from trk_hw_mode
      commit: 24c63c590adca310e0df95c77cf7aa5552bc3fc5
[2/2] phy: tegra: xusb: Disable periodic tracking on Tegra234
      commit: 7be54870e9bf5ed0b4fe2a23b41a630527882de5

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
