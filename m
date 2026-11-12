Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA85860A262C
	for <linux-phy@archiver.kernel.org>; Thu, 12 Nov 2026 09:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=nmz0daCB;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=nsIowRd/
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=QNkvonfBQvtjJw8fDI7fe7boWtKVJD4WXo09nghGuQ4=; b=nmz0daCBBQoEicFH0WMPI/a/4p
	55Wb1Yp/Z5xISmLCmaKEMGewftKCb2G7eDLjwrE6zJPDjBcBtyr29hkwf+mR8cFmlGjGZ4VKLLZrC
	XLauxRcyiLmZSARDU1cwb388bIwNVrvYIbERbhXoN8s259iNBB36Zl30toi52SVOMosUjvyJjgJqa
	B4VmmlR3k1KLwKNQDP/V4tidbjcAkapoO+yYSlcqZ9SMAA+txERFDykOTFAo/obP3oGcrcwelbkjR
	SEkAZ9tW7pjUu/1wTD6XMlZ+N/s2Z+pMUXr2y//dbYOvd6Sqrg3usGDTPb2PRgy6WQTLp3yKqq/mS
	hzQzLjZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRQin-00000009HMK-2GTo;
	Thu, 12 Nov 2026 09:03:53 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRQil-00000009HMA-2bda
	for linux-phy@lists.infradead.org;
	Thu, 12 Nov 2026 09:03:51 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 172F2634EC;
	Thu, 12 Nov 2026 09:03:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 333F81F00A05;
	Thu, 12 Nov 2026 09:03:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794474230;
	bh=WQnZsJLH2M1dTlVyLgeRf55jDtYtcurGIQfRD7ez1uU=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=nsIowRd/5N1YLDeHmfHPiMGlzrFN2dGE2GgzLzxhtfAivRapUQJ+KGa6R/M4zAF97
	 8mmGmoPhVs0e+XTfOFfgyOvwi6ii1WS+hIq9K9BdbaVTta1pDBhc4IFDzkAnPBG74A
	 yqSeTerwr0Mbji8FX0ZjfbGOWystLGKVp77SHvzHIlIkkIEE4F5aL91TjQq3Tegsuc
	 2wp+HnxFhV/Z/+hBk/zm/pznIVxrWAuvTFgCZsCJ/XFp3ZDkdSynv5mv5Lo8Y6BP59
	 wyDgKwxombqRHlS8k+BM/m1HDL1YWC0TSxynkv1ue+kvrVbnybhT5rur9/zvgHvAI1
	 kfuEQmox4QlwA==
From: Vinod Koul <vkoul@kernel.org>
To: Michael Burch <me@michaelburch.net>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>, 
 Qiang Yu <qiang.yu@oss.qualcomm.com>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Abel Vesa <abel.vesa@oss.qualcomm.com>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Hans de Goede <johannes.goede@oss.qualcomm.com>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, 
 regressions@lists.linux.dev
In-Reply-To: <20261013-qmp-pcie-skip-reset-revert-v1@michaelburch.net>
References: <20261013-qmp-pcie-skip-reset-revert-v1@michaelburch.net>
Subject: Re: [PATCH] Revert "phy: qcom: qmp-pcie: Skip PHY reset if already
 up"
Message-Id: <179447422684.428158.9271110060803827650.b4-ty@kernel.org>
Date: Thu, 12 Nov 2026 14:33:46 +0530
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Mailer: b4 0.14.3
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-6.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1


On Tue, 13 Oct 2026 09:22:49 -0500, Michael Burch wrote:
> This reverts commit 910b828b22b7b91054b3bd4be676a017444b0e00.
> 
> That commit skips the no-csr reset assert/deassert (and the 200-300us
> settle) whenever the bootloader already brought the PCIe QMP PHY up:
> 
>   skip_reset = qmp->skip_init &&
>                !qphy_checkbits(pcs, cfg->regs[QPHY_PCS_STATUS],
>                                cfg->phy_status);
> 
> [...]

Applied, thanks!

[1/1] Revert "phy: qcom: qmp-pcie: Skip PHY reset if already up"
      commit: 9a07dfa7f6fe34e230de183c02a8180529091649

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
