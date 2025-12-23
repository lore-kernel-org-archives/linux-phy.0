Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C717FE6FE24
	for <linux-phy@archiver.kernel.org>; Tue, 23 Dec 2025 17:34:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ps8BU/sLEmr50vCjgbEwfVNmRdcl9cdg+oqfcqdG1CA=; b=scW9yrqKnQRHxn
	QiYQQGLTgNpH2u5Xs74TFUHts/+W01CFqIHDcjOKPE9IBGX/hQhoHYTHv29Hy+1TLLRliNAi0Ym9x
	t5uLWdnGCgfQIKgQTl6CoOxEL+MClJVUQU6waIpYdPSMwSvMhz2A2Sp7qO2Su5otCzwfMcPb82bNu
	WIiBv7UPiJshmYFbhmiE0Mmz/DsU9UGKdJHaNnCu9GAE6UQ0mMVC7Wi2vddZAHtz2UL1ZDjcMVvje
	tYhb1AUotJnLSh2r0deHRxIbVKOq1FZQUlzgIAt1nIBdq0Ka7SCGByIxDoNeV+qRGveUpmnezFNsV
	zlQT/sZa7DMh/8BpuHvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vY6Gs-0000000FpjJ-2NK1;
	Tue, 23 Dec 2025 17:34:06 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vY6Gq-0000000FpiF-1gAq
	for linux-phy@lists.infradead.org;
	Tue, 23 Dec 2025 17:34:05 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 10F66441BE;
	Tue, 23 Dec 2025 17:34:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D2EF3C113D0;
	Tue, 23 Dec 2025 17:34:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766511243;
	bh=AG69nAwUcvK++nj1QFAhfK8uYJfU8jcuUUO7GyAnV1g=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=QnSRPRLX33lIiU2/ry0zSC+C/9PiDzc/ZdHwntn/EI/zoIaVDCyjGNrWms7KSCYEk
	 xtoceRucbKRccm0koihtY6/Vf/2PhZfgf38zTXofddRp/yo4e7wLruO9ppIY8voqsX
	 al9wTTBvm9V1qCRIRdaueUBWZjA1XfCCoEiB/BzidIK7FEAZQnEXvqNEi+KDEreVFj
	 +7JIpL1xhvP/50eeOROXqMW3q2DiY45mrMWqqM28RGeHawNPKa7FwQCpzpwhvAZujG
	 J/dXUBwgqy+UvajPBbBsBVpusMHqWq0vbG45vz9ID811u2/UlCcBquUPasgZIQBDck
	 +G+Ovp6RYaW5A==
From: Vinod Koul <vkoul@kernel.org>
To: kishon@kernel.org, geert+renesas@glider.be, herve.codina@bootlin.com, 
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Robert Marko <robert.marko@sartura.hr>
Cc: luka.perkov@sartura.hr, Daniel Machon <daniel.machon@microchip.com>
In-Reply-To: <20251031121834.665987-1-robert.marko@sartura.hr>
References: <20251031121834.665987-1-robert.marko@sartura.hr>
Subject: Re: [PATCH v2] phy: sparx5-serdes: make it selectable for
 ARCH_LAN969X
Message-Id: <176651124150.749296.12927372202154691784.b4-ty@kernel.org>
Date: Tue, 23 Dec 2025 23:04:01 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251223_093404_464864_7A638F7B 
X-CRM114-Status: UNSURE (   4.59  )
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


On Fri, 31 Oct 2025 13:18:12 +0100, Robert Marko wrote:
> LAN969x uses the SparX-5 SERDES driver, so make it selectable for
> ARCH_LAN969X.
> 
> 

Applied, thanks!

[1/1] phy: sparx5-serdes: make it selectable for ARCH_LAN969X
      commit: d543d3eb06873f0ab8edb0d1f8364e9af93544a0

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
