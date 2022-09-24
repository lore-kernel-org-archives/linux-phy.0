Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5A8FAC6FA86
	for <linux-phy@archiver.kernel.org>; Sat, 24 Sep 2022 07:09:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YeHJ0Q/cKoXBda20HrKi+GbHbp8ajmZLEPtoTo0XKtU=; b=EUOOiLWkuGWblK
	bE35n/Y9ibscfsJ3heNC5y6vIY0NyRjLrIBeuZcEUbmQExhEsV7fajxqnk6PCXvgxSTBx+kb7gCXa
	2OUekkDge2zhiuMYC3BmkuFR+nkLL9t/fmBjKUkLSVvW+UCa2jM/4R4agZAIbH+XVZq7c288Utk2/
	pRIWD7+mcg+jcSA8AmHuwiTgRlXDcLGPmy1Cs8wIuAZbLtrQaJZpe7LVx3DpxyfMli50uFYvwQZjn
	Lp8QWRd6Y/oIjhOQCKFWxvYBP7HQ23pfjXLWgV7LECiXYjjnRxSzDqRBkl3qRvF+sbblOxNsDYT0T
	sC3tDfaYANIPurKmCyIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obzHy-006Y6i-QS; Sat, 24 Sep 2022 07:09:26 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obzHv-006Y65-SF
	for linux-phy@lists.infradead.org; Sat, 24 Sep 2022 07:09:25 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 4722BB80D55;
	Sat, 24 Sep 2022 07:09:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 299F7C433D7;
	Sat, 24 Sep 2022 07:09:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664003361;
	bh=AJt4zk93LVa4vecHkex6IL/BxdunkkrtiUumB+OGOmM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QeXCkrbT8j663DS9Fvd2Jl0nGwXEJLvAQJV2hjUF0rrmABKRVesPRssUN9xfFM4zY
	 cZXY/kzupnh/PmAh8Ip0g08lrCxtvGPzhWHvE8d6bW9B+3fBa6OEie0hK3n3MNjGnW
	 ZqosHgnEl6ZCeeeug9op1kQw2GPnfO7GXRX7rxX7tFAw0dA/fRy9hISYCrjy4aH1lH
	 voiSAIUOljzqxN3dE7nxADZIBWiPAoUAsaZMO+4bqCaK53upojuq8p/omnCQD0gtb3
	 gSvV1oy0UpRqBLzcwWjlHe5Nee7h5JWPaapl3aVR70eU+gg6ZwvOGSMhvemM9CvpUM
	 EC66dv0OMET+A==
Date: Sat, 24 Sep 2022 12:39:16 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Richard Acayan <mailingradian@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Felipe Balbi <balbi@kernel.org>,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-usb@vger.kernel.org
Subject: Re: [PATCH v2 0/2] SDM670 USB 2.0 support
Message-ID: <Yy6tHE8VZ2v347Q9@matsya>
References: <20220922024656.178529-1-mailingradian@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220922024656.178529-1-mailingradian@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220924_000924_078928_E68BA431 
X-CRM114-Status: GOOD (  11.86  )
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

On 21-09-22, 22:46, Richard Acayan wrote:
> Changes since v1:
>  - drop driver patch (some maintainers might be excluded from v3
>    recipients because of this)
>  - add entries in usb clocks and interrupts
> 
> This adds compatible strings for USB 2.0 on the Qualcomm Snapdragon 670. I
> have no way to test USB 3.0 because my SDM670 device doesn't have USB 3.

No driver use for this?

> 
>  Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml | 1 +
>  Documentation/devicetree/bindings/usb/qcom,dwc3.yaml      | 3 +++
>  2 files changed, 4 insertions(+)
> 

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
