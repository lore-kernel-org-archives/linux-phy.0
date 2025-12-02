Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1CDA5CFD2F6
	for <linux-phy@archiver.kernel.org>; Tue,  2 Dec 2025 11:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r2Rx2oTTkppqOEsY4cIl9Z6NO5Ok9qRpGCwRVB/4yJw=; b=vZwPZCEzSoQ0US
	QX2zb61E3Z0P1lR1NqpmBjw+khnIbFYaAVjIqcqRZ41tbUIfbeji/zckEmQdrQXjuIWWesnmjDz9Y
	TNY6es36fInm6Q5HmFEkQ7AuBIbhzSPkEnU45BQoCkbfvt0ql4Kx6+UmIXKy+qszfWyNRuYI4bkRJ
	w0Jw/yMdRGHO1o80c6YSE0gwEFHruI1yc78AbFJKrv2xOLNxi54s6ACH//NAIgkwACEEKj7Z/kcJw
	bmuy6MVY0N0fdRZDN52oHGFfqaXgZ020v6isCgp8hIW/DZcMhXcIgngEkjCylxuqnxBJHFvyGIuED
	yP/mNsPcM3dlOtNFF4qQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQOWC-00000005JkG-34WJ;
	Tue, 02 Dec 2025 11:26:04 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQOWA-00000005Jjc-0I5s
	for linux-phy@lists.infradead.org;
	Tue, 02 Dec 2025 11:26:03 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id EC0B143D17;
	Tue,  2 Dec 2025 11:26:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 687C6C4CEF1;
	Tue,  2 Dec 2025 11:25:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764674760;
	bh=BUDOGcNQYRK1YBXp6C8ThSF1p/jcuefGrYZ8oshk3NM=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=u4VCLLlqESlSmD9oZ7leZzxDh5XQITmf53sDMIBvxrEPGLwmmqjRnKUBanJ5pHYs1
	 qQJQ3wXJP4ARHoOLmeLI4q/Yfus9lOj0dbnNjCxrNH7XFrwrElnx3BmQnpnu7GUN8Q
	 S+TkM6vATAbyL0ZckL2SHjI6ji1MOML04WTrxMKbIz94wu9iLUGWRYUQF0weCtLTWa
	 pmaLcWCx1ZXqlprGy7eZKxjnX3lOYhboJdS73ekPAtUZYQpPQ6dYJ8spWkJZy920fX
	 n/I2YlK5GKiO+CMwgxiuYNDJa6iRL/23TAPz/JQ6EmbeAJqmLa4Ku9o7Mj8uXF3bZ9
	 8XqUJhId6fy+Q==
From: Vinod Koul <vkoul@kernel.org>
To: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzk@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Kishon Vijay Abraham I <kvijayab@amd.com>
In-Reply-To: <20251120175537.171340-2-krzk@kernel.org>
References: <20251120175537.171340-2-krzk@kernel.org>
Subject: Re: [PATCH] MAINTAINERS: phy: Move Kishon Vijay Abraham I to
 credits
Message-Id: <176467475904.101807.15293390041765711529.b4-ty@kernel.org>
Date: Tue, 02 Dec 2025 16:55:59 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251202_032602_150534_0FFAAC12 
X-CRM114-Status: UNSURE (   5.97  )
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


On Thu, 20 Nov 2025 18:55:38 +0100, Krzysztof Kozlowski wrote:
> There wasn't much of reviewing activity from Kishon of PHY subsystem
> during last few years [1] and last maintainer commit is from 2020, so
> move Kishon to Credits to indicate that PHY subsystem has only one
> active maintainer.  Thank you Kishon for working on the PHY subsystem
> and for all the maintenance effort.
> 
> 
> [...]

Applied, thanks!

[1/1] MAINTAINERS: phy: Move Kishon Vijay Abraham I to credits
      commit: 7448a8d6909a488304ff402c414b14606b8472c4

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
