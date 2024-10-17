Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD024D374AE
	for <linux-phy@archiver.kernel.org>; Thu, 17 Oct 2024 15:53:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gSQk1wCKi1D5c+GdT8fafq3mZ3sWgu+o24uTNoWU0vA=; b=Bu4V5FxPGi3mMU
	SYMk2KbczLyfiYGjIvFVnXBdtBH/j/1jqFX45OuKJU/kWUQNH9MlVEeUtDZntmCqNAk9s1fCY1TPB
	ikvOCS4VdPfzFJFgqKBfeOboB17e0ti3uTo4iFwvTzMdlg6QqNW2/ecgam2XfGEYEfQYksfJLGgLG
	QOoNideM04UAyHvWPXfTwxKJ2w2IyLZWNCn0nXTAbIipLCWb8b2GjxPhlGnFBBIcTNayjewAlwm9P
	Pp8Tauh7mtIBrQu7EjkuF237TNuYfT9cO/kULfBBxDfBB83UTDARHwFCexaOIrO6wJ+hwrI1+9F4S
	IryblEaG4HaMZELz3Y0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1SoC-0000000FMnW-2BEf;
	Thu, 17 Oct 2024 15:53:04 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1SY6-0000000FJ3j-1XYU;
	Thu, 17 Oct 2024 15:36:28 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 9E335A44185;
	Thu, 17 Oct 2024 15:36:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6D747C4CED1;
	Thu, 17 Oct 2024 15:36:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729179385;
	bh=owPxL7QyFEb58LXBJRlYvgYZgqPO133NUKRPQsstk7I=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=lwX0oTiSynW0q0o9G3W9gWPHrweDb5sza+TQa48eIVFeOHQPYCp+KE3GTnQ7IRk6S
	 +qhHIwlFC/2MYCzCkL5ryh4CR0kOVF5eXP9bmYOkBetn9/03+YftTa5qJelvE9J8rX
	 kyxxNpp8PS8M57tW9CLr917sKEOvnyISRcnpNLZPpBECPBEgMdvqvTK12E5wzggMLM
	 zhZv21TfPXBOUcyg0t4d2vmuSSsuAPxH4m3nlixn1aDAb50lPmUcTIvHl9naEAosOB
	 gAyNCqUBDcng8oYijImW4r4yPgnwkB7JoJj2cfAl8v1L5x64NZblgKi6UiDVlh3nnx
	 fGL3x8vk7pz0A==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Lorenzo Bianconi <lorenzo@kernel.org>
Cc: Christian Marangi <ansuelsmth@gmail.com>, 
 linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org, 
 upstream@airoha.com
In-Reply-To: <20240918-airoha-en7581-phy-fixes-v1-0-8291729a87f8@kernel.org>
References: <20240918-airoha-en7581-phy-fixes-v1-0-8291729a87f8@kernel.org>
Subject: Re: [PATCH 0/4] phy: Fix some typos in phy-airoha-pcie driver
Message-Id: <172917938308.288841.253062910986645987.b4-ty@kernel.org>
Date: Thu, 17 Oct 2024 21:06:23 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241017_083626_575562_9326B9D1 
X-CRM114-Status: UNSURE (   3.86  )
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


On Wed, 18 Sep 2024 15:32:51 +0200, Lorenzo Bianconi wrote:
> Address some typos during hw configuration in phy-airoha-pcie driver
> 

Applied, thanks!

[1/4] phy: airoha: Fix REG_CSR_2L_PLL_CMN_RESERVE0 config in airoha_pcie_phy_init_clk_out()
      commit: 09a19fb75498985cbb598f1fa43a7d2416925c30
[2/4] phy: airoha: Fix REG_PCIE_PMA_TX_RESET config in airoha_pcie_phy_init_csr_2l()
      commit: f9c5d6369d3e8e36b7beb15e86b1ef0911ace85f
[3/4] phy: airoha: Fix REG_CSR_2L_JCPLL_SDM_HREN config in airoha_pcie_phy_init_ssc_jcpll()
      commit: 6fd016c965d241673a2e62afbf9eeb4bcbfbbe45
[4/4] phy: airoha: Fix REG_CSR_2L_RX{0,1}_REV0 definitions
      commit: e56272f2bb8314eb13b0eb0a4e8055831c700255

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
