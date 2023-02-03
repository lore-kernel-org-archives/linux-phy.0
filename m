Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77CA3C61DA4
	for <linux-phy@archiver.kernel.org>; Fri,  3 Feb 2023 10:54:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ydcUUtY8+HRkWJcNC91gfqSn0uit0HpIIXvicGPPhHE=; b=tBdD3g1WoonJbZ
	5RnQetA1v6gqZ/t9HFWWnwMoQqLVfzGtaSjmuFhg1PLlTwWzdb1lfOzhFqS/NXfld4lgDjy1xR6//
	2AaZZ6z03YOctY6vQu9SbUzkk3Jyc/USFesbR5V5CT69TH4Klx1cVF8HP1fNoFhY6hP4Hz5Q2PRFj
	5WCdQ3dvirk5j6WRB7IR/8eSUXa0WXHOFqnoCEVYs8gBAl69Z8U2eflPI8gWz5EuYYW/RqKgxcS6i
	CBt7XOiZV/zlYjiP3BbFIPo741AaZNsDeMpnggQI5mTv0DpCFN5RaKae2IY8qRzsUbhNyNP+zV8qx
	Ra5s2eMM5S1IP8mePxPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNtiT-001U5V-NG; Fri, 03 Feb 2023 10:54:49 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNtiR-001U4C-8F
	for linux-phy@lists.infradead.org; Fri, 03 Feb 2023 10:54:48 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id E29ADB82911;
	Fri,  3 Feb 2023 10:54:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8F129C433EF;
	Fri,  3 Feb 2023 10:54:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675421684;
	bh=bdrm4RmZt8Zhe1KAE3Pxv/XYpMXhajbxCxkPQpTRAIo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rxjzdNtifff+EPlQ/Q03g/ZSxR+Yi7CGiqlUsCt8DFjRjW49/sBKsX1cSTvOfCfMN
	 LUGHAi5FOiwIeSyR0M65ui8nX3EwIgVfTzVCRwuKF0Iypl+Yp2QxxA7GYZvkcF/ChJ
	 AHQV+z5TQ3hLsFJSNAvR0vH0Wv6nCyjWGrBRXkTHpaAK7v9MPoDd2AARx9tTqgamSv
	 rHmmCOYpu/VKhhVowrOU0+i0AzEnNS4lAAODzWo1voc6ePtN6CRJMWwgOLf+/QlumX
	 u1iq8UxqTuWjbJTcfeDiaeaAzmnS8ODa1kSVXWA+2Xp5mB4puPxiIY5AvdQBspriaK
	 ECedToCDlDZKw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1pNtip-0001Oq-Ch; Fri, 03 Feb 2023 11:55:11 +0100
Date: Fri, 3 Feb 2023 11:55:11 +0100
From: Johan Hovold <johan@kernel.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	"vkoul@kernel.org" <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v4 7/8] arm64: dts: qcom: sm8550: Add USB PHYs and
 controller nodes
Message-ID: <Y9zoD/eVG8zjMYNx@hovoldconsulting.com>
References: <20230202132511.3983095-1-abel.vesa@linaro.org>
 <20230202132511.3983095-8-abel.vesa@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230202132511.3983095-8-abel.vesa@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230203_025447_602773_8C1E6363 
X-CRM114-Status: GOOD (  19.41  )
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

On Thu, Feb 02, 2023 at 03:25:10PM +0200, Abel Vesa wrote:
> Add USB host controller and PHY nodes.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
> 
> Changes since v3:
>  * none
> 
> Changes since v2:
>  * none
> 
> NOTE: This patch has been already merged. It is here only to provide
> context for the rest of the patchset. There is a change with respect to
> the clocks, but that will be sent as a separate/individual fix patch.

I believe it was because of the 'phy' and 'common' resets, which have
been switched below.

>  arch/arm64/boot/dts/qcom/sm8550.dtsi | 92 +++++++++++++++++++++++++++-
>  1 file changed, 91 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> index a85d2ae7d155..0262193e2ffe 100644
> --- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> @@ -14,6 +14,7 @@
>  #include <dt-bindings/mailbox/qcom-ipcc.h>
>  #include <dt-bindings/power/qcom-rpmpd.h>
>  #include <dt-bindings/soc/qcom,rpmh-rsc.h>
> +#include <dt-bindings/phy/phy-qcom-qmp.h>
>  #include <dt-bindings/thermal/thermal.h>
>  
>  / {
> @@ -746,7 +747,7 @@ gcc: clock-controller@100000 {
>  				 <&ufs_mem_phy 0>,
>  				 <&ufs_mem_phy 1>,
>  				 <&ufs_mem_phy 2>,
> -				 <0>;
> +				 <&usb_dp_qmpphy QMP_USB43DP_USB3_PIPE_CLK>;
>  		};
>  
>  		ipcc: mailbox@408000 {
> @@ -2060,6 +2061,95 @@ opp-202000000 {
>  			};
>  		};
>  
> +		usb_1_hsphy: phy@88e3000 {
> +			compatible = "qcom,sm8550-snps-eusb2-phy";
> +			reg = <0x0 0x088e3000 0x0 0x154>;
> +			#phy-cells = <0>;
> +
> +			clocks = <&tcsr TCSR_USB2_CLKREF_EN>;
> +			clock-names = "ref";
> +
> +			resets = <&gcc GCC_QUSB2PHY_PRIM_BCR>;
> +
> +			status = "disabled";
> +		};
> +
> +		usb_dp_qmpphy: phy@88e8000 {
> +			compatible = "qcom,sm8550-qmp-usb3-dp-phy";
> +			reg = <0x0 0x088e8000 0x0 0x3000>;
> +
> +			clocks = <&gcc GCC_USB3_PRIM_PHY_AUX_CLK>,
> +				 <&rpmhcc RPMH_CXO_CLK>,
> +				 <&gcc GCC_USB3_PRIM_PHY_COM_AUX_CLK>,
> +				 <&gcc GCC_USB3_PRIM_PHY_PIPE_CLK>;
> +			clock-names = "aux", "ref", "com_aux", "usb3_pipe";
> +
> +			power-domains = <&gcc USB3_PHY_GDSC>;
> +
> +			resets = <&gcc GCC_USB3_DP_PHY_PRIM_BCR>,
> +				 <&gcc GCC_USB3_PHY_PRIM_BCR>;
> +			reset-names = "phy", "common";
> +
> +			#clock-cells = <1>;
> +			#phy-cells = <1>;
> +
> +			status = "disabled";
> +		};

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
