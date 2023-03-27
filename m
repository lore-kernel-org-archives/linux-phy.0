Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 967D0C7619A
	for <linux-phy@archiver.kernel.org>; Mon, 27 Mar 2023 08:14:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8/UQFgHjYmtQZ1Bpx4Gdv/UGzTbqyxX5saeTg1qpOOM=; b=xoKI2M4gzd6qyD
	elRSYg0DsweNRamJ6/aggesn0w4wR3HAalxPYoWdMZLjkzucSe1PgSwv8iPnFM9YVa2oACD9j+bNn
	KPFi6oHLzmSduFbA/rx/4F6Kzyv8SE+vSYw6JjrppDycf1yxSTbNee+So6QgmtPe3nOOG31tOLomz
	b7NRWzDtSwSth9wxHEIkq/lou0ovgy3oIwox5YD7HbjZqlpvt3ZreieJqajDDK4W+fJ68WxXe3wnK
	8tz7xLYhaRXRv7+6JkUbo70t4Mj/T8S8WK0JitiZ1OGXSZrWV7+poYDuiF4/+7GsSu4X6xCe1wguX
	YpK9CwecFnVBXdo0YZzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pgi07-00AC04-0v;
	Mon, 27 Mar 2023 08:14:47 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pgi03-00ABzW-2r
	for linux-phy@lists.infradead.org;
	Mon, 27 Mar 2023 08:14:45 +0000
Received: by mail-wr1-x435.google.com with SMTP id t4so2483254wra.7
        for <linux-phy@lists.infradead.org>; Mon, 27 Mar 2023 01:14:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679904882;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:reply-to:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=BwkvMWxvHh5fU55a9qvOz8SDqCvIon3uSNtLNbG8XOU=;
        b=UdZf/oMr3KbsHSRAuiFvMMTDu8dpMZaZN2bBy2dMO8V5T8+1sTaltgiRhqYRiFdAwr
         LJICXAl2CU5DZK4TdLlVNDH76/5RY1nnG8BocrmI6PkaIVYT4lBt8V8CMe5e+p7xSC2Q
         xTrz0b8t3fmyY39xVSfxLyAsEY/Bf8qQolTrxjrTwTpj4WUkg8c1o0QOCtKlkBIYz+a5
         DOBOVaGtloGM7HgNY4eweC5kPKfhVc6idPVY+QpIE8FvfZDWmkCPVKB7kJVueA2XI+Hr
         v9QRIeZSKCp2huw1u0k0J0Uxg1aQJpm0GxLBx60LdzbjVZTS627QBMcs6IHhu33BfjHm
         e5kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679904882;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:reply-to:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BwkvMWxvHh5fU55a9qvOz8SDqCvIon3uSNtLNbG8XOU=;
        b=NH/Q8POXIKyK6eLMyWcoN7zfd+kj2ytcxopAYUzSgNPip+fyTcVR1mGh4cFKGEijQf
         IcpPYKfF0lVE66QXLYqTyLkVXIZi31TwPI2KsC/xvF0yApt4LeKgG7hYyrNDIClS50wV
         bNj1gDsgd2Kxi4spB28VmQO726+jYCQSYo3uNEJBhGt26I3ZZ3uxNxDYEfxSCqbiHey1
         G3f4r8WhBBnAJNGAvXfY84b3licodTXkkOCLxuAXdoajvKAO/K/lnmmiCdcM0BlNBrMR
         XJAzcC6CwdczPrU6cGSJ/VXQ+5nocn/3+PZVaVYQsq1r3Xc+f1As6TvUfM4D9q+ILYfR
         mSWA==
X-Gm-Message-State: AAQBX9eXrm//34+vyyKANIXx4z9tU2ux3vVLGW36Qf8j+AYBwmQFr1yX
	+kg0aujgRtKlAP5n544xciwuDw==
X-Google-Smtp-Source: AKy350a2SxlyTPUH28dY2TGWRWULx5I+GKY0+7voi0u99VBFWp8d4r2NCj/sVwhLwYgpMXiejLCLGA==
X-Received: by 2002:adf:f1cb:0:b0:2cf:e8b2:4f76 with SMTP id z11-20020adff1cb000000b002cfe8b24f76mr9392235wro.66.1679904882405;
        Mon, 27 Mar 2023 01:14:42 -0700 (PDT)
Received: from [192.168.7.111] (679773502.box.freepro.com. [212.114.21.58])
        by smtp.gmail.com with ESMTPSA id b3-20020a5d4d83000000b002dfca33ba36sm2907825wru.8.2023.03.27.01.14.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Mar 2023 01:14:42 -0700 (PDT)
Message-ID: <5366f182-854b-105c-be93-efed5ea18ab3@linaro.org>
Date: Mon, 27 Mar 2023 10:14:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v2 9/9] arm64: dts: qcom: sm8250: switch USB+DP QMP PHY to
 new style of bindings
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 Johan Hovold <johan+linaro@kernel.org>, devicetree@vger.kernel.org
References: <20230326005733.2166354-1-dmitry.baryshkov@linaro.org>
 <20230326005733.2166354-10-dmitry.baryshkov@linaro.org>
