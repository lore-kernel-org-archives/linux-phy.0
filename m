Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50AC3606A339
	for <linux-phy@archiver.kernel.org>; Tue, 17 Nov 2026 15:23:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=q266pvI6;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=oC+uPw+o
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:To:Cc:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Unsubscribe-Post:List-Owner;
	bh=ZHvdUpX0gvdwTmi7y5epybDN6Pyc+8eMGPHJCWsWEps=; b=q266pvI6DW/6ICM+6pnP1tH2DZ
	i7yMR+3KLAzoXcfH/FgVmB4cIG4VtK9cGSqqwhKRRfpGwKAaFbBzvtoOvY2n0XngZ03/yM7PLbycn
	01mXVU4XG/n0ixodFh28IxpsVC4lVH01kaifSl5EJ/QzLSBMUqNk7ht8ahwd6Vbyj1h5FS/vyWHC3
	3sQ0vzY9+ZuN93LHY7PxM2MjBwCdXJ2XnBIdiqKI1qmjwCavKi4mi8THMTiBjTYvSPZCry428p3DX
	SiwTpoL4+r3PFkdax85LAk8MsuXxXSlNjEeZ3mvi5BBKXue7cokZvLAgDDwtg3MkMIYE1IDUc/NCH
	F0wiEI7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTL1l-00000006I4A-3GPz;
	Tue, 17 Nov 2026 15:23:21 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTL1k-00000006I3q-47fs
	for linux-phy@lists.infradead.org;
	Tue, 17 Nov 2026 15:23:21 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 161A46110C;
	Tue, 17 Nov 2026 15:23:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 76B341F000C4;
	Tue, 17 Nov 2026 15:23:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794928999;
	bh=pj7Iutfia5o0YgMQ4W5M75M2wxBex2DT4HWlOgqEoUQ=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject;
	b=oC+uPw+o0CJJcAQu/FtnCspGzEzNk2m+LS8rDRP9jk30eyRfY1sVemTh+nj8hg/zi
	 1L2LHZ5OIUk1d9BI42yKOKBE7hEIxXD9bZ5gT6NI+A8IJn7mepdKAGpqnj1hj9U0uZ
	 2TzmZPmC6sKjYu++VFs0lVcf0P7tbF6C1NvCwpNXTav1kd35xTyVPBFRbM2IqJqGka
	 u1bWwlyXfBQpzYouOli/ckx8shkq/KmEYaWZVRWx+0QoAzCQWL5OS3Z1tLDlf8766u
	 pDFi5WqgFK5YidRPxZJHEo5XkQLvRHiCoe0Ii+tKdR9QIEXbk0gjlVYhZxsaE0f6x8
	 YW1jBmNNwKz8A==
Date: Tue, 17 Nov 2026 09:23:17 -0600
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: freedreno@lists.freedesktop.org, David Airlie <airlied@gmail.com>, 
 devicetree@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Simona Vetter <simona@ffwll.ch>, 
 Abhinav Kumar <abhinav.kumar@linux.dev>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Jessica Zhang <jesszhan0024@gmail.com>, Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>, 
 Mahadevan P <mahadevan.p@oss.qualcomm.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Bjorn Andersson <andersson@kernel.org>, dri-devel@lists.freedesktop.org, 
 Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>, 
 Dmitry Baryshkov <lumag@kernel.org>, 
 Rob Clark <robin.clark@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org, 
 Kuogee Hsieh <quic_khsieh@quicinc.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Shawn Guo <shengchao.guo@oss.qualcomm.com>, 
 Thomas Zimmermann <tzimmermann@suse.de>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>
To: Nabige Aala <nabige.aala@oss.qualcomm.com>
In-Reply-To: <20261116-nord-drv-dt-v3-3-e3d3bf0e2c49@oss.qualcomm.com>
References: <20261116-nord-drv-dt-v3-0-e3d3bf0e2c49@oss.qualcomm.com>
 <20261116-nord-drv-dt-v3-3-e3d3bf0e2c49@oss.qualcomm.com>
Message-Id: <179492860187.13563.669305827453272246.robh@kernel.org>
Subject: Re: [PATCH v3 03/11] dt-bindings: display/msm: Document Nord MDSS
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1


On Mon, 16 Nov 2026 18:46:42 +0530, Nabige Aala wrote:
> From: Mahadevan P <mahadevan.p@oss.qualcomm.com>
> 
> Nord has a new MDSS 12.1 revision with DPU 1499A and two independent,
> DP-only display interface controllers (no DSI), which no existing
> schema describes. Add a dedicated qcom,nord-mdss binding to document.
> 
> Assisted-by: LLM
> Signed-off-by: Mahadevan P <mahadevan.p@oss.qualcomm.com>
> Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
> ---
>  .../bindings/display/msm/qcom,nord-mdss.yaml       | 396 +++++++++++++++++++++
>  1 file changed, 396 insertions(+)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Documentation/devicetree/bindings/display/msm/qcom,nord-mdss.example.dtb: displayport-controller@af54000 (qcom,nord-dp): compatible: ["qcom,nord-dp"] is not valid under any of the schemas listed in the 'oneOf' keyword
	from schema $id: http://devicetree.org/schemas/display/msm/dp-controller.yaml
Documentation/devicetree/bindings/display/msm/qcom,nord-mdss.example.dtb: displayport-controller@af5c000 (qcom,nord-dp): compatible: ["qcom,nord-dp"] is not valid under any of the schemas listed in the 'oneOf' keyword
	from schema $id: http://devicetree.org/schemas/display/msm/dp-controller.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.kernel.org/project/devicetree/patch/20261116-nord-drv-dt-v3-3-e3d3bf0e2c49@oss.qualcomm.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
