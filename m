Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43D81D37E39
	for <linux-phy@archiver.kernel.org>; Wed, 14 Jan 2026 14:01:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=loBu1qZTq1mQp5bg9Os2w4PJr7Wm2CcUkMle/kh6gDI=; b=yJ2AbryZE9VaFl
	1vRpIjdr/hgVLU+UzzwjsNGBmUw7rVjT/MaqHaRUdlsyCgBBlMoOmX9y3I/tqrZGYZko5QMsX5UPZ
	ISGhEOrae8jZB4s4Fz9oSfGu4BdwMZp8/z5t6XlLpIjJwXrQeYybUliZ9G0gO8KFvG0jQCRchq/bg
	BefREMmo2E8sS/ltOlExE0o1bO2AOPfcR9z0rcVxLxcX+4D4vTTZkMXLkBl/S0QWJe4CKUy6PUETs
	Qs6+Wi8wpdbSw36mR8EP8NCh6NCt4lIV5pckl1bUhoxaafF8484aOINu4xgcRaOFAwGdhoGT/zGX6
	KSWYFElbY2fheQz7QPIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg1RU-00000009RM6-04OZ;
	Wed, 14 Jan 2026 14:01:48 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg1RS-00000009RLM-3XtH
	for linux-phy@lists.infradead.org;
	Wed, 14 Jan 2026 14:01:46 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 3486B600BB;
	Wed, 14 Jan 2026 14:01:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 823AEC4CEF7;
	Wed, 14 Jan 2026 14:01:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768399305;
	bh=z1PZ3HGUC5DzEECbp98GiBNXztyK9h1Ncbkz9ixmhkY=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=UMkJHL6w8+MAAkORQs/QfOtfPC910oZC4CxhNpE3Kxp3RKLxVA8GGfwQQYrQT+13d
	 XG4XDGawsL3/W8fDzTDwb0ln22oxoGEal6askORJYSplzm36hQW7zzlaT/FPBBXajs
	 gBWAvJz+jLmZUafa4lNj8vNHjp48KrJ3cSNEbMQJWDOYO5r4qnSXTrRTHqt3BTzrOL
	 IYl0Hz9VSujZy3xcgK8zIZl+GnGhk/lZhceRDifC4+AVf6R+7nPiwpVFIWSsbOWVYc
	 +eTVgnCZ1rQAQ9u2NVClJrRE16XtAl7qYutWpCp+rU1JCahkPLNp3t6YI4NJeDppqp
	 ywZNhBLo3McDw==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Dmitry Baryshkov <lumag@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Krzysztof Kozlowski <krzk@kernel.org>, 
 Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20251017203438.744197-1-krishna.kurapati@oss.qualcomm.com>
References: <20251017203438.744197-1-krishna.kurapati@oss.qualcomm.com>
Subject: Re: [PATCH] phy: qcom: qmp-combo: Add polarity inversion support
 for SAR2130P
Message-Id: <176839930316.937923.6727107841048707223.b4-ty@kernel.org>
Date: Wed, 14 Jan 2026 19:31:43 +0530
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


On Sat, 18 Oct 2025 02:04:38 +0530, Krishna Kurapati wrote:
> On SAR2130P QXR Platform, the CC Lines are inverted and the lane
> programming is to be done reverse compared to other targets.
> 
> As per the HW specifics, Bit-2 of TYPEC_CTRL register indicates
> port select polarity. This bit is to be set for SAR2130P.
> 
> 
> [...]

Applied, thanks!

[1/1] phy: qcom: qmp-combo: Add polarity inversion support for SAR2130P
      commit: 24991bfbbd84d68d5710e1563752047914db941a

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
