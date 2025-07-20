Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C1BFC83F22
	for <linux-phy@archiver.kernel.org>; Sun, 20 Jul 2025 23:44:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ag9fWRZr10SeSCpDsBlZiEaxi3NOLqDZfTl03QP3No8=; b=QMmYZ3dOiuG43o
	G86sp6gt/Qj0x4yt+UdUPMtkHm2TKL1cRQF11mDZ4QRj7WCKUjFx1xau2wozKPNx8xiS5OScGa9iw
	+3lBEOvYePN4JhHjp9j6Vop25NhticP30Df2wEf9JAiFSg3ULtyVNqhvmRC12sflN1nzQIwp0FHIJ
	/lSgWQAVYwwq24EB2KMy4S/NoEm3r/rERYbBF0zu2jpr/4ADvXDDhRn5btT74/ImGhxpgtX0+yJwN
	tyAkgT0kFb3azOWMDvJJcRDQhsn/rruUgj0lOnmothr9D0e1PoUs8dqpMs+/CFOPjtiy9c4XNQaV5
	UpY6bGgwWcAbLg4qn8nw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uddhY-0000000FqUz-08Ag;
	Sun, 20 Jul 2025 23:44:16 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uddgP-0000000FqGo-1UEa
	for linux-phy@lists.infradead.org;
	Sun, 20 Jul 2025 23:43:06 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id A8330A5279C;
	Sun, 20 Jul 2025 23:43:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 30910C4CEF1;
	Sun, 20 Jul 2025 23:43:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753054984;
	bh=hi1P1Md3lx0mFctv/IZEeLMfN66v8OwqSqJnjru2AKs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ABLkidrEM2saNjFzmOPHi29nSFhi1ImiUstYIa9yWmskrhoktNS5WuZjis65jTXRz
	 EKhBUHbQbM7wE+228YJdxf53icCDaPhE6RyY7JHHEWJ9u+BS1lwFX86/0myp3zyBqu
	 Mt4GYUjy4msPoJe2Z9JFKjXlB3lSfPnG6CZOj8lIApsV9xKadTvLKiVtuo+wUfMXnx
	 aWFRM71T9t7WhjFLb1Q4/RVPP9stBFqHPL4jiR69gVan7MbPsdz9THwJUtT995xlHB
	 aff7lL8tlUBv0Xx4k8QZPGMSbwLtIkj2nRavbC14DeD4vBniYJfOL3yMCAeJOAhjsT
	 EgYnWx+7oM20w==
Date: Sun, 20 Jul 2025 18:43:03 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
Cc: conor+dt@kernel.org, quic_krichai@quicinc.com, vkoul@kernel.org,
	bhelgaas@google.com, lpieralisi@kernel.org, krzk+dt@kernel.org,
	jingoohan1@gmail.com, qiang.yu@oss.qualcomm.com,
	abel.vesa@linaro.org, linux-arm-msm@vger.kernel.org, kw@linux.com,
	neil.armstrong@linaro.org, mani@kernel.org,
	devicetree@vger.kernel.org, johan+linaro@kernel.org,
	andersson@kernel.org, linux-pci@vger.kernel.org,
	kwilczynski@kernel.org, linux-kernel@vger.kernel.org,
	quic_vbadigan@quicinc.com, kishon@kernel.org,
	konradybcio@kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v5 2/4] dt-bindings: PCI: qcom,pcie-sa8775p: document
 link_down reset
Message-ID: <175305498292.3083407.12105009386525845667.robh@kernel.org>
References: <20250718081718.390790-1-ziyue.zhang@oss.qualcomm.com>
 <20250718081718.390790-3-ziyue.zhang@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250718081718.390790-3-ziyue.zhang@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250720_164305_455761_8B268C99 
X-CRM114-Status: GOOD (  11.55  )
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


On Fri, 18 Jul 2025 16:17:16 +0800, Ziyue Zhang wrote:
> Each PCIe controller on SA8775P includes a 'link_down' reset line in
> hardware. This patch documents the reset in the device tree binding.
> 
> The 'link_down' reset is used to forcefully bring down the PCIe link
> layer, which is useful in scenarios such as link recovery after errors,
> power management transitions, and hotplug events. Including this reset
> line improves robustness and provides finer control over PCIe controller
> behavior.
> 
> As the 'link_down' reset was omitted in the initial submission, it is now
> being documented. While this reset is not required for most of the block's
> basic functionality, and device trees lacking it will continue to function
> correctly in most cases, it is necessary to ensure maximum robustness when
> shutting down or recovering the PCIe core. Therefore, its inclusion is
> justified despite the minor ABI change.
> 
> Signed-off-by: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
> ---
>  .../devicetree/bindings/pci/qcom,pcie-sa8775p.yaml    | 11 ++++++++---
>  1 file changed, 8 insertions(+), 3 deletions(-)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
