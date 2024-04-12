Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD84FC4345F
	for <linux-phy@archiver.kernel.org>; Fri, 12 Apr 2024 11:35:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NwnxUa42WhRNvgvFgetaItegMcJV71lTtXefvs5PP1w=; b=bPsQ6zi/bB3SOA
	y340XzYQTgGRX5ASAhMHNS7nKH9Pl0hBY7IbEQh4J6s+gkLjSSAAt+ClT9WlMIeiL1IjbPBnW/Xti
	KwCOSSxaA1IcG92/0btESsWW9L2Myb1+A/PfRDpGp7NyaQ0HufmiF/KNwyLf/xsqnVzfdU+Kh+dHZ
	oY2JPaSx/R1La8Oa9ly1yM0ChW8moxI2IwAPt66KvERrthNtWlSCehHTIqzTxZS9E0WNc/Fs+I4L0
	4Ian95KZunTyGZXrU7BW4/zQqIEAYyw9IsYaY7YH9+J2e0QKDofoIPR9R0W6HSb3p3RipjvzWWshs
	LhlHjW4u04Nj0s5flZnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvFBx-0000000Gx5G-0K3s;
	Fri, 12 Apr 2024 11:35:37 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvFBt-0000000Gx16-1Eui
	for linux-phy@lists.infradead.org;
	Fri, 12 Apr 2024 11:35:34 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id A315A62244;
	Fri, 12 Apr 2024 11:35:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 17FFEC32783;
	Fri, 12 Apr 2024 11:35:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712921732;
	bh=S7ruI72tEAVEcVsaLpp6edDcdmwBz5iE40NZHCxisro=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=r5/0tTwsKkmhMf8vBnTL+8KRiAhSlbSRdBX4gaPdYi1Y/GpmTjBXb+IshCNwCWW2B
	 r7sumiGuHDhwQ19yJDmuXrjzQrzdysIUf/ZSNWHYC4OULoXnxFHSBF6a8lbd8tkw2s
	 A+myDg+61MLDjY15YnY1LWQa3/GcOzQDs6RvkLGSWgKxhQM2XEEYWxclxXin43YFcj
	 IeD/IA+nPUhoC+RaIPxLnHrOQZchHboc7PP8yAfLDETuAplpopzUDOulo3f8/gRyKl
	 fhbqSi8HyyfMFBqtrhvTudhyCJD3WZFSraI1G8OF9J7HVy1f/NtLilrCCHXtGunjZP
	 2iXkRR1X5q1AQ==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Hans de Goede <hdegoede@redhat.com>
Cc: linux-phy@lists.infradead.org
In-Reply-To: <20240406140821.18624-1-hdegoede@redhat.com>
References: <20240406140821.18624-1-hdegoede@redhat.com>
Subject: Re: [PATCH] phy: ti: tusb1210: Resolve charger-det crash if
 charger psy is unregistered
Message-Id: <171292173067.599648.9402888997379010294.b4-ty@kernel.org>
Date: Fri, 12 Apr 2024 17:05:30 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240412_043533_504707_5995F881 
X-CRM114-Status: UNSURE (   6.69  )
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


On Sat, 06 Apr 2024 16:08:21 +0200, Hans de Goede wrote:
> The power_supply frame-work is not really designed for there to be
> long living in kernel references to power_supply devices.
> 
> Specifically unregistering a power_supply while some other code has
> a reference to it triggers a WARN in power_supply_unregister():
> 
> 	WARN_ON(atomic_dec_return(&psy->use_cnt));
> 
> [...]

Applied, thanks!

[1/1] phy: ti: tusb1210: Resolve charger-det crash if charger psy is unregistered
      commit: bf6e4ee5c43690e4c5a8a057bbcd4ff986bed052

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
