Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50DA4C10F1A
	for <linux-phy@archiver.kernel.org>; Thu,  9 May 2024 14:16:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wDlKDu5qp/NajurBnsV+cWCLxv2CztZ17zIn4ntkx2Q=; b=dMlvmG0Wwuckku
	TVmjVJnipT9+5X4aB16oUw0wze30xAoVQfgldQ4+lrjWzj7wTiuTzw8Zr502rsdQHjMbFoQolLZ/U
	zFEoIhN3f97ttXTQiNik5KzNDrFR09WvBdEDH0fEYkr1LN93OzD92Pm6n9oVX0HWe7XFcsfhVgsTZ
	9joUTUuN7SsTBv2k3GBglDnq/B9TJasNEQiMd5Ie+kn6ERvRXL3aGshSiM6PRVALbAJ8hJnKvWsj+
	nkxAnZeEtgZtnoQZs1CTVH2xQug2RlZRnoJC67Czool1hwN/0FiEUICJnskicEqwBu13+zs/1jqMl
	/TdAp0oCJ7W0vTQjHG1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s54ZS-00000001hVt-3SCn;
	Thu, 09 May 2024 14:16:30 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s54ZP-00000001hUe-3j6O
	for linux-phy@lists.infradead.org;
	Thu, 09 May 2024 14:16:29 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 5263361D4F;
	Thu,  9 May 2024 14:16:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C7EA3C116B1;
	Thu,  9 May 2024 14:16:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715264185;
	bh=XRkJhCuiB3daIRYaL5K5rrnW8N4v9XFl7tzJSh3Ueno=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bigs+sLbvRZM8JW3RtXJuMPnmNB6Oadc5ynxNDw1E7CQY2Tr6zQs+GfhaAWVvNoCr
	 JOyVBP1SchOgBF11dMR06BZebrvcMs8feHJ5TVF8vWSgPg1tRU74TuUKqx67UlpRVI
	 vidaeikXptqXixDPBMg0SgoreCa0fN+ILkeBc8z53ppleykDneqIjXjcXmVBo84p/C
	 7H1Yf4yjg3L0bOvYsZS26POI2U2CW+6EJFESagCqenHTXwFDDMzGfeAVb/oKQ0Myw8
	 JpCtwMXlamB7G/Y7/s+19msaetcddUY145Q41koyN4LO3uPICeQ8nsnJH62YoRHByD
	 ahShGo6fns6hw==
Date: Thu, 9 May 2024 09:16:23 -0500
From: Rob Herring <robh@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Abel Vesa <abel.vesa@linaro.org>,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	cros-qcom-dts-watchers@chromium.org,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	David Wronek <davidwronek@gmail.com>,
	Andy Gross <andy.gross@linaro.org>,
	Evan Green <evgreen@chromium.org>,
	Douglas Anderson <dianders@chromium.org>,
	Iskren Chernev <me@iskren.info>,
	Luca Weiss <luca.weiss@fairphone.com>,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
	Yassine Oudjana <y.oudjana@protonmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>
Subject: Re: [PATCH 03/13] dt-bindings: phy: qcom,usb-snps-femto-v2: use
 correct fallback for sc8180x
Message-ID: <20240509141623.GA1011543-robh@kernel.org>
References: <20240501-qcom-phy-fixes-v1-0-f1fd15c33fb3@linaro.org>
 <20240501-qcom-phy-fixes-v1-3-f1fd15c33fb3@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240501-qcom-phy-fixes-v1-3-f1fd15c33fb3@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240509_071628_133811_517634E1 
X-CRM114-Status: GOOD (  15.08  )
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

On Wed, May 01, 2024 at 07:19:29PM +0300, Dmitry Baryshkov wrote:
> The qcom,sc8180x-usb-hs-phy device uses qcom,usb-snps-hs-7nm-phy
> fallback. Correct the schema for this platform.
> 
> Fixes: 9160fb7c39a1 ("dt-bindings: phy: qcom,usb-snps-femto-v2: use fallback compatibles")
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
> index 0f200e3f97a9..fce7f8a19e9c 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
> @@ -15,9 +15,6 @@ description: |
>  properties:
>    compatible:
>      oneOf:
> -      - enum:
> -          - qcom,sc8180x-usb-hs-phy
> -          - qcom,usb-snps-femto-v2-phy

This is now listed as undocumented. You need to remove it from the 
driver as well or keep it here as deprecated.

>        - items:
>            - enum:
>                - qcom,sa8775p-usb-hs-phy
> @@ -26,6 +23,7 @@ properties:
>        - items:
>            - enum:
>                - qcom,sc7280-usb-hs-phy
> +              - qcom,sc8180x-usb-hs-phy
>                - qcom,sdx55-usb-hs-phy
>                - qcom,sdx65-usb-hs-phy
>                - qcom,sm6375-usb-hs-phy
> 
> -- 
> 2.39.2
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
