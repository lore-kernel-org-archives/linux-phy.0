Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F167EC4828D
	for <linux-phy@archiver.kernel.org>; Wed,  7 Feb 2024 14:01:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=09hp9oH3YOxLjRhgtG+BC9ptjvrmFdNkev8a3tCInbk=; b=ITQShSMghP47Y6
	z+SQ1LPoevZOozwLyQAYpDaUhD0IkmPc7Fqimof0qgu21oBk4/32C1RF+BlTLdHnNhS+EPUIMdUWJ
	X8asQf1TP/Njhyey3bgCE+katiYVYJRTMSAK+nnHc3jRzJmVZmVYfyVvR3XPV2eb6LbmUR1GmIPCV
	CCOCK4n0OVFcaXe2WmKtcKpT2lIzW/OcyVWSwObOYvxX+zWy2jSPXWRQ19BiwHDas3HCdhntp+Pot
	BRn1EnBoNKQLN/Ovq5f0Ieq/G7D2abvn7Mj9jpBN9hyj38BFmeF85PqyW1Dj+oPhUZWlkvsGC1eYp
	hRve2o7MFKDawSF0J9XQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXiUD-0000000Aqi6-2oJd;
	Wed, 07 Feb 2024 14:01:13 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXiU9-0000000Aqhc-48gM;
	Wed, 07 Feb 2024 14:01:11 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 65D8161826;
	Wed,  7 Feb 2024 14:01:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 07C5AC433C7;
	Wed,  7 Feb 2024 14:01:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707314469;
	bh=72EClSXyQtaIC7zacEBbj2ZhAT4TDITthTnhpwf/kzY=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=lirrRVrtKytCsaA5g/qCu37YuxPn1JvVd7GR1V4Pb2iC++pWdRovaqYtgpjn8OhoX
	 FxeRMQsLszl+uNFkeN9fD8gdOpkzyZ5JuX+8KTCiydo6BsYBNYnQs9xUpuCDmGGig3
	 FzM0tK3mWXQSLpqOcJV6Sv2yL1IFok4DMVC5XM8lpILtr3AKIepjgHFeNYuWx1o6m8
	 UiOc5pkQ7By3Uh8yXYzY574xlia64FdJ5cx9uFmyhE+O7hQQEpiyXYsfRX+NIJ9G9f
	 rZRnxbvQmzGdAbgDhEcrfCCPIbp78mHSTgZ0AHjKft0ZooIviuBuOT5LuIxMg/1gwG
	 ljFAo5g5YXQ5g==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, Ying Liu <victor.liu@nxp.com>, 
 Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>, 
 NXP Linux Team <linux-imx@nxp.com>, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org
In-Reply-To: <20240110093343.468810-1-alexander.stein@ew.tq-group.com>
References: <20240110093343.468810-1-alexander.stein@ew.tq-group.com>
Subject: Re: [PATCH v2 1/1] phy: freescale: phy-fsl-imx8-mipi-dphy: Fix
 alias name to use dashes
Message-Id: <170731446669.147017.11490277771179269015.b4-ty@kernel.org>
Date: Wed, 07 Feb 2024 15:01:06 +0100
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240207_060110_101526_3A9F85B6 
X-CRM114-Status: UNSURE (   4.60  )
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


On Wed, 10 Jan 2024 10:33:43 +0100, Alexander Stein wrote:
> Devicetree spec lists only dashes as valid characters for alias names.
> Table 3.2: Valid characters for alias names, Devicee Specification,
> Release v0.4
> 
> 

Applied, thanks!

[1/1] phy: freescale: phy-fsl-imx8-mipi-dphy: Fix alias name to use dashes
      commit: 7936378cb6d87073163130e1e1fc1e5f76a597cf

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
