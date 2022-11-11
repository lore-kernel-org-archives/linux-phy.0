Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A173C433FE
	for <linux-phy@archiver.kernel.org>; Fri, 11 Nov 2022 20:27:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bd9JxT3qVpYnF9pgotBlHEu9iH6zK1hRFSuKH5BDP9A=; b=w4Uh5G8o0iYSnh
	+tb7OKfBFqEwvdRf6eNsNuzDfvz23xFZiUbZBVKT4MgrelzxEkCqPb5SqZ8XWrUm8klwmNUCMx880
	M/VQUbpHvD32FpDP7QVBbxEc3uBfvkCgQV9DZsJqlcuU7jwJJ4U0jATQO4CvncHlH+umiInT739Hd
	yu8Te9n7Qa7prMVHwIUXboSUPtbe4M3iBZflnBKh+9wFTX3bTSbngNL7wtmsaWG118UKjBun1WSrf
	GRkju1jf+Z3DLI0yubPBnBdoz0qCpg7kYlOEWRQ29k6zrM366ikYNd03aWODQHLrTvl9SaeWhdLNK
	uWn57ZnjCn/ILpi1cthQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otacL-000uNv-RC; Fri, 11 Nov 2022 20:27:13 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otacI-000uJ1-Rc
	for linux-phy@lists.infradead.org; Fri, 11 Nov 2022 20:27:12 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id E41A561FDB;
	Fri, 11 Nov 2022 20:27:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8460FC433C1;
	Fri, 11 Nov 2022 20:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668198420;
	bh=VFFbMfX4/o+UWM2oq92Ps0TnAJRnovYTG4dVRRwNmek=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JIhYqyP+xZ8S6v1nHiz0+ojoNRzBDYw041MuMpA5sNeXdEipWJ381RiqGr0JdJelE
	 A5aW0fJyWXVMCdrX9PaCBhIVNLxoKs3QJ3+pKxHskMbAxJwGkufUo+7DcYcwV33I0n
	 GMqfFJfA+Hb2UJ4H6ETvOiLX73z5UizuxnO6cSh0dsPywRHearwcPNbbe/eUUAFL8D
	 Rgz60jqhL9AAkhtvJOuOBSXITR1nFvBirmi175OqEYzfrjQVtq+HMmCAoCyZeMpmoH
	 xbu41uPww5uLQN8KgpavD+4AZjFYe9Rm1Bds+iquI82tcZju/JV65Ews7LVJ0xsiNK
	 ByvyNIJzDjd6Q==
Date: Fri, 11 Nov 2022 14:26:57 -0600
From: Bjorn Andersson <andersson@kernel.org>
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Andy Gross <agross@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: phy: qcom,sc8280xp-qmp-usb3-uni: drop
 reference-clock source
Message-ID: <20221111202657.kyzay7oy4yojp4xo@builder.lan>
References: <20221111093857.11360-1-johan+linaro@kernel.org>
 <20221111093857.11360-2-johan+linaro@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221111093857.11360-2-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221111_122710_958380_8E11436D 
X-CRM114-Status: GOOD (  16.81  )
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

On Fri, Nov 11, 2022 at 10:38:55AM +0100, Johan Hovold wrote:
> The source clock for the reference clock is not used by the PHY directly
> and should not be included in the devicetree binding.
> 
> Fixes: e8e58e29a0c9 ("dt-bindings: phy: qcom,qmp-usb: fix sc8280xp binding")
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>

Reviewed-by: Bjorn Andersson <andersson@kernel.org>

> ---
>  .../bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml       | 7 ++-----
>  1 file changed, 2 insertions(+), 5 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
> index ef080509747a..16fce1038285 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
> @@ -22,12 +22,11 @@ properties:
>      maxItems: 1
>  
>    clocks:
> -    maxItems: 5
> +    maxItems: 4
>  
>    clock-names:
>      items:
>        - const: aux
> -      - const: ref_clk_src
>        - const: ref
>        - const: com_aux
>        - const: pipe
> @@ -82,12 +81,10 @@ examples:
>        reg = <0x088ef000 0x2000>;
>  
>        clocks = <&gcc GCC_USB3_MP_PHY_AUX_CLK>,
> -               <&rpmhcc RPMH_CXO_CLK>,
>                 <&gcc GCC_USB3_MP0_CLKREF_CLK>,
>                 <&gcc GCC_USB3_MP_PHY_COM_AUX_CLK>,
>                 <&gcc GCC_USB3_MP_PHY_PIPE_0_CLK>;
> -      clock-names = "aux", "ref_clk_src", "ref", "com_aux",
> -                    "pipe";
> +      clock-names = "aux", "ref", "com_aux", "pipe";
>  
>        power-domains = <&gcc USB30_MP_GDSC>;
>  
> -- 
> 2.37.4
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
