Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46145C28B30
	for <linux-phy@archiver.kernel.org>; Mon, 10 Mar 2025 19:59:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qbAmgGK6ePRg0UADNv1vqdBM4NXY/Ydl2d5SnF3l658=; b=ZCkSpU1vTkUJ6e
	NhMqz80Ef8u4TsAxKDWezLfBUvGwhcjDaRvMwle/6m22XACU3jkQTKs6gRO0FyYbeGe9OD9/yP0VG
	FxHvzqKkUuvZG/nAFDoiefS0RjfH3ZxBXdjsKTGyzo9wX4S1DKESzUixZdYceEjunGrTYcGACnefX
	dAVwAx/PE1ibZSudfaIW9Jjgy9voAs92yGATAvXv3vnko0mXMOx7iR8iIxaIZUuPDj3wS6BweEgZw
	F4KKLG6rzbZGVy00tye7bWn0XWffNq+dZM/CGyK9Rc8O1Vu3gkLyUcJc6Mss0d+zdZXEmSc9FxtvY
	pDO2qJHekSN6gCFO9S7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trjHW-00000003n1u-35B4;
	Mon, 10 Mar 2025 19:59:22 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trjHU-00000003n1H-3b95
	for linux-phy@lists.infradead.org;
	Mon, 10 Mar 2025 19:59:22 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id D12C0A46225;
	Mon, 10 Mar 2025 19:53:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1DCE4C4CEE5;
	Mon, 10 Mar 2025 19:59:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741636759;
	bh=YqJdrfcQL5bnoaK4e6HG8xxxcS9OpHaA0+10lzP6WRE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ELSA4IkdAyOc/R4oignOVi0GSH5WimVosRrPkHmnUNzvU44ucu6Rug24nJlBen4BI
	 1SF95b24TYr9ya7oNj4w52pva7KmVNlMOLTsLjBQPcf1UzbWKqnwgG4OWNP27/QWP5
	 p4BGyNQ+LBcNVkESGVqU9kONuHjGgfco3EVks/TQLMkYqoys7CsEuUmMnxe1cMp0ca
	 raDxBZ63kYZCr5JZ7KsdKl6OmZNez1viGEA04OnkLX+1mXJEX4VF5pidq87HUctduw
	 dXMpXuU71XQG8Osmxn15fw2FyTDcYGhLrzhB3ARoBmniUTfvt/2EEn/P2tWl71z3W6
	 CS8lF90dLu3PA==
Date: Tue, 11 Mar 2025 01:29:15 +0530
From: Vinod Koul <vkoul@kernel.org>
To: "Wenbin Yao (Consultant)" <quic_wenbyao@quicinc.com>
Cc: kishon@kernel.org, p.zabel@pengutronix.de, dmitry.baryshkov@linaro.org,
	abel.vesa@linaro.org, quic_qianyu@quicinc.com,
	neil.armstrong@linaro.org, manivannan.sadhasivam@linaro.org,
	quic_devipriy@quicinc.com, konrad.dybcio@oss.qualcomm.com,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 0/2] phy: qcom: qmp-pcie: Add PCIe PHY no_csr reset
 support
Message-ID: <Z89Ek8Y7TRSgTuMg@vaman>
References: <20250226103600.1923047-1-quic_wenbyao@quicinc.com>
 <e556e3c9-93ee-494a-be35-9353dc5718e4@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e556e3c9-93ee-494a-be35-9353dc5718e4@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250310_125921_029177_4DC86618 
X-CRM114-Status: GOOD (  23.52  )
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

On 10-03-25, 16:58, Wenbin Yao (Consultant) wrote:
> On 2/26/2025 6:35 PM, Wenbin Yao wrote:
> > The series aims to skip phy register programming and drive PCIe PHY with
> > register setting programmed in bootloader by simply toggling no_csr reset,
> > which once togglled, PHY hardware will be reset while PHY registers are
> > retained.
> > 
> > First, determine whether PHY setting can be skipped by checking
> > QPHY_START_CTRL register and the existence of nocsr reset. If it is
> > programmed and no_csr reset is supported, do no_csr reset and skip BCR
> > reset which will reset entire PHY.
> > 
> > This series also remove has_nocsr_reset flag in qmp_phy_cfg structure and
> > decide whether the PHY supports nocsr reset by checking the existence of
> > nocsr reset in device tree.
> > 
> > The series are tested on X1E80100-QCP and HDK8550.
> > 
> > The commit messages of this patchset have been modified based on comments
> > and suggestions.
> > 
> > Changes in v5:
> > - Add a check whether the init sequences are exist if the PHY needs to be
> >    initialized to Patch 2/2.
> > - Link to v4: https://lore.kernel.org/all/20250220102253.755116-1-quic_wenbyao@quicinc.com/
> > 
> > Changes in v4:
> > - Add Philipp's Reviewed-by tag to Patch 1/2.
> > - Use PHY instead of phy in comments in Patch 2/2.
> > - Use "if (qmp->nocsr_reset)" instead of "if (!qmp->nocsr_reset)" in
> >    function qmp_pcie_exit for readability in Patch 2/2.
> > - Use goto statements in function qmp_pcie_power_on and qmp_pcie_power_off
> >    for readability in Patch 2/2.
> > - Refine the comment of why not checking qmp->skip_init when reset PHY in
> >    function qmp_pcie_power_off in Patch 2/2.
> > - Link to v3: https://lore.kernel.org/all/20250214104539.281846-1-quic_wenbyao@quicinc.com/
> > 
> > Changes in v3:
> > - Replace devm_reset_control_get_exclusive with
> >    devm_reset_control_get_optional_exclusive when get phy_nocsr reset
> >    control in Patch 1/2.
> > - Do not ignore -EINVAL when get phy_nocsr reset control in Patch 1/2.
> > - Replace phy_initialized with skip_init in struct qmp_pcie in Patch 2/2.
> > - Add a comment to why not check qmp->skip_init in function
> >    qmp_pcie_power_off in Patch 2/2.
> > - Link to v2: https://lore.kernel.org/all/20250211094231.1813558-1-quic_wenbyao@quicinc.com/
> > 
> > Changes in v2:
> > - Add Abel's and Manivannan's Reviewed-by tag to Patch 1/2.
> > - Refine commit msg of Patch 2/2.
> > - Link to v1: https://lore.kernel.org/all/20250121094140.4006801-1-quic_wenbyao@quicinc.com/
> > 
> > Konrad Dybcio (1):
> >    phy: qcom: pcie: Determine has_nocsr_reset dynamically
> > 
> > Qiang Yu (1):
> >    phy: qcom: qmp-pcie: Add PHY register retention support
> > 
> >   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 86 +++++++++++++++++-------
> >   1 file changed, 63 insertions(+), 23 deletions(-)
> > 
> > 
> > base-commit: bcf2acd8f64b0a5783deeeb5fd70c6163ec5acd7
> 
> Hi, do you have any futher comments?

Patches lgtm, It would be great if this was tested by someone as well...
Abel, Stephan, Neil can you folks test this and provide T-B

I am also concerned about bootloader assumptions esp if the Qcom boot
chain is skipped

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
