Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA0F3EEB57D
	for <linux-phy@archiver.kernel.org>; Thu,  1 Jan 2026 11:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X6xxHnUoo75g1sUvhot1Cr6jcJLmVQ8a/wlp8+KhNgw=; b=ogGHd9FKucnL5x
	eU8qKHhdNI1yjIntsUSog2lyRvg4DlGOsOHfc1dr/1si4jGG1HpViuOl+MP5XbWCxOBQB95/pw/yv
	GZ0ccpjaPQG+ZjjBdHWWyVLq/1FUkERS6SGMvQHuzzEKntfPDuT/F1JyX3WNFbhb43EQhXXAMNwDo
	1xhFPNhICXmmVQN+zdLZLZyO5ZZzIkukMBOiP0l2yFkRVAUeFpvkndYQD9BuoV75hHdKHlUoJNZUx
	OzbdJCwWzybiZp4ToBqBX+y40ZVe8KDIm5Yy4TXBvhPRh+St83eF42GRebWANE/Ki0vDS7Mry58fa
	pbGsGrS9WiEf/XGVHRQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vbGXh-00000006o62-28qP;
	Thu, 01 Jan 2026 11:08:33 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vbGXf-00000006o4p-17Jg
	for linux-phy@lists.infradead.org;
	Thu, 01 Jan 2026 11:08:32 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 6D937403F7;
	Thu,  1 Jan 2026 11:08:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 78621C116B1;
	Thu,  1 Jan 2026 11:08:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767265710;
	bh=AwUWD4Rn8NzTv29fdPoapfUgAdsV501ocTuKY/9obFU=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=Rykbwn84k6Tb2fb8RKaRl1g52xEoLiN3nlg+0JzHYqdvwTOum/kdBo5ehe6S2ZAY6
	 icof7B3X+4hRD3cXU0EqgunxX0DCw1T999Rg9w+BJjJCd3UqzKYuKoKcjZQoxE155S
	 mueuKh5Fsmpkz6vLxGRLpaNhW2AlFdmS9DJ+vYlIHvl2C69afLXO+f1gGiuCSngn6Q
	 XqIWEnEKPj0RJa349Xipr+wtLA0KmfGiP+8lm37bd4rmhx1PYs6iAujSc8DwAFBblW
	 Huozxo3c/R3AdPkfN5pGeSesUH2ZRHYlBB4eByMcFYRE1BCwlEbj9MCWe/QwHnfE17
	 kV0WDaaABcUdQ==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Dmitry Baryshkov <lumag@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
 Sibi Sankar <sibi.sankar@oss.qualcomm.com>, 
 Rajendra Nayak <quic_rjendra@quicinc.com>, 
 Abel Vesa <abel.vesa@oss.qualcomm.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzk@kernel.org>, 
 Krzysztof Kozlowski <krzk@kernel.org>, Abel Vesa <abelvesa@kernel.org>, 
 stable@vger.kernel.org, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
In-Reply-To: <20251224-phy-qcom-edp-add-missing-refclk-v5-0-3f45d349b5ac@oss.qualcomm.com>
References: <20251224-phy-qcom-edp-add-missing-refclk-v5-0-3f45d349b5ac@oss.qualcomm.com>
Subject: Re: (subset) [PATCH RESEND v5 0/3] phy: qcom: edp: Add missing ref
 clock to x1e80100
Message-Id: <176726570512.201416.549500083715461409.b4-ty@kernel.org>
Date: Thu, 01 Jan 2026 16:38:25 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260101_030831_336622_55DFC9A6 
X-CRM114-Status: GOOD (  10.76  )
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


On Wed, 24 Dec 2025 12:53:26 +0200, Abel Vesa wrote:
> According to documentation, the DP PHY on x1e80100 has another clock
> called ref.
> 
> The current X Elite devices supported upstream work fine without this
> clock, because the boot firmware leaves this clock enabled. But we should
> not rely on that. Also, when it comes to power management, this clock
> needs to be also disabled on suspend. So even though this change breaks
> the ABI, it is needed in order to make we disable this clock on runtime
> PM, when that is going to be enabled in the driver.
> 
> [...]

Applied, thanks!

[1/3] dt-bindings: phy: qcom-edp: Add missing clock for X Elite
      commit: 6b99eeacf6abb1ff2d6463c84e490343f39cf11a
[2/3] phy: qcom: edp: Make the number of clocks flexible
      commit: 7d51b709262c5aa31d2b9cd31444112c1b2dae03

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
