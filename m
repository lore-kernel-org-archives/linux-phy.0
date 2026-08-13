Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98680C5CFDB
	for <linux-phy@archiver.kernel.org>; Thu, 13 Aug 2026 08:59:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UDEsl/XyZYaUYgBRlwVgY4bHPSGpwiwJgTVydHlSBlE=; b=t3Ul/cDC+e/BtI
	3030oZp9tqWSEQ/b2ku5mrmi6vLMBJUrXyMx/0/Qnuo7fqgOeTheZAzwM6YkvEGrrKsHzc5jxIy/+
	OOOhthWNpkoAKVvRA14+PDPDTMPjBsLh0QqK/ull2xCvQG4Otft86i6BHa58hJ77UoAPgUTo+xEzp
	XzyXcBIr2bA2n/uJfd+8JO6w9e5ONaUIPYakDlCm6T7yezB/PSzUMy7FwNXVXTOuccvpdG5+SR8ys
	rvCErz4VA1eBygtzAKI3zZjlNU5YZpHgw9X6eA3hMSVR14X+h+n32uFZ3CjSWWyTGjDYSImeTH2ae
	S5e4RDfTCVv8aqcgRUTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuRI6-00000000EU9-12KE;
	Thu, 13 Aug 2026 08:59:58 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuRI4-00000000EU2-44ZI
	for linux-phy@lists.infradead.org;
	Thu, 13 Aug 2026 08:59:57 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 2B0ED600AD;
	Thu, 13 Aug 2026 08:59:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 875421F00A3A;
	Thu, 13 Aug 2026 08:59:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786611595;
	bh=dtGZ81a3jSSuCBgYV0KTzg5fZRnkjFOsncZEdYGS6S4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=bq65PrTlrpQK5qnE6+gKhwDV8n+44dSRcaQ15A9cQ8w8ugWgWsVHfbcdZSwGUgCFn
	 1RWLpApt10D2UuocrruxHUY5xj2cx/L8E8KYysNR9ozK3XpX0xql6GzPBgNnuimdmo
	 xXKq3sjTcri6QXfHtzfdzvwDWqnshiOIBCOx4OxeQYIMrQepZTuRf7Svc/i86ESnOK
	 P7/MQ69Mw87UW5mWgvo1fOfId3yHTcPm/zjSyqWg4YhgFmkt9fLFpE+txyJbasR0sp
	 Kn25kcWPvTgPwdvLJy3MJQVNSuMNcWT/EP5w/OtreTZjxFDMr94kQbZ1JY3jXx1A3i
	 x9R22341btaUg==
Date: Thu, 13 Aug 2026 10:59:46 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: George Moussalem <george.moussalem@outlook.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Praveenkumar I <quic_ipkumar@quicinc.com>, Varadarajan Narayanan <quic_varada@quicinc.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Wesley Cheng <quic_wcheng@quicinc.com>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH v2 12/14] arm64: dts: qcom: ipq5332: Enable USB
 Super-Speed PHY
Message-ID: <20260813-gentle-eel-of-elegance-ccbdbb@quoll>
References: <20260812-ipq5018-usb3-v2-0-8f355d7ff0ef@outlook.com>
 <20260812-ipq5018-usb3-v2-12-8f355d7ff0ef@outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260812-ipq5018-usb3-v2-12-8f355d7ff0ef@outlook.com>
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

On Wed, Aug 12, 2026 at 01:34:47PM +0400, George Moussalem wrote:
> From: Praveenkumar I <quic_ipkumar@quicinc.com>
> 
> Enable USB Super-Speed PHY support. The PCIe and USB3 PHYs share the
> same MMIO address space, so override the compatible string to use the
> USB3 PHY driver instead of the PCIe PHY driver and set the required
> properties accordingly.
> 
> Signed-off-by: Praveenkumar I <quic_ipkumar@quicinc.com>
> Signed-off-by: George Moussalem <george.moussalem@outlook.com>
> ---
>  arch/arm64/boot/dts/qcom/ipq5332-rdp468.dts | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq5332-rdp468.dts b/arch/arm64/boot/dts/qcom/ipq5332-rdp468.dts
> index 25a70cd884c0..164f9a9a6c75 100644
> --- a/arch/arm64/boot/dts/qcom/ipq5332-rdp468.dts
> +++ b/arch/arm64/boot/dts/qcom/ipq5332-rdp468.dts
> @@ -100,3 +100,22 @@ &usbphy0 {
>  
>  	status = "okay";
>  };
> +
> +/* this combo PHY supports PCIe and USB3 */
> +&pcie0_phy {
> +	compatible = "qcom,ipq5018-uniphy-usb-ss-phy";

Nope, phy in tjhe SoC does not change per board.

You have one phy device, already defined in the SoC DTSI. In the board
you only choose phy type in the consumer node.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
