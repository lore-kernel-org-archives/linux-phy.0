Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5093CA1007
	for <linux-phy@archiver.kernel.org>; Mon,  1 Sep 2025 23:13:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9cFVGSZlM442BBdat3qwoAC+81id99+PFwJsY7Bkx+o=; b=KGM0RzvS0FEd6I
	loq/f6jmamPrVaBH5+mxkG0D8N+cV4fK/RlDplpk94h72sAVfT7OYsGTM8Mvs64ZoXNZzhTj7xRzW
	4qr09es9JDsvTuphVfB8ksZne1a6BtDmjmFIoM+1BHH4M7XPJdoGF7FiTi0zQz2/GW+dIXhwPaBMH
	8fNHRbzgcQolc/9pSM/yvB77kW1E8H3TRwCs9wlsIoetb+o/LZ3yBKL8VD4Vt6tjHtm9kCMxp33KH
	dPrFZQqSFwdNGxS/qOxkmpgquQFDpvfOGJwzEYGN/tQZ25YvOOvbIaTS1LP79QPIu6eBr4q04X694
	GKLwcUVab7/lbLrjU83g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utDi7-0000000EFgA-0yea;
	Mon, 01 Sep 2025 23:13:15 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ut80n-0000000DPNV-06Ht
	for linux-phy@lists.infradead.org;
	Mon, 01 Sep 2025 17:08:09 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 6E73F601E9;
	Mon,  1 Sep 2025 17:08:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B32E0C4CEF0;
	Mon,  1 Sep 2025 17:08:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756746488;
	bh=2yYH/cfpjLpeERChnwoG49UtSP4qJklF2fBBnkxU32o=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=Ks9JmaEiZVOQXMVVTh13IA7jdlAJvQsTf23dO1/iOd8AqXykPBr/Yb8Wnu/HgkJXY
	 aZfhz1qk+auJTxe0YNzGAHFPKta5Fc1ouhqd7u22iFqukxMUX3xZl2RKWq4k2GRc/w
	 yBuJoXUGnsdCyk4tLuNQh3xZMLK2obL0lvQGShYUsEHWbCZjLKYbD+br/MJ8wgSw0I
	 sUKK2uqE/1RmP0GQ8U2ZPQMailYEB8Wueqgung7Vsb2t2nGHEvuUbYk8PFpc6RZTIi
	 w2drlZZrv0aIo9B7XAL0mYgR6QIPswTiEhrmN5LPkWbThaojZw36tsIpIBm5lFJlz/
	 OntQImmwu5Szg==
From: Vinod Koul <vkoul@kernel.org>
To: kishon@kernel.org, mani@kernel.org, neil.armstrong@linaro.org, 
 dmitry.baryshkov@oss.qualcomm.com, andersson@kernel.org, 
 konradybcio@kernel.org, Nitin Rawat <nitin.rawat@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20250830070353.2694-1-nitin.rawat@oss.qualcomm.com>
References: <20250830070353.2694-1-nitin.rawat@oss.qualcomm.com>
Subject: Re: [PATCH V4 0/2] Add regulator load support for QMP UFS PHY
Message-Id: <175674648426.186496.9175302825889906237.b4-ty@kernel.org>
Date: Mon, 01 Sep 2025 22:38:04 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
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


On Sat, 30 Aug 2025 12:33:51 +0530, Nitin Rawat wrote:
> The series improves regulator handling in the QMP UFS PHY driver and
> adds load configuration support for all supported platforms.
> 
> On some SoCs, regulators are shared between the UFS PHY and other IP
> blocks. To maintain stability and power efficiency, the regulator
> framework needs to know the UFS PHY's peak load, as it determines the
> regulator's operating mode.
> 
> [...]

Applied, thanks!

[1/2] phy: qcom-qmp-ufs: Add regulator load voting for UFS QMP PHY
      commit: 0c4916aadb8df892399eec99f775655c31049195
[2/2] phy: qcom-qmp-ufs: Add PHY and PLL regulator load
      commit: df4beac9da5f162770c8563d11cda327d748c20b

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
