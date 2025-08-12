Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32F9FCA0EDB
	for <linux-phy@archiver.kernel.org>; Tue, 12 Aug 2025 19:24:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GNhJVeYgJRJUZuIsGBoGfTFCnM0mpQAeq8wcM1dB22w=; b=VJe3BxQFF/6deJ
	sur33Qq+e3ShTgUCydY6iEQKUFViyYtMiXw3Av8ReXlmNb8bjsfoIcauwM5N9qOsJ/haY+SrGQkSZ
	kGgpZN+pAX4k+dtzTjLE/chtHM5hrF/THvL7OSmtfxAKu49XnNnmn2t1PnBO01ksXGqOkJkasl9qO
	3/8SqwzymTd6CZ1Aja6ST38djzqroS0N6C8UoPWSFJ9CS62UP2PMyyLMtzCs/SjTrEV6/YbsuRTAL
	/cO3ai7UZi/cK2pSP3qmgjQ323ELJ8GMA8aF9hczqxcNZij3Chc2NUgLpVvdJzy4Fu6JfKMCRO545
	9DJW4dAJjTWsz8h/JhYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uluc1-0000000BozV-2lOd;
	Tue, 12 Aug 2025 19:24:46 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uls30-0000000BRz1-3zAd
	for linux-phy@lists.infradead.org;
	Tue, 12 Aug 2025 16:40:28 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 9986244F11;
	Tue, 12 Aug 2025 16:40:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 060A7C4CEF0;
	Tue, 12 Aug 2025 16:40:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755016826;
	bh=UxVeqRaMDxxfHBM/tEj+mJBjW5rFRNYTohHU/Unnv/o=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=KS6OcwSuKtXfoAyOnf8OE4NZKG98oVea+Mcjx7DkLG9qTzGauP8+QUfZEYihdpb5s
	 uyv/C0HKMg/C0LNqQfHZHTX7bqYcX1sTsq0jnUCododkezlNOqxCz6F4889ssdThFB
	 4xN2N39zWrPuBSSo9a/Bx5wMMPrrbDyzKN0M/vMXmJ/4HXV5tE/2UZ2Hm1MUOEbQAe
	 BUB09ttwWLA5I3CKDvMf2RPzYX/awXVtbbF55+xHjWZWFvk8XHwsEUw4bes1DQbb8q
	 TKPxNN8xT7KuSOlppHeoiWPmGqGBY8B/qcu9CMb+OsVDtvF3ixldGy7WQWZsbpiZPr
	 MGPVYQ3S2NU1A==
From: Vinod Koul <vkoul@kernel.org>
To: Johan Hovold <johan@kernel.org>
Cc: JC Kuo <jckuo@nvidia.com>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Thierry Reding <thierry.reding@gmail.com>, 
 Jonathan Hunter <jonathanh@nvidia.com>, linux-phy@lists.infradead.org, 
 linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <20250724131206.2211-1-johan@kernel.org>
References: <20250724131206.2211-1-johan@kernel.org>
Subject: Re: [PATCH 0/3] phy: fix device leaks at unbind
Message-Id: <175501682357.633066.13503601845975199477.b4-ty@kernel.org>
Date: Tue, 12 Aug 2025 22:10:23 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250812_094027_010328_99C7AEDD 
X-CRM114-Status: UNSURE (   5.34  )
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


On Thu, 24 Jul 2025 15:12:03 +0200, Johan Hovold wrote:
> This series fixes device leaks due to failure to drop the reference
> taken by of_find_device_by_node().
> 
> Johan
> 
> Johan Hovold (3):
>   phy: tegra: xusb: fix device and OF node leak at probe
>   phy: ti: omap-usb2: fix device leak at unbind
>   phy: ti-pipe3: fix device leak at unbind
> 
> [...]

Applied, thanks!

[1/3] phy: tegra: xusb: fix device and OF node leak at probe
      commit: bca065733afd1e3a89a02f05ffe14e966cd5f78e
[2/3] phy: ti: omap-usb2: fix device leak at unbind
      commit: 64961557efa1b98f375c0579779e7eeda1a02c42
[3/3] phy: ti-pipe3: fix device leak at unbind
      commit: e19bcea99749ce8e8f1d359f68ae03210694ad56

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
