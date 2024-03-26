Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D698C6FD1F
	for <linux-phy@archiver.kernel.org>; Tue, 26 Mar 2024 08:31:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QCIy+TvLcHXJl78mlDxuzMrvrN9EXeAEEU7v1MHA0JA=; b=XMnPHA6iv0p76u
	cLO44nuoUG1bIGLoEdFVz0yKvxdvm1Jlrm+/j0dnRKBTjPO+GX1QoAZv+xvBXlpSyyjbctxBiT1pb
	sE9F2cYuSu3nrOSRY4eoOeALt4SnlG6yvXnh/UfeVuOSFoRHutiO0nmdOSEIH8gwWi7NxfHYKxtz2
	d/WOx/o0QIxWb3LdbyHXONvO51bJjp/PukY6iN7Z12l+u3Z9MdBvGbdt395mFfaKAYaBbpq33HV8B
	CD360meUJ20AlVZD1+fczrwrT+GXCX2f//2H/Jf5MR+I9TV28nybMub03HwXUSMlOpi+8X6cl1ZnD
	3qewdnvXyix0AA6LIWmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rp2D6-00000003cL0-2rUf;
	Tue, 26 Mar 2024 08:31:08 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rp2D3-00000003cJt-10O0
	for linux-phy@lists.infradead.org;
	Tue, 26 Mar 2024 08:31:07 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 0DC3161280;
	Tue, 26 Mar 2024 08:31:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2376BC43390;
	Tue, 26 Mar 2024 08:31:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1711441862;
	bh=IbF+4N6tEo6brIIuoUu69sJaSGZduUjBfVe4VkI9ggU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=l7PZyTEaAbZVjqEgN51Gs5Ln4nm5SOxprbKcaO1HqS7na2znZekEVm9KXF+DG25sK
	 0JsMSj+qPOLqOiDfiFMq7OBUcpmCK9RUf/9Gb+V//CV/PEOybJkNP3CtGRhxqZfla2
	 VSoyTLiUJMjtNhblUgzaVlwMZyR0pwiothCB8IcU=
Date: Tue, 26 Mar 2024 09:30:59 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Komal Bajaj <quic_kbajaj@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org
Subject: Re: [PATCH 0/4] Add USB Support on Qualcomm's QDU/QRU1000 Platform
Message-ID: <2024032637-sessions-outcast-888a@gregkh>
References: <20240319090729.14674-1-quic_kbajaj@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240319090729.14674-1-quic_kbajaj@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240326_013105_389316_0BCB72B8 
X-CRM114-Status: GOOD (  11.61  )
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

On Tue, Mar 19, 2024 at 02:37:24PM +0530, Komal Bajaj wrote:
> This series adds support of USB3 PHY support for Qualcomm's QDU/QRU1000 Platform.
> 
> ---------
> Changes in v2:
> * Dropped extra lines
> * Sorted the tables alphabetically
> * Link to v1: https://lore.kernel.org/linux-arm-msm/20240311120215.16845-1-quic_kbajaj@quicinc.com/
> 
> Komal Bajaj (4):
>   dt-bindings: phy: qcom,usb-snps-femto-v2: Add bindings for QDU1000
>   dt-bindings: phy: qcom,qmp-usb: Add QDU1000 USB3 PHY
>   dt-bindings: usb: dwc3: Add QDU1000 compatible
>   phy: qcpm-qmp-usb: Add support for QDU1000/QRU1000
> 
>  .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml   |  2 +
>  .../bindings/phy/qcom,usb-snps-femto-v2.yaml  |  1 +
>  .../devicetree/bindings/usb/qcom,dwc3.yaml    |  3 ++
>  drivers/phy/qualcomm/phy-qcom-qmp-usb.c       | 49 +++++++++++++++++++
>  4 files changed, 55 insertions(+)
> 
> --
> 2.42.0
> 
> 

The subject line here does not say v2, so I'm confused as to which one
is which :(

Please fix up and send a v3.

thanks,

greg k-h

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
