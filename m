Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B92D60A2620
	for <linux-phy@archiver.kernel.org>; Thu, 12 Nov 2026 07:51:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=gDQmxsfV;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=JL6YBOr0
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=1p65miMMFzT12dRal3LwtWrf60DCUkwcf4ZQPJ1VVEM=; b=gDQmxsfVxFrhYsFFkowx/yzFYI
	oiP/6xoMDUglR5Bg4liRlv/JZM57w/CpFzaG64QRfNPGe1ph3zw7BneZ+ynog1TBimaWjzoE8yPXb
	qf2bmiCqMnO2CBuDnq0IsN+RaSbvdR+IVs3s7QpUpPNecBWEcA0UP4+66kr93hyFLZPqetEDziUYX
	H8q5zHIzJGEM1VRd59iqyS1fDGI0fgTfjXxj54Oq7YSSbG04902ilV3jNlFxxKGK0CfwTddTRbH2O
	Ou1J55eZkeRUBqKt/FLNDJx3LnwG+nzh4TPxxuWr9Y0p9KU19ql/LT6EAmIgZiKxlCUqwpjgjGm7+
	XyPLb1oQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRPaR-00000008yNL-3Jsm;
	Thu, 12 Nov 2026 07:51:12 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRPaP-00000008yMh-3m43
	for linux-phy@lists.infradead.org;
	Thu, 12 Nov 2026 07:51:10 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 5FFB447474;
	Thu, 12 Nov 2026 07:51:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 898691F00A06;
	Thu, 12 Nov 2026 07:51:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794469869;
	bh=SaQKmVmkA5b4Dxf/nCLCceZaqsgAoFL+1WLaeeE3/m4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=JL6YBOr0UVg2V8GLj0ZKsLZ55Rfjh3Pv5puOkD1/zhpaFsjsUSVy1/Gge3Mb3pOUG
	 Ipqz56Ldkm28d7yg/dam/qHxClf3jtmCT4yxBasOg8kmsyB0wp8Kzap/gm6h0SaurL
	 5kQIvA8JSj2XZn1GgWfKpuNV84hyuPdUab5R0QbpLoDgtRm+4Lw+5A1GvWgK7++ZvH
	 432teWUl7SB41egXYbKwrrnMOx/+TMo9A8syFkT7/F0IIuUcnXwdgcH8UfOkm4Ceox
	 BvO6jpEka6U805f+5OePnZPgh5+dfgxGc8tg5Ir7Ub/HfWZdQvpeosgCtPz1MSJTBm
	 xfVEux5KU6VSw==
Date: Thu, 12 Nov 2026 13:21:04 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: george.moussalem@outlook.com,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Praveenkumar I <praveenkumar.i@oss.qualcomm.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>,
	Nitheesh Sekar <quic_nsekar@quicinc.com>,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Varadarajan Narayanan <quic_varada@quicinc.com>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org, Stanislaw Pal <kuncy7@gmail.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: Re: [PATCH v4 00/13] Enable USB3 for Qualcomm IPQ5018
Message-ID: <avVv6IyiHlklZdvp@parshuram>
References: <20260908-ipq5018-usb3-v4-0-b789702f0695@outlook.com>
 <4f586fa8-e7c1-42fd-b853-a2093e8a243b@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4f586fa8-e7c1-42fd-b853-a2093e8a243b@oss.qualcomm.com>
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-3.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 20-10-26, 09:59, Konrad Dybcio wrote:
> On 9/8/26 11:40 AM, George Moussalem via B4 Relay wrote:
> > Patch series adds Qualcomm 22ull Super-Speed USB UNIPHY driver support
> > present in Qualcomm IPQ5018 and IPQ5332 SoC which is required to enable
> > USB3. This PHY is interfaced with SNPS DWC3 USB and SNPS DWC PCIe.
> > Either one of the interface can use it via the mux selection present in
> > the TCSR register. Current patch series adds the support for UNIPHY with
> > DWC3 USB.
> > 
> > The series is now split into 3 parts:
> > 1. Flatten USB Controller Nodes on IPQ SoCs
> >    link: https://lore.kernel.org/r/20260906-ipq-flatten-usb-v3-0-13e4e0f63123@outlook.com
> > 2. Enable USB3 for Qualcomm IPQ5018 (this patch series)
> > 3. Enable USB3 for Qualcomm IPQ5332 (to be submitted)
> > 
> > ---
> > Changes in v4:
> 
> [...]
> 
> > - It's worth noting that I left the logic to register 1 phy in this
> >   patch unchanged despite Konard's suggestion to register both
> >   (PCIe and USB3) to avoid changing the existing binding for the
> >   existing PCIe phy instances in ipq5018/ipq5332. Although the silicon
> >   is capable of supporting both PCIe and USB3, the instances in scope
> >   are wired for single mode only. The next patch set will register both
> >   PCIe and USB3 PHYs for the combo PHY instance in IPQ5332 and use
> >   #phy-cells to select the right PHY in the respective PCIe and USB3
> >   controller nodes.
> 
> We need a bindings change either way, so might as well do it
> "right"!

Are we getting an update to binding? Or is this good to be picked?

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
