Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE903C43219
	for <linux-phy@archiver.kernel.org>; Mon, 21 Nov 2022 08:07:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g7yQTzi0vUz1trQBpp7Cm3hFHD0QcHiBSfeU195U3pQ=; b=enUopJ1IDzdzkS
	wvgdKDpGGnZik+1jQSqe6MfNu0Ds1hevKSsRaNzAt4IXGs0NN/niQXUCp0OCKUMBpLtvE+di+cagV
	/KOQkaoyMMaiH2U4wuSIy7ztx6Zb22pMbygojlq6bZL0iKFJ2/ndEa/yazsoQvpYWveeXqwLu3zCL
	XlU+z2Eu66U8b5QcOayN+pa6bbyrWu98UrB0KFGCu3saPm+t9PFt/EQlGlQbkAM6aFodQiTXyrjSb
	Vl4I8bBdfLE7kgF/JWfAtLjoiXguTTqyyu9ct/pCrXqJagpKnvaSD3tiwo5QjD1OM/xttih4iVUFD
	/LW9No39mO9B+JZDnzJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ox1qA-00AxW9-6H; Mon, 21 Nov 2022 08:07:42 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ox1q7-00AxR6-Na
	for linux-phy@lists.infradead.org; Mon, 21 Nov 2022 08:07:41 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 4374F60EF6;
	Mon, 21 Nov 2022 08:07:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9D821C433C1;
	Mon, 21 Nov 2022 08:07:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669018055;
	bh=JUZxOMccjGBqhxXgnzu5UUE3t55AOpU4fuF6iENXJVg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=C7MMghyWerVrHyBAzc/S5wRhLzYhd7exfpqeiwKzZxTZTTxET6hK5R6nHfib2K+j/
	 cLOXcE8TGu7jMOvIUREzYC0SxQyxoMlwkWzisARrPTKIEeMx/UdaaC/6Ax6o752qGP
	 FP0FlDBzXsCbMnrKH9ZWw9BBCVR20bFVU6IhnpBFi1nxmNvf4At+ot3nMOzMJrhl4Y
	 T69Zq1lfr/Z0ilvEFyMjvoxLwmO76qRmOqEukXTVLsf1FEILQvh81KWyec0OJy6I4U
	 1YwV6ecI5wEIhV+hjc592jKhL4P40FbJeKgBZiMpugucY9EBZOxRlAyW6AFxn97rdT
	 kmzSfXukj4Fig==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1ox1pZ-0006OI-Ka; Mon, 21 Nov 2022 09:07:05 +0100
Date: Mon, 21 Nov 2022 09:07:05 +0100
From: Johan Hovold <johan@kernel.org>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: linux-arm-msm@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
	phone-devel@vger.kernel.org, Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: phy: qcom,qmp-usb3-dp: Add sm6350
 compatible
Message-ID: <Y3sxqUu0dnaQfdFY@hovoldconsulting.com>
References: <20221121075358.76582-1-luca.weiss@fairphone.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221121075358.76582-1-luca.weiss@fairphone.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221121_000739_841930_D4C56D5D 
X-CRM114-Status: GOOD (  15.51  )
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

On Mon, Nov 21, 2022 at 08:53:55AM +0100, Luca Weiss wrote:
> Add the compatible describing the combo phy found on SM6350.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  Documentation/devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml
> index 97a7ecafbf85..68aecb638870 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml
> @@ -18,6 +18,7 @@ properties:
>        - qcom,sc8180x-qmp-usb3-dp-phy
>        - qcom,sc8280xp-qmp-usb43dp-phy
>        - qcom,sdm845-qmp-usb3-dp-phy
> +      - qcom,sm6350-qmp-usb3-dp-phy
>        - qcom,sm8250-qmp-usb3-dp-phy
>    reg:
>      items:

The current USB3-DP bindings are broken and we should no be adding
further compatibles here. Please consider rebasing on:

	https://lore.kernel.org/all/20221115144005.2478-1-johan+linaro@kernel.org/

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
