Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59853C3DA6D
	for <linux-phy@archiver.kernel.org>; Fri, 23 May 2025 08:49:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6HmUfpbQxgOBYYuZ0BCWcRoEgNm6Iosx6L6ItmhQMjA=; b=Yu/o17Z//hB8XF
	aoP5cZPLN2COKE/yNY12Uy5b76hFHwwitieR9X4T+VE9zUgd4EQMayI77pyL7zeeQNBNo+Z6+AcGJ
	PKnS981oKMbQ3iAzfaTZzBaIApsT7LqsEK0AP7h1bsQSJLe8lPGbuk8wUHhGs+R9MOdK4OOuwkjSd
	1Buh1JneRWc5LLTDxksbgwRvKg9IU7mP2XGxxnokiMvv8ybIp7hJ5TnvIIPBbHfnjfW6evQjOJYPD
	nFCd06ka9am2lnpmKgxmTxGL3OTRbv9A3vCyPGmoTjzU2BzIT89JLdFiffsVtFsvL8k6Ml9CQDZ58
	qlKyqP9d8DEEvhAKD+qA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uIO5X-00000003M0A-0Sii;
	Fri, 23 May 2025 08:49:11 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uIO5U-00000003Lya-2kBf
	for linux-phy@lists.infradead.org;
	Fri, 23 May 2025 08:49:08 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 9B48262A6D;
	Fri, 23 May 2025 08:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DE71FC4CEF4;
	Fri, 23 May 2025 08:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747990145;
	bh=e/J0slcAPFlAeKb3Rmtwb/HqgsdPPK5dqNn+4ShKjiI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Cb9I3s1u6vV3raqI+2xvTiDFd8qLuBVoDZKz9vgCd66/9oxjOPplcG1GQql4fvn5d
	 yaxMu8xokBnWNJk+sNZU8BEyCOnKULe3tdhLbbcrK2wqKrC4NcVnzPxlbxAbflwEyt
	 E3spZFClIPeTWrxsLxI5li3FdRI06z5ElfhbB/CZCgkH5fcyxumYq+q8qiRH5rGQx1
	 jGpL8MsmM49HythrrDTmrpvdMGiNyLwTx2tgh/CVnnWKU8LsKWCndU0bgndMSvaCDi
	 c4XDyAExcxHuf3ngJCwCvywPt87YsKqRHCeKqvob5EpF7gPswYF23U7p11fTYjHxRL
	 NosiNwyLt/f8Q==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan+linaro@kernel.org>)
	id 1uIO5Q-000000002sm-09VH;
	Fri, 23 May 2025 10:49:04 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>,
	Abel Vesa <abel.vesa@linaro.org>,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 5/7] phy: phy-snps-eusb2: fix optional phy lookup parameter
Date: Fri, 23 May 2025 10:48:37 +0200
Message-ID: <20250523084839.11015-6-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250523084839.11015-1-johan+linaro@kernel.org>
References: <20250523084839.11015-1-johan+linaro@kernel.org>
MIME-Version: 1.0
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

The devm_of_phy_optional_get() takes an optional name argument as its
third parameter and not an index like the recently replaced
devm_of_phy_get_by_index().

Replace 0 with an explicit NULL for consistency and readability.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/phy-snps-eusb2.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/phy-snps-eusb2.c b/drivers/phy/phy-snps-eusb2.c
index 232c5e8a554f..328e67ebfe03 100644
--- a/drivers/phy/phy-snps-eusb2.c
+++ b/drivers/phy/phy-snps-eusb2.c
@@ -581,7 +581,7 @@ static int snps_eusb2_hsphy_probe(struct platform_device *pdev)
 		return dev_err_probe(dev, ret,
 				     "failed to get regulator supplies\n");
 
-	phy->repeater = devm_of_phy_optional_get(dev, np, 0);
+	phy->repeater = devm_of_phy_optional_get(dev, np, NULL);
 	if (IS_ERR(phy->repeater))
 		return dev_err_probe(dev, PTR_ERR(phy->repeater),
 				     "failed to get repeater\n");
-- 
2.49.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
