Return-Path: <SRS0=YzZ0=OR=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55B74C433F5
	for <linux-phy@archiver.kernel.org>; Mon, 27 Sep 2021 12:30:39 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1C2B0610A2
	for <linux-phy@archiver.kernel.org>; Mon, 27 Sep 2021 12:30:39 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 1C2B0610A2
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SgEGZZ7A6Yi66nNU75jOl2iYrMRTYc+nEr235QGbCLg=; b=q3DURTFF6/Ps9E
	M35Nw1vjNhQYZDqr8u1ZlYOZFDJxr3jSGJaL65I4o6d+4qEa2KGJLn8TVmPhVcTjYECbpjgVSi9Uv
	Y+8rEz2shOuR3HfD3q/PfAy8LoUBRSSNF1DKzxM6IjDRyH5W9U93S0gB7WKirDnDvArhcjvNkpvg0
	sxdiEXreAKFRmL+oPcSk+C/IeR6hJ4klBA4aRUJi94JaRJMAVpDUzEy/RiWVcN5TxzAhQQXnGdftY
	0JkAV5Q1zv5Xy6NzegeBQ8mMrekZILNQzgbyz2UjhJYWbDEjzWsum7lEOtSQsKM5yMF92IeEDWpCj
	g22UzPkvForHDtzfokLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mUpmI-002ccP-MO; Mon, 27 Sep 2021 12:30:38 +0000
Received: from mail-pf1-x436.google.com ([2607:f8b0:4864:20::436])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mUpmF-002cab-N6
 for linux-phy@lists.infradead.org; Mon, 27 Sep 2021 12:30:37 +0000
Received: by mail-pf1-x436.google.com with SMTP id s16so15777226pfk.0
 for <linux-phy@lists.infradead.org>; Mon, 27 Sep 2021 05:30:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=8f4/mkuvOY8+rGJAhfbTZe+oZ+Vy38+/mmlJel9bTCg=;
 b=AXX7QOP2Q1nvRSGiamW6NPuaVbis6ad1FY2R1IvUfyzLRQfw5H4803mnONI0YGAezk
 AmJzdh6ytzxtzm1ZOM59WVbDyf8pTs70hWD9VGDyLFQHl+hZlG8M5RFWplYqBn7YkQAo
 ZnZ7gld/iTXdh6q9yEelauiOg7Qrj9sop0PiYSGmh9easDH0xWqyqhBfIA7zOpsz5EW7
 0oNeIBz5O3aJsMLRhF5SdiauxhaWySzi51Rqh4YNBOlDuw1ohR2LF70tl3JgDBq1tToF
 F2O7sxl1FPn1Sl1vZHK+5ZErQQis64cJpA5vg3UUrMrKITSFPU7QpVVET+eYfh8A9jig
 Kp9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=8f4/mkuvOY8+rGJAhfbTZe+oZ+Vy38+/mmlJel9bTCg=;
 b=5lsmuiYINPiszaqpfijh6NKXCvpx8xE84fJ7If5arRoACpZu6Ggfl/SoTwW23CDp+4
 Y8v2AL0SjGu53VlPdbeKzZI6jK8jgREtcYwqQzHuOsHXy+I468Fi7dwCceSotehs5aPe
 YFKF6lqiEAr09Vl7lBG7MpM3gvr/PMQFGtnyTYpOIO42vsJZxkth4aYkfY9h+dHoB5Ka
 mGwmPWUPDv74kfz624Gm/bK7AhHdMzcpbttJIxgVEYtwwcPdOk/WUjtXOV3ZydyiQjKt
 MUfQ83GlZ8DIdsxbnqn7gHDw+8pI3GxVDjRdS00BIqke1tFu59cokikDAqeXdyytUMvE
 XVLQ==
X-Gm-Message-State: AOAM531qwVww0I3w+ZxMKGudk7dUayjD7HJ/xzfAB+qi4SQwFERJvWMC
 s0lK2LRtuCvrw1O89I/Hp7jDNg==
X-Google-Smtp-Source: ABdhPJz8hwwjXyEE+3UAgO2auOFQcmt/X+FhXQFqDRBK1CeNhUWk0j5jHZXuOBEPwkUjIzirW3Ns7w==
X-Received: by 2002:a65:6187:: with SMTP id c7mr16325588pgv.317.1632745834548; 
 Mon, 27 Sep 2021 05:30:34 -0700 (PDT)
Received: from dragon (80.251.214.228.16clouds.com. [80.251.214.228])
 by smtp.gmail.com with ESMTPSA id w1sm7208159pfj.147.2021.09.27.05.30.31
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 27 Sep 2021 05:30:34 -0700 (PDT)
Date: Mon, 27 Sep 2021 20:30:27 +0800
From: Shawn Guo <shawn.guo@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Manu Gautam <mgautam@codeaurora.org>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Jeffrey Hugo <jeffrey.l.hugo@gmail.com>,
 Jami Kettunen <jamipkettunen@gmail.com>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: phy: qcom,qusb2: Add missing vdd-supply
Message-ID: <20210927123026.GG9901@dragon>
References: <20210927044824.30246-1-shawn.guo@linaro.org>
 <20210927044824.30246-2-shawn.guo@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210927044824.30246-2-shawn.guo@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210927_053035_781684_8DC649F3 
X-CRM114-Status: GOOD (  15.34  )
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

On Mon, Sep 27, 2021 at 12:48:22PM +0800, Shawn Guo wrote:
> Besides vdda-pll and vdda-phy-dpdm, vdd-supply is a required supply for
> PHY digital circuit operation.  Add it for correctness and completeness.
> 
> Signed-off-by: Shawn Guo <shawn.guo@linaro.org>
> ---
>  Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
> index 48ae604b2194..96e31f582fc9 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
> @@ -51,6 +51,10 @@ properties:
>        - const: ref
>        - const: iface
>  
> +  vdda-supply:

Oops, it should be `vdd-supply`.  Will fix it in v2.

Shawn

> +    description:
> +      Phandle to 0.9V regulator supply to PHY digital circuit.
> +
>    vdda-pll-supply:
>      description:
>        Phandle to 1.8V regulator supply to PHY refclk pll block.
> @@ -157,6 +161,7 @@ required:
>    - "#phy-cells"
>    - clocks
>    - clock-names
> +  - vdd-supply
>    - vdda-pll-supply
>    - vdda-phy-dpdm-supply
>    - resets
> @@ -175,6 +180,7 @@ examples:
>                   <&gcc GCC_RX1_USB2_CLKREF_CLK>;
>          clock-names = "cfg_ahb", "ref";
>  
> +        vdd-supply = <&pm8994_l28>;
>          vdda-pll-supply = <&pm8994_l12>;
>          vdda-phy-dpdm-supply = <&pm8994_l24>;
>  
> -- 
> 2.17.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
