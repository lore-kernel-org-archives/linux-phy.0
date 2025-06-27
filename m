Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 632C5C7EE31
	for <linux-phy@archiver.kernel.org>; Fri, 27 Jun 2025 09:28:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Asw3baujaEuH3eiTrK7+4t+Sls2NFxC/4OJZ3UNZp5s=; b=VGn1n29/EV1SG0
	cNEDhPmam1zqHo5ZlHte3RGaHPpNEWEBpm+w4TsiHWky7zxg3RcsLT7IiBvi++MdSMHo9h8tSzJis
	mqrvqBeN77R0avbeC+34umEIxb/3cyPy9nUj32zC8SjMPl/iMudWoghkFH3yRCTwyPq/QLQW3zSCa
	9yQFJyixQ18/3VzEcuEmBXIFWqhOZkx/kWua5iyTlLVz1oheSSP5Pe0e+zBvrYJKEeVfF0bG4XK3K
	6Y+E0n0cKg9qlnqeS18QlYe6f9Fs20NrPjPBjfU5HWCuGohKRUY99HufOsKjb/HN4IHBB2bX0TdLk
	LCBe6i4UWB2yMOE9rCsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uV5O7-0000000E7RJ-0gSz;
	Fri, 27 Jun 2025 09:28:51 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uV5O5-0000000E7Qw-1Zgy
	for linux-phy@lists.infradead.org;
	Fri, 27 Jun 2025 09:28:50 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 0C17545777;
	Fri, 27 Jun 2025 09:28:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D1F06C4CEE3;
	Fri, 27 Jun 2025 09:28:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751016528;
	bh=NMdUf/+EgOboapTSK2P0BWd2KGOh4vtzeZ1cIy0waMQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=EVM8rqp/Jt8lnO6gp/6oOYfJeZkJKCBM65127Pdwzk+90BDjC1vKMC1FrmJWGVrPG
	 Gclq5nLOFnFPmBdIDG6sUiKDVq3maqQzwL5stg7wfdvwuUCyXi9RVeEHvJw/tu0L4T
	 xsxT7uvLHf3J3T+rmGxCmw7ryGYu/mFfZ9pMs2Tpyjc0an87/YFT1sYoYEWU0KteNP
	 +qKzT3oe6M5kAa3FdrHaYy6TqDIp9Hdcp6ZzqiHISl3ahpkJ+eag5e0u/OTwrkWv6T
	 p1v07vNfR5vUWSpk+G+nHWJToQxCBo62O3DXdapdaWNq4fH8TN4x+pwH+9nY24NGtB
	 Kzku7Wpgtspvg==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan@kernel.org>)
	id 1uV5O4-000000000Co-3wci;
	Fri, 27 Jun 2025 11:28:49 +0200
Date: Fri, 27 Jun 2025 11:28:48 +0200
From: Johan Hovold <johan@kernel.org>
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, jingoohan1@gmail.com,
	mani@kernel.org, lpieralisi@kernel.org, kwilczynski@kernel.org,
	bhelgaas@google.com, johan+linaro@kernel.org, vkoul@kernel.org,
	kishon@kernel.org, neil.armstrong@linaro.org, abel.vesa@linaro.org,
	kw@linux.com, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org, linux-phy@lists.infradead.org,
	qiang.yu@oss.qualcomm.com, quic_krichai@quicinc.com,
	quic_vbadigan@quicinc.com
Subject: Re: [PATCH v3 2/4] dt-bindings: PCI: qcom,pcie-sa8775p: document
 link_down reset
Message-ID: <aF5kUDghdXUbaDo3@hovoldconsulting.com>
References: <20250625090048.624399-1-quic_ziyuzhan@quicinc.com>
 <20250625090048.624399-3-quic_ziyuzhan@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250625090048.624399-3-quic_ziyuzhan@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250627_022849_434081_75AD0BB4 
X-CRM114-Status: GOOD (  11.87  )
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

On Wed, Jun 25, 2025 at 05:00:46PM +0800, Ziyue Zhang wrote:
> Each PCIe controller on sa8775p includes 'link_down'reset on hardware,
> document it.

Please describe what this reset does here as I asked you to earlier.

> Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
> ---
>  .../devicetree/bindings/pci/qcom,pcie-sa8775p.yaml  | 13 +++++++++----
>  1 file changed, 9 insertions(+), 4 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-sa8775p.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-sa8775p.yaml
> index 4b91b5608013..510c9e1c28e1 100644
> --- a/Documentation/devicetree/bindings/pci/qcom,pcie-sa8775p.yaml
> +++ b/Documentation/devicetree/bindings/pci/qcom,pcie-sa8775p.yaml
> @@ -66,11 +66,14 @@ properties:
>        - const: global
>  
>    resets:
> -    maxItems: 1
> +    items:
> +      - description: PCIe controller reset
> +      - description: PCIe link down reset
>  
>    reset-names:
>      items:
> -      - const: pci
> +      - const: pci # PCIe core reset
> +      - const: link_down # PCIe link down reset

I think you can drop the comments since you already describe the resets
above.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
