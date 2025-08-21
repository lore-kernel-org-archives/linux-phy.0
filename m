Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 97EB0CA0EEB
	for <linux-phy@archiver.kernel.org>; Fri, 22 Aug 2025 00:27:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7OfTQJ9TWBXylY6s0le+dpELCoXQZtFCVVkpYhctuUE=; b=SdJ5od1wN0A/pp
	WoTTB6tzd4vbdg9Z1qL6Pm6Tk/ucpvSw45KhzM0z3p/iQJJ6rgCFrKJK0Vby3JWSqZl5AnOZtIX5b
	qU7GuKrVOZaxjZ+trNxmd1BTN9tYmL2WnlbxiYp66g10JS81QnUO5HD5X5a4yp8B5xGl8c94JvKUD
	Du9NRK4YHNVEpvp00wdvQPliRxlVrpoalg5Iv0T03RZ7+YdMbbtGfx1ccnAbJqCUiT95TB9mXYDWZ
	4mbqv07BLp6FUZHQGfrxS4BsW+6EEwTElUHovxF9qPQua/3FqTIZKRD34ZlZCazAMz2glLNdzoOmN
	TJFuKbsGMhtTxLTCj2GA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upFcS-000000011Uj-1CAl;
	Fri, 22 Aug 2025 00:27:00 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upBGv-00000000LLr-2b0P
	for linux-phy@lists.infradead.org;
	Thu, 21 Aug 2025 19:48:30 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 0CD8F5C658B;
	Thu, 21 Aug 2025 19:48:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 86587C4CEEB;
	Thu, 21 Aug 2025 19:48:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755805708;
	bh=Xhpi152UPPYepOeU8j1aeDsj3ylJjhTecg57Bmk368c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=aPeL8Rov3Iktdy05myWKuavwcXunCI9pAtp0qtEq6RW9516Eir+o7hfkREOVqthk3
	 Qdy0kkDzDBro+I4FedReKYbyfi11N/znOSAdq9CK4Eg6Z2ncAnuRoZaW5HD26VdWmF
	 4x8f9b6RHGDa70I002KCW+vT4eEBsRep1ozZjv8QhYYeTkwglTsHd7aPstJCrz82LV
	 a6YyrfqgclCbnNcYgmU9jbfpRtFu1mwTrm+G5KjUCQ488RwQCDVXqJV5G28TE+LLaR
	 1lcWpOowQqJSuBysUQXNjy5sq9ETmczj/hWlh7klb64Kp1oNCdRHWnDxhfS2hc5mIH
	 2ggd3Tic9q/sw==
Date: Thu, 21 Aug 2025 14:48:27 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Wenbin Yao <wenbin.yao@oss.qualcomm.com>
Cc: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>,
	Manivannan Sadhasivam <mani@kernel.org>, qiang.yu@oss.qualcomm.com,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org, konrad.dybcio@oss.qualcomm.com,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Subject: Re: [PATCH v2 1/4] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy:
 Document the Glymur QMP PCIe PHY
Message-ID: <175580569944.470925.12622150205137529754.robh@kernel.org>
References: <20250821-glymur_pcie5-v2-0-cd516784ef20@oss.qualcomm.com>
 <20250821-glymur_pcie5-v2-1-cd516784ef20@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250821-glymur_pcie5-v2-1-cd516784ef20@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250821_124829_696758_9179E675 
X-CRM114-Status: GOOD (  11.25  )
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


On Thu, 21 Aug 2025 02:44:28 -0700, Wenbin Yao wrote:
> From: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
> 
> The fifth PCIe instance on Glymur has a Gen5 4-lane PHY. Document it as a
> separate compatible.
> 
> Signed-off-by: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
> Signed-off-by: Wenbin Yao <wenbin.yao@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml | 3 +++
>  1 file changed, 3 insertions(+)
> 


Please add Acked-by/Reviewed-by tags when posting new versions. However,
there's no need to repost patches *only* to add the tags. The upstream
maintainer will do that for acks received on the version they apply.

If a tag was not added on purpose, please state why and what changed.

Missing tags:

Acked-by: Rob Herring (Arm) <robh@kernel.org>




-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
