Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4FC4C433FE
	for <linux-phy@archiver.kernel.org>; Wed, 16 Nov 2022 13:48:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8JiAHOXoUwawADrbj9o2YCMK5qQdlwzwQvAST2QML+E=; b=aPL7nUiMr8SqkW
	mKcJllxMmTG/tvC9cH4AsYpSUsxM1jGfZbq0rC+/z1JA043lWCLpyI/ifngd4v4FVrwEnFM3wypZP
	to/y0rcOYfeX8bGxILNFCNgd5ynCMh4vgAqBHZF3dVwFgnVI6yflqPrvZKEVwJGfxWFpvG20fjbFW
	mpdp8einLtPHSaayh0KM3eSs27QJ2pECjKtoqKIkuIpYGzg/FuH8Cd3+fNJbjSU5JHzVrSEFXDQ4e
	yMzUWSZ9CFuvedPt+qOg8ONBQBa1aTCmNlhzWPNw9UrNuH1lbVSQvCCgYC8yqa30FvtqnkjQ/SsX6
	O2MvGAAvmmlpZR8+6dWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovImF-004EiY-Cc; Wed, 16 Nov 2022 13:48:31 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovImC-004Efq-5a
	for linux-phy@lists.infradead.org; Wed, 16 Nov 2022 13:48:29 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 587C4B81D7D;
	Wed, 16 Nov 2022 13:48:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 013DFC433C1;
	Wed, 16 Nov 2022 13:48:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668606505;
	bh=ykLJzDbZ0kLjeXVlSh0iMDNUh5L05twFQdQJECK6oD4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kKplzgjgN7NEtioBogzf7iLbgGXq5f2YbUKP9+VfrxBALv9PWGXO/V26m4/YnCl3t
	 i0lqiSdjaBiBrahsvFOUFjIsAWHcmSm+C2TEYujcv//IBnbm22G+QRWMlb+qLfTdiS
	 jbmERyYDq/m9KS3Stl4iGfEz0xXMTvk5yrZwoV2Aqd5hjwlP+W2RZiJFV4o0kPYgX2
	 cU+bzbKMaHqz3wfZA9JUXh+zPI2BLIW9ghlLBjm7/DeJF5f18ZIq1yppNzhepQsFza
	 gxOMqd1Z9aELNQ9EAjmU42ehPpH1M0CiF+MhKzZffSmYPj0MvsEWTr8viCFfQCmJr3
	 7Ed2YEnFAgfnQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1ovIlf-0002kn-Fh; Wed, 16 Nov 2022 14:47:55 +0100
Date: Wed, 16 Nov 2022 14:47:55 +0100
From: Johan Hovold <johan@kernel.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	"vkoul@kernel.org" <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH 06/10] dt-bindings: phy: qcom,qmp-pcie: Document SM8550
 compatible
Message-ID: <Y3TqCx2aQDswgFBb@hovoldconsulting.com>
References: <20221116120157.2706810-1-abel.vesa@linaro.org>
 <20221116120157.2706810-7-abel.vesa@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221116120157.2706810-7-abel.vesa@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221116_054828_370408_CE38CC7B 
X-CRM114-Status: GOOD (  15.02  )
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

On Wed, Nov 16, 2022 at 02:01:53PM +0200, Abel Vesa wrote:
> Add SM8550 both G4 and G3 dual lane compatible strings, also add the
> qref supply, the power domains, the reg entries and increase the number
> of allowed clocks needed to support the mentioned platform.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  .../phy/qcom,ipq8074-qmp-pcie-phy.yaml        | 38 +++++++++++++++++--
>  1 file changed, 35 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml
> index 62045dcfb20c..e5752ad93f0a 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml
> @@ -32,6 +32,8 @@ properties:
>        - qcom,sm8250-qmp-modem-pcie-phy
>        - qcom,sm8450-qmp-gen3x1-pcie-phy
>        - qcom,sm8450-qmp-gen4x2-pcie-phy
> +      - qcom,sm8550-qmp-gen3x2-pcie-phy
> +      - qcom,sm8550-qmp-gen4x2-pcie-phy

Here too, don't add new compatibles to the legacy bindings, but rather
base it on the sc8280xp binding.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
