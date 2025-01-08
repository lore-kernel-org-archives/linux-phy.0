Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B76A1E77197
	for <linux-phy@archiver.kernel.org>; Wed,  8 Jan 2025 02:53:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9DF7l6u+VruniNCEdC9WPjUcseNlUqLRYm5+fXCyma0=; b=lNpshFAz/le/SK
	FocclN+cwNdoWDms6ISbqQdWtdnv/c+BOlVILY2rP8MglSc1v1iGlsHKhfemts5I4z1Pqvj+fNZQP
	3txPos8X3ooOsqU2fHGAyuw8lxzuIPerbSPeQIrW36jUWtmp5HoMr5YPAjFCYX9TKrxvY232265eE
	bLK1uD4IiTufBPw4abvj4BHeqelPNW4r69/VmHCKmDNYoHARrpulqwBYEu6TLgCwd3LGbZS35o48V
	92rdrq7dACgxB8qxK0Vi8jxsbsJc8bmDH2Zd7FwgEbctvGa541rKsvjvYS1mxiwtMzSfzlSKJ+qH2
	0cw7drEuPYkWIrfIIraA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVMBs-00000006x25-1iFB;
	Wed, 08 Jan 2025 02:53:04 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVMBq-00000006x1O-1VgJ
	for linux-phy@lists.infradead.org;
	Wed, 08 Jan 2025 02:53:03 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id CB4C15C5DCD;
	Wed,  8 Jan 2025 02:52:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 32684C4CEE2;
	Wed,  8 Jan 2025 02:53:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736304781;
	bh=ufcq6flOOrgDz3MNbTIBL5NJpjm15U9HOoOqbFdz9F8=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=FPLv/uSIyNPO0Kzg/kXNAz/mH8RneBPn45jtIBL/Wu+ZV0wegUKBpfoMHvYDUVC1G
	 jrrt75w7CQzxpjlRm7U985Oo4f1I0ymu9/NHOgicGY/TyBg/yzmOSfCFmXEhDO1tGF
	 cjPrcFJeedTNvnZjQpp8ZskRDnO9SUtpBqwVhnIgbCLpaFLwrMOwaZpRSCmB97kTIh
	 oksP6GI59OV6qN/mYm8HvsdRyNVaT8w9QInZIX8d9yw0XKT7I6aW/GFAo7PzdLCMoL
	 yefliQJyllV3YK1di/qVANYcMrSFCiVWOBlt65XiW5Zi4qkIj/H7G3J6B28hUg6BC1
	 z3zYQ9O4vksAA==
From: Bjorn Andersson <andersson@kernel.org>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	gregkh@linuxfoundation.org,
	konradybcio@kernel.org,
	dmitry.baryshkov@linaro.org,
	mantas@8devices.com,
	manivannan.sadhasivam@linaro.org,
	abel.vesa@linaro.org,
	quic_kriskura@quicinc.com,
	quic_rohiagar@quicinc.com,
	quic_kbajaj@quicinc.com,
	quic_wcheng@quicinc.com,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org,
	Varadarajan Narayanan <quic_varada@quicinc.com>
Subject: Re: (subset) [PATCH v4 0/6] Enable IPQ5424 USB support
Date: Tue,  7 Jan 2025 20:52:50 -0600
Message-ID: <173630476480.101108.1048165154885202122.b4-ty@kernel.org>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20241118052839.382431-1-quic_varada@quicinc.com>
References: <20241118052839.382431-1-quic_varada@quicinc.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250107_185302_442540_71F1E394 
X-CRM114-Status: UNSURE (   7.32  )
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


On Mon, 18 Nov 2024 10:58:33 +0530, Varadarajan Narayanan wrote:
> The IPQ5424 SoC has both USB2.0 and USB3.0 controllers. The USB3.0
> can connect to either of USB2.0 or USB3.0 phy and operate in the
> respective mode.
> 
> v4: Fix regulator names to match with other Qualcomm DT files
> 
> v3: Added reviewed-by to one of the patches
>     dts: regulator node names changed
> 
> [...]

Applied, thanks!

[6/6] arm64: dts: qcom: Add USB controller and phy nodes for IPQ5424
      commit: 113d52bdc820da14dc0694bb5c57b3cda7ceea30

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
