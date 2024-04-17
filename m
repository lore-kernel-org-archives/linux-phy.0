Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 954E4C4345F
	for <linux-phy@archiver.kernel.org>; Wed, 17 Apr 2024 14:27:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QKjzxOrTsLuLtv1HAD1cUO42YaQ7oV55VXpO9w5o9f8=; b=NmxW+rsO7adt7b
	lY8eoA4pP4FzK/JBb4iSYb3Elx26LVAdckpspUFO7dCbpVnKazhbu8MrxQfmMB2MEg880VmGkdVdS
	Epv08Pg9C3DsWVrsKHSW/6qr86dy/uvpwxy9F+WyuWxhkMPjVHYNXVDlXJartC3e8k7kzk6aaSDGq
	BLPdTgHH4yexI4ngWhlvNXuQzzr2KebmE6ciR8Oz3lAUF9k5IiYD+4D0u0EqVlu4rINCp5k29m0fC
	Zb7fY24/+BmybQYNyeq68Vpfqn1DYhuZviYq7yTPLnfU1rIH9v9JU9tKuuUsVRsIWgQDLoq4KfA+i
	gjUoGi1uKl4me2l43grA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rx6Fr-0000000GL8I-1HgA;
	Wed, 17 Apr 2024 14:27:19 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rx6Fo-0000000GL7C-1rig
	for linux-phy@lists.infradead.org;
	Wed, 17 Apr 2024 14:27:18 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 55B95CE139E;
	Wed, 17 Apr 2024 14:27:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4E29BC32781;
	Wed, 17 Apr 2024 14:27:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713364031;
	bh=tfYWaw2Pa+tky697wv72LhqAvV2DQdIG4P8eLYh3vng=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SBhg6BOCwvMj2SlAde+4h5wM84YNqRoO7++DuN+4f3bQGJse/i/SrogCqfv3rmq9t
	 fDpcx4eGhgdU7m0VTQ1rxxdO7XC4Gdltub9vonnbMN4qcJKfu7bHKHhnEAgNIbFY8k
	 ISwdCcwY65ifCHtlqHZU2KCPwBl7faXVBzZbLUYHPYUyc8od5X52sr5tqoc7aGA3QT
	 7ETrslJV6iwgrvsIuvtEC8xOdkKkeMSKyzBocUY+r778pNMhuk97mnjYj1voI1iWlo
	 Bg0Kw+qCGzLpR0DZCvFst+Ht+6Lpte/7BsQV/ltYUeO1ra7B0Rta6+Xbo3k5J7RBV/
	 BXHryz1jx4a3g==
Date: Wed, 17 Apr 2024 19:57:06 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Herman van Hazendonk <github.com@herrie.org>
Cc: benwolsieffer@gmail.com, chris.chapuis@gmail.com,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3] dt-bindings: phy: qcom,usb-hs-phy: Add compatible
Message-ID: <Zh_cOgt3yaHhhH8J@matsya>
References: <20240417065020.3599755-1-github.com@herrie.org>
 <20240417065454.3599824-1-github.com@herrie.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240417065454.3599824-1-github.com@herrie.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240417_072716_692490_09D91A63 
X-CRM114-Status: GOOD (  11.59  )
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

On 17-04-24, 08:54, Herman van Hazendonk wrote:
> Adds qcom,usb-hs-phy-msm8660 compatible
> 
> Used by HP Touchpad (tenderloin) for example.

This lgtm, where is the dts for this, would like to check that before I
pick this

> 
> Signed-off-by: Herman van Hazendonk <github.com@herrie.org>
> ---
>  Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml
> index f042d6af1594..e03b516c698c 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml
> @@ -15,6 +15,7 @@ if:
>        contains:
>          enum:
>            - qcom,usb-hs-phy-apq8064
> +          - qcom,usb-hs-phy-msm8660
>            - qcom,usb-hs-phy-msm8960
>  then:
>    properties:
> @@ -41,6 +42,7 @@ properties:
>        - enum:
>            - qcom,usb-hs-phy-apq8064
>            - qcom,usb-hs-phy-msm8226
> +          - qcom,usb-hs-phy-msm8660
>            - qcom,usb-hs-phy-msm8916
>            - qcom,usb-hs-phy-msm8960
>            - qcom,usb-hs-phy-msm8974
> 
> -- 
> linux-phy mailing list
> linux-phy@lists.infradead.org
> https://lists.infradead.org/mailman/listinfo/linux-phy

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
