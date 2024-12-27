Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87C61E77191
	for <linux-phy@archiver.kernel.org>; Fri, 27 Dec 2024 08:41:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cH2epFVmKA/c/Fku4Lj7Rx0Sy75H2fKHOtcnwCLFRdk=; b=dXQDM8V+R8amnC
	vkwWuSy0xvjV3VYUy2ToKR7r/fheOd9o6l5cbGBrrOO0cViUhxgZ1Ka6A3vxXts84dVptX2L/+th+
	BQ96xQA5tV68E1ykKQhEvWnMnfs4PRejwGKURZ+GpZh0Pw0IyaJ06Q5lrXalvk8Dm9a/w6TiibYAf
	CVQlTOX29N3Yn/USfEL804+11W9wPsCSBOkDQ9J2U/mDtu+JFhQxaqa/C+JlAId78TLiC39vZkiJH
	P3goo0kHIvC+MoSzYaMLSvOCNOBYw1gcae/z9vpB5Bv0hfDBZV9ZN7hD+AbjXR9CXw/JMrM3y18qH
	dySi5wVZwsqbN1f0ogEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tR5uV-0000000HOz7-1GxM;
	Fri, 27 Dec 2024 08:41:31 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tR5uT-0000000HOyj-14Cn
	for linux-phy@lists.infradead.org;
	Fri, 27 Dec 2024 08:41:30 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 95ECFA4129A;
	Fri, 27 Dec 2024 08:39:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 30081C4CED0;
	Fri, 27 Dec 2024 08:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735288888;
	bh=+DfnXbfYpsZSpFyfyfS60TU6RcqCaLnx601olT7c+SU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=X1SelRVBIZlFgmLZ/O85kx4mfu2FZD6xyxjM3AmoASJ3PI826XpRXwkmOtdt+TptL
	 Tf1h4MPLkUD12iOB27g1J+LTYkhkwr5U2+Y7GzZc/q1DZT864dXWI0vosOe6/Qlrqy
	 o+qwQflZn0RY8D6mOX/BzKEhTM+HnqTmFGItNjaxAAVoqf2hiZKye+GWZ8UhkjrRk2
	 4ASW++ig6Mwza9g99RWixYPbYjvzInHdz9JSJPKjeq3mo6b0WvaRE63BFYJ8En/LVq
	 N1/FjFSY1lk9U1Do9ksdkZZTFKtPuOc3P4+8eNV5HP0cW/XSfMkhNU5lEOK7teIyTJ
	 B/Dt7JFOkjqzQ==
Date: Fri, 27 Dec 2024 09:41:24 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Yongxing Mou <quic_yongmou@quicinc.com>
Cc: Rob Clark <robdclark@gmail.com>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
	Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Kuogee Hsieh <quic_khsieh@quicinc.com>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v2 1/5] dt-bindings: display/msm: Document the DPU for
 QCS8300
Message-ID: <66x4orucj6kenpwetugmng3kmuzjoagjkmctrn727j5hayjhhe@dvzdd6a2ehzn>
References: <20241226-mdssdt_qcs8300-v2-0-acba0db533ce@quicinc.com>
 <20241226-mdssdt_qcs8300-v2-1-acba0db533ce@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241226-mdssdt_qcs8300-v2-1-acba0db533ce@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241227_004129_366724_C23F392E 
X-CRM114-Status: UNSURE (   6.26  )
X-CRM114-Notice: Please train this message.
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

On Thu, Dec 26, 2024 at 05:40:45PM +0800, Yongxing Mou wrote:
> Document the DPU for Qualcomm QCS8300 platform.It use the same DPU

Missing space after full stop.

> hardware with SA8775P and reuse it's driver.
> 

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
