Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A709C02183
	for <linux-phy@archiver.kernel.org>; Thu, 16 Jan 2025 14:20:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+BaMer30XgH1HwEQXKBeAf4yh9iev+yN5Z/3IZG9g1c=; b=c8rzm9klnI5moF
	wXLniMAchysK4krBZ5ReaYmisCGR0hyLT4tmAibfCpSe1kcUvBVn76Ixv7EIe8uegoAbMD0jkDkpy
	Z0oXonfLX6XLCX/ngOcisEEtoUNIyXwr2wrarHmImXibavhcCLNKoHrR0CLtaLhkYnYoyFBaAb4mr
	KgwHy2Gv4r/LLyAHYxUNREixZG45y7bXN+rIQbK98gTNeYngkMtq2VqAD8dvml8gy++IEHgAE/En2
	YOa+lguvRdOU5y+Q2IaGVW7Ju96l9Jujyb2iIqKWCONcVDRLk+1sgwZQNKpoETALvr9gYL9tXYGR3
	8K2OroMeFPjqtfVISCow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tYQjb-0000000F8ef-3oRy;
	Thu, 16 Jan 2025 14:20:35 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tYQjY-0000000F8e2-3jix
	for linux-phy@lists.infradead.org;
	Thu, 16 Jan 2025 14:20:33 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id A061F5C5D04;
	Thu, 16 Jan 2025 14:19:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D2AC1C4CED6;
	Thu, 16 Jan 2025 14:20:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737037232;
	bh=mDgZ8AfPGS/Gs+LJPIvTqHUSiT9ZB3FIVOYyCsFQf/c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=P8WXCM5VSC1D1qHHiJ+wdsAWz/tSmPaJWapX/QHXdEqhgQOw3hqpjIq+EWSZAsCG8
	 zQjp17R9ocukhEgTEDunuYFeib5tUHJAMHv6q2NAEAvAEsPBBtrVIYZMEy7tpzmr3K
	 LvurV5w7tKzeLXwu3N6ZIlGQL93WVRfpGoaDxX6ZGAwOrFFAG7/gK+darvm2Ik4C8+
	 wkKvEju4y+r2IfAmyosMhz+HY0FUDeM+0l7qtHLkjvIHOsMEbmCc+3DIvuw4oPBFwA
	 2VOFZossDJXPXYeeFzKt3Bj3dTWHSiUiMPWhDHPPS5/MDxDWIubAD+JKrKuNZUsoj7
	 frXMbmrAfEAhw==
Date: Thu, 16 Jan 2025 08:20:30 -0600
From: Rob Herring <robh@kernel.org>
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, gregkh@linuxfoundation.org,
	andersson@kernel.org, konradybcio@kernel.org,
	dmitry.baryshkov@linaro.org, mantas@8devices.com,
	manivannan.sadhasivam@linaro.org, abel.vesa@linaro.org,
	quic_kriskura@quicinc.com, quic_rohiagar@quicinc.com,
	quic_kbajaj@quicinc.com, quic_wcheng@quicinc.com,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org,
	Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH v4 5/6] dt-bindings: usb: qcom,dwc3: Add IPQ5424 to USB
 DWC3 bindings
Message-ID: <20250116142030.GA2159147-robh@kernel.org>
References: <20241118052839.382431-1-quic_varada@quicinc.com>
 <20241118052839.382431-6-quic_varada@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241118052839.382431-6-quic_varada@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250116_062032_975759_3C87CC4F 
X-CRM114-Status: UNSURE (   8.24  )
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

On Mon, Nov 18, 2024 at 10:58:38AM +0530, Varadarajan Narayanan wrote:
> Update dt-bindings to add IPQ5424 to USB DWC3 controller list.
> 
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
> v2: Add 'Acked-by: Conor Dooley'
> ---
>  Documentation/devicetree/bindings/usb/qcom,dwc3.yaml | 1 +
>  1 file changed, 1 insertion(+)

Looks like this was missed. Applied.

Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
