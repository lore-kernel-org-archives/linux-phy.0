Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5FA27C48BF6
	for <linux-phy@archiver.kernel.org>; Mon,  4 Mar 2024 16:22:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S5Vp2bLKWsYR1aa313OJSLIEBjsuKBj9w9zZiUEDHUo=; b=W/cHg8SUFyNneP
	LNgQ8INcnVe7da5vEauY+tMiNoX2sO414KW3WrUbHXYAuaIPNDSa9XxCk0psG5VKd+DOKe0gZjrDr
	ICYyaer1SgbvNaCI5ZefqVjmpmvPyRrYyw6uEQgMIX8J+ROTgfdTTEnFZG9bse5irPRtLkjgD5CvG
	9PrThYYUlah79bykr7eKph2F+SoQ8dZ3L2neqnqE/fK0E9vH1CSMAZAQ9SreE8P+BWRCGS/fuYrm8
	G81NXJeqxppmQdD3uR+NxbzbhMsITlOSJz54Q8wUFNt5eyX4R5TNMD9hVV+mrsaH+uyCe+iZ0Zgh0
	FjrwG0CnuC+YM8NPcTbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhB4x-00000009ocv-2M5T;
	Mon, 04 Mar 2024 16:22:15 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhB4u-00000009ocJ-24qB
	for linux-phy@lists.infradead.org;
	Mon, 04 Mar 2024 16:22:13 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id DC88460BCB;
	Mon,  4 Mar 2024 16:22:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 59C82C433F1;
	Mon,  4 Mar 2024 16:22:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709569331;
	bh=5GtQDIrUrxIsf2wt+vj62jwD5dGLz3Z9gt06aDoswXU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=q1CLLwLdF2wB+bofcls+9RVbRYQjh9p+gNuxXBUkikSV1cijv4XYaOgX/pyWSsJi7
	 6wD0NnwdF6u2k4Aq56xmiTb78EkBgcjC4lU4mGta7dAb7a/5T45hbhWOLk6iu21GHo
	 SFRgWRfdt2bhE9ZaBZ26yBpnbgnAsW2za8c/LWAbPQXV5gOXFNS7pJwdqL1k6q8Nps
	 5nK6vh6QRsR2JPhLzGbEFFLg58SM61SS59wFhyUSauUED6lsGsgvkzeaBBWPbwedrk
	 YaNHrpei4TyQfNyeBkOsiaEgMAv5dPRgzmGHfkn6T+EbXigmWzhqRsP7t6cLWKwBmv
	 fWoqdW2MqZ5Rg==
Date: Mon, 4 Mar 2024 10:22:09 -0600
From: Rob Herring <robh@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH RFT 1/7] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp: Add
 mode-switch
Message-ID: <20240304162209.GA343498-robh@kernel.org>
References: <20240229-topic-sm8x50-upstream-phy-combo-typec-mux-v1-0-07e24a231840@linaro.org>
 <20240229-topic-sm8x50-upstream-phy-combo-typec-mux-v1-1-07e24a231840@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240229-topic-sm8x50-upstream-phy-combo-typec-mux-v1-1-07e24a231840@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_082212_596585_C350D511 
X-CRM114-Status: GOOD (  14.18  )
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

On Thu, Feb 29, 2024 at 02:07:01PM +0100, Neil Armstrong wrote:
> The QMP USB3/DP Combo PHY can work in 3 modes:
> - DisplayPort Only
> - USB3 Only
> - USB3 + DisplayPort Combo mode
> 
> In order to switch between those modes, the PHY needs to receive
> Type-C events, allow marking to the phy with the mode-switch
> property in order to allow the PHY to Type-C events.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  .../devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml       | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> index 2d0d7e9e6431..49c6539b9df0 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> @@ -71,6 +71,11 @@ properties:
>      description:
>        See include/dt-bindings/phy/phy-qcom-qmp.h
>  
> +  mode-switch:
> +    description:
> +      Flag the PHY as possible handler of USB Type-C altmode switching
> +    type: boolean
> +

Perhaps you should be including the usb-switch.yaml schema that's in 
next.

>    orientation-switch:
>      description:
>        Flag the PHY as possible handler of USB Type-C orientation switching
> 
> -- 
> 2.34.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
