Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F585FEFB5F
	for <linux-phy@archiver.kernel.org>; Fri, 27 Feb 2026 15:29:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EsOkV+MwxDlZIGpws2+v36AmFjjStWDcEXzMGSE8H58=; b=B/3r1KQ+s+Bfbs
	9WqTtqiXkPqsX1QwRTID7S8RcImZs7AF0zKXc1hIWy4hZbO6wkcFt5Wewu109S4g0dVBX1P5m8qxu
	DCY39a2P5O0Z6XRHz0mWlPTS3MJ5dRXnfPS62d4eifpNp0MUcsrBzf4q2xC2D91ndtIteI/V6E/G0
	f/eDL7iTjSNdry34jZLBqcSpNrImh1zKHVnPOUkd4j4z/bycUMEynkrOaOPH4ma4LZwUOOKrGB7k0
	eegol9vNg60OfNm6yARYeFmlwO0zM1FQDIiiCNzwxoLAExAVut/hBCUymaEliGqiRKSCQgQ1n82CT
	Mr8PmFrPkjHVqgECI5vQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvzmA-00000008cuL-0Eua;
	Fri, 27 Feb 2026 15:29:10 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvzm7-00000008cts-2LNS
	for linux-phy@lists.infradead.org;
	Fri, 27 Feb 2026 15:29:08 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id DCB15436DE;
	Fri, 27 Feb 2026 15:29:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C6531C19422;
	Fri, 27 Feb 2026 15:29:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772206146;
	bh=4FUTHAlRyMZYX4Z7lWHtCryDYroVmFr+dp0uayHY5Qk=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=c+SJNGX2t1/eEJDT4aeRgAsaGiEzev2XVqsQo8mieaXyARrGdmWwv2tbSCH9QjBHQ
	 gByjUXh2eDuizLesdnMcDGVIq+6+fDL5UzukqRT/3oiR1ZB2iDmE+JNQOJF9/ju/4x
	 kThWoaSxOTgUgi/D5q6cdmxw/0eJLzqjN7Kb0uW+8bBp+rHZ5blT1Wq2d9bpV4dOwz
	 GmwkZm22jiExXa5mLsMOBISWPQuySdUicTl+PK3vxxoUOrdZE5K5SdgDs2tWAChm36
	 tk29zu46CgXzBrhUi00zsA0PH9+mvQj0+ee9uDSTwzOvqxIofZWMyrB8d4UOKtON1c
	 ObSEBWPvvGuEg==
From: Vinod Koul <vkoul@kernel.org>
To: linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
 Vladimir Oltean <olteanv@gmail.com>, Alex Elder <elder@riscstar.com>, 
 Ze Huang <huang.ze@linux.dev>, spacemit@lists.linux.dev
In-Reply-To: <20260223064240.386617-1-vkoul@kernel.org>
References: <20260223064240.386617-1-vkoul@kernel.org>
Subject: Re: [PATCH] phy: move spacemit pcie driver to its subfolder
Message-Id: <177220614443.330302.6717419750430502606.b4-ty@kernel.org>
Date: Fri, 27 Feb 2026 20:59:04 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260227_072907_622008_6DBC4314 
X-CRM114-Status: UNSURE (   3.83  )
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


On Mon, 23 Feb 2026 12:12:39 +0530, Vinod Koul wrote:
> Commit fe4bc1a08638 ("phy: spacemit: support K1 USB2.0 PHY controller")
> created spacemit subfolder with usb driver while commit 57e920b92724
> ("phy: spacemit: Introduce PCIe/combo PHY") added pcie driver in phy
> folder. Move latter into spacemit subfolder and rename file to
> phy-k1-pcie.c
> 
> 
> [...]

Applied, thanks!

[1/1] phy: move spacemit pcie driver to its subfolder
      commit: 75fb1a33f9ac4c9730e61bb19aaaab02023a99b2

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
