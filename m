Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D914ECAAD5
	for <linux-phy@archiver.kernel.org>; Mon,  5 Sep 2022 06:22:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MItwikg/SlfciKjg6w3x2kEjWeHHPftvK1h0VduB8CA=; b=CwJxtcRuDFf7p5
	6E5ReG8U5gfI4bjNO4m8PGIduc8BkVpjaAGDHOguWIiFrK9r95p7kvFM90GnpktNrZLK9JLFfiip/
	pnod3aRkqkgs1sngYJ1DQSaS7/BWNbJM8GWZy4zRihZY4bddHp3CEdtmvh9jw/agYvwrqQkM1TxkC
	SqjfiYHxCcoXoxiODsCKp2BOgFKRL74GKLLYnE8ye2oni1kdFwiK5g1bH7Sh8RJLYIY12lrt1xR1v
	ItzBc2EDK8mIEz07p1L/jIDrO1atmZHS6qWn3tXWTuf7mlwRYHeWigkJnYFLYqM1Go/LZugpsvN0E
	Rcpr+uPaQKluk4HDZa1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV5V2-00C6Q2-AS; Mon, 05 Sep 2022 06:22:24 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV5Sb-00C42h-Us
	for linux-phy@lists.infradead.org; Mon, 05 Sep 2022 06:19:56 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 067FBB80ECE;
	Mon,  5 Sep 2022 06:19:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F10C8C433C1;
	Mon,  5 Sep 2022 06:19:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662358789;
	bh=qoVU5IEku9HQk6piaO1ti5LKrgIU0qiuy5TONVv+YGc=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=WbhpBa4oNYu4pybWN/GNkcg1rjEJJ+uhDKXay5P/yQJeLJV4wLgeSqCTVtiIRmz8V
	 Pa+ZY0Jlkd4Ff4r0jLNjQ2LHpW/C1hzwMiyG7Uv4vh3o1k+slIPLHPfsx2lS/FOOB6
	 N2sCxUcJ1pFszykKb6oxm1dANWozR/VDC4N7cbRpQcMcaY0L3ZqjhSty1UNQFz/CTQ
	 6zNXoqb/8yHHD3sgo4+A2cYXOwVSMq3mhf0Q/BmSK3mXmH1enarW+Co2KUVLd4Va6M
	 q4n2erohl8dtqCR4qkCkBYogNfc4CxtfgJuAkeWY2PT+s61G+xJUXWjCqD3qx8irGh
	 k0mZ6YBwujkRA==
Date: Mon, 5 Sep 2022 08:19:42 +0200
From: Mauro Carvalho Chehab <mchehab@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Lee Jones <lee@kernel.org>, Rob Herring <robh+dt@kernel.org>, Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Yu Chen
 <chenyu56@huawei.com>, Binghui Wang <wangbinghui@hisilicon.com>, Kishon
 Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, Andy Gross
 <agross@kernel.org>, Bjorn Andersson <bjorn.andersson@linaro.org>, Konrad
 Dybcio <konrad.dybcio@somainline.org>, Mathieu Poirier
 <mathieu.poirier@linaro.org>, Carvalho Chehab <mchehab+huawei@kernel.org>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org
Subject: Re: [PATCH 2/4] dt-bindings: phy: hisilicon,hi3670-usb3: simplify
 example
Message-ID: <20220905081942.4cd47318@coco.lan>
In-Reply-To: <20220817142246.828762-3-krzysztof.kozlowski@linaro.org>
References: <20220817142246.828762-1-krzysztof.kozlowski@linaro.org>
	<20220817142246.828762-3-krzysztof.kozlowski@linaro.org>
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.34; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220904_231954_493647_776EAC98 
X-CRM114-Status: GOOD (  14.00  )
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

Em Wed, 17 Aug 2022 17:22:44 +0300
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> escreveu:

> syscon and simple-mfd cannot be used without device specific compatible,
> so simplify the example to fix this.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  .../bindings/phy/hisilicon,hi3670-usb3.yaml   | 26 ++++++-------------
>  1 file changed, 8 insertions(+), 18 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/hisilicon,hi3670-usb3.yaml b/Documentation/devicetree/bindings/phy/hisilicon,hi3670-usb3.yaml
> index ebd78acfe2de..1cb00dbcd4c5 100644
> --- a/Documentation/devicetree/bindings/phy/hisilicon,hi3670-usb3.yaml
> +++ b/Documentation/devicetree/bindings/phy/hisilicon,hi3670-usb3.yaml
> @@ -52,22 +52,12 @@ additionalProperties: false
>  
>  examples:
>    - |
> -    bus {
> -      #address-cells = <2>;
> -      #size-cells = <2>;
> -
> -      usb3_otg_bc: usb3_otg_bc@ff200000 {
> -        compatible = "syscon", "simple-mfd";
> -        reg = <0x0 0xff200000 0x0 0x1000>;
> -
> -        usb_phy {
> -          compatible = "hisilicon,hi3670-usb-phy";
> -          #phy-cells = <0>;
> -          hisilicon,pericrg-syscon = <&crg_ctrl>;
> -          hisilicon,pctrl-syscon = <&pctrl>;
> -          hisilicon,sctrl-syscon = <&sctrl>;
> -          hisilicon,eye-diagram-param = <0xfdfee4>;
> -          hisilicon,tx-vboost-lvl = <0x5>;
> -        };
> -      };
> +    usb-phy {
> +        compatible = "hisilicon,hi3670-usb-phy";
> +        #phy-cells = <0>;
> +        hisilicon,pericrg-syscon = <&crg_ctrl>;
> +        hisilicon,pctrl-syscon = <&pctrl>;
> +        hisilicon,sctrl-syscon = <&sctrl>;
> +        hisilicon,eye-diagram-param = <0xfdfee4>;
> +        hisilicon,tx-vboost-lvl = <0x5>;
>      };

Acked-by: Mauro Carvalho Chehab <mchehab@kernel.org>

Thanks,
Mauro

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
