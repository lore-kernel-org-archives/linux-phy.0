Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16BBDE6F093
	for <linux-phy@archiver.kernel.org>; Tue, 23 Dec 2025 14:11:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q8L1NuLnICTHs2s9zfrCDqScbx5fAK601szucYKvFnQ=; b=psHNv9Zz05nqDk
	UXy3Eqn9PDc3IE4NK+oq3nJ+RTRLydrNZvV2XLD2zgLK+8nsVDAUDrlk8FeIwoQBLrgP9FN7RmxmR
	7PCOfPNx08iUjINz6u0HiaYfPX3JJLPuFJsAxipC6LZ4+ItqeYxmjV5MD8EbzSEmSQRcN4HshApTG
	Tam41qQPE21nDJXw/LQfqsLLSCmM1mFkOF/r2n8i2ozThJQNE0MWsL1ta7VfH8E/ONeN+dLXyL0P1
	JliiNYCO8uF5jN69NOnlc4OS05XBub/31h/nCQc66WmWIfuwtJN3uLbUsyV8pZHAVOHPKJyO4y1pw
	gLi/jqvSNl6hDrkck+uA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vY373-0000000FaS2-3QI7;
	Tue, 23 Dec 2025 14:11:45 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vY372-0000000FaRe-1OF7
	for linux-phy@lists.infradead.org;
	Tue, 23 Dec 2025 14:11:44 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 9061260139;
	Tue, 23 Dec 2025 14:11:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C20F1C116D0;
	Tue, 23 Dec 2025 14:11:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766499103;
	bh=Vw4UJqL7y/2PtSO5nV/40KPKfyv41JdcmkxSU6VQWyk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=COTZoMHkd7UnTEW3K0Q5PVYnNoN2Bfb5vf6ciwxI2YSsZeMvGsPVHFf0FznDj0uGj
	 LCyUgoX5c867zFlG83MywOBG4nylJhIo7BN8bSWuCfI7Edhe5tP9r2peRf8HG0Tagc
	 v/lFbocYFOXbPdOGx4jXQsTAQTK7dRU93QhvpLjX/LP1rDdoSZB8RXuVw1+Ar99FuV
	 FhYVH3o46EfMhIDGhf0NyCjIIQkQPzF3r0rVEG8df+LWNr/r+j1LRzXBmfX9E8htDR
	 6XOsV90czI0oNL0ISSgzIUd75js9kyXfBajVxPLZUZOculwWLvFcUP9fslCWBxnQLA
	 WvJY//iEXLEGw==
Date: Tue, 23 Dec 2025 19:41:39 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Abel Vesa <abelvesa@kernel.org>, Pengyu Luo <mitltlatltl@gmail.com>,
	Johan Hovold <johan+linaro@kernel.org>,
	Luca Weiss <luca.weiss@fairphone.com>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH v3 1/3] dt-bindings: phy: qcom,snps-eusb2-repeater: Add
 squelch param update
Message-ID: <aUqjG4pVXWN3H88N@vaman>
References: <20251219173108.2119296-1-krishna.kurapati@oss.qualcomm.com>
 <20251219173108.2119296-2-krishna.kurapati@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251219173108.2119296-2-krishna.kurapati@oss.qualcomm.com>
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

On 19-12-25, 23:01, Krishna Kurapati wrote:
> Add squelch detect parameter update for synopsys eusb2 repeater. The
> values (indicated in basis-points) depict a percentage change with
> respect to the nominal value.
> 
> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> ---
>  .../devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
> index 5bf0d6c9c025..f2afcf0e986a 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
> @@ -59,6 +59,14 @@ properties:
>      minimum: 0
>      maximum: 7
>  
> +  qcom,squelch-detector-bp:
> +    description:
> +      This adjusts the voltage level for the threshold used to detect valid
> +      high-speed data.
> +    minimum: -6000

6000Volts, mV, can you please document the units?

> +    maximum: 1000
> +    multipleOf: 1000
> +
>  required:
>    - compatible
>    - reg
> -- 
> 2.34.1

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
