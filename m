Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86787CA0EFF
	for <linux-phy@archiver.kernel.org>; Wed, 20 Aug 2025 20:52:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pXoyOa+htvvykVs4ppiUudREJDeUpM3HDgHQ5HlZJrI=; b=VEvmQMn4DzVEUV
	VadAXtMefrRXVBsPNZtt1avPh/m7kGU5IM75duSkbu2KCr6i7Jhpu0Mc44T1sUwCEFUv5BEwaY9Q0
	gRxwgRN9IwAYoHSoq1cLkKRxzQdWCXooUx5PEFHmShAAkoX3ZwUSMQTUR5RpqnOtvOZsc/kGOT2V+
	JHSCS882k1Qu1OpUqhb1S7YEAFGnpsG00F2V/uplYN3ipvFmn+z6kfeP2q8ud4FNaGntqr5hQalkK
	62Vx5hE4sLWIXGEt7ofrBN3MsqHIChpTkGIN2IvK6uP+C4dr/de7wj9r1FMOiH//pq6/ym1P64wp4
	yAAG7c6IGxOqRJ3ul/VQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uopnA-0000000Ev7d-03wK;
	Wed, 20 Aug 2025 20:52:20 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uomDX-0000000ETMo-1etK
	for linux-phy@lists.infradead.org;
	Wed, 20 Aug 2025 17:03:20 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id E30905C06F0;
	Wed, 20 Aug 2025 17:03:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 16455C113D0;
	Wed, 20 Aug 2025 17:03:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755709398;
	bh=lH2FtywTwxeDLF+4pDvhZz6bWPeakR4zpNH7a7rIn2c=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=KKQmtVQEyHUVnrTNnOqLotbg3P5LgdahJtjlEKgP8UXd5YMShfA2d1MwbtAZZdx1t
	 FU75f9g1QkbuwYhvr+GtcGgx18R4eATpxYdeHTSlGbpESeoq6c4oBnDregwza8ig/L
	 GsKVRAZ/pWQx4TMENvjtKw3/LzKk58V7dIHwrf1qr+eyzRerkeR5aOZKagQuu03ftI
	 IcP3yWzSF+alozi3lWad6HUKvdiRfMZAz8OkpN3dgmRXyd/EXkDI2aFhEsE1vedk1s
	 c4AB6LXcZWr7vo77NqqbdHIjpJCAUldkr8zAYwb9iGmqdX2drN599+sej5i1V8r06U
	 456MELkBtF0hw==
From: Vinod Koul <vkoul@kernel.org>
To: kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
 conor+dt@kernel.org, andersson@kernel.org, 
 Yongxing Mou <quic_yongmou@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20250730072725.1433360-1-quic_yongmou@quicinc.com>
References: <20250730072725.1433360-1-quic_yongmou@quicinc.com>
Subject: Re: [PATCH RESEND] dt-bindings: phy: Add eDP PHY compatible for
 QCS8300
Message-Id: <175570939464.66459.14512137933312026042.b4-ty@kernel.org>
Date: Wed, 20 Aug 2025 22:33:14 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_100319_479837_0BEC1EF0 
X-CRM114-Status: UNSURE (   4.91  )
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


On Wed, 30 Jul 2025 15:27:25 +0800, Yongxing Mou wrote:
> Add compatible string for the supported eDP PHY on QCS8300 platform.
> QCS8300 have the same eDP PHY with SA8775P.
> 
> 

Applied, thanks!

[1/1] dt-bindings: phy: Add eDP PHY compatible for QCS8300
      commit: ce489635960a6a3fcb0abe0918994f2d8deb02ed

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
