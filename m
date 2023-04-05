Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A538FC7619A
	for <linux-phy@archiver.kernel.org>; Wed,  5 Apr 2023 19:36:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w0X3kDkYMRpH+mEVm8EBeL8RCEGIovs6A+j//nVQSwQ=; b=tQAtq4GZuVqfRB
	ZBMO2Fzl/vyeERzO8ADNwlJ2mD41CK9dw4sLQ5E5OZ4F+ihRKdcM4bXn9zYSFxGCL2+Pdy2HvO+x1
	GUcIm12AFXZgoQ9zNVpbyGr/GuwUbEzKm/9WruBA03ZOzkmIsPpBqf/jQQVYULhLXy93hBcDbQX1n
	e+GmXwEYzVuGSodg0+lM+EkwnfH/QwD5i106kNnwuaE8NNzGzNT4MHaDPBQUym1ROi/4G7jd0WLgJ
	p9eIcCdrQtRHoQ+sbb7yEDtSoXIil+MBrpEan/rAYIVvwERb7XoASHGpQlOHYoZ5MRlvhoyLISArp
	4/R//dQpfzwHcSYX/HKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pk8w2-005WEH-0q;
	Wed, 05 Apr 2023 19:36:46 +0000
Received: from mail-yb1-xb30.google.com ([2607:f8b0:4864:20::b30])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pk8vy-005WDT-1D
	for linux-phy@lists.infradead.org;
	Wed, 05 Apr 2023 19:36:44 +0000
Received: by mail-yb1-xb30.google.com with SMTP id p203so43850833ybb.13
        for <linux-phy@lists.infradead.org>; Wed, 05 Apr 2023 12:36:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680723397;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=bNfBESDvbtGTqqyDrKwG3G3l2rlJ3YiUHnXOmDoRd5Y=;
        b=YTl6WeOM+1agoNV7su6DdsFpGJLBPCXDw7mc4qSxDGiZpdCyoFhkxMrKSC8Gxf0sfl
         8g8/xPi5LCBxDzlYwELs6sOqQhUi7qoVPtBvpRg0fTVciYX6ER9Wqwv7mhB12UlvY9ky
         tqfGMmJRksWxSr4uHwjqXHdHdpj0adpoShqUKQOZ0t7Qhw39Ihgft9llYeZBK+9/VrFz
         FcF+IwjidcWzYE62DmBEcfmeDq7iAquYUehh8L4DWlmqW7uFdOszG+oC09dUEwg5OIw5
         D4TYh+P8xb+Bdop+kslUsugH4hQ8vdTBdur2Q6pY63bu5oF73ABgSOKfzvlVN+mS1ksp
         olAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680723397;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bNfBESDvbtGTqqyDrKwG3G3l2rlJ3YiUHnXOmDoRd5Y=;
        b=ujms9pifCGedqXaCk+lA40cKIl5RaZeJ93E6l+XZ47TV2wM4Z3X2vIXvputXgiwsVg
         PA3Ay8+1+rbYttUgK+XiIWuHQfOSsaQxH7D3ivcu30MY0jQuCimw7M2CjNfO6kkRLyt5
         5QCiJdPLA7Xb1j+bkVFTK9urccDgkWI482B7zNzc0qGoleDJhs+UwrAyH+FtAh+HcTdu
         dmPvT4ivaBy4Jg9M/qoyFE9RHAPqNdNFgUCcdEpvS4pgYdJjgFTj34GK+APkNzYPJRux
         l1qH44FMrKRu9i9Kv/soduTomdCGetAlbGSzdstxTruoyvfOWOGa/lBbfpKA/Kyhc+io
         Sd7g==
X-Gm-Message-State: AAQBX9exgibKDfil1bUaxNMW8kjL5vlsRvTqHa2RsGqkn8yzEruBH+dL
	wTH9R6xut6EtnU9J01JLL+4cyrqBy2HZMtqEP1ic2Q==
X-Google-Smtp-Source: AKy350bnPK17WqG71f/LMZeJqEhERzh25R/NeKn5oJ+9/EGEJVl3xV2GhLU8s3FRBfEw9JVjt8Xyc8479sx8AvYA7tg=
X-Received: by 2002:a25:d448:0:b0:b4c:9333:2a2 with SMTP id
 m69-20020a25d448000000b00b4c933302a2mr264956ybf.9.1680723397714; Wed, 05 Apr
 2023 12:36:37 -0700 (PDT)
MIME-Version: 1.0
References: <20230405191633.1864671-1-bhupesh.sharma@linaro.org> <20230405191633.1864671-3-bhupesh.sharma@linaro.org>
In-Reply-To: <20230405191633.1864671-3-bhupesh.sharma@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 5 Apr 2023 22:36:27 +0300
Message-ID: <CAA8EJppfRvc7nJ+AeUjrqfmZ8aLWPma-Ecda-tjOwezqWVueuw@mail.gmail.com>
Subject: Re: [PATCH v5 2/2] arm64: dts: qcom: sm6115: Add USB SS qmp phy node
To: Bhupesh Sharma <bhupesh.sharma@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-phy@lists.infradead.org, agross@kernel.org, 
	linux-kernel@vger.kernel.org, andersson@kernel.org, bhupesh.linux@gmail.com, 
	krzysztof.kozlowski@linaro.org, robh+dt@kernel.org, konrad.dybcio@linaro.org, 
	kishon@kernel.org, vkoul@kernel.org, krzysztof.kozlowski+dt@linaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230405_123642_449694_C4A39E45 
X-CRM114-Status: GOOD (  17.61  )
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

