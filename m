Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5AB73CA5FE6
	for <linux-phy@archiver.kernel.org>; Sat,  3 Oct 2026 09:36:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EOepfcCkcpIUQiT8kZWFfcrCO6mjcPdvkQtdqLbMStI=; b=UYamD2PeEbVOqA
	APPHtP1y/pJCPuCiB5MZ1CiInDS02qJcF6jWrMrbC+/zvH5ORL6kqLoXeKV8Gs0vu9zHooNCBEgEq
	ElSTxLknzxu5uXxf7+BAtVLHxQrZqoriZELVH75xuT3vpCiVTjsubBB0o9os+kZSCeq0b8hfVO/3T
	IBSSK7eFCIMgnsoJLF/SiqiRO/L4FMHMQ1YOvnR0/qmqxszqjvifz2zMJS6OWKNGbckH9YOSpG1K6
	9NO0sMBgSt0vptgnE4kScGXWRCqcJmicRdmymNQTz7SxOTHkxnZKv8HBfTi3dxWZrcuuV5Wo/zwG9
	Gas1MzGqc15EieEdTkCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCwAb-0000000DHpx-0JnB;
	Sat, 03 Oct 2026 09:36:41 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCwAa-0000000DHpN-0Uxs
	for linux-phy@lists.infradead.org;
	Sat, 03 Oct 2026 09:36:40 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 4593160A56;
	Sat,  3 Oct 2026 09:36:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 441191F008A1;
	Sat,  3 Oct 2026 09:36:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791020199;
	bh=eJkRI3KjrF6F4d8KvcZNrKGIF0SYoOwizF1vsvhHtI8=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=h7YHiPxx9B8gN/kh2ES+BjDaeWQX31eeB98SXe/nygubROM04Ic48iWgVvXcs2ebA
	 8D9ZlVk5g7awkCg2qA4Ifys4xHmvNKrWoCHkS9ni+yT/UToQZoyiyTSVUKK60BD3Sz
	 BSlhTlN0aOaYhvtPzbSmoC93KtaXsuOJWplSEvPw2OwWyhrEPmJmv7LHBe3vgiUtMw
	 Pb66CjETebrbBWG1JDtwZINGE0c/uTvr1xRtUu7SFAOFjUWqrmD+I1drxOueLKFHZb
	 zmnxE3+QM4pORd8yg8zJ7uUXE1uIQWU2+40EMzyMQhP9ewwvzR8K2mlV/iuXSyUj+X
	 hQaX6AZw+QVJw==
From: Vinod Koul <vkoul@kernel.org>
To: krzk+dt@kernel.org, robh@kernel.org, conor+dt@kernel.org, 
 neil.armstrong@linaro.org, mani@kernel.org, 
 Nitin Rawat <nitin.rawat@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-phy@lists.infradead.org, 
 Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
In-Reply-To: <20260917080622.824253-1-nitin.rawat@oss.qualcomm.com>
References: <20260917080622.824253-1-nitin.rawat@oss.qualcomm.com>
Subject: Re: [PATCH V3] dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: Add
 QMP UFS PHY compatible for Maili
Message-Id: <179102019592.199361.5288180593592732551.b4-ty@kernel.org>
Date: Sat, 03 Oct 2026 11:36:35 +0200
MIME-Version: 1.0
X-Mailer: b4 0.14.3
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


On Thu, 17 Sep 2026 13:36:22 +0530, Nitin Rawat wrote:
> Document the QMP UFS PHY compatible for Qualcomm Maili to support
> physical layer functionality for UFS found on the SoC. Use fallback to
> indicate the compatibility of the QMP UFS PHY on the Maili with that on
> the Hawi.
> 
> 

Applied, thanks!

[1/1] dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: Add QMP UFS PHY compatible for Maili
      commit: 48afd2d3c85aebe3303b42db30bba2963127be63

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
