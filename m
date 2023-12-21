Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8FD8CC35274
	for <linux-phy@archiver.kernel.org>; Thu, 21 Dec 2023 17:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L9ebXHuuI7UA2Oz5lDWxO9zrRrWUnlwYVRjEIn4KiTg=; b=KjQPfwc/mI7Boq
	MjJQhEZbkZ99EHnQ1E6FZrErxZwZs8ypUigNBkdBng6PzEx0/rF+8lwZkJwE34CYTnT55wHuGo/ZB
	0b7f+BLxELG1jlNwQPsQVhNPty7fx+NwpVkoxqdrfp+zfgxtxwW13R1aIWMNG6HgAANK0ZG7dcwXY
	jgdgzyGgV/XvNh2DdmF4LQzOQYDKScmSx/T/0eFYfmVSBRQ0MdmxY8nXDhGW3jGptAITbglI3qCVC
	hDenV2zW1D6GohnABdZKyA4iqgFu4i6d/OfLDrKbhaQ28ULLMYXwftgqlpxcMcIw8IUUToM74uq+h
	2wWjyTxfko3QD2YS0OZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGMfi-003c07-15;
	Thu, 21 Dec 2023 17:17:22 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGMfb-003bb6-2o
	for linux-phy@lists.infradead.org;
	Thu, 21 Dec 2023 17:17:20 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 7EB8ACE1FF1;
	Thu, 21 Dec 2023 17:15:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EA09AC433C8;
	Thu, 21 Dec 2023 17:15:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703178950;
	bh=kvAImrMB2BLFEbE4tN+YXRJKctb+m1F/aV1dMuU9wzs=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=QdSCBCOb88u04vdEqFMyZzTa4QCQxPnjRPxuXFZARaGszL6Gi6Vg/x2zrEbL0i5iz
	 4/6yTdiVUG+9T1snRTak9PfErpumLjVhEUoaotUbQhi/jWC3B9ziSs1LpdTNt5PXjD
	 WzOGd/wVJk59C068xNmoSn+PHdlnF+WYgTR2ydbO17BelMyXIhbuwkM2PkpFDq/ZSm
	 ZmCxNwE8jh/wk0b3wdciYnRdcNBScsoF2zuOAoVRkap4YDlAqvWwhKeiXxLxX4AnPx
	 OSYFSA4c8J84anDOvN9twhA4XhvVQ1wDuo+/H8kDckKTApi8Kz5Czx/7jJkR6bliy8
	 CmoC6R2a+fmdA==
From: Vinod Koul <vkoul@kernel.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Johan Hovold <johan+linaro@kernel.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: stable@vger.kernel.org
In-Reply-To: <20231218130553.45893-1-krzysztof.kozlowski@linaro.org>
References: <20231218130553.45893-1-krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy: fix
 path to header
Message-Id: <170317894553.712473.7175140339294979943.b4-ty@kernel.org>
Date: Thu, 21 Dec 2023 22:45:45 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231221_091716_140521_2DEEDD8C 
X-CRM114-Status: UNSURE (   4.59  )
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


On Mon, 18 Dec 2023 14:05:53 +0100, Krzysztof Kozlowski wrote:
> Fix the path to bindings header in description.
> 
> 

Applied, thanks!

[1/1] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy: fix path to header
      commit: 21a1d02579ae75fd45555b84d20ba55632a14a19

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
