Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CEF3CC88E40
	for <linux-phy@archiver.kernel.org>; Sun, 13 Sep 2026 07:52:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ne3ilWOTZmIvuJRVw7lsL5Fe/ZH0LoJZJ4SNV/O332M=; b=yozEPkThoYddYz
	Sy57RS9ezKuCDE7UYTKwgMnLUTnBcwIbcY0gzdGsYbEE/V3DHyd4/B/TDV6LEGzBERuc+BMURmXpt
	sx4vwkgPft7PSVNKypoJDozZ3d1W3Z6oARkKkoxlTeHuOsR0S89xe4TTGJ1ALjBkqkTEJNvVMZV6o
	9EjNNviunGqfIOCyYc79GGCu4ctjitS7GIRH05hXzMvQ9Czg6Dd37+Szmwpbz4XjmMFEW9kBFZiH6
	aZFtf6jV1Ub8xsXeVTGY8ts27Nn+28sg1/16oELzsXWFW/3K1oy6Hi+K/X6Wnt9MOZXQgmLxKTcP1
	ZISzwffKjcChnm0jZg6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5f0M-00000001VVq-1zcH;
	Sun, 13 Sep 2026 07:52:02 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5f0L-00000001VVk-3Ig8
	for linux-phy@lists.infradead.org;
	Sun, 13 Sep 2026 07:52:01 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 274B3410B5;
	Sun, 13 Sep 2026 07:52:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D14BD1F000FF;
	Sun, 13 Sep 2026 07:51:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789285921;
	bh=W7ulLVjk7cOY33gnZun4ugyjMQD5mY2Ry3w5xH7Coxw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=j6dxjmQc3YMBeHrLbUkwTd3ofR1hF/doqzXmsBffsIi0yR0LkyQXkS1KkuSJEeSPz
	 wxaLhmK+KHdWyDJ7E5IN6QPoAJ2f5+VHr3l+edjMQuRLIqztJ+Ez57Yz238l/5qD4M
	 9JBCDAYpI6BY5QMvmGDKyQYky8H8QVrqBnGXzJ3GcTi0JPi6Rtz8pNOGXS+GccV2Fr
	 vBt/Q0ioAKJzCNySLTnrqeVgCCUjz9dScdaxa/QpNTukN1PuPES6JT7pyxqjj26niW
	 WrVNjqIh7ji6a/rJxZFlMMBjjGaP2jhOdDScGgCSsH/rY1S2LD6aM4xvvQu7L+BGvC
	 yj4Zg+kpKH7gQ==
Date: Sun, 13 Sep 2026 09:51:57 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Nabige Aala <nabige.aala@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Rob Clark <robin.clark@oss.qualcomm.com>, Dmitry Baryshkov <lumag@kernel.org>, 
	Abhinav Kumar <abhinav.kumar@linux.dev>, Jessica Zhang <jesszhan0024@gmail.com>, 
	Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Kuogee Hsieh <quic_khsieh@quicinc.com>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>, Mahadevan P <mahadevan.p@oss.qualcomm.com>
Subject: Re: [PATCH 02/17] dt-bindings: display/msm: dp-controller: Document
 Nord DP
Message-ID: <20260913-idealistic-perky-mule-f4e3bb@quoll>
References: <20260911-nord-drv-dt-v1-0-e25c073cf1b6@oss.qualcomm.com>
 <20260911-nord-drv-dt-v1-2-e25c073cf1b6@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260911-nord-drv-dt-v1-2-e25c073cf1b6@oss.qualcomm.com>
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

On Fri, Sep 11, 2026 at 09:06:33PM +0530, Nabige Aala wrote:
> From: Mahadevan P <mahadevan.p@oss.qualcomm.com>
> 
> Add the compatible for the DisplayPort controller found on the
> Qualcomm Nord SoC.

Same comment to other Qualcomm patches... say something useful instead.
See also writing bindings.


> 
> Signed-off-by: Mahadevan P <mahadevan.p@oss.qualcomm.com>
> Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/display/msm/dp-controller.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
> index 094a6383bb77..8d980acb1a16 100644
> --- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
> +++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
> @@ -19,6 +19,7 @@ properties:
>      oneOf:
>        - enum:
>            - qcom,glymur-dp
> +          - qcom,nord-dp
>            - qcom,sa8775p-dp
>            - qcom,sc7180-dp
>            - qcom,sc7280-dp

Not complete.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
