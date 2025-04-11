Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 751B9C369A8
	for <linux-phy@archiver.kernel.org>; Fri, 11 Apr 2025 12:21:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XX6dRshfuJYhq+vnxZNJu3zqf9jah9h/07l9cb8SL3o=; b=21SkfR6oS9HaHN
	IPNgidgebwPl7de4Nw8nNizJIQBXhJLx+c7yti4E5wAsmRPKk2dQI1k14JRDq2WqbJ4dr8XetaB7l
	ockRDCAia67QQqLUwB0jgJJFsQT40o0zeziBhML2kVKiGLHRX9tec4Rven02QawG2ckTxCRsVcvVs
	6G3ZXGL7rKwaHs2PBJ4bXRkWl2qf/qmfzk4rEJJghvV1GFxc2wwdxPdIUUVFUEFkiVWCXOm14W+O9
	WgJRYqI7/Pv4EycrtlC+u9rtFdnEoW5l/Y3sOIe56dHDmuvK0UQmSTGiz3+zvtSnQVukSX4tyTNhA
	2NjmvAQsZobvAc8y1CKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u3DO4-0000000DihN-0tQ9;
	Fri, 11 Apr 2025 12:21:36 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u3DDx-0000000DgfZ-324D
	for linux-phy@lists.infradead.org;
	Fri, 11 Apr 2025 12:11:10 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 716AEA4AADE;
	Fri, 11 Apr 2025 12:05:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6FDF1C4CEE2;
	Fri, 11 Apr 2025 12:11:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744373468;
	bh=d+FLiWuinx/mnrMg1djQFjn220kbb6rhpINiatKBBLA=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=gx+YEbdMFS3jQ3nJQJAkyi7Q6MKRLcUIyVT96m3Tpp6fTNCHVQsqKRdTyJIbF3JW5
	 W/K8IstBhsDJPWKFat640JKteq+vINh8/ee/PvKVr29MOxDAwneKsfF6PvZJTw744p
	 gJshN5dI7YngxelyDks/Wvx4Jn3IFswA067NQweRE658r9WJeYCa252GwO1fz5Zc0q
	 wCWoGJTxe/b2uVTCM7YRZwSO7+KyfnFIB7rAL6ngTwmINeLIPXFZQK/8JLv833Hk3p
	 llPLLOcCrgmX456j8uz0T7Lg9X3c6K4NV9yR/coVss3tDoqdcpXyLvdpQvazFA7vg6
	 yEss+5665JJ+w==
From: Vinod Koul <vkoul@kernel.org>
To: kishon@kernel.org, p.zabel@pengutronix.de, abel.vesa@linaro.org, 
 quic_qianyu@quicinc.com, neil.armstrong@linaro.org, 
 manivannan.sadhasivam@linaro.org, quic_devipriy@quicinc.com, 
 konrad.dybcio@oss.qualcomm.com, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Dmitry Baryshkov <lumag@kernel.org>, Wenbin Yao <quic_wenbyao@quicinc.com>
Cc: krishna.chundru@oss.qualcomm.com, quic_vbadigan@quicinc.com, 
 quic_mrana@quicinc.com, quic_cang@quicinc.com
In-Reply-To: <20250411113120.651363-1-quic_wenbyao@quicinc.com>
References: <20250411113120.651363-1-quic_wenbyao@quicinc.com>
Subject: Re: [PATCH v7 0/2] phy: qcom: qmp-pcie: Add PCIe PHY no_csr reset
 support
Message-Id: <174437346409.673939.2537740696548096560.b4-ty@kernel.org>
Date: Fri, 11 Apr 2025 17:41:04 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250411_051109_835169_512E9EEB 
X-CRM114-Status: UNSURE (   6.00  )
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


On Fri, 11 Apr 2025 19:31:18 +0800, Wenbin Yao wrote:
> The series aims to skip phy register programming and drive PCIe PHY with
> register setting programmed in bootloader by simply toggling no_csr reset,
> which once togglled, PHY hardware will be reset while PHY registers are
> retained.
> 
> First, determine whether PHY setting can be skipped by checking
> QPHY_START_CTRL register and the existence of nocsr reset. If it is
> programmed and no_csr reset is supported, do no_csr reset and skip BCR
> reset which will reset entire PHY.
> 
> [...]

Applied, thanks!

[1/2] phy: qcom: pcie: Determine has_nocsr_reset dynamically
      commit: ea57d7fe4f5af517b5ce91fdff96cc33be932690
[2/2] phy: qcom: qmp-pcie: Add PHY register retention support
      commit: 0cc22f5a861c3149171485349dafac3047212a5d

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
