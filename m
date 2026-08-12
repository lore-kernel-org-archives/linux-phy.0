Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 770BFC5CFDB
	for <linux-phy@archiver.kernel.org>; Wed, 12 Aug 2026 10:56:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lexxyZHgoo9V1ZQ9oy8f3BUnnLZgPZrPQx4p4o0s1hs=; b=mcAxQXB7DoLgD0
	XytSbeIAdW78NTtDZfAy76Wm2hx28oFVeA/iJYo0X6tv6auR5sPL1CvXkACZUYdpEbx9ZqIEdgG6Y
	sV+3i8o3ZPexCXfsLJAwxKiAQDfRsicoYG7U4EhXy8TS65GcL5kM8j1SpF3awjKK+xv6Ig76oKLU/
	dBVWdMfq97Th3/UK41Zt81lojijMm1FAkGSvpb/wpkr096beImWBFu6AwJt0IPkDzd3cRod0XJ+AG
	n7/4P0wDnp1dBmlURn1iPcqlfXbjZ8x1In83N565prL9omDFNMnT1Rc9G3Ci70hHEKobVgQczRuiV
	5zhypSQ8MhN29FjRkddA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu6dP-0000000FymK-07tl;
	Wed, 12 Aug 2026 10:56:35 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu6dM-0000000Fylj-388z
	for linux-phy@lists.infradead.org;
	Wed, 12 Aug 2026 10:56:34 +0000
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-5b0117dda13so917824e87.0
        for <linux-phy@lists.infradead.org>; Wed, 12 Aug 2026 03:56:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786532190; x=1787136990; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=ITtfty8oisAJyNjU306eVUiZ+XmY+gnBC8OefItjx74=;
        b=gZW7W6e5PXPMMNsEZRTxsGbnF6JfaWOGczT4qjEtm/Z6gHPrtt2FPjVl4ttSzg6eDB
         8fHHO3loHgBKR9Yl2QNaoBospJon0Bt4b5C/CimL28bkZBRlyGJnWTdGSychIQMZ1NNm
         f91l8/tnUb+ryMUqKrgRWokW7om8tS9033DumQKYE8SIYQE+XJ0Fo6IE33G1MF8RaPzU
         ZyRFOld5MIAjlS2KDQ7TpTGmMk9sQ9SVsA7Up/c8rUakfMGEsH0jkptW8ysjwwmFEB87
         tOwuV+7k/ZSovz7oOjSLwl206KhznHpIxNhjCogjS6fD4PlOq7qEC5/VC7pc8As/l/FY
         8QTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786532190; x=1787136990;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=ITtfty8oisAJyNjU306eVUiZ+XmY+gnBC8OefItjx74=;
        b=HWsncd7diYs3ba6W5vadJ87K+YdnjcUjK47qfI0NsQjYCaB9SfagZg+9Qj1rF5kUNq
         aAcCVwqFc5rGNIbVFKqR7VVM+m/GMPMrv9chAXSigcMfbnrPa51jPMFnuF6L6kMjM7//
         x4zU/EDX4w3shivlUUkkdL1TAzEa7Oyl6mRiAIOhwSMbLKvGr6uxkRFZRXF0PMTRzRko
         c7RkRBP90VEX9/O+0Q06qM6eIYihGgWJDQbQAWYo8wd1yLqfHpsI4OvJw4X3iGG0fR4e
         fLDqCyWHAK5hFdL5SfngoTYnvzjloCwBnKbAb8m0tEMo4LsM67l5CfnXivuG4PKNZdWY
         A5Wg==
X-Forwarded-Encrypted: i=1; AHgh+Ro7qGxZcs11bXT8P127p8xisWein+fl7azeRYkYM/ZgOlKfy7Ya5RVpHZGNhNWPR6mlakAJKca9Qjw=@lists.infradead.org
X-Gm-Message-State: AOJu0YzS8DskR/uIUB53KBUuGeBf/s9kdul5pVZzcJfMdIHyNfqdJHs9
	rzG1nwpviUFCPQNW5XDhaylEy+/5Iq54RilLC5fbEC0IQPQzfBJCZuDR
