Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 817E2ECAAD5
	for <linux-phy@archiver.kernel.org>; Mon,  5 Sep 2022 06:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dw2Y0FwMGGYxeiQSIdY6051RWHVfL7k0SuXnuLcSngk=; b=NRPW13DlsIasDb
	bFwKVcwNmwNpoQ0yVlEkX+V/zr+Zp4srbsqw5bLsBT3Z73/kURFz18Pt6O3r3Cp8x5YNySXdw5JXN
	D43BoxcXjsYtoe44UnX3N2gyjR4wzApgKzZE9uHd+ju9EN6YvzQ2hxVtzIogiv7Ra7elgb2KlmR0N
	uW6I2r0IodGFFKONokUMxQcSd1vQ10QY2KuheJmKH9tUvYknMVMgdjW88fbRtUyq7I0KQvDxTHxzU
	DlORuC8fgVOJjtkJ6aKnEoPhI8AIKvqqs/0UxU0LFB8cxI86kwMjzugfliga7LkP9SzGr2TU3SJ50
	wSfMp9T8wTvl8WBlxtMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV5Vw-00C7G8-UI; Mon, 05 Sep 2022 06:23:20 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV5Ty-00C5Nf-6z
	for linux-phy@lists.infradead.org; Mon, 05 Sep 2022 06:21:21 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.source.kernel.org (Postfix) with ESMTPS id E4315CE0A0E;
	Mon,  5 Sep 2022 06:21:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 756C6C433D6;
	Mon,  5 Sep 2022 06:21:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662358874;
	bh=056KAePOeWgzIG5LJsb+xoS5aEhxNBcn6X0QjCynVOo=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=XdNTeqviAxPaYfXQBCXsrQG2mq7ZAVcobfT6XXI3oDsn8ifBtUUUQoOTNH2cYqoYT
	 EWG8N1mc3OZpX/xqdkK0LuZRruyFowz03dVrdlBKt9HdNN/mrZPr7KS9DfjoVC7D7b
	 NYZVa2h/Dt2BEpcpyxaFlefQYMukqh5zORWfD6tKJhpnd/UeZz08/MwTYg3vtvJY19
	 uNU879voF7VWVRV0eUWXW+2r5xYJO0kQ1sTyPXK0Moz08bghCLBzDqvHPInfITVLYS
	 aWr1aKkB/TndgBDUIAFWxtw8KLd9rfBNtxV7MOx2AyyhPKUU9quSf+k42LL/WtWksO
	 PRW5G/3Oai0/g==
Date: Mon, 5 Sep 2022 08:21:07 +0200
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
Subject: Re: [PATCH 1/4] dt-bindings: phy: hisilicon,hi3660-usb3: simplify
 example
Message-ID: <20220905082107.7ff83539@coco.lan>
In-Reply-To: <20220817142246.828762-2-krzysztof.kozlowski@linaro.org>
References: <20220817142246.828762-1-krzysztof.kozlowski@linaro.org>
	<20220817142246.828762-2-krzysztof.kozlowski@linaro.org>
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.34; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220904_232118_614189_90E28055 
X-CRM114-Status: GOOD (  14.01  )
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

Em Wed, 17 Aug 2022 17:22:43 +0300
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> escreveu:

> syscon and simple-mfd cannot be used without device specific compatible,
> so simplify the example to fix this.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  .../bindings/phy/hisilicon,hi3660-usb3.yaml   | 22 +++++--------------
>  1 file changed, 6 insertions(+), 16 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/hisilicon,hi3660-usb3.yaml b/Documentation/devicetree/bindings/phy/hisilicon,hi3660-usb3.yaml
> index c2e073e26190..20b79e2e8b82 100644
> --- a/Documentation/devicetree/bindings/phy/hisilicon,hi3660-usb3.yaml
> +++ b/Documentation/devicetree/bindings/phy/hisilicon,hi3660-usb3.yaml
> @@ -41,20 +41,10 @@ additionalProperties: false
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
> -        usb-phy {
> -          compatible = "hisilicon,hi3660-usb-phy";
> -          #phy-cells = <0>;
> -          hisilicon,pericrg-syscon = <&crg_ctrl>;
> -          hisilicon,pctrl-syscon = <&pctrl>;
> -          hisilicon,eye-diagram-param = <0x22466e4>;
> -        };
> -      };
> +    usb-phy {
> +        compatible = "hisilicon,hi3660-usb-phy";
> +        #phy-cells = <0>;
> +        hisilicon,pericrg-syscon = <&crg_ctrl>;
> +        hisilicon,pctrl-syscon = <&pctrl>;
> +        hisilicon,eye-diagram-param = <0x22466e4>;
>      };

Acked-by: Mauro Carvalho Chehab <mchehab@kernel.org>

Thanks,
Mauro

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
