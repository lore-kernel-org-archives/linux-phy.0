Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 353E1CD37AF
	for <linux-phy@archiver.kernel.org>; Sun, 10 May 2026 09:29:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=97ia8/H1tpeJ+zMA+YtwMAfrvmCwHw+0JERPxjI+Djc=; b=yI8dOgJtJMvwQU
	wBcdin3CVUdl7XpucFrRFOmIv0qHKS9aJvPqZ9KHmGOC9JMw3MwNT2n9YsZcPaxaNk48l0t8s2JxM
	+A9E2yhqAKZIvEd9VOyG8uCdARIO5E/6pzrTXCAiDzgvAeKYr5NVVUe+L+OqQA4rDo1G6lPPQvFGS
	EnVYU/unaospxXjXIFi8X6LfDskdV+Yw6tw/VQwhVHGPvCEPz0P+ZfAJuRmQqt6FPMRBOTxPZLMC5
	zJPFw86Kff9Vt/YmNOhmrFhPahOrg7YoYpQ9cmMVhy9hYh+0/fpCkr+UlY0hDZ0MXRj+vJfWlrYB4
	0WFzizdDI63dbOSYlDlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wM0Tk-0000000AUGl-3GTZ;
	Sun, 10 May 2026 09:29:40 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wM0Tk-0000000AUGb-0Zq2
	for linux-phy@lists.infradead.org;
	Sun, 10 May 2026 09:29:40 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id E2EB260018;
	Sun, 10 May 2026 09:29:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B32F9C2BCB8;
	Sun, 10 May 2026 09:29:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778405377;
	bh=T2BdkQKmtw0VsjxE8NK4OiVQOvYqrt4e3N/yZz4A4i8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qIsvU2Ek3kJsQU/kys3xWDXNjjLTw95shhd+Al0vMWxx24piQx8eKMAAaqLz65ZQR
	 uOjBIeTwSCiMYaoIE5o/NSaKNuPAyQ5+3bo+VzXxRlMquGdBkhTqJbJg6OobHYKc5p
	 cEjpAsQcNAd5y8tgfTVivzGRo7fIcorr7b8RiirwgdVDo8DcO4CcKiy1IkrA5fzS2T
	 dmLxYuhZ91+YHFvrSgMqWYo56tmKG9RhHz6Gg30g/ARx18rQfQ6fi6jfjq5n1TNmI8
	 irj/wcU4XYyiHJ0P9SeP/SDNtNnLpkQ3CuLS33tRThXbYfEO2lUPhRRsWkeVy9vpso
	 HNHqne2o2ru+A==
Date: Sun, 10 May 2026 14:59:32 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
	Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>,
	Johan Hovold <johan+linaro@kernel.org>,
	Loic Poulain <loic.poulain@oss.qualcomm.com>,
	Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 0/4] Add USB Phy driver and binding changes for
 Qualcomm Shikra SoC
Message-ID: <agBP_HeLmVAKLFUh@vaman>
References: <20260504170659.282532-1-krishna.kurapati@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260504170659.282532-1-krishna.kurapati@oss.qualcomm.com>
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

On 04-05-26, 22:36, Krishna Kurapati wrote:
> This series adds Driver and binding changes for USB Phys on Shikra. There
> are two USB controllers - One of them is SS capable and other is highspeed
> only capable. The ss Phy init sequence is same as that of Talos.

Please check https://sashiko.dev/#/patchset/20260504170659.282532-1-krishna.kurapati%40oss.qualcomm.com

> 
> Changes in v2:
> - Separated the usb controller binding changes
> - Updated commit texts.
> 
> Krishna Kurapati (4):
>   dt-bindings: phy: qcom,qusb2: Document QUSB2 Phy for Shikra
>   dt-bindings: phy: qcom,msm8998-qmp-usb3-phy: Add support for Shikra
>   phy: qcom-qusb2: Add support for Shikra
>   phy: qcom: qmp-usbc: Add qmp configuration for Shikra
> 
>  .../bindings/phy/qcom,msm8998-qmp-usb3-phy.yaml  |  2 ++
>  .../devicetree/bindings/phy/qcom,qusb2-phy.yaml  |  1 +
>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c         |  3 +++
>  drivers/phy/qualcomm/phy-qcom-qusb2.c            | 16 ++++++++++++++++
>  4 files changed, 22 insertions(+)
> 
> -- 
> 2.34.1

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
