Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1317C25B75
	for <linux-phy@archiver.kernel.org>; Mon,  3 Jun 2024 14:27:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ULkwCxmGhK1cAINaXrEB7JYQreQvhiP5VQ7s8aocy6I=; b=i9KWzwktgmm2MC
	ClcapPDm/KgVwsLSU+NOa17AXlkyDVl0WKAO2auAVVUoZ/4CN3sw7TUEFiPUK4Ahabjk3JU/5Df6Z
	WXz2uAQpeTMdh/2K2kl2j6FzF6Yz22Lb9T9HAa6PJY3yY8hNiSW/MQ8btSEwCWXg50RplfStJIsq+
	SAb4GnnJ9tWRSiaUiXVvtkvQM/HCR0qtdG27IZ7KzdBBh9gc7/3GcBwTK7hRxGcniIbup0224Sjxr
	voHnL6YY9WWtGHOL8twzt7xP9pThblsAuHDOnTjejRFVanORlsaobINs3zhFh1kCB/lpv4OeBIoX4
	UozqLL/juhpJU5ONr6hA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sE8eN-0000000H44M-184z;
	Mon, 03 Jun 2024 14:27:03 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sE8eK-0000000H42E-0yyW
	for linux-phy@lists.infradead.org;
	Mon, 03 Jun 2024 14:27:01 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id D2EF8CE0D4E;
	Mon,  3 Jun 2024 14:26:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B9FCEC2BD10;
	Mon,  3 Jun 2024 14:26:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717424811;
	bh=axgOU2f60G0C43RP1CrPbQ4L1znDGnP/69ACpWN0I38=;
	h=From:To:In-Reply-To:References:Subject:Date:From;
	b=nziQ/mVXp7YCNa7p4zsni3uaJ3zs9YhugkQBFdbHAS/9jJ8XhXpqeimMgVzz0cxlq
	 C7c4Hy89R/6ZW4SyO4GmPdkf/y05AbxgcXYNONDPNFcbYvb6bhYjxIq5LTYqbOhriO
	 7A74qQWsotYogJsqml0n7f01l8Upy2ligRZrIgMs1byEiZw7yg3FcpEGsgPoQZZSAy
	 r/7ei65O8uBcEGznjUL53Un+QiqZclw4v0zmpxuUk6djf543JXoYJHgRcSC3xn/D9o
	 JTsVFdLlPQnD+FGKiZTnoIveEvKQC+IAY4NoHZ6Hysu9BYZV1gAkcIwQfBFbEKRvlR
	 +IWGh2HFYtxrg==
From: Vinod Koul <vkoul@kernel.org>
To: kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
 conor+dt@kernel.org, dmitry.baryshkov@linaro.org, neil.armstrong@linaro.org, 
 quic_msarkar@quicinc.com, quic_qianyu@quicinc.com, abel.vesa@linaro.org, 
 quic_cang@quicinc.com, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, devi priya <quic_devipriy@quicinc.com>
In-Reply-To: <20240516032436.2681828-1-quic_devipriy@quicinc.com>
References: <20240516032436.2681828-1-quic_devipriy@quicinc.com>
Subject: Re: [PATCH V4 0/4] Add support for PCIe PHY in IPQ9574
Message-Id: <171742480737.106728.8115956533813966138.b4-ty@kernel.org>
Date: Mon, 03 Jun 2024 19:56:47 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240603_072700_502191_B4D2DD63 
X-CRM114-Status: UNSURE (   7.18  )
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


On Thu, 16 May 2024 08:54:32 +0530, devi priya wrote:
> This series adds support for a single-lane and two-lane PCIe PHYs
> found on Qualcomm IPQ9574 platform.
> 
> [V4]
> 	Picked up the R-b/A-b tags.
> 	Split the phy driver and headers to individual patches.
> [V3]
> 	https://lore.kernel.org/linux-arm-msm/20240512082541.1805335-1-quic_devipriy@quicinc.com/
> [V2]
> 	https://lore.kernel.org/linux-arm-msm/20230519085723.15601-1-quic_devipriy@quicinc.com/
> [V1]
> 	https://lore.kernel.org/linux-arm-msm/20230421124150.21190-1-quic_devipriy@quicinc.com/
> 
> [...]

Applied, thanks!

[1/4] dt-bindings: phy: qcom,ipq8074-qmp-pcie: Document the IPQ9574 QMP PCIe PHYs
      commit: 29f09daab910c797f5468afda91a51e3e29de7ee
[2/4] phy: qcom-qmp: Add missing offsets for Qserdes PLL registers.
      commit: f1aaa788b997ba8a7810da0696e89fd3f79ecce3
[3/4] phy: qcom-qmp: Add missing register definitions for PCS V5
      commit: 71ae2acf1d7542ecd21c6933cae8fe65d550074b
[4/4] phy: qcom-qmp-pcie: Add support for IPQ9574 g3x1 and g3x2 PCIEs
      commit: 2f2f5c13cc5ea87f1dd2debfd06fe5f624e5c0fd

Best regards,
-- 
Vinod Koul <vkoul@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
