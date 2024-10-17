Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A8FED374AE
	for <linux-phy@archiver.kernel.org>; Thu, 17 Oct 2024 15:37:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VtpYzagttFpbEtxBY2/eWwZbaA/QnjbxWHtTw1WWK5w=; b=NFrErf8GAGY0d0
	3124Nml50hyGQGGP/M0iHUF3Ql0LGeWBvkKhpnyEKxMQj6crPs67U3qyq4THMWaQON54Q4yo/nHzo
	Awh/0hzSE3DErXpa9fvPHOpCClWN/HwSXp2EapUBMp6DHBdIQ4yNOjTzGMcCfcju82Ky65Qn5MVtn
	2PvNXEAOBMw7ZawYriz2L52+g5c1lGlivkbfwCehOi8k+akA0ysSuLhPQmZAaQkSDPbT2F2mOJLKs
	xE2cz1YjTYvV/ipHrSVxUAejKZzXhdt4nJyatfqVVyfQqvcoTfb+rbcVP99fr94LeZLrG4NEncfL9
	pNyBUkJjtlFVfr1hXqGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1SZF-0000000FJO4-0cMt;
	Thu, 17 Oct 2024 15:37:37 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1SXA-0000000FIiP-28LX
	for linux-phy@lists.infradead.org;
	Thu, 17 Oct 2024 15:35:29 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 6985D5C5942;
	Thu, 17 Oct 2024 15:35:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3DF4EC4CEC3;
	Thu, 17 Oct 2024 15:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729179327;
	bh=29C4R99idAS+9fjDuZxCEpSiqsa1ZkROAapiNJBI0K8=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=AH4t8oE50oilu20L51yoRxl7nbn6SldUjiTaCcXf57QuMK2pTEXaLPOAtYsDCXXuX
	 XBWA/mdkeO3HxmpieRLRuWfZM6iJ5cJvnAnNjUr80JDwRbQRqrgNYllKnizEa/vmDe
	 CcNxaYctg+m0AYuqWSoCbaCOi0znCKWAnNMzPfTb+H2lzgS65mKmzp6jS9qROgLeGb
	 iGoi0w9jPl1h6Z+ZAM2BqMQ7gdyBphBg5Di2EQTxVqCuXlDjwE8ION/oNYvmwIBCU2
	 m8d2fH+EqUDuKYI+Hcc9Wcg05J1yeumBa+hwEaFYTnREEFyl5thNflcDtugH+AHL8S
	 VgAsOEi9FwokA==
From: Vinod Koul <vkoul@kernel.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Xin Liu <quic_liuxin@quicinc.com>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>, 
 Bart Van Assche <bvanassche@acm.org>, Andy Gross <agross@kernel.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-scsi@vger.kernel.org, quic_jiegan@quicinc.com, 
 quic_aiquny@quicinc.com, quic_tingweiz@quicinc.com, 
 quic_sayalil@quicinc.com
In-Reply-To: <20241017042300.872963-1-quic_liuxin@quicinc.com>
References: <20241017042300.872963-1-quic_liuxin@quicinc.com>
Subject: Re: (subset) [PATCH v1 0/4] Enable UFS on QCS615
Message-Id: <172917932189.288841.5463892176207403335.b4-ty@kernel.org>
Date: Thu, 17 Oct 2024 21:05:21 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241017_083528_672466_024DD23E 
X-CRM114-Status: UNSURE (   5.94  )
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


On Thu, 17 Oct 2024 12:22:56 +0800, Xin Liu wrote:
> Add UFS support to the QCS615 Ride platform. The UFS host controller and
> QMP UFS PHY hardware of QCS615 are derived from SM6115. Include the
> relevant binding documents accordingly. Additionally, configure UFS-related
> clock, power, and interconnect settings in the device tree.
> 
> 

Applied, thanks!

[1/4] dt-bindings: phy: Add QMP UFS PHY comptible for QCS615
      commit: 6a612c86c8a5805c85fde359aa9c8aac6d5cba7a

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
