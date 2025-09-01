Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC58ACA1007
	for <linux-phy@archiver.kernel.org>; Mon,  1 Sep 2025 16:35:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qEqpgnGkdn9oSAN9uRR3EhW/qxrHFT3rV2WobUdynVY=; b=1f4TvJDKmKNWLJ
	wXcBsXjNOBFtWncTM6QrWsD3HxWAAMY+C3Ckoj15Vg2LZcjqnWkPEfbcIlkw7CHxNamGcU25MMXpy
	4cWw97MLtJYM8gzzjedc+YK5cwdRXaY7bubcp4HrOw4mu2kQWi5qGfObacst/5O5SKmcco93OHdTU
	VcPAvjGsSwk6wVfMzgry2NiS/LiouzyLzYCfvtGEIcJvyEGgQloqYc5PGQOtMU/x/z7bwkQAYgpJe
	xIFaZ15ojmP+3b0WC2T2gxn4vU3qZwmykqESdvu7qg+I1NXYO9DRMuU4cANhYGmiilYCuZGKcBG3H
	2YZ0demwV1LEv3WyjSuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ut7Vb-0000000DHF9-016W;
	Mon, 01 Sep 2025 16:35:55 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ut3w3-0000000CaGV-32I7
	for linux-phy@lists.infradead.org;
	Mon, 01 Sep 2025 12:47:00 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 638A242B64;
	Mon,  1 Sep 2025 12:46:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4E110C4CEF0;
	Mon,  1 Sep 2025 12:46:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756730819;
	bh=2xTXPacSe1TahEgzN+FN8vL/Vg7NTQYpV6LZHrhwp34=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VxX66d9RkS6IDXQgwF3xHpuIodVAGUIoOX4J/JfS36R/sf9UxP1kskzR8ctZOtFzZ
	 9UiPxi/wZvxIx1vdyvP1gbl39JDVvBZE+sPJV4liPXmIQd/S83cUFCikXG8MwjuIMz
	 kX7N18myK6CzQaOUMQiNLJeaLKn7qRIw0h/Wj5wxWHXesA3I+a76evSZXoyu6L+vgZ
	 9wRosLhtXhyjPVCIUJ8fyPAvP+rGmFzU/zmDmtBKdV6JNiCP+XOYZjfeLEnqwnZF+j
	 G0XKct1Gy/XqBzLR/PH4HLD/3VFgzHOHCiGGvMcwd4M52EgOCffbEY4t9i0LYeTlqt
	 e7NqXXqdo6m9A==
Date: Mon, 1 Sep 2025 18:16:54 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Wenbin Yao <wenbin.yao@oss.qualcomm.com>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org, konrad.dybcio@oss.qualcomm.com,
	qiang.yu@oss.qualcomm.com,
	Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
Subject: Re: [PATCH v3 1/4] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy:
 Document the Glymur QMP PCIe PHY
Message-ID: <aLWVvuGrxL2OQRSd@vaman>
References: <20250825-glymur_pcie5-v3-0-5c1d1730c16f@oss.qualcomm.com>
 <20250825-glymur_pcie5-v3-1-5c1d1730c16f@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250825-glymur_pcie5-v3-1-5c1d1730c16f@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250901_054659_781206_BED218E6 
X-CRM114-Status: UNSURE (   6.02  )
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

On 25-08-25, 23:01, Wenbin Yao wrote:
> From: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
> 
> The fifth PCIe instance on Glymur has a Gen5 4-lane PHY. Document it as a
> separate compatible.

This does not apply for me, please rebase and send

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
