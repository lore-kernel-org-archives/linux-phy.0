Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93461FF886F
	for <linux-phy@archiver.kernel.org>; Sun,  3 May 2026 17:12:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yz+K2cp+ktirDdPg2RXNC68gGYkc8zX9nzq7IWtXGEA=; b=AEFQxEfhOhUhSY
	Z2Lck2qIIYY7vobbhwBzuu009VrZnm+QhX6vfajn57KNkQUY8iui+LvBoyMRebfx6rvWGu6i4TLmk
	KsOBfvkkWdxct5TLdrmzJ/NudqqWoVqi2pbPfy7x+zscES9xYncPhSCFWSIsjv/+5t4OWMsdr63TQ
	fsPH5/mSrifBXOoZE2KUAQgAGiFQ4RqtqBrIrdNFPRRxr5sCK3pF9acnHaNN5iApuNHnzWyhl7bSn
	73Hy3TWD0GFg3RzD7JnbCWKgTQXDOeyUW3gHc00s22wAqPVatyK3ROKYWFYIy+9/eFIGKYmEm5VzR
	YYNEVZnb+7mfaouiLVeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJaMV-0000000BNEo-1z1k;
	Sun, 03 May 2026 17:12:11 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJaMU-0000000BNEW-1EN6
	for linux-phy@lists.infradead.org;
	Sun, 03 May 2026 17:12:10 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 56CAE600C3;
	Sun,  3 May 2026 17:12:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9FFB9C2BCB4;
	Sun,  3 May 2026 17:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777828329;
	bh=VSVVTCxUpqH6gUJP/+1230YPiKCL5WEfgYBGdHK6SeY=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=G26YuI+x4jF+WpcAccWSTOdC0H9T9YrHmwMMoUBP9+YB1/C3etZyOdIrlyGK4QwHc
	 2aROAFAYy6+I7rmVbu6VsZlk9mBPweYtLk31xneG2o31DBN+95HHVLPhodcER0S9sV
	 eOzFd9UuvYV7DoCF+K1K3AFRqKovgDE8T/fPkAf84e3Dw3GCrHHN2IC8j8njysPCSq
	 ltzzVEsCRDj75IWPPXNawl5vAXTdZ77j1jamfJk4+bXztI48WCEi8+/IVPAP1CzBGM
	 TS3Qa2wu0iSHpH8tSoiYpci8JYW63dUuPcuiiNW3T2Yl3UaoRlWkcNB0hzxYXvGEGt
	 aD89jy2KRxlrg==
From: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Stephen Boyd <swboyd@chromium.org>, Bjorn Andersson <andersson@kernel.org>, 
 Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, stable@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
In-Reply-To: <20260427-edp_phy-v5-0-3bb876824475@oss.qualcomm.com>
References: <20260427-edp_phy-v5-0-3bb876824475@oss.qualcomm.com>
Subject: Re: [PATCH v5 0/5] phy: qcom: edp: Add DP/eDP switch for phys
Message-Id: <177782832516.123780.10745485778034358012.b4-ty@kernel.org>
Date: Sun, 03 May 2026 22:42:05 +0530
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


On Mon, 27 Apr 2026 14:35:18 +0800, Yongxing Mou wrote:
> Currently the PHY selects the DP/eDP configuration tables in a fixed way,
> choosing the table when enable. This driver has known issues:
> 1. The selected table does not match the actual platform mode.
> 2. It cannot support both modes at the same time.
> 
> As discussed here[1], this series:
> 1. Cleans up duplicated and incorrect tables based on the HPG.
> 2. Fixes the LDO programming error in eDP mode.
> 3. Adds DP/eDP mode switching support.
> 
> [...]

Applied, thanks!

[1/5] phy: qcom: edp: Unify generic DP/eDP swing and pre-emphasis tables
      commit: fd672888cccd6b855154efe0ac78e7ce3e8ab088
[2/5] phy: qcom: edp: Add eDP/DP mode switch support
      commit: 3011c365a329cf2db6d55e8d684550dc88350436
[3/5] phy: qcom: edp: Add SC7280/SC8180X swing/pre-emphasis tables
      commit: 3d22594d6f842814b7718600486fe3ce9453abf0
[4/5] phy: qcom: edp: Fix AUX_CFG8 programming for DP mode
      commit: bf237a9fcbbf9d658522f7315ffc04bf2d49be42
[5/5] phy: qcom: edp: Add PHY-specific LDO config for eDP low vdiff
      commit: 519a228ee40d1be3453d1da339b4577c3785e333

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
