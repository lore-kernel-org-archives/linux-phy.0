Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E664C79FB9
	for <linux-phy@archiver.kernel.org>; Mon,  5 Jan 2026 19:16:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LSu5TBcUUG714OCefz14oUC9iQaLUN2orTe2Hh7ZSMs=; b=VPFDqJdb9Eqo5k
	M8Ey5nPQSY6xcrqxNnI/NWvAjiieFfr7z1jb7vuA3/gh/WbqTcmpiT9sAcNMM4RTMzI5kjhgiPurm
	oWurYoKBH+nuIuFMhmT3bFUalxwEdfrM951IB3Q3KgnSD9jhvC2lrtVgXhToK6YbuyRiBfb+ogXtq
	VH74h54hfa4PE1Gf1U7C2qIpaIxPoxY1eYenMaJ7peyuvBe/j+ULnRi9EOcUItNzIVvJtwyZzBmlg
	L6hqJGYTXBeVl5hQD11DR6InXwpOlqVnP1nZV98GBY3DtuZMgOJdYqwnK2dxq92QSIahIIs8sX+Ol
	0x5MeW9OmgXaqNfx4M1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcq4F-0000000Bxsz-10pn;
	Mon, 05 Jan 2026 19:16:39 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcq4D-0000000Bxse-15ti
	for linux-phy@lists.infradead.org;
	Mon, 05 Jan 2026 19:16:37 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 6739760144;
	Mon,  5 Jan 2026 19:16:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B21E0C2BCB0;
	Mon,  5 Jan 2026 19:16:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767640596;
	bh=6NTPGQSzR8P8uoDmYviebKFpUL21wqkHF4476elollI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=DRbZu16JNwTsfEQaacAM93EIUbAs0/6VI34n4CvF06mwZ/Y/DaUvDg4sIx33HwZBb
	 3gfDfuugQ6n5N4K7VumAN3ElbfCTcZj9+jZHpope+wcC51CN7Nc5f/wRkAiy2SLbEo
	 QammlwtzIjPegFfP2UzM46jB/8x/xiL7d0nokoDFDoUceSDXALNs71ixBWyLiNsVmN
	 HTtIycmwdGBJYmxdyQmMfBl30deShq5NCuGrAkI1+OA/7mJuDAmVgD8tJ0lgJYlt+q
	 RQrlcwlOYKnLq8xpToOv2oCGcko6S/F7t0F0PcVyKWSz18S+68Su951o7UhXlnbVCE
	 kL3Bw17MwxqqQ==
From: Bjorn Andersson <andersson@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Dmitry Baryshkov <lumag@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Sibi Sankar <sibi.sankar@oss.qualcomm.com>,
	Rajendra Nayak <quic_rjendra@quicinc.com>,
	Abel Vesa <abel.vesa@oss.qualcomm.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Abel Vesa <abelvesa@kernel.org>,
	stable@vger.kernel.org
Subject: Re: (subset) [PATCH RESEND v5 3/3] arm64: dts: qcom: x1e80100: Add missing TCSR ref clock to the DP PHYs
Date: Mon,  5 Jan 2026 13:16:16 -0600
Message-ID: <176764058413.2961867.6085786733249123604.b4-ty@kernel.org>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20251224-phy-qcom-edp-add-missing-refclk-v5-3-3f45d349b5ac@oss.qualcomm.com>
References: <20251224-phy-qcom-edp-add-missing-refclk-v5-0-3f45d349b5ac@oss.qualcomm.com> <20251224-phy-qcom-edp-add-missing-refclk-v5-3-3f45d349b5ac@oss.qualcomm.com>
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


On Wed, 24 Dec 2025 12:53:29 +0200, Abel Vesa wrote:
> The DP PHYs on X1E80100 need the ref clock which is provided by the
> TCSR CC.
> 
> The current X Elite devices supported upstream work fine without this
> clock, because the boot firmware leaves this clock enabled. But we should
> not rely on that. Also, even though this change breaks the ABI, it is
> needed in order to make the driver disables this clock along with the
> other ones, for a proper bring-down of the entire PHY.
> 
> [...]

Applied, thanks!

[3/3] arm64: dts: qcom: x1e80100: Add missing TCSR ref clock to the DP PHYs
      commit: 0907cab01ff9746ecf08592edd9bd85d2636be58

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
