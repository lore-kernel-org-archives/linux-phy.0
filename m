Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A37F9C3ABB2
	for <linux-phy@archiver.kernel.org>; Mon, 16 Sep 2024 15:22:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H/1yAzIglDirHP5wQw6utLE+bI+laEBixYx7dCszMOk=; b=r5BhloVbh233l8
	BVKXQF/M0X3mPgp06U4HMBvi9sl8KguXM1bv2lOVPbrOU0iTQfVa0DCB9vBJvlDpm4Gr9vbs+qMLP
	B4mAXrqtcTP3ffdwmuZR+yQcVTHuwy4jR8LrS2DevXis7fcjo/WQ0AaI/AtYZ9ejQ6dSEsaPa9iLz
	DiuBuaeZYMmhzKbcmv6UTO+p+K6XMi1IOTiqktAoqxwu1zgHN6noierrU8Q5KJtJhAT+oZ35v1J+f
	JOoaJli90T3EBaocxwIyezFxQ0AyZAP387MDH/XYBYmE5ncgArmVKlagVLuFd6dTkaeiUkVAS0lWy
	gar7B3PbfCU4u5NkH64A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sqDYW-00000004Kzp-12AA;
	Mon, 16 Sep 2024 15:22:24 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sqDXQ-00000004KmB-3gU8
	for linux-phy@lists.infradead.org;
	Mon, 16 Sep 2024 15:21:18 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 7EF615C5C68;
	Mon, 16 Sep 2024 15:21:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C4741C4CEC4;
	Mon, 16 Sep 2024 15:21:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726500075;
	bh=15KPeQUmUDmhfRZADjOpKO9OZuRW742vA+qq24d9DQo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=B5ITreaqD66aCZn0ZnFRJQUnkcv9GGjMkBePgY00QODxUerihkKlQ/zgReoKJwE2Q
	 Cap3vUp5CkErTeHLvGn0fZa13YQzZxOCbR+88hd5sTElej40AgSEz+toE+/ngvMUZm
	 EGEtYX8jlXedfWk40Ep2CJOYrGNjS+8XUqV2K1kWZrw2P2vndv/Lw9zb9VL3pQPHkj
	 YoGmZkYSS0I/H58sA1yM0QCgNHLkjE8SSN+w1RelY8FwpUsdq2uBiKyEOb1rirrEHc
	 Z5C2xlsId/ivtorQ6nAOg7xPJ7QU550v4Z35ZhWnUq/g3VyAo/65+vr4nsezSW3mtV
	 0C29kzbyIC/YQ==
Date: Mon, 16 Sep 2024 17:21:12 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Soutrik Mukhopadhyay <quic_mukhopad@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, konradybcio@kernel.org, 
	andersson@kernel.org, simona@ffwll.ch, dmitry.baryshkov@linaro.org, 
	abel.vesa@linaro.org, robdclark@gmail.com, quic_abhinavk@quicinc.com, sean@poorly.run, 
	marijn.suijten@somainline.org, airlied@gmail.com, daniel@ffwll.ch, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, quic_khsieh@quicinc.com, 
	konrad.dybcio@linaro.org, quic_parellan@quicinc.com, quic_bjorande@quicinc.com, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
	quic_riteshk@quicinc.com, quic_vproddut@quicinc.com
Subject: Re: [PATCH v2 1/5] dt-bindings: phy: Add eDP PHY compatible for
 sa8775p
Message-ID: <qy4hizhsrz6nnfq4a5eremcc7b2gtw6czpav2j34nyj4i6fenv@p6vzlxanhmd5>
References: <20240913103755.7290-1-quic_mukhopad@quicinc.com>
 <20240913103755.7290-2-quic_mukhopad@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240913103755.7290-2-quic_mukhopad@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240916_082117_003538_79AD02FA 
X-CRM114-Status: UNSURE (   7.29  )
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

On Fri, Sep 13, 2024 at 04:07:51PM +0530, Soutrik Mukhopadhyay wrote:
> Add compatible string for the supported eDP PHY on sa8775p platform.
> 
> Signed-off-by: Soutrik Mukhopadhyay <quic_mukhopad@quicinc.com>
> ---
> v2: No change
>  
> ---
>  Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml | 1 +

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
