Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71F6CCCF9EA
	for <linux-phy@archiver.kernel.org>; Mon, 27 Oct 2025 22:35:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+U6QV57Jx5akPIKlFFUSNFNCI22dzvw5tq4h+7dKfqM=; b=GXTGV+rM1tpnR4
	e/W58QMfz/sc8xulhLDzHfOz5/h6AN6L30CsIMe34x67Asx7tbAmxCa2B/wlejuYthEdOALmcxMli
	PtCvbcTqdHurP6meLCXXeJBZuNCqU8HYdbMlSamHjA76QcY7+yASx2DJ+vXUPyoV1YbD6va6Vf2CZ
	Tag94LYQq4PqnRCxbrpWMsftKpbQc6WQQZPR4wxaZZ2s1zO//9cAHC9rVE0gk6ZvqSKCqrQ0416FA
	m7hT8UAOKvb79O/5Cb3J2pTyEeWOwzzUjDb+m0ukgH5tdpCU12Uiy2JDl1PW1zaCpJQvp9pVeM5pm
	MPvlTz69bfIUT+ShHzcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDVnx-0000000Esb5-0vcp;
	Mon, 27 Oct 2025 22:35:09 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDVnu-0000000EsaE-0Bxu
	for linux-phy@lists.infradead.org;
	Mon, 27 Oct 2025 22:35:07 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 66E4548902;
	Mon, 27 Oct 2025 22:35:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D2CDAC116C6;
	Mon, 27 Oct 2025 22:35:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761604505;
	bh=sUJnu0HMVxS0cmV68m63eNjRh5vrO4SC/23vlgZA3iA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=h+nTJjix6Clz4Lnyh5Bl86rDMHrTWl4SydyVABX+e/P/S6KtZjqChNCZeA4+7MzqA
	 y6YxpT+EcoahqN1wbTPN4yzhOSHbcP5vcLcjF4KT/inLBhoPrDPm7kvwVDFKImTv4V
	 Zn6TWQx1OmmZC9VXX7m+Qvd1X9D5tH80PA1QI+Xgu7sJgxXpAz9GzAD6r46Tb6tkMX
	 khbb2dxNtdkBb38EslbTh2gQ9FoaI2I2Kzj/15yPwDdX8gHmo5r5+GiY12W3xKv6D2
	 1wi8UbE26bQG77Tb/asPNdcRxlvSkjk+1Wt2WM7gkGPAsIRq1tLrjEwEzy9PRJDmw6
	 9X6aCHE68rjLQ==
From: Bjorn Andersson <andersson@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Cc: aiqun.yu@oss.qualcomm.com,
	tingwei.zhang@oss.qualcomm.com,
	trilok.soni@oss.qualcomm.com,
	yijie.yang@oss.qualcomm.com,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org,
	Ronak Raheja <ronak.raheja@oss.qualcomm.com>,
	Melody Olvera <melody.olvera@oss.qualcomm.com>,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: Re: (subset) [PATCH v2 0/4] phy: qcom: Introduce USB support for Kaanapali
Date: Mon, 27 Oct 2025 17:36:58 -0500
Message-ID: <176160465250.73268.6711945830373383552.b4-ty@kernel.org>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251021-knp-usb-v2-0-a2809fffcfab@oss.qualcomm.com>
References: <20251021-knp-usb-v2-0-a2809fffcfab@oss.qualcomm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251027_153506_295077_C0413D0C 
X-CRM114-Status: UNSURE (   7.55  )
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


On Tue, 21 Oct 2025 23:50:26 -0700, Jingyi Wang wrote:
> Add support for the PHYs and controllers used for USB on Kaanapali SoCs.
> 
> The usb function depends on:
> https://lore.kernel.org/all/20250920032158.242725-1-wesley.cheng@oss.qualcomm.com/T/#mb2e1260cf266638a56c04bc793f5fe9ed1b3b79d - reviewed
> patch 4 was picked from:
> https://lore.kernel.org/linux-usb/20250527-sm8750_usb_master-v6-10-d58de3b41d34@oss.qualcomm.com/ - reviewed
> 
> [...]

Applied, thanks!

[4/4] arm64: defconfig: Add M31 eUSB2 PHY config
      commit: f5474a34080ed199d3dff2a7b2cd912296376598

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
