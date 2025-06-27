Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 745E9C7EE30
	for <linux-phy@archiver.kernel.org>; Fri, 27 Jun 2025 00:55:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6XKjoZJ+QDUcMwxJoj5fn3jv5rL3ag9C5b92Zh28rJA=; b=ZauUt5Pq4XiVUb
	85epcMoBgqR33uVUo2ixRKqkXHcA5HGGKmxnFf3zvejWNs8Nys7mvzIF28XB3e/15KMfbmasvCiUn
	eoUN9vxhscs3xVKKGLXpKX6ScwFleS2K32KbilaRPziHQMcXP3nwvpHKqMeGVRSpkwl9XYq8GVUpm
	9v8+Aws7lnQMnq+EmPBo+9ZI4gN00Qa1H48HTLkZcOhJi1cxJ6MMV0PqtOf3fyvNTySBTfv3UAxOI
	ijjvTgz4OMoC8wpEMPYqV3DRq3Wb/tECM+5MfnuByWCrfcOQk4eMgOhl9xDgqRlCcyUKdqlGmJ6R4
	0Ao2WveEPbT2d/i8ySDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUxNj-0000000DGAs-0nC4;
	Fri, 27 Jun 2025 00:55:55 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUxFE-0000000DEYD-2Spp
	for linux-phy@lists.infradead.org;
	Fri, 27 Jun 2025 00:47:08 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 0D3796141F;
	Fri, 27 Jun 2025 00:47:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 441ADC4CEF1;
	Fri, 27 Jun 2025 00:47:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750985227;
	bh=KLVo0i7bzQjuCkB6EyoBn05Oq4kJmck/VNNy4YqEOZY=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=sSCckswSACPcKvyWCKnrG2h1+jZ67FaMJTasx6hSt5ts/L+BJx5oHj93hwJZ8ioc1
	 q3h9KH658ecGogfhe3XXRVBtKn2Y3cPDOwyEUDdJXjYu6YcuqfmadmBFYEwVqo4FTk
	 bBj0+xI3F2R6yR7xFSq5grvz2V7U5IJtHKkdQlr1A2V0z1b3mBmzvqa5OkKMS2kyCa
	 ICcrUiZ1QzYcb1RksKQ79BJqjO97w+XMY2dZHL5ogoPcZGaqTMfVa3qMVma7UvKszx
	 sRGFdQ/z4MFpYMn8PUAdMt3w6hUeZHy3hQEha5BCeJFRITaUCtDN/S+82sB6Aafnwy
	 sPpsHpoJIIKvQ==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 krishna.chundru@oss.qualcomm.com, quic_vbadigan@quicinc.com, 
 quic_nayiluri@quicinc.com, quic_ramkri@quicinc.com, 
 quic_nitegupt@quicinc.com, Mrinmay Sarkar <quic_msarkar@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
In-Reply-To: <20250617-update_phy-v5-0-2df83ed6a373@quicinc.com>
References: <20250617-update_phy-v5-0-2df83ed6a373@quicinc.com>
Subject: Re: (subset) [PATCH v5 0/2] Update PCIe PHY settings for QCS8300
 and SA8775P
Message-Id: <175098522717.106297.12993468962065635081.b4-ty@kernel.org>
Date: Thu, 26 Jun 2025 17:47:07 -0700
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


On Tue, 17 Jun 2025 17:08:18 +0530, Mrinmay Sarkar wrote:
> This Series is to update PCIe PHY settings as per latest
> hardware programming guide and remove max link speed dt
> property for SA8775P PCIe EP.
> 
> 

Applied, thanks!

[1/2] phy: qcom: qmp-pcie: Update PHY settings for QCS8300 & SA8775P
      commit: 03aa45d6c62d6861dcbcff627d88814c0ddecc88

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
