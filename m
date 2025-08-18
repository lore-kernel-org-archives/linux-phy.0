Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A18A5CA0ED1
	for <linux-phy@archiver.kernel.org>; Mon, 18 Aug 2025 17:31:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PVmMW6gkOC9FWFPUFNqVpbzOjZx59CQwdZTwZAiqBio=; b=MPA3ItlYAvu20n
	YRfc/qJYz0pktgKZ/IYJgtRIh4bWwq8IiyPV9APNJt210QQaEE+IDiqFv0rAH9fInyIRfp61gXEbt
	ZQ0rF96suIhWeCnvU3rFS80zAhOypZBIWjWtlh32JCz2+gmAr4gkjUBP5WWm3t7R+W3M7YRvaV6JY
	NDwQSrPQ8pVs2Ip4Bu5qBfusR7S1/+5RBP/exu9mAA2fPhKd2pzb/T50QeZmYRt37l2J3KaziectZ
	xBTEeXuP07PRnZ6E6xjewNSJrC6ggUQIgvtVmoFqsVYlvtMlivGWCl2VOwrWuV7j3D3lhU2BEBI4T
	uE/tpSqKWg8Iu3Lu3dFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uo3hl-000000089Pa-1ij5;
	Mon, 18 Aug 2025 17:31:33 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uo1Fp-00000007rGI-48au
	for linux-phy@lists.infradead.org;
	Mon, 18 Aug 2025 14:54:34 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 6A075601E4;
	Mon, 18 Aug 2025 14:54:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A205BC4CEEB;
	Mon, 18 Aug 2025 14:54:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755528872;
	bh=LFc1YiNOV2HvPL/yXZhgHCq5LYNPLTl74ZTaym00VFk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FGVRRJJO/ik7ARGyhYK3IpIVfwQ/pSsQdElGOufMPEoUkcM/5tYKBkyixosRu5oj0
	 hKwADwthaldFnM4oqCy4ZqzCGjaY4tsfHy3KkPa6lo9YS5uT7ZQk4fa1Mg7M9ziCLT
	 XUQmAK0nz+tFK3oEM3ku78ALJHNgxZSQXlXJJLfjOTpxoGxd2bDph6BRqPYLjFe0b/
	 cH70GzAowq4qqGfIh0zdu5nCQSB5RcSQpxd788hIuFS/2GtBvvEFgsKzK1nGgqEdxG
	 SM4+f+wu4xKiNiH0tQlf9ouklCaAAiAjtBDgRaoaic/8fu7TDxSW0vJW6mAvq8BxRb
	 5HSrpPFxYEviQ==
Date: Mon, 18 Aug 2025 09:54:31 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: quic_vbadigan@quicinc.com, devicetree@vger.kernel.org,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>, quic_mrana@quicinc.com,
	linux-pci@vger.kernel.org, linux-phy@lists.infradead.org,
	Konrad Dybcio <konradybcio@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
	Vinod Koul <vkoul@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH 1/4] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy:
 Document the SM8750 QMP PCIe PHY Gen3 x2
Message-ID: <175552887070.1211494.12034577229167513641.robh@kernel.org>
References: <20250809-pakala-v1-0-abf1c416dbaa@oss.qualcomm.com>
 <20250809-pakala-v1-1-abf1c416dbaa@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250809-pakala-v1-1-abf1c416dbaa@oss.qualcomm.com>
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


On Sat, 09 Aug 2025 15:29:16 +0530, Krishna Chaitanya Chundru wrote:
> Document the QMP PCIe PHY on the SM8750 platform.
> 
> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
