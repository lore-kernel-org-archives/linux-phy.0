Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6DBEAE98FD2
	for <linux-phy@archiver.kernel.org>; Thu,  9 Apr 2026 09:50:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E/6Rv2KBV95LF7C+fMVPm1GcEaxhjSkb7zSHVh4XVOU=; b=eEyCYmjVnfEx6J
	Whn/7leVAIHR6jjMa1+KcN0m43la8VgLxtoHOdYIHz7u33VRXoF9xkWX2JRdrh5N+pq2t9zX8aeTt
	5o4jLmNr/c5EMxd3os5J4fqFRZCh82DIzwDSpykfF5G5mOG6HxTCZ0j7jm15ai+s3qhqUF7UAb3ak
	F48vd7Tnyqi6VReFh72uQYeYGG9Acfa9p0XH48Sp7gbFUZJvG5iX9eIOvst1V9tUHO0bfWA0xUeIB
	5DqQyyToBVT8m6f4oesxlEe1s5W1kcjMNkNGoaUTPLQkjMEGlsP3a4460IitK2uj0xobI8eT5FFvN
	xsgrBxbvd7YlHll/mAdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wAm1S-0000000A5L7-3r5N;
	Thu, 09 Apr 2026 09:50:02 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wAm1P-0000000A5Jb-37P7;
	Thu, 09 Apr 2026 09:50:00 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 4A6EA407B5;
	Thu,  9 Apr 2026 09:49:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D49A8C4CEF7;
	Thu,  9 Apr 2026 09:49:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775728198;
	bh=BjHgzWPU4OMPOehpMtEWVLp3gJWo8761wDntRpP7FUM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qRXm6yKtFM4JonFvvIPvLquXxSuua7wUDhiSi4nuNc+n1HUAG0Hic97qoWEMA13na
	 llhWgdVpWdByBAERoJ/zilD0GC/FmqkhLxOx6sUYxkLsQygWNXbzhTC+qSSYvCzDDI
	 9p1Eas9Ga0iOyrEbW5fTgEfRHhCn22qhsL6GjxiHM8NvhoDPEYIIQCQFOSeF6gO3WT
	 WJ+zGKYikv5e9tHVN2Vf/YbjRjYPbD7kdpJRYQX46Gd7HQG75ItC3VM1GHk0i64bDl
	 LB/wSCFfFi8AOzDbIH0ECovwAYQ8SYkUEvFQZh4utnQTLRFdp6QdPKBS5wI4a5V77w
	 yBepCnWs55MBw==
Date: Thu, 9 Apr 2026 11:49:52 +0200
From: Niklas Cassel <cassel@kernel.org>
To: Anand Moon <linux.amoon@gmail.com>,
	Shawn Lin <shawn.lin@rock-chips.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	"open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>,
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>,
	"open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
	open list <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v1] phy: rockchip-snps-pcie3:phy: Configure clkreq_n and
 PowerDown for all lanes
Message-ID: <add2QFfHd5Jv9XU7@fedora>
References: <20260409044939.7647-1-linux.amoon@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260409044939.7647-1-linux.amoon@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260409_024959_803652_1ADED507 
X-CRM114-Status: UNSURE (   9.78  )
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

+Shawn

Hello Anand,

On Thu, Apr 09, 2026 at 10:19:30AM +0530, Anand Moon wrote:
> During the rk3588_p3phy_init sequence, the driver now explicitly

Please use imperative mood, active voice.


> configures each lane's CON0 register to ensure
> - PIPE 4.3 Compliance: clkreq_n (bit 6) is forced low (asserted) to meet
>   sideband signal requirements.
> - Active Power State: PowerDown[3:0] (bits 11:8) is set to P0
>   (Normal Operational State) to ensure the PHY is fully powered and ready
>   for link training.
> 
> These changes ensure that all lanes are consistently transitioned from
> reset into a known-good operational state, preventing undefined behavior
> and ensuring the PHY is ready for high-speed data transmission.

First describe the problem, then describe how you fix it.


Kind regards,
Niklas

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
