Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 13270C79F9E
	for <linux-phy@archiver.kernel.org>; Mon,  7 Sep 2026 06:12:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YT51wxjpV3ThndeO1ZqYcFbuMvVrT1dSjTGOeOV3T0c=; b=UAxgjocgtVSdkV
	k1lupiViut0eBhxmaX7aOtJL0Z2xAzHDWsC3DNQjTUnBnB6wJRpnazFrqSEQzHAgNiCuFesTlayiJ
	+1ABNUI02js1TKS8bt1owsj5yQPLe1U9xBUQ1d7hbXBE9NKGXBxz+UiWrjKrmig7RzDYr7eC79YrL
	wXo4k+9rrxhkdt1uo/znl/e/my2I7HRmlBWpVRBJqEpRr/NNYltyb126L5lQtBSzA2VZakwU1xHA0
	QWR+PVqk7N6Gw9AUfvEH6IiOHwETonqPprgGfk0Q/r9w/R05Mjrt3o4wk280ohNHJfOSWU0rXTYtP
	iozQBC0oJHeGdgsUGSqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3Sah-00000005zoq-2Y2p;
	Mon, 07 Sep 2026 06:12:28 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3Sag-00000005zoS-0H9J
	for linux-phy@lists.infradead.org;
	Mon, 07 Sep 2026 06:12:26 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id B5CE7418E7;
	Mon,  7 Sep 2026 06:12:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CDA6E1F00A3A;
	Mon,  7 Sep 2026 06:12:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788761545;
	bh=JAvrEwXqqWCVQAuDFZAxAYaZ+IyHoFVwskUDWUWe2i0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=gU45Zf7maoHD3FyxPH6/dIJhv/vvtxjqcFSfJPFrpReivmUZBJEghMrjQzbv2450+
	 6zBnyNlO9HwuCNVk8ZXZCmKZaEdHfULW5Qy7AjrnY2gr2EceDjGyHHnyj6ptBy5iEZ
	 EAaKTZFZDPlNtRM9jjNDCJy1SaqC/qCLse6YQWHpuY2Haad5BRutPpnx4C8AG9rhe1
	 PosbmSL4eV51y2OdynuhwFHDnsaYY1LUqAOuecgIfXuy2JuUDDKUWTbZpJvzE/ftqu
	 DKOTNWjfNLC9Nvl4Gv2ENmUHWm1BwTjJ8whZMWvYMZA5Zpi/MWKmcbn86wt2KjzOQH
	 tbZya7bOeWoAA==
Date: Mon, 7 Sep 2026 08:12:21 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Shawn Guo <shengchao.guo@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
	Abel Vesa <abelvesa@kernel.org>, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
	Bartosz Golaszewski <brgl@kernel.org>, Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Subject: Re: [PATCH 2/4] dt-bindings: phy: qcom,snps-eusb2-phy: Document the
 Nord eUSB2 PHY
Message-ID: <20260907-eminent-silky-dog-98e56a@quoll>
References: <20260901095055.42229-1-shengchao.guo@oss.qualcomm.com>
 <20260901095055.42229-3-shengchao.guo@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260901095055.42229-3-shengchao.guo@oss.qualcomm.com>
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

On Tue, Sep 01, 2026 at 05:50:53PM +0800, Shawn Guo wrote:
> From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
> 
> Add a compatible for the eUSB2 PHY found on the Qualcomm Nord SoC.
> It is compatible with the sm8550 eUSB2 PHY.
> 
> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
> Signed-off-by: Shawn Guo <shengchao.guo@oss.qualcomm.com>

This should be squashed with previous patch. Why reset is being made
optional? The change itself had not meaning, no sense. It was made
optional as part of qcom,nord-snps-eusb2-phy requirements... unless it
was all about drivers?

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
