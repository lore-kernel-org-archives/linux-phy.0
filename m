Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C98EFFEFB5D
	for <linux-phy@archiver.kernel.org>; Fri, 27 Feb 2026 15:29:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RmojCJQUkn4dxvTLBkv7qkhaJ6i81dN2/22YRO3CJqs=; b=jaKbVyu6wiA1ab
	+Z8KXhNfZ7WclCEwNFpaWMAIp0FBE9Z49n86xgpLwTspGMhxPnwI0RoEclSS1ww8e4dwz5O/tXO7v
	9DCkCFuJeF+/gyUjj8YTmskWArzvfofr05d2Ac/Xjv5rDLlDou5RlGlE3RPw1YZaF4XC+uO5aNy7T
	OzhyyYGGiI8d++F2nmX3uX5FI/Lu0RPL86LnOYx+BwuFIyduyAW3HlaUjCB7Lh/yIVXAycv54MdRp
	/xQOneMW6WFS2iVuMMgQk/RfbtyiTeN53AU9WU+jkT2TXNzBXyYzaFSlKaXILNVpfrGNmNQ0Jdfui
	a1Fes/Vge0Slbt/kdvWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvzmC-00000008cvE-2LYt;
	Fri, 27 Feb 2026 15:29:12 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvzmA-00000008cuZ-33wB
	for linux-phy@lists.infradead.org;
	Fri, 27 Feb 2026 15:29:11 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 7416743FDD;
	Fri, 27 Feb 2026 15:29:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 23066C19422;
	Fri, 27 Feb 2026 15:29:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772206150;
	bh=lrM54DRK1kUlCe3fHemXnSGT8v0pZHSEPfMU+7uTfcQ=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=OWnJlNCZh/aCsUn6npxHmpBTDl8yhvEYZO6LqFyvE4vZ05A/X9aWj5v2GOqR6HHgR
	 Og6Vly0o1SQsQg1D9fpMxIJzUoozX2dQq28E/e5dT5s5XX3s+d4Ml95pkqeKm9JSWC
	 3T7LXy8NZhb4KluWAyKCuAA/4krSA2xIz2u0hjTKM8x64p4VaeGlWi6NhIDkFH5YkC
	 UQw/+VpUJLm3g0VGeuKg+bQ8zRSMI58L5p0+uSwni2Q4ik2gYHGrazqNbQZCUDUAdG
	 L+8py2L3pQ8qI5uDsnlouRR1yGBCKgo2dqevP1XDZ9EtDyPfAKIRH817YEDtCHymTi
	 TgFeL7luIrjAQ==
From: Vinod Koul <vkoul@kernel.org>
To: linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
 Vladimir Oltean <olteanv@gmail.com>
In-Reply-To: <20260223065819.395612-1-vkoul@kernel.org>
References: <20260223065819.395612-1-vkoul@kernel.org>
Subject: Re: [PATCH] phy: Sort the subsystem Kconfig
Message-Id: <177220614876.330302.15946098858761057326.b4-ty@kernel.org>
Date: Fri, 27 Feb 2026 20:59:08 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260227_072910_799876_9B38AD81 
X-CRM114-Status: UNSURE (   4.45  )
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


On Mon, 23 Feb 2026 12:28:19 +0530, Vinod Koul wrote:
> Kconfig is supposed to be sorted alphabetically, sadly it has bitrotted
> so fix that
> 
> 

Applied, thanks!

[1/1] phy: Sort the subsystem Kconfig
      commit: dee40773abe543723adab47319bc25dc70de10a2

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
