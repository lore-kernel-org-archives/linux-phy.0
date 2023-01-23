Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 263BEC54EB4
	for <linux-phy@archiver.kernel.org>; Mon, 23 Jan 2023 09:48:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oOoZrXeQ1uE2aYX6dyXyyMx87h+qv/1EuMMC8s8jJZU=; b=kByD3raYRiBRg6
	O9rMgaojnQ3zRbGjtvlGS9BlFw6B1IK+1V+s7W1dYRTW1FupGqmoSFi/79KNMld3C4geAYe+pug8G
	+bFXKqLTa1dJkBGcHmda9Ji6ByRB8FxbOtgq5Km6vTh3sQfu2VZbEU8693YzCVlhSwetH9FADIKSR
	GiFhmwXeVOLcmx/ky38YJ6l2EAQXBfFTgvJD9u94wcAFvrvh/wEwo4MMT1Vd8k+cWDtRCUZs4oceA
	cW8vdLGXKQAlEXXkMZOPg/9V7ySlmI7cI1iw28qV3RG4tV9rvW+FRSGp2AOIiYivmd7p0nh3aWvHf
	NdhYw/809yKqF0TsQrJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJtR8-00GZxM-K3; Mon, 23 Jan 2023 09:48:22 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJtR5-00GZw9-Do
	for linux-phy@lists.infradead.org; Mon, 23 Jan 2023 09:48:20 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id F33E160DFD;
	Mon, 23 Jan 2023 09:48:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5D95AC433D2;
	Mon, 23 Jan 2023 09:48:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674467298;
	bh=Gtrawd7V+PvigCRX4HDB9clZlq6pOWl9bC5qYU/+HLo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PfWR0NTjvuDZ6i0n+Rb8fjNYeA0IjRNI9+763/zPi9X0gJTlndXoEa3kU7DzZz4wf
	 zBT6ZZ7Pyy/nXgf71EEV88AoI6MBbMn+Bx+M+BBzWozs6Fqb+5lXyHtjsc7TJjMVnq
	 IvJ7B9x3wa5j0tFuiULBreBkzHTvO18Fc2VsKi8yYffzmrvYciBhn84fwn23YFVw3i
	 v882rT+ctchnhWcL4gXiI+kDqb+24tahQXhnfNve7dSw3x3U4eLVQWTmii+s+m6mWZ
	 01e3Hw/qKpdy8v15QQ781QJsEQF/9CaPLYmqM6PudqdEf7VhJsMZtR8wOKTuoc4lmZ
	 YjWJBwpxMkTjw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1pJtR1-0000JK-I7; Mon, 23 Jan 2023 10:48:15 +0100
Date: Mon, 23 Jan 2023 10:48:15 +0100
From: Johan Hovold <johan@kernel.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	"vkoul@kernel.org" <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v4 1/6] dt-bindings: phy: Add QMP UFS PHY comptible for
 SM8550
Message-ID: <Y85X3whxGRhFZjtP@hovoldconsulting.com>
References: <20230117142015.509675-1-abel.vesa@linaro.org>
 <20230117142015.509675-2-abel.vesa@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230117142015.509675-2-abel.vesa@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230123_014819_558457_D707888B 
X-CRM114-Status: GOOD (  14.77  )
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

On Tue, Jan 17, 2023 at 04:20:10PM +0200, Abel Vesa wrote:
> Document the QMP UFS PHY compatible for SM8550.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  .../devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml       | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
> index 760791de0869..64ed331880f6 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
> @@ -18,6 +18,7 @@ properties:
>      enum:
>        - qcom,sc8280xp-qmp-ufs-phy
>        - qcom,sm6125-qmp-ufs-phy
> +      - qcom,sm8550-qmp-ufs-phy
>  
>    reg:
>      maxItems: 1

Reviewed-by: Johan Hovold <johan+linaro@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
