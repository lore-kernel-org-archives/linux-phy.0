Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3C03C46CD2
	for <linux-phy@archiver.kernel.org>; Wed, 24 Jan 2024 05:59:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Oo1Jd6AmNIKsi3PD43Os1JyuMxb2naoC3AO+MX+HzgY=; b=wcVFhMvbC0XWoa
	A93z31BshU2tqzGJ8pDN01JB8vCHAJkXpyxeF9z38kaJBJ+r4qEXugOvHZEai1LbtsNP6mVtroWca
	6Lz9yk0oMEVse1eKsOHCbp2ifbMqrh7Y47SkUqCiTjbcKs0a7RHLkNw36DFsSlN4DB+TGKH8EuCPf
	qjjfzW/I+RNPmyc+wePzPAezh9YwPAs/kdnAoLPC2qt5M37EBUqJP0jtEQFXPHmuANoAC/b+7ZLun
	vHt9S1jYeH47YTykQDvU8AfB5gPNUp7YfBPRXE2jaAdOnffgXjTleTECBWtAVLCUrnby20h4kF4Pp
	VsYK4U6CcsWEqDRVLEFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSWIP-001fAR-0j;
	Wed, 24 Jan 2024 05:59:33 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSWIM-001f9p-30
	for linux-phy@lists.infradead.org;
	Wed, 24 Jan 2024 05:59:32 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 0F47F61E7E;
	Wed, 24 Jan 2024 05:59:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9CB2EC433F1;
	Wed, 24 Jan 2024 05:59:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706075969;
	bh=THNCpjJfkari3A89HCYqRjqY8HEsq7oCLnNzT/WpTBU=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=hobzoJx8QwgRzgBLHM1sj+uyJwG1UeYyxal8BEtN2Z4a0VNQy5CkJ7udw6QaWler2
	 SfpSL4bQRAKTSLXtn/8hgmPE8bD3eFXmk7fms7bbu9qU+nmZ0S+NHBkNYzKrlLZikX
	 jSxUCOtTLvRTi7xLib4SnS9TK3L0aMl8nRZVZy4JJmz0RO1yjBsFvb44sUZD0cVYgB
	 YYkKCwLmTs9j/NVwfmYFGE7xTCsyiUwfHBki0CNwbTxlj04lmIt706d6f5reIsyZOp
	 XOUprR0LMwINpOjE60q6eUVopJkJW69Zh9+w4w9LzAigQb3dOJ1U8qdItFCwilKwYo
	 QY/C7WAPc5lGg==
From: Vinod Koul <vkoul@kernel.org>
To: kishon@kernel.org, Horatiu Vultur <horatiu.vultur@microchip.com>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20240108205140.1701770-1-horatiu.vultur@microchip.com>
References: <20240108205140.1701770-1-horatiu.vultur@microchip.com>
Subject: Re: [PATCH] phy: lan966x: Add missing serdes mux entry
Message-Id: <170607596825.395031.15945327841005877396.b4-ty@kernel.org>
Date: Wed, 24 Jan 2024 11:29:28 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240123_215931_016132_EDA846C0 
X-CRM114-Status: UNSURE (   8.08  )
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


On Mon, 08 Jan 2024 21:51:40 +0100, Horatiu Vultur wrote:
> According to the datasheet(Table 3-2: Port configuration) the serdes 2
> (SD2) can be configured to run QSGMII or SGMII mode. Already the QSGMII
> mode is supported in the serdes_muxes list  but was missing the SGMII mode.
> In this mode the serdes is connected to the port 4.
> Therefore add this entry in the list.
> 
> 
> [...]

Applied, thanks!

[1/1] phy: lan966x: Add missing serdes mux entry
      commit: 4e4a1183f281d95fbb6caf28d670775d13264beb

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
