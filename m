Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3C87C4828D
	for <linux-phy@archiver.kernel.org>; Wed,  7 Feb 2024 14:01:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zPZeC5axfilN3/W05nRQMYwtR67RV+X6Xa4d8xzzY9E=; b=v96J7aDVMYtxIM
	xRZNjZEdEmuaqvpA5kp/Ku2es2ysEZlGSiU3pjs58BaX32dyCQZ5XY4/2eXH6Ps2TDvtAGTQzCIV7
	OolE0LNdsPadYL+Lyqy5bvXJrXIBaLK0/q1KJEz0KwPraGNeuTydGnPVjPy5W4Jg9oSUPy1e4ZgwO
	DFtO/LN0q9lD7m+naRMksimJZMS4hefrnpM11mBnEGhK9Uhh83/ST3nxxAQX0d4tp/ZVtu7Q2GN0F
	ognvXzviGC97JP8JVfMP7tPNHmQks4MONE0VvXKBCpdzEk1DufMHUwSAS7EVraptDbzcPdg4SzzTn
	7k9ELKZsXJTSgAaPYpmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXiUd-0000000AqsM-1E0a;
	Wed, 07 Feb 2024 14:01:39 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXiUa-0000000Aqqf-0vfp
	for linux-phy@lists.infradead.org;
	Wed, 07 Feb 2024 14:01:37 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id B9BCA61876;
	Wed,  7 Feb 2024 14:01:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B24DCC433F1;
	Wed,  7 Feb 2024 14:01:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707314495;
	bh=DBW93eoiTOGNMTaQDIpoBf6GGb16/dyPd9SHQcXcCiM=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=slFWABO9qFaXy85EHmRnfvVNbLeVSRQdFtUArjUkxzvnsQWXm9E4oWmzZ9LU+0t8c
	 pIMwdvzEBCsT+I5wdLOCpqmzWd4UDGFfGgS6MA9vuGCMD9cWbtca2IFelDU6HF/3Ao
	 Z6TIv2fn2GzKTEyRuwkk24XIaTeSuwBR9IJLjfUB5FLcJGlfxxJUda4qKkLvrDFuki
	 QG/N5LmAahnQRSHS56YwMz+Tr/0uBJQySP1eFjonUsx75LPAsXhv88ZSeV+KSN6r/e
	 n1/8QRQksbMbdZwhZYtt6uws/1mFcpGB0f4I0bvqk7Z/Jupg67NrRLRB7zeRmFGDCC
	 KId9lB1NV2Shw==
From: Vinod Koul <vkoul@kernel.org>
To: kishon@kernel.org, Thomas Richard <thomas.richard@bootlin.com>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 gregory.clement@bootlin.com, thomas.petazzoni@bootlin.com, 
 theo.lebrun@bootlin.com, u-kumar1@ti.com
In-Reply-To: <20240125171754.773909-1-thomas.richard@bootlin.com>
References: <20240125171754.773909-1-thomas.richard@bootlin.com>
Subject: Re: [PATCH] phy: ti: gmii-sel: add resume support
Message-Id: <170731449338.147119.13043324915980323672.b4-ty@kernel.org>
Date: Wed, 07 Feb 2024 15:01:33 +0100
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240207_060136_334683_26419253 
X-CRM114-Status: UNSURE (   5.04  )
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


On Thu, 25 Jan 2024 18:17:54 +0100, Thomas Richard wrote:
> The resume callback restores the submode of each PHY.
> 
> It uses the submode stored in struct phy_gmii_sel_phy_priv (variable
> phy_if_mode). The submode was saved by the set_mode PHY operation.
> 
> 

Applied, thanks!

[1/1] phy: ti: gmii-sel: add resume support
      commit: dc7c77bd79ffbd4c2840354a5da4b08781cb1ee8

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
