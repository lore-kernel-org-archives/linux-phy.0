Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F8BCCFC26E
	for <linux-phy@archiver.kernel.org>; Tue, 15 Oct 2024 06:22:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G7BY17wuBplhxKP6RrBgKcI/e/YbNKhh5lZf3HXJ/bg=; b=ld5dgbyplBg8yf
	E9KXdcmrPp/JnDgPxwOy3Oa0akjcogGihl47AzIL0lZmz5lXDc4K/G3aRg16JWadAiunGVEtTQi4k
	ouKyEjkFG3xiTRHpc7X72PPmLoj1pt96n2I0kUjgec/0wFfnm3LxbPwVkq5L+c7HUV3SqnyX1MGMI
	zqw+7OBm9ONYn8j2xEIYv7m1hif5a24Q0qgNWC22HxdcNW5C3j6zrhZ8PCWGiiKZ9Weh73DVY8V6e
	7l1tm7v3FRC45rc4NUV2wlb4tOGL/E4OkQhmcwC7AMi5uKUawwefQb1XhmuIy2nTRastjC946xvd6
	DUqkxfVyQK+o2Fcl0gZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0awt-00000007CIz-0ke0;
	Tue, 15 Oct 2024 06:22:27 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0awq-00000007CIQ-3SIs
	for linux-phy@lists.infradead.org;
	Tue, 15 Oct 2024 06:22:26 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id CCFCF5C5C8E;
	Tue, 15 Oct 2024 06:22:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D96A8C4CECD;
	Tue, 15 Oct 2024 06:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728973343;
	bh=Qkp+43f50ur+lNFHm71434SGml+Qxjm4lIXR6eMYoJo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZBF3Y4CFRv2p2RmPQoe0j3cQndHkTIj9xdXVLFOC0cQRtRMIEFO+k4JJO79AnMD5d
	 ETjQ2TxLLC7ZHjmkXBXrYSMjfhFYTnvGm/vqqXvu6yzBymb+5Gj/vdg+AbEpCr2rq4
	 zObUeWQhdvyu0kQAJEwoilU/6tV/rCOmFi9tzlTM8KMADKx4BHTWtxj9bOTptA6QKj
	 gLgtTFyvD5lJYu2I+2tKLimlo2e3nBvDG1bH3+17Ssw52k1KV/7cejJ4FJ9PbQc0+o
	 rwdyKFhphOi6SMgTJBv2+DjqjjYlCl4S3u7DPElpVU33UP4bQs7kQNuJe0uTHUHPTU
	 glIhiXljEYuBQ==
Date: Tue, 15 Oct 2024 08:22:19 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Krishna Kurapati <quic_kriskura@quicinc.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Bjorn Andersson <quic_bjorande@quicinc.com>, 
	Wesley Cheng <quic_wcheng@quicinc.com>, Konrad Dybcio <konradybcio@kernel.org>, 
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
	linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-phy@lists.infradead.org, quic_ppratap@quicinc.com, 
	quic_jackp@quicinc.com
Subject: Re: [PATCH 1/5] dt-bindings: usb: qcom,dwc3: Add QCS615 to USB DWC3
 bindings
Message-ID: <oluxn5vzewftvotvhzobqm5uheeof7k2vfp5wmkujl3xxxr42g@au7yzzfrbben>
References: <20241014084432.3310114-1-quic_kriskura@quicinc.com>
 <20241014084432.3310114-2-quic_kriskura@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241014084432.3310114-2-quic_kriskura@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_232224_928887_28EE4F37 
X-CRM114-Status: UNSURE (   8.27  )
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

On Mon, Oct 14, 2024 at 02:14:28PM +0530, Krishna Kurapati wrote:
> Update dt-bindings to add primary controller of QCS615 to USB
> DWC3 controller list.
> 
> Although this controller has a QUSB2 Phy, it belongs to a
> generation of SoCs like SDM670/SDM845/SM6350 where DP/DM is
> used for wakeup instead of qusb2_phy interrupt.
> 
> Signed-off-by: Krishna Kurapati <quic_kriskura@quicinc.com>
> ---
> Patch rebased on top of [1] to avoid conflict:
> https://lore.kernel.org/all/20241009195348.2649368-2-quic_kriskura@quicinc.com/

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
