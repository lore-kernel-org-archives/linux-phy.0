Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB52CC5B543
	for <linux-phy@archiver.kernel.org>; Thu,  5 Jun 2025 16:07:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fY/s7N4Q5In6xWMJWub8VL3V+EC/RXj6d+WIakmE1DU=; b=0hScyixXO7xSBl
	HiTClAwcgfAZt4YvnU8rSESuWhrGrgYlsKL8aiQaZLM5G2k1WNL2Ge7krWpti/Wv0JtktgyPdjkR0
	9dK9MZ7ww3+lxJW0SCbdqgmui3j83csrj29L6XAU3sUfZsP7/g+jopYDrwTlBSIkwkOCYpDn9f5g2
	Ctrl6wLMkXJpESHj/Au6BIZJQzalSTtmgRCIrKH4/Dh0OJpZuK868s/thSOWrFP2/HU/4ePqix3jt
	DpbdSVUiwkRpLcMfh+5/A83ipM5filG0GiEMBKS1mNtJjjs9RRtzUgrTFO9K2qt4MvfiNSFjteIvs
	NtvDDhXkdsHxh/Wi4TxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uND87-0000000FyYq-1uEU;
	Thu, 05 Jun 2025 16:07:47 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uND85-0000000FyYT-1kgE
	for linux-phy@lists.infradead.org;
	Thu, 05 Jun 2025 16:07:46 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 238A743818;
	Thu,  5 Jun 2025 16:07:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C0241C4CEE7;
	Thu,  5 Jun 2025 16:07:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749139665;
	bh=OPJKuWVQNZ87kw/DDHJ1LZybURzSip0724Cgv5OPuU0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QopZvHALoKpRAkdmCGxSWJmi2eNK3nKXYAe4E87SpEgewC2J8g+kEUgdboWzvtQ26
	 J87PLNpC9Pn+3sSrT2uJHG1rS3PvKIpru4Usygb0iwR4JfG7xHWizQjfEC8hhFwj6m
	 kQTJORdLv3OapsVePhso+Gl1ZzJEyYUYxd2OXYwUoPci+1PGfnC2p/FeKBiNnLb9nf
	 Pu2yAEi8WIfTPv0x34jnLITdAnJtqHeoOFkPCk7JanNBMbiXTmU4dMGoE06YTB+MNe
	 UmW4K0hpsRkVjhO7/wiJowAPSoZ+8KuHhizSKu2t1IJv3AgNi2aWRKiOhZx1Jw30zi
	 YV+DYiOsZB1CQ==
Date: Thu, 5 Jun 2025 11:07:43 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Cc: vkoul@kernel.org, abel.vesa@linaro.org, quic_vbadigan@quicinc.com,
	linux-kernel@vger.kernel.org, manivannan.sadhasivam@linaro.org,
	kw@linux.com, quic_krichai@quicinc.com, krzk+dt@kernel.org,
	kishon@kernel.org, andersson@kernel.org, conor+dt@kernel.org,
	konradybcio@kernel.org, devicetree@vger.kernel.org,
	neil.armstrong@linaro.org, kwilczynski@kernel.org,
	bhelgaas@google.com, linux-phy@lists.infradead.org,
	lpieralisi@kernel.org, linux-pci@vger.kernel.org,
	quic_qianyu@quicinc.com, linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH v6 2/6] dt-bindings: PCI: qcom,pcie-sa8775p: document
 qcs8300
Message-ID: <174913966072.2690296.797135460368939393.robh@kernel.org>
References: <20250529035635.4162149-1-quic_ziyuzhan@quicinc.com>
 <20250529035635.4162149-3-quic_ziyuzhan@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250529035635.4162149-3-quic_ziyuzhan@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_090745_476205_473E3F7D 
X-CRM114-Status: UNSURE (   7.52  )
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


On Thu, 29 May 2025 11:56:31 +0800, Ziyue Zhang wrote:
> Add compatible for qcs8300 platform, with sa8775p as the fallback.
> 
> Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
> ---
>  .../devicetree/bindings/pci/qcom,pcie-sa8775p.yaml         | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
