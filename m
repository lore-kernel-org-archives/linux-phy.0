Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47EC0CDD54F
	for <linux-phy@archiver.kernel.org>; Wed, 18 Sep 2024 17:14:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YSUe67iORq/EldzESfEnxZoFa/p4lJwR7IJP8TvR03U=; b=qIicpgjU1bNVtU
	n9BzA1kxFgYavjCIh2/IfhEOvpkOnfSJmq3qSQGvXSrmizfFS+6E+v210LfeF4qEdH0WddlucbY9x
	IoDL9kSF9Hc2q8vqFL8FPOxqp9WZhYIiet1lLqSWC4BkGYxQTE1fBMmph79F75WfGtFDupfu9NFYQ
	xdHKQUNQic2J52FHrSo0Ix7mc1I5IRIAgK1xfzuhRfYUSDCKTTYf52WCgvnwnBwHvLb2ZVXiX7LuN
	+SoCvcX6s6aiTOAyc5UFOtEI3oB1C4dzUEgtVh+rkfbCBYQ3xvaRII/0FhlXBat7nKNFVk/KU9zN/
	iohXrvOPcyZz9hIGA/YQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sqyGY-00000008iLW-42lT;
	Wed, 18 Sep 2024 17:14:58 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sqyGW-00000008iJw-01ZN
	for linux-phy@lists.infradead.org;
	Wed, 18 Sep 2024 17:14:57 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id B7D465C57AB;
	Wed, 18 Sep 2024 17:14:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DA227C4CEC2;
	Wed, 18 Sep 2024 17:14:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726679695;
	bh=se9nDBRBjI7FoM8cZzoIPCEXe0jMmjU5Q1XxWRQ6wUA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hjFh4A1Hi4VkpIC8I2IMLHVXC6pOFVGLcPJu/LY/tYv312M0B/g+aA5eMcOB21d7v
	 pirME89AvXq8f7qy+B6NQifjSFYkUCLG3Kee7FQKBJLcNz/VI/ymALb0BCCKljjpjX
	 Gy8b3WYJAkWTraU6DbWgX2S6z8RFZ6OmA9GFSijBmzek5JfJ68PvdQ2gVmfVdxtL+m
	 vG45JW3AWMI2o+zIBHtpc7pZOK83tK8BIE2Avw4ikCQjFZVBgDP91w7wkSIViXd3w8
	 Z9FqO2F3LLS7nFTPQLEU+8N3QAomNYMbjwZlStqRp2lDIK+Xq55YG8d0Cfpklh+Frx
	 o2Q3ESpMo1dww==
Date: Wed, 18 Sep 2024 12:14:53 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sibi Sankar <quic_sibis@quicinc.com>, linux-phy@lists.infradead.org,
	Rajendra Nayak <quic_rjendra@quicinc.com>,
	Abel Vesa <abel.vesa@linaro.org>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Vinod Koul <vkoul@kernel.org>, linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: add
 missing x1e80100 pipediv2 clocks
Message-ID: <172667969326.1817225.11425040649410740756.robh@kernel.org>
References: <20240916082307.29393-1-johan+linaro@kernel.org>
 <20240916082307.29393-2-johan+linaro@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240916082307.29393-2-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240918_101456_110450_1D82E4C4 
X-CRM114-Status: UNSURE (   9.51  )
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


On Mon, 16 Sep 2024 10:23:05 +0200, Johan Hovold wrote:
> The x1e80100 QMP PCIe PHYs all have a pipediv2 clock that needs to be
> described.
> 
> Fixes: e94b29f2bd73 ("dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Document the X1E80100 QMP PCIe PHYs")
> Cc: Abel Vesa <abel.vesa@linaro.org>
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>  .../devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
