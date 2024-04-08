Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C6CBCD128A
	for <linux-phy@archiver.kernel.org>; Mon,  8 Apr 2024 02:17:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0wAmgaX9tUEck2V74CLL4arfk47Sn4m1TgZe2P8u92U=; b=Kdb3ASpkxDJTKg
	0VhpmK1hpTcqunwkyprKniKCetg9nrYklAQZe51HI68LO0iWDvPxV7Pcog2hj25fSiAKplCY6c7qb
	O47cLhi3M6WaR9Imhipj2lHknGiYi7pz+WPA83x6CWaUTGWP9nsokYEjEIYMvltTk395t9NsPXaZS
	jHqNQPZCTtaIxAtRHETM0/ZZP/XBZiJBCJ5w4XiPT4lTjtPSEI5M9/cBOVl9zW5dSSBQ0XlI1R6QN
	Kb46M31fNerMH20Bediv4+Jsq7EceRF4MvHoMXMhOgTODjvhf8gayDkZsZzjdwQniiVl6qPTC6m5d
	oy0wf1Km+pux36l6ZHPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rteZe-0000000E1MY-3O0W;
	Mon, 08 Apr 2024 02:17:30 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rteZb-0000000E1Lw-0bwX
	for linux-phy@lists.infradead.org;
	Mon, 08 Apr 2024 02:17:28 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 255C1CE0B85;
	Mon,  8 Apr 2024 02:17:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 321B8C433C7;
	Mon,  8 Apr 2024 02:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712542643;
	bh=yJuepVpMjUwLu6XbshdhD5Hzhlu9+k7u+KmtjHp3Y3Q=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=ff4S64A1+qGX78fzVSVvdgfRWdfpuO4uFpZhcfcFgAMz/VIea1PCuKUuC7cKL7c3t
	 C0X5/l4Ul0TJs+svDA3xOIDcHMK4PqaqoGi+2neDoc2LADNYnx4dYi5ZiyWMm/9ivn
	 9e5oj+3O9reW0uSB2cp34mflyRpbbCvpREioFNBio7UXlUsZ22B5a92Xy6hd2z33xs
	 iqdLU3IcphT2iRXLK0i2KXE/VPUGLC9T6zzx9hSFFxTgc7sd31midwFUat2z1Nwgyz
	 ku9J73WYZibOQMLQecHdUpVldLjgIHDlvG/1qTDicAwp15jhG8qJomcuQggHoWCsBH
	 38GM9a95MRcdQ==
From: Bjorn Andersson <andersson@kernel.org>
To: konrad.dybcio@linaro.org,
	vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	cros-qcom-dts-watchers@chromium.org,
	manivannan.sadhasivam@linaro.org,
	davidwronek@gmail.com,
	Danila Tikhonov <danila@jiaxyga.com>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: (subset) [PATCH 0/2] phy: qcom-qmp-ufs: Fix PHY QMP clocks for SC7180
Date: Sun,  7 Apr 2024 21:17:19 -0500
Message-ID: <171254262028.648987.14757754032979156647.b4-ty@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240401182240.55282-1-danila@jiaxyga.com>
References: <20240401182240.55282-1-danila@jiaxyga.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240407_191727_440759_B2479E94 
X-CRM114-Status: GOOD (  10.06  )
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


On Mon, 01 Apr 2024 21:22:38 +0300, Danila Tikhonov wrote:
> This series of patches is based on the series from Manivannan:
> https://lore.kernel.org/all/20240131-ufs-phy-clock-v3-0-58a49d2f4605@linaro.org/
> 
> Patch from David adding a UFS nodes for SC7180(SM7125):
> https://lore.kernel.org/all/20240121-sm7125-upstream-v4-6-f7d1212c8ebb@gmail.com/
> 
> The patch submitted by David and a series of patches submitted by Manivannan
> were both applied at approximately the same time. As a result, David's patch
> did not include this change.
> 
> [...]

Applied, thanks!

[2/2] arm64: dts: qcom: sc7180: Fix UFS PHY clocks
      commit: 32198408f825a8ca3da4784d4c280847075990e9

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