From: Neil Armstrong <neil.armstrong@linaro.org>
Organization: Linaro Developer Services
In-Reply-To: <20230326005733.2166354-10-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230327_011443_924612_A0BC3AD6 
X-CRM114-Status: GOOD (  13.19  )
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
Reply-To: neil.armstrong@linaro.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 26/03/2023 01:57, Dmitry Baryshkov wrote:
> Change the USB QMP PHY to use newer style of QMP PHY bindings (single
> resource region, no per-PHY subnodes).
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>   arch/arm64/boot/dts/qcom/sm8250.dtsi | 49 ++++++++--------------------
>   1 file changed, 14 insertions(+), 35 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
> index 7b78761f2041..24b51fb373b4 100644
> --- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
> @@ -15,6 +15,7 @@
>   #include <dt-bindings/interconnect/qcom,osm-l3.h>
>   #include <dt-bindings/interconnect/qcom,sm8250.h>
>   #include <dt-bindings/mailbox/qcom-ipcc.h>
> +#include <dt-bindings/phy/phy-qcom-qmp.h>
>   #include <dt-bindings/power/qcom-rpmpd.h>
>   #include <dt-bindings/soc/qcom,apr.h>
>   #include <dt-bindings/soc/qcom,rpmh-rsc.h>
> @@ -3527,48 +3528,26 @@ usb_2_hsphy: phy@88e4000 {
>   			resets = <&gcc GCC_QUSB2PHY_SEC_BCR>;
>   		};
>   
> -		usb_1_qmpphy: phy@88e9000 {
> +		usb_1_qmpphy: phy@88e8000 {
>   			compatible = "qcom,sm8250-qmp-usb3-dp-phy";
> -			reg = <0 0x088e9000 0 0x200>,
> -			      <0 0x088e8000 0 0x40>,
> -			      <0 0x088ea000 0 0x200>;
> +			reg = <0 0x088e8000 0 0x3000>;
>   			status = "disabled";
> -			#address-cells = <2>;
> -			#size-cells = <2>;
> -			ranges;
>   
>   			clocks = <&gcc GCC_USB3_PRIM_PHY_AUX_CLK>,
>   				 <&rpmhcc RPMH_CXO_CLK>,
> -				 <&gcc GCC_USB3_PRIM_PHY_COM_AUX_CLK>;
> -			clock-names = "aux", "ref_clk_src", "com_aux";
> +				 <&gcc GCC_USB3_PRIM_PHY_COM_AUX_CLK>,
> +				 <&gcc GCC_USB3_PRIM_PHY_PIPE_CLK>;
> +			clock-names = "aux",
> +				      "ref",
> +				      "com_aux",
> +				      "usb3_pipe";
>   
>   			resets = <&gcc GCC_USB3_DP_PHY_PRIM_BCR>,
>   				 <&gcc GCC_USB3_PHY_PRIM_BCR>;
>   			reset-names = "phy", "common";
>   
> -			usb_1_ssphy: usb3-phy@88e9200 {
> -				reg = <0 0x088e9200 0 0x200>,
> -				      <0 0x088e9400 0 0x200>,
> -				      <0 0x088e9c00 0 0x400>,
> -				      <0 0x088e9600 0 0x200>,
> -				      <0 0x088e9800 0 0x200>,
> -				      <0 0x088e9a00 0 0x100>;
> -				#clock-cells = <0>;
> -				#phy-cells = <0>;
> -				clocks = <&gcc GCC_USB3_PRIM_PHY_PIPE_CLK>;
> -				clock-names = "pipe0";
> -				clock-output-names = "usb3_phy_pipe_clk_src";
> -			};
> -
> -			dp_phy: dp-phy@88ea200 {
> -				reg = <0 0x088ea200 0 0x200>,
> -				      <0 0x088ea400 0 0x200>,
> -				      <0 0x088eaa00 0 0x200>,
> -				      <0 0x088ea600 0 0x200>,
> -				      <0 0x088ea800 0 0x200>;
> -				#phy-cells = <0>;
> -				#clock-cells = <1>;
> -			};
> +			#clock-cells = <1>;
> +			#phy-cells = <1>;
>   		};
>   
>   		usb_2_qmpphy: phy@88eb000 {
> @@ -3713,7 +3692,7 @@ usb_1_dwc3: usb@a600000 {
>   				iommus = <&apps_smmu 0x0 0x0>;
>   				snps,dis_u2_susphy_quirk;
>   				snps,dis_enblslpm_quirk;
> -				phys = <&usb_1_hsphy>, <&usb_1_ssphy>;
> +				phys = <&usb_1_hsphy>, <&usb_1_qmpphy QMP_USB43DP_USB3_PHY>;
>   				phy-names = "usb2-phy", "usb3-phy";
>   			};
>   		};
> @@ -4403,8 +4382,8 @@ dispcc: clock-controller@af00000 {
>   				 <&dsi0_phy 1>,
>   				 <&dsi1_phy 0>,
>   				 <&dsi1_phy 1>,
> -				 <&dp_phy 0>,
> -				 <&dp_phy 1>;
> +				 <&usb_1_qmpphy QMP_USB43DP_DP_LINK_CLK>,
> +				 <&usb_1_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>;
>   			clock-names = "bi_tcxo",
>   				      "dsi0_phy_pll_out_byteclk",
>   				      "dsi0_phy_pll_out_dsiclk",

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
