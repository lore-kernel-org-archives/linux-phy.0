Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 353E1C77B6E
	for <linux-phy@archiver.kernel.org>; Wed, 12 Apr 2023 16:18:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ygcT/elKqjDU5s2NvE5WlG/8t1AWU7zmlJBXp+vTKvo=; b=X7RmbQE/m5Oy+0
	bL/LW84WnMxboNSt4PCAw9+HOmuhWTSA+s+T666g0QarZgPUUuaXRzqtwlxyKWS3AuGWvQfQwnW15
	GNmXgSCtBbYlY1Tws6atUI+y4/3gk/xYJYG0BZqpUoAWR7jM1hXmWUl+TnbGxUdZfzCpKLIXFuRk5
	DMs3TCx4d0tlaiY8Tw3FrenrIS+1wzQ3+lyqEHM6nZGo6xW+KgSCNic91hCyLChx+8v3NA2TUtNM/
	3sDw6OVwEmy0luFzjlqoxLhsJZ67ZwAyaXdMK6eo+cgVwKBjMEnXYlKgKfe67QJj43wNMtKPdzgHn
	Y1UdKBxFQ8C98fa0JuWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmdAe-003mkr-2q;
	Wed, 12 Apr 2023 16:18:08 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmdAb-003mkG-2m;
	Wed, 12 Apr 2023 16:18:06 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id EC13562D5D;
	Wed, 12 Apr 2023 16:18:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C52C7C433D2;
	Wed, 12 Apr 2023 16:18:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681316283;
	bh=ekb4B5t2XeTS1EzHo39Eex1si9nprBeZ4QjX7H+9Rz8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uKofJ1OApH9Tb+TfEPSfQN1530xUSfbnwpIJcEjtaGGYgowFKpuqlBVwNpoIUQrJB
	 riI1RmGgq7N5nuNHwWyQm3gSg41TQWX0Zf50YmU3RHxxAR/s2XHSvIjrW3AireZG0S
	 yFA6gfH3qhCWAnaq/WpYjhg52ITRSpo2R5VQpLycpW8Do2yMt3QPQw7Qf7rek8jQnl
	 CHwiAE5qg+JmANL22jpFIdTSZaX6RnBUuxzntw3++veEgg7N1nPRE+CtAbugPS1Y0c
	 BoHLNkMAy3JLli0Gl8gWiGlP+MZ7SgMJH3ntaIsLY9IoUwGYVqIUq7pJbNYmW6kOTl
	 pbrdS/pzthWPA==
Date: Wed, 12 Apr 2023 21:47:59 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Tom Rix <trix@redhat.com>
Cc: kishon@kernel.org, heiko@sntech.de, nathan@kernel.org,
	ndesaulniers@google.com, linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	llvm@lists.linux.dev
Subject: Re: [PATCH] phy: rockchip: remove unused hw_to_inno function
Message-ID: <ZDbZtwc278NRc+vy@matsya>
References: <20230324132649.2649166-1-trix@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230324132649.2649166-1-trix@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230412_091805_943729_EBAC077D 
X-CRM114-Status: UNSURE (   6.24  )
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

On 24-03-23, 09:26, Tom Rix wrote:
> clang with W=1 reports
> drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c:284:36: error:
>   unused function 'hw_to_inno' [-Werror,-Wunused-function]
> static inline struct inno_dsidphy *hw_to_inno(struct clk_hw *hw)

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
