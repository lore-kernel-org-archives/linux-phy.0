Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9672FCA0EDB
	for <linux-phy@archiver.kernel.org>; Tue, 12 Aug 2025 21:20:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xdFQ+/PwiGpV6G27cMI4I9oLGWfj4IBpsAQQhoLa5AU=; b=t58wkGbw4fDeAw
	EMKcV13xeETM2QT+19pyD4Tpw471LVtaHAr8C9UyoFeu1+3e5um4NbnAwiq8jO7MdjTDwgrEmqwfu
	vWCDlHmsnXo6tW7aqoe5L5V6mjO3apj3siRAtBe1vyfS1EBefpNIwanipiWuXiTRGxOB9TQCGHoNL
	RYBiFsAD5yOIjkMtOEGsMaORHZTgo1IUJ3ZbQK4Dk40co2xLNhKDdZfKXfi8boW9AUjsMKcMUwvMu
	GF8m2sYF3e9eF4gX7UyPnFUHkaB59Px7U7aXi6K2EQejtrd576S92+Ftp3EN1NNZrH86yOgiCNxLF
	1jXjKKZFe2hpR+BauY1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulwPb-0000000C2mj-1XyW;
	Tue, 12 Aug 2025 21:20:03 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulwLf-0000000C2UO-14ka
	for linux-phy@lists.infradead.org;
	Tue, 12 Aug 2025 21:16:00 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id B71D0A57A3C;
	Tue, 12 Aug 2025 21:15:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E7BA9C4CEF0;
	Tue, 12 Aug 2025 21:15:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755033357;
	bh=AIVY8GN2ACCBEKa/Ha4Rz92hSOzQszl89xx3U4cHrlI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=KGLp/IEvU80wGWgPbxM6CqO0Frjig8HCS59vZHJvHwbrJz0ESSsMCkmN3c7Qe1JEp
	 CG38ofqBqqH27Ivo6gfh99i+hOEaSgJU4iClaQt/hkDF4AOjme9nBWPDqUQmCnIIYK
	 QPXEyR0pzA/XQe15DImXg8ZjNDa8CiJMfwLv3cQsqcyNHCSwZmFFDA4HbuZi47iIbW
	 JOYwyApvY26GgRzAdjn7VwRsLkJ0w39zRkvKF9pbDEMI7I/VR2OpluPN0CNQdNj5lk
	 tuL8vi5hXa/yfINYfwBQ2AfUHENYrBB8L45vJvMYh9Ws74luw3pWACZ6tKCeXn3r98
	 JGDgjF99Oul9Q==
From: Bjorn Andersson <andersson@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
Cc: linux-kernel@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	krishna.chundru@oss.qualcomm.com,
	quic_vbadigan@quicinc.com,
	quic_nayiluri@quicinc.com,
	quic_ramkri@quicinc.com,
	quic_nitegupt@quicinc.com,
	Mrinmay Sarkar <quic_msarkar@quicinc.com>,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: Re: (subset) [PATCH v5 0/2] Update PCIe PHY settings for QCS8300 and SA8775P
Date: Tue, 12 Aug 2025 16:13:47 -0500
Message-ID: <175503322856.231048.14752083569105388831.b4-ty@kernel.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250617-update_phy-v5-0-2df83ed6a373@quicinc.com>
References: <20250617-update_phy-v5-0-2df83ed6a373@quicinc.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250812_141559_361133_6DE973AC 
X-CRM114-Status: UNSURE (   6.37  )
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


On Tue, 17 Jun 2025 17:08:18 +0530, Mrinmay Sarkar wrote:
> This Series is to update PCIe PHY settings as per latest
> hardware programming guide and remove max link speed dt
> property for SA8775P PCIe EP.
> 
> 

Applied, thanks!

[2/2] arm64: dts: qcom: sa8775p: Remove max link speed property for PCIe EP
      commit: d6111177f6504b013d0424657e131ae9a36ab5e2

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
