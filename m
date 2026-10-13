Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 622D6CC6B03
	for <linux-phy@archiver.kernel.org>; Tue, 13 Oct 2026 08:48:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EDqLAXgUUeBLjHm3VoqCP8w7zjpVPwFPJswm3jWLP9I=; b=rujTk4JrEz6Bpc
	CdOW6Gw2OxorEEoBy8qsndVSf5B0M1VoV3ZsBgRhJVMb3Kn8R85RHNZEa3jXKXFaIpWMg2vzvuiKD
	pH2NlhUNWAwM3Px/C4zOHeDHEooldcovOTHQhXjEAmHWq6glTil+PpsG6v6Boxg4s2KDtWC7MCQsW
	RiEIFHvuhAk6puGfuk/6wnPYH412suv7tWBmDS/czZUPCiNTvfkbonuuY65+rhIWjJsugmhNg/7Nv
	IM1IVMHLxBE8pu1kAnfV3bthji2MiF20Y6F+vCmOPSZqopmmTEUnaFh6I1bpVsQhEinaHA01QR146
	eIf4S/i5dYX4o85Gy7fQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGYBA-0000000CN1T-3ng2;
	Tue, 13 Oct 2026 08:48:12 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGYB9-0000000CN0e-0cTe
	for linux-phy@lists.infradead.org;
	Tue, 13 Oct 2026 08:48:11 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 5228F600D1;
	Tue, 13 Oct 2026 08:48:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 227BF1F000FF;
	Tue, 13 Oct 2026 08:48:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791881290;
	bh=F2rK+drwDeSxyN8ny18ofHQWTkBYjp74CzzmzODAL4s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=SHbVJfjg2bgSFzJly48JojF5qxD+CKOEDXscma8WDUgAjuU1nCfRsleU5yMoZc+Fp
	 P1VczgGgyLA2b4F2VGO9sQTe0615B2JTukdBjFHBcf1rEMsoF30rzuNWLurJfgQQu3
	 d5+RqvRaInR2z47lQ1GuANHAGtqIzi7CHd8/FFIqU9XpcWakUFWNzLlVCM64pJ/Gph
	 dWUXZo0HE0Cyq3Sg0MyGWyEzG2mPfmgLbnkmEtU5bBxnaWslvC5N4NSPKkigXx104+
	 FAMLslp8qB5ATeemLaB7YfFg/kOQUBWNMkSWw1qA+Zwy94AmY1DKyG81YzBjWZZxmk
	 /8+nNJ/xXpCPQ==
Date: Tue, 13 Oct 2026 10:48:06 +0200
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
	Shawn Guo <shengchao.guo@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>, 
	Mahadevan P <mahadevan.p@oss.qualcomm.com>
Subject: Re: [PATCH v2 03/13] dt-bindings: display/msm: Document Nord MDSS
Message-ID: <20261013-vigilant-penguin-of-glory-b2d055@quoll>
References: <20261012-nord-drv-dt-v2-0-a2ab9af954d2@oss.qualcomm.com>
 <20261012-nord-drv-dt-v2-3-a2ab9af954d2@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261012-nord-drv-dt-v2-3-a2ab9af954d2@oss.qualcomm.com>
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

On Mon, Oct 12, 2026 at 07:02:13PM +0530, Nabige Aala wrote:
> +  interconnect-names:
> +    items:
> +      - const: mdp0-mem
> +      - const: cpu-cfg
> +
> +patternProperties:
> +  "^display-controller@[0-9a-f]+$":
> +    type: object
> +    additionalProperties: true
> +    properties:
> +      compatible:
> +        const: qcom,nord-dpu

Where are the bindings for qcom,nord-dpu?

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