X-Gm-Gg: AR+sD13ZpoFT0enPsKGwR03yeIx2xt0t8z8OpKe8vL2bECR9OHB4g7RvjjQ+C06b1By
	+5O4kzTOwajiu9v2DF3Rxjq+pXo+glZnuQTB7JKClAglZtekEUxsaoZRsE7odGhQzBOdkgaXTG7
	uGQK5UN5LOCxmmfy+aA5ITzdFmPwi7BwctEtPRtc+Oyv32n33AAMUa3UZUmU/28F+4K7+3bEtSB
	x5x2l9964eT7skUlXxOoz1ge7RjbGEBjRcS/1bCj6WNpVdQjVSsLGRw03M6MUp+eGtAj7MERipx
	xrXQDxW9FctW2hSGgCq5KsCXrWIW9jGqOWZUW6v3q9hrxKacnMIjfSvgwStecRbTw7T1upyC0zk
	wsI32/wO2DmAeYsUPnRpaUnb+M8sN4sYSyPuQ556gWRC61yGV9bCMQFPiF+wE7aHhBmMxckLj46
	3oAhAnHAZLSIxjKF7NkCbO+jQPUh3TcFdRLe2S2PRokHPpGhwK6Uks625IXOKej9hootoeuL86N
	s7QpO/Lh35GjKXvqh9qd+svdBHh3GjjjTuo2D6bNh1so9c/zncKJKMo7g==
X-Received: by 2002:a05:6512:3b91:b0:5ae:9dcd:d04a with SMTP id 2adb3069b0e04-5b44e2f672cmr625996e87.29.1786532189904;
        Wed, 12 Aug 2026 03:56:29 -0700 (PDT)
Received: from ?IPV6:2a00:1fa0:44a5:16e6:5436:f44e:c789:f9e6? ([2a00:1fa0:44a5:16e6:5436:f44e:c789:f9e6])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b44d0478d1sm429376e87.72.2026.08.12.03.56.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Aug 2026 03:56:29 -0700 (PDT)
Message-ID: <6b83cdd0-0800-4a2e-af36-e780bed4d127@gmail.com>
Date: Wed, 12 Aug 2026 13:56:26 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 10/14] arm64: dts: qcom: ipq5332: Add Super-Speed
 UNIPHY to USB node
To: george.moussalem@outlook.com, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Praveenkumar I <quic_ipkumar@quicinc.com>,
 Varadarajan Narayanan <quic_varada@quicinc.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Wesley Cheng <quic_wcheng@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-usb@vger.kernel.org
References: <20260812-ipq5018-usb3-v2-0-8f355d7ff0ef@outlook.com>
 <20260812-ipq5018-usb3-v2-10-8f355d7ff0ef@outlook.com>
Content-Language: en-US
From: Sergey Shtylyov <sergei.shtylyov@gmail.com>
In-Reply-To: <20260812-ipq5018-usb3-v2-10-8f355d7ff0ef@outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260812_035632_805857_44D1195B 
X-CRM114-Status: GOOD (  14.11  )
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

On 8/12/26 12:34 PM, George Moussalem via B4 Relay wrote:

> From: Praveenkumar I <quic_ipkumar@quicinc.com>
> 
> Add the USB3 UNIPHY node to the USB controller node.

   You're not adding any nodes... Perhaps "refer to the USB3 UNIPHY node"?

> In addition, switch to the pipe clock supplied by the USB3 UNIPHY
> instead of the UTMI clock.
> 
> Signed-off-by: Praveenkumar I <quic_ipkumar@quicinc.com>
> Signed-off-by: George Moussalem <george.moussalem@outlook.com>
> ---
>  arch/arm64/boot/dts/qcom/ipq5332.dtsi | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq5332.dtsi b/arch/arm64/boot/dts/qcom/ipq5332.dtsi
> index 664586979ec4..6253443c8d7f 100644
> --- a/arch/arm64/boot/dts/qcom/ipq5332.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq5332.dtsi
> @@ -523,10 +523,8 @@ usb: usb@8a00000 {
>  					<&gcc MASTER_SNOC_USB &gcc SLAVE_SNOC_USB>;
>  			interconnect-names = "usb-ddr", "apps-usb";
>  
> -			phys = <&usbphy0>;
> -			phy-names = "usb2-phy";
> -
> -			qcom,select-utmi-as-pipe-clk;
> +			phys = <&usbphy0>, <&usbphy1>;
> +			phy-names = "usb2-phy", "usb3-phy";
>  
>  			tx-fifo-resize;
>  			snps,is-utmi-l1-suspend;
> 

MBR, Sergey


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
