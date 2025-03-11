Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B880DC28B30
	for <linux-phy@archiver.kernel.org>; Tue, 11 Mar 2025 11:49:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=flQayswrcZ3G5ruCYAsBxXRgRZ56XvFmWYsnlFRi3vQ=; b=1iPB9P6piHtw57
	myVQidECWUDQLLw2pZxUFGONogtwnPU+PbBwnw4wHXJfFKZwhFDpLIYUCOGXf83GUwzieph2G4IHp
	PgqOaqwneNAapZYyWYwydXpA1zs5CtImgmsgQm1iyCzgvw7oPFVNOFHzbwbT2sPo7AjSTa/SCLZEC
	Gz0Dpn7OMbu4OoB69OyZ+Y64ABjNKV9qt7hFYyi1syNqFxK6KDtiK6j/JU5/WOLvW/bX+aJ9SAvDC
	h5loj/vq6aPZNlFiHGhMpIRiFCZDBuQk0OHNeS+jchgBhflOSle+Pv9lbJp13VmdWzKOc4lY4IOxZ
	33Io377m1+l4Mne3vU1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1try6o-00000005Wyy-226f;
	Tue, 11 Mar 2025 11:49:18 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1try4o-00000005WdA-2jQH
	for linux-phy@lists.infradead.org;
	Tue, 11 Mar 2025 11:47:16 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 56CC85C5DF0;
	Tue, 11 Mar 2025 11:44:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0A590C4CEE9;
	Tue, 11 Mar 2025 11:47:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741693633;
	bh=vKafTPWUZwnre114AfisoCJLv7ctbKCeoyZ23jWCfP4=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=QAjSqMl+Bocy4nrBZxi3De4ggP6nCKCuyti0A6sD7KTDHBXXaVnnU3oZ+2OyJFvPQ
	 KD84WVjtZJ6s0+1lcPsO7dcRfu8BqlAQYglNvW4lJ1CIzWACXDF/R4JKx6RQnLs0qo
	 kwRlgdSL1k75S+naDGcHqgALXK/obCIHLw2xFaNxuNGqCTxBzlHToBFseN+aUzfmSl
	 rys6MHzRrxN5SSqM/tU47ZWN6dE1ijgaVwGc6qV/2xLnYSGu8tl5Q19PBTA151H1Ua
	 ZKUi1WCTzt4GJdbO54KfuPLhwTfc2a58dG2YE+WXfMpxRjzLE9GRHSeX/oQ4DJrwSG
	 GoMQWM2l3atDw==
From: Vinod Koul <vkoul@kernel.org>
To: bhelgaas@google.com, lpieralisi@kernel.org, kw@linux.com, 
 manivannan.sadhasivam@linaro.org, robh@kernel.org, krzk+dt@kernel.org, 
 conor+dt@kernel.org, kishon@kernel.org, andersson@kernel.org, 
 konradybcio@kernel.org, dmitry.baryshkov@linaro.org, 
 neil.armstrong@linaro.org, abel.vesa@linaro.org, 
 Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Cc: quic_qianyu@quicinc.com, quic_krichai@quicinc.com, 
 johan+linaro@kernel.org, linux-arm-msm@vger.kernel.org, 
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
In-Reply-To: <20250310063103.3924525-1-quic_ziyuzhan@quicinc.com>
References: <20250310063103.3924525-1-quic_ziyuzhan@quicinc.com>
Subject: Re: (subset) [PATCH v4 0/8] pci: qcom: Add QCS8300 PCIe support
Message-Id: <174169362764.507381.11220476979416149386.b4-ty@kernel.org>
Date: Tue, 11 Mar 2025 12:47:07 +0100
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250311_044714_740613_B1D61743 
X-CRM114-Status: UNSURE (   8.19  )
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


On Mon, 10 Mar 2025 14:30:55 +0800, Ziyue Zhang wrote:
> This series adds document, phy, configs support for PCIe in QCS8300.
> The series depend on the following devicetree.
> 
> PCIe SMMU:
> https://lore.kernel.org/all/20250206-qcs8300-pcie-smmu-v1-1-8eee0e3585bc@quicinc.com/
> 
> Have follwing changes:
> 	- Document the QMP PCIe PHY on the QCS8300 platform.
> 	- Add dedicated schema for the PCIe controllers found on QCS8300.
> 	- Add compatible for qcs8300 platform.
> 	- Add configurations in devicetree for PCIe0, including registers, clocks, interrupts and phy setting sequence.
> 	- Add configurations in devicetree for PCIe1, including registers, clocks, interrupts and phy setting sequence.
> 
> [...]

Applied, thanks!

[1/8] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Document the QCS8300 QMP PCIe PHY Gen4 x2
      commit: e46e59b77a9e6f322ef1ad08a8874211f389cf47
[2/8] phy: qcom-qmp-pcie: add dual lane PHY support for QCS8300
      commit: ebf198f17b5ac967db6256f4083bbcbdcc2a3100

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
