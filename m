Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 917F9C3ABCB
	for <linux-phy@archiver.kernel.org>; Sun, 11 May 2025 22:33:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/qemLx2lnepoI+E5tio97PHo7UBySiqz6Yf7YfJSfTQ=; b=Ol4EM7EENVlob+
	Oa9AZKdXlFF70egNLc260oj8ERZPeJDYwQkkyLg/x5ML9gKZkzjmFOcdcgl9joYDFdJILK6wB+1f/
	LC9kuB1w58uVAzax53E5Y6NeJjeaaCP6872sbK0DjWhRn88mL4Xl13rLsoFdaPxXg1tdz5429pA2o
	28wvwjjNgDNQjENexI8SybJrqeyQ/gt8ptwpFgSuCoCca51YNUOQM9ywsaTpA+U4HQajzDPyDN7tP
	TFtwBgxlj7Qz60w2JyMwpFo5LmTjgPnb0lUzKlbrVgL1MVG8xXW3nHurHtp2KAjUwN6IUXPN/mI3/
	k4hqjR0Vu/RPtZktyeCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uEFEl-00000007xVW-0YdG;
	Sun, 11 May 2025 22:33:35 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uEFEf-00000007xUk-1EEH
	for linux-phy@lists.infradead.org;
	Sun, 11 May 2025 22:33:33 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id E80B3A40114;
	Sun, 11 May 2025 22:33:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A1904C4CEE4;
	Sun, 11 May 2025 22:33:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747002807;
	bh=tyYEPPNu6sfrAJok3EZ0IVFCHm0s9MKh4uJtJBRQACI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=H19xtvdw0TQcWQvEBfrPgIeKS8/AmsCdm0HbK3E41dS5+kbg8sr5urTCh3SVZEioN
	 gpRsbfo0G2FS/psALkNgb8CQsFaDtU4Q4pkfi6mAtWaxgyTP7ERgI8D7l6/6SCMaUw
	 B7VfwXwAZHBSswC/MP7+wLd5mBAjQ17xANGKf6IG1uXuTmka5qxwd9IWxZsw97mXP3
	 rwo2vJRfkhJ4NMQ2U/I/p546AjGJ6csbjNbENJCNTdfFP40MOwaOjYVcNXDqvZ4mfH
	 UXUc2ka4QoGWtqYH9gcAzAtK8ZbdIGoeNgbTLh+VTeunkJTD75LO4aGpoK+0vWGzO7
	 vEkb2lVdFApAg==
Date: Sun, 11 May 2025 17:33:21 -0500
From: Bjorn Andersson <andersson@kernel.org>
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, dmitry.baryshkov@linaro.org, 
	neil.armstrong@linaro.org, abel.vesa@linaro.org, manivannan.sadhasivam@linaro.org, 
	lpieralisi@kernel.org, kw@linux.com, bhelgaas@google.com, konradybcio@kernel.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org, quic_qianyu@quicinc.com, 
	quic_krichai@quicinc.com, quic_vbadigan@quicinc.com
Subject: Re: [PATCH v5 0/6] pci: qcom: Add QCS8300 PCIe support
Message-ID: <cyapaa36fotqxoyhc554m74uw4nah52j3ymaay24k3bfjd2fgw@o57nbyo3wyaq>
References: <20250507031019.4080541-1-quic_ziyuzhan@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250507031019.4080541-1-quic_ziyuzhan@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250511_153329_471244_59044966 
X-CRM114-Status: GOOD (  18.45  )
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

On Wed, May 07, 2025 at 11:10:13AM +0800, Ziyue Zhang wrote:
> This series adds document, phy, configs support for PCIe in QCS8300.
> The series depend on the following devicetree.
> 
> This series depends on PCIe SMMU for QCS8300:
> https://lore.kernel.org/all/dc535643-235d-46e9-b241-7d7b0e75e6ac@oss.qualcomm.com/

I've picked this dependency now, but please in the future include such
dependent patches into a single series (keep original author and
signed-off-by, add your signed-off-by last).

Regards,
Bjorn

> 
> Have follwing changes:
> 	- Add dedicated schema for the PCIe controllers found on QCS8300.
> 	- Add compatible for qcs8300 platform.
> 	- Add configurations in devicetree for PCIe0, including registers, clocks, interrupts and phy setting sequence.
> 	- Add configurations in devicetree for PCIe1, including registers, clocks, interrupts and phy setting sequence.
> 
> Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
> ---
> Changes in v5:
> - Add QCOM PCIe controller version in commit msg (Mani)
> - Modify platform dts change subject (Dmitry)
> - Update bindings to fix the dtb check errors.
> - Remove qcs8300 compatible in driver, do not need it (Dmitry)
> - Fixed compile error found by kernel test robot
> - Link to v4: https://lore.kernel.org/linux-phy/20241220055239.2744024-1-quic_ziyuzhan@quicinc.com/
> 
> Changes in v4:
> - Add received tag
> - Fixed compile error found by kernel test robot
> - Link to v3: https://lore.kernel.org/lkml/202412211301.bQO6vXpo-lkp@intel.com/T/#mdd63e5be39acbf879218aef91c87b12d4540e0f7
> 
> Changes in v3:
> - Add received tag(Rob & Dmitry)
> - Update pcie_phy in gcc node to soc dtsi(Dmitry & Konrad)
> - remove pcieprot0 node(Konrad & Mani)
> - Fix format comments(Konrad)
> - Update base-commit to tag: next-20241213(Bjorn)
> - Corrected of_device_id.data from 1.9.0 to 1.34.0.
> - Link to v2: https://lore.kernel.org/all/20241128081056.1361739-1-quic_ziyuzhan@quicinc.com/
> 
> Changes in v2:
> - Fix some format comments and match the style in x1e80100(Konrad)
> - Add global interrupt for PCIe0 and PCIe1(Konrad)
> - split the soc dtsi and the platform dts into two changes(Konrad)
> - Link to v1: https://lore.kernel.org/all/20241114095409.2682558-1-quic_ziyuzhan@quicinc.com/
> 
> Ziyue Zhang (6):
>   dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Update pcie phy bindings
>     for sa8775p
>   dt-bindings: PCI: qcom,pcie-sa8775p: document qcs8300
>   arm64: dts: qcom: qcs8300: enable pcie0
>   arm64: dts: qcom: qcs8300-ride: enable pcie0 interface
>   arm64: dts: qcom: qcs8300: enable pcie1
>   arm64: dts: qcom: qcs8300-ride: enable pcie1 interface
> 
>  .../bindings/pci/qcom,pcie-sa8775p.yaml       |  26 +-
>  .../phy/qcom,sc8280xp-qmp-pcie-phy.yaml       |   4 +-
>  arch/arm64/boot/dts/qcom/qcs8300-ride.dts     |  80 +++++
>  arch/arm64/boot/dts/qcom/qcs8300.dtsi         | 297 +++++++++++++++++-
>  4 files changed, 396 insertions(+), 11 deletions(-)
> 
> 
> base-commit: a269b93a67d815c8215fbfadeb857ae5d5f519d3
> -- 
> 2.34.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
