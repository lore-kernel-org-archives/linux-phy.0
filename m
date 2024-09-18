Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A0FCCCD1A0
	for <linux-phy@archiver.kernel.org>; Wed, 18 Sep 2024 13:34:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QCDKSJRgmNnTpHk3dJdgtz2KSsKD/nFeR96CpFTZ+qI=; b=NFl9a8EAHpnq8c
	uhi74ay/v43AOIJu9wlDDB0gzuDmJSYnWTrNaWm6hcXvKBHHEYJdi1yi2582KASOrG0euNVDinO8g
	v0OVLYvPIE/3wkqoNA578qXPHRjYtPVgDuzkH3N3MxgrU+XqyYiQN9BtHNajXrbLw1D6XPOF5Ef3S
	hG8+owZk+1VVwboV/lboYTncqm73HUNINi9UlWDpqx7GddfpZx+OI+BBzU1tX0CygjW6LHCa7nghY
	MHEL9+PohydP++uWLJUFkFFGXWcufJsFRm0lCa2wZ8cT/a9R1BSjsKHRDvr43TbnUR9pkn8RPI2ik
	kJyH6YcuCVmKXiDGVwHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1squp7-00000008L7N-0SWv;
	Wed, 18 Sep 2024 13:34:25 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1squnz-00000008Kyl-383X;
	Wed, 18 Sep 2024 13:33:16 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 01135A438FB;
	Wed, 18 Sep 2024 13:33:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1E422C4CEC3;
	Wed, 18 Sep 2024 13:33:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726666393;
	bh=cd2xELJYJMkNXKzyLK+Z72UCOnHc+IqBeg6ZIkvCTz0=;
	h=From:Subject:Date:To:Cc:From;
	b=h20f5ihbM72Vw8ZaFHih/nPk+5jAs8vKNOlJpm4AndeAsHgUsPN3iwS92uLmpf3gz
	 Ff0UKJV0WmVTw7hiMBPvdCCuK5atvimzPRbIUqqqtkcWIVbrkZ0pD281IcsKQnfOUM
	 7ZorJjFSrLA4g7WWSB0E4qACi3ICuSD26/QYONjJ7u3N/78OUbjNfT3frUZUgWZj6/
	 6e1eW7GJnfZr29cff3MxnPgdE+ZkJEfVKN2/KWz5J/+guQCpvVaFrqd16PvaK7xpnQ
	 VdPZD3eyllWKe64i6oSzsq+FhO7iEconoTI9/e/Xx7taafwSw3z2ui8N5/cAsK7EnR
	 9DUV6+ev48PFg==
From: Lorenzo Bianconi <lorenzo@kernel.org>
Subject: [PATCH 0/4] phy: Fix some typos in phy-airoha-pcie driver
Date: Wed, 18 Sep 2024 15:32:51 +0200
Message-Id: <20240918-airoha-en7581-phy-fixes-v1-0-8291729a87f8@kernel.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAIPW6mYC/x3LQQqAIBBA0avErBtorNC6SrSwGnM2GgpRRHdPW
 j4+/4HMSTjDWD2Q+JQsMRRQXcHqbdgZZSsG1aiuGciglRS9RQ66N4SHv9HJxRmpdVovyrWaLJT
 7SPyHMk/z+34DjcwkaQAAAA==
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Christian Marangi <ansuelsmth@gmail.com>, 
 linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org, 
 upstream@airoha.com, Lorenzo Bianconi <lorenzo@kernel.org>
X-Mailer: b4 0.14.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240918_063315_880371_E79657E2 
X-CRM114-Status: UNSURE (   5.70  )
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

Address some typos during hw configuration in phy-airoha-pcie driver

---
Lorenzo Bianconi (4):
      phy: airoha: Fix REG_CSR_2L_PLL_CMN_RESERVE0 config in airoha_pcie_phy_init_clk_out()
      phy: airoha: Fix REG_PCIE_PMA_TX_RESET config in airoha_pcie_phy_init_csr_2l()
      phy: airoha: Fix REG_CSR_2L_JCPLL_SDM_HREN config in airoha_pcie_phy_init_ssc_jcpll()
      phy: airoha: Fix REG_CSR_2L_RX{0,1}_REV0 definitions

 drivers/phy/phy-airoha-pcie-regs.h | 6 +++---
 drivers/phy/phy-airoha-pcie.c      | 8 ++++----
 2 files changed, 7 insertions(+), 7 deletions(-)
---
base-commit: 3c2ea12a625dbf5a864f4920235fa1c739d06e7d
change-id: 20240918-airoha-en7581-phy-fixes-13f77b2f371a

Best regards,
-- 
Lorenzo Bianconi <lorenzo@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
