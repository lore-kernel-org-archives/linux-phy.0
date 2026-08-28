Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 067F6C61DBD
	for <linux-phy@archiver.kernel.org>; Fri, 28 Aug 2026 10:09:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iKLAYoSPF3dJuibYr+8bv5ysvnI/4/gnaXVXHQxQmEA=; b=F3De8nDtRPMo5p
	Hngs6QghFkPfE1ThFUSdKW0twuXokzqOylmuQjD3mwlQZrtOkFg0eCy/dHuSpbrvtrhMcjW6Nd/zW
	8RB9eHPtu5wMmtHWhsL8QQzZxCqW85OH4uGwHAbI5tAF32SqKHnci0CijvzXcphwESgScZ9U4KEbe
	KsnDsbcF/b/2z4CekVT4FwPRp3EC5c/6rftNaboi0tpY5mVzPyZ4zFEd0bjJXwtbLqcHJ5OcE4GDJ
	6VruFBcsScn1KBeB0BtCvSUExaXlwkrUSUHj9hA5odrJE4N+5Ijq6DzDLnxhZgXmyqdi5rgmLS81f
	kkJE4D2KUOg9cdPPW4gQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wztWK-00000005Xlt-2GC0;
	Fri, 28 Aug 2026 10:09:12 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wztWJ-00000005Xln-0EHR
	for linux-phy@lists.infradead.org;
	Fri, 28 Aug 2026 10:09:11 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 91B804049D;
	Fri, 28 Aug 2026 10:09:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 73BD41F000E9;
	Fri, 28 Aug 2026 10:09:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787911750;
	bh=y+wirH+XRJLmQuXzFec1vwsdVhSbWNoZgC5yT7+QDH0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=LY3nabWwaHHnAtNbqAQaLgLhKaZlmQs3rBv2v6i7BCKi5DwMCHe7qgax+32qVIf8S
	 x/3hnlidcexJPihSCpiEsZLj02Xuo374D10Bm5PiJa2/i/gEChbAcEwK2+Q/S38weW
	 63Mq+Tkyc7sl4F9zjNTjwn3v/XvVCrjYCEtOxw3V0T4oNdv/DcZUPubWxj5Zxquds9
	 0gFyN8ztDmHsqFdN7DihCkpwZmSTBVzM9+qdcfTDiE8y9uPEkF+04dds6nzDQ9+EBM
	 IEPPAmBJD4evBNyZ/g2Lki02w71l6zsN4av3HgsalWhaNefr8eyP+cF8E+43oVwgDV
	 l7c0uh3ZDpHEQ==
Date: Fri, 28 Aug 2026 12:09:06 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: George Moussalem <george.moussalem@outlook.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Praveenkumar I <praveenkumar.i@oss.qualcomm.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>, 
	Nitheesh Sekar <quic_nsekar@quicinc.com>, Wesley Cheng <quic_wcheng@quicinc.com>, 
	Manivannan Sadhasivam <mani@kernel.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH v3 01/12] dt-bindings: phy: qcom,ipq5332-uniphy-pcie:
 Change to PCIe/USB3 combo PHY
Message-ID: <20260828-wisteria-fennec-from-arcadia-a44ebe@quoll>
References: <20260825-ipq5018-usb3-v3-0-39be0955a6aa@outlook.com>
 <20260825-ipq5018-usb3-v3-1-39be0955a6aa@outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260825-ipq5018-usb3-v3-1-39be0955a6aa@outlook.com>
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

On Tue, Aug 25, 2026 at 04:37:18PM +0400, George Moussalem wrote:
> This PHY is a PCIE/USB3 multi-purpose PHY. Initial support was added for
> PCIe only, so rename the binding and add support for USB3 PHY mode.
> 
> The PCIe and USB physical pads are muxed and selection is done via a
> control register in TCSR. Add a new property to the binding to enable
> switching the default PCIe mux selection to USB3 mode.
> 
> In addition, USB3 mode requires a 5V supply, so add a vdd-supply
> property for it.
> 
> Signed-off-by: George Moussalem <george.moussalem@outlook.com>
> ---
>  .../bindings/phy/qcom,ipq5332-uniphy-pcie-phy.yaml | 109 ----------------
>  .../phy/qcom,ipq5332-uniphy-pcie-usb3-phy.yaml     | 141 +++++++++++++++++++++
>  include/dt-bindings/phy/phy-qcom-qmp.h             |   4 +
>  3 files changed, 145 insertions(+), 109 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,ipq5332-uniphy-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,ipq5332-uniphy-pcie-phy.yaml
> deleted file mode 100644
> index 6e9df81441e9..000000000000

Please do not rename the binding. Old name was correct. New one is not,
otherwise please point me to the compatible like that.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
