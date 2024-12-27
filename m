Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 22976E77191
	for <linux-phy@archiver.kernel.org>; Fri, 27 Dec 2024 08:44:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6RyvRJon7Gml5oHRrXhUzuk+I99IeupK+6JOxjUg+Us=; b=jdRgvmXA8f6V9U
	kjuqTqYJTaWwjGiYeaN2RO3ha9i6cKF8u3+QbkH7yP/W0Ky69oXBWHIjj5FThsqYdUVIm/+iOtiKC
	nr9B5UULTviIH0c5HJsj4QUWBbMl8mLZatNr6if4NkK6Gcrh2TZBoHXQAWX8fCLNh8l1XdobNSIao
	M7mysWrxRghwFVWu/1wbfDWI+aX6mHlo5EC+0cDVerzT4J25f4ye8RmAzah0rUXwnzikg/NFydCC0
	sHQmoW+zXOk/IPZk0WKsPwTXtBjxcjKAHhMF7HHdrwenficNeSeR+fleM5sG39m0l2yb/iuhvxRiV
	rBCbo+v5jrSnyE8h1OOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tR5xW-0000000HPNK-3nOm;
	Fri, 27 Dec 2024 08:44:38 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tR5xU-0000000HPMu-183w
	for linux-phy@lists.infradead.org;
	Fri, 27 Dec 2024 08:44:37 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 0700E5C272E;
	Fri, 27 Dec 2024 08:43:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A5DFCC4CED0;
	Fri, 27 Dec 2024 08:44:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735289075;
	bh=gRUDW2sk7KBxahivpahylihNgF4ImEqq8Vk4RGxoVFU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uu4P6l5L2wyQ0a7yAnC6UM8cqiYCjJGOsagYqNsTh0hpRRaqGbmCwhucs8i3cuHM8
	 mSnEWgsT7tjiyOqT4edHoK9oPpOHzcToRrv29nWqKVGOc55S+/8RHaB3iZpbWt8AAl
	 UkrRA2jhF7uHgiPijy07V/ixXpwU+QVcHA6p59i/Wsppf0RIIXAyes1c6yob2eNjNn
	 KbIrCyYbYrKpsNUihv3eazFxSLa3sELIDmWgS67uP3EZABmWh5+4nSw6Ac6Z3omJuI
	 +OM94PwYEa37x2S20h1bDoRrEF7buvkXJ2VK5JmkeLOH+VYtwPRA1iH96QF6TK2eAf
	 wVZnTaXiaU6TA==
Date: Fri, 27 Dec 2024 09:44:32 +0100
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
Subject: Re: [PATCH v2 4/5] dt-bindings: phy: Add eDP PHY compatible for
 QCS8300
Message-ID: <tes4plrvkq7jpjz3zxi4hvvse7eeprk6fi3mnl6ogtkdq7ysgn@x444nwexoqpj>
References: <20241226-mdssdt_qcs8300-v2-0-acba0db533ce@quicinc.com>
 <20241226-mdssdt_qcs8300-v2-4-acba0db533ce@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241226-mdssdt_qcs8300-v2-4-acba0db533ce@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241227_004436_358401_96CA3727 
X-CRM114-Status: UNSURE (   8.47  )
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

On Thu, Dec 26, 2024 at 05:40:48PM +0800, Yongxing Mou wrote:
> Add compatible string for the supported eDP PHY on QCS8300 platform.
> QCS8300 have the same eDP PHY with SA8775P.
> 
> Signed-off-by: Yongxing Mou <quic_yongmou@quicinc.com>
> ---
>  .../devicetree/bindings/phy/qcom,edp-phy.yaml         | 19 ++++++++++++-------
>  1 file changed, 12 insertions(+), 7 deletions(-)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