On Wed, 5 Apr 2023 at 22:19, Bhupesh Sharma <bhupesh.sharma@linaro.org> wrote:
>
> Add USB superspeed qmp phy node to dtsi.
>
> Make sure that the various board dts files (which include sm4250.dtsi file)
> continue to work as intended.
>
> Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
> ---
>  .../boot/dts/qcom/sm4250-oneplus-billie2.dts  |  3 ++
>  arch/arm64/boot/dts/qcom/sm6115.dtsi          | 36 +++++++++++++++++--
>  .../boot/dts/qcom/sm6115p-lenovo-j606f.dts    |  3 ++
>  3 files changed, 40 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/qcom/sm4250-oneplus-billie2.dts b/arch/arm64/boot/dts/qcom/sm4250-oneplus-billie2.dts
> index a1f0622db5a0..75951fd439df 100644
> --- a/arch/arm64/boot/dts/qcom/sm4250-oneplus-billie2.dts
> +++ b/arch/arm64/boot/dts/qcom/sm4250-oneplus-billie2.dts
> @@ -242,6 +242,9 @@ &usb {
>  &usb_dwc3 {
>         maximum-speed = "high-speed";
>         dr_mode = "peripheral";
> +
> +       phys = <&usb_hsphy>;
> +       phy-names = "usb2-phy";
>  };
>
>  &usb_hsphy {
> diff --git a/arch/arm64/boot/dts/qcom/sm6115.dtsi b/arch/arm64/boot/dts/qcom/sm6115.dtsi
> index 2a51c938bbcb..b2fa565e4816 100644
> --- a/arch/arm64/boot/dts/qcom/sm6115.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm6115.dtsi
> @@ -650,6 +650,38 @@ usb_hsphy: phy@1613000 {
>                         status = "disabled";
>                 };
>
> +               usb_qmpphy: phy@1615000 {
> +                       compatible = "qcom,sm6115-qmp-usb3-phy";
> +                       reg = <0x0 0x01615000 0x0 0x200>;
> +                       clocks = <&gcc GCC_AHB2PHY_USB_CLK>,
> +                                <&gcc GCC_USB3_PRIM_CLKREF_CLK>,
> +                                <&gcc GCC_USB3_PRIM_PHY_COM_AUX_CLK>;
> +                       clock-names = "cfg_ahb",
> +                                     "ref",
> +                                     "com_aux";
> +                       resets = <&gcc GCC_USB3PHY_PHY_PRIM_SP0_BCR>,
> +                                <&gcc GCC_USB3_PHY_PRIM_SP0_BCR>;
> +                       reset-names = "phy_phy", "phy";
> +                       status = "disabled";
> +                       #address-cells = <2>;
> +                       #size-cells = <2>;
> +                       ranges;
> +
> +                       usb_ssphy: phy@1615200 {
> +                               reg = <0x0 0x01615200 0x0 0x200>,
> +                                     <0x0 0x01615400 0x0 0x200>,
> +                                     <0x0 0x01615c00 0x0 0x400>,
> +                                     <0x0 0x01615600 0x0 0x200>,
> +                                     <0x0 0x01615800 0x0 0x200>,
> +                                     <0x0 0x01615a00 0x0 0x100>;
> +                               #clock-cells = <0>;
> +                               #phy-cells = <0>;
> +                               clocks = <&gcc GCC_USB3_PRIM_PHY_PIPE_CLK>;
> +                               clock-names = "pipe0";
> +                               clock-output-names = "usb3_phy_pipe_clk_src";
> +                       };
> +               };

I can repeat previous message:

Please update this to newer style bindings (see
qcom,sc8280xp-qmp-usb3-uni-phy.yaml).

We are going to switch all QMP PHYs to use a newer style of bindings.
I have started the work to convert existing usecases. As you are
adding a new DT node, please add it in a good shape from the
beginning.


> +
>                 qfprom@1b40000 {
>                         compatible = "qcom,sm6115-qfprom", "qcom,qfprom";
>                         reg = <0x0 0x01b40000 0x0 0x7000>;
> @@ -1100,8 +1132,8 @@ usb_dwc3: usb@4e00000 {
>                                 compatible = "snps,dwc3";
>                                 reg = <0x0 0x04e00000 0x0 0xcd00>;
>                                 interrupts = <GIC_SPI 255 IRQ_TYPE_LEVEL_HIGH>;
> -                               phys = <&usb_hsphy>;
> -                               phy-names = "usb2-phy";
> +                               phys = <&usb_hsphy>, <&usb_ssphy>;
> +                               phy-names = "usb2-phy", "usb3-phy";
>                                 iommus = <&apps_smmu 0x120 0x0>;
>                                 snps,dis_u2_susphy_quirk;
>                                 snps,dis_enblslpm_quirk;
> diff --git a/arch/arm64/boot/dts/qcom/sm6115p-lenovo-j606f.dts b/arch/arm64/boot/dts/qcom/sm6115p-lenovo-j606f.dts
> index 10c9d338446c..d60cc024749b 100644
> --- a/arch/arm64/boot/dts/qcom/sm6115p-lenovo-j606f.dts
> +++ b/arch/arm64/boot/dts/qcom/sm6115p-lenovo-j606f.dts
> @@ -280,6 +280,9 @@ &usb {
>  &usb_dwc3 {
>         maximum-speed = "high-speed";
>         dr_mode = "peripheral";
> +
> +       phys = <&usb_hsphy>;
> +       phy-names = "usb2-phy";
>  };
>
>  &usb_hsphy {
> --
> 2.38.1
>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
