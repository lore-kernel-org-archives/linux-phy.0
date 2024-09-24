Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 508C2CF9C69
	for <linux-phy@archiver.kernel.org>; Tue, 24 Sep 2024 18:02:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=sxl1XAAuqzTOOuMGVwF6BwcnpQKvUuoPboTc0AQGgVs=; b=Xp2DnIs/N0wNKJynEZGPtvhZmm
	A/F3K+km3YPIpsHzLs7tv/9cCQURCgNqkmh0b48AdO+7+Lpi21pCzQz8LMepPPeRMkRZZWDB2BEml
	nTjVjL2ozz1onG59AGzv5qyojmKnoJX3N7tE4pHVUwnlfs/5YmD2/72DkP4cJvWs3cxb0MFNZ69UP
	GnM/VIKouIesLlIYpKAtLpSc5TM8l3o0zeDmRXPf4Z90cm4O9hq0px3HIDyxI9aSlRaDqdxCLbMcF
	NyMwxi0Y7hbiDkpC87T3yZE+uJL7n1DH+XIShm/46ReOvU8+Jp545G0EZk0CUjCrBZCmzF8KPr2eq
	HskCQO5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1st9rj-0000000309l-0Bth;
	Tue, 24 Sep 2024 18:02:23 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1st9qX-00000002zqM-2U0z;
	Tue, 24 Sep 2024 18:01:11 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 12A1FA43806;
	Tue, 24 Sep 2024 18:01:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 89CADC4CEC5;
	Tue, 24 Sep 2024 18:01:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727200867;
	bh=FIBb6Xvg+vsgLgLFLONIDRw5APSJqrReEgeIWNL+IS0=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=SmhXbk8xSfBousexFosmlobUgbqZZT8vkrhy3PqNvfGjguI5C24e74tfAoS288cv+
	 ShVL9IN8zynLttc4j52kERYVOhfxp3spvFLrCL3RJ8PjOp/jl6X38qkw8bi966fmyw
	 IeoCBOh3AId7HJW43JDo/hrV4gHx3Enbz305N0GwFmnOQmX4TKLBXiQjEWiybngqjS
	 oFPmOHpvi9OUFLskXitlQJ2cydCon8zJFtepf6nfOqt2bwFnMyNqJQC1WLrX9NTi00
	 GBabJGQ9D6PXccpqOyjCDKaB6Yv0rmJqzgMHH0v+VGHOLJ+ymo6HqUFhroJrhGokpp
	 JM0D42QcdaScQ==
Date: Tue, 24 Sep 2024 13:01:06 -0500
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Sandor Yu <Sandor.yu@nxp.com>
Cc: andrzej.hajda@intel.com, sam@ravnborg.org, robh+dt@kernel.org, 
 jonas@kwiboo.se, Laurent.pinchart@ideasonboard.com, 
 krzysztof.kozlowski+dt@linaro.org, linux-phy@lists.infradead.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, kernel@pengutronix.de, 
 alexander.stein@ew.tq-group.com, shawnguo@kernel.org, linux-imx@nxp.com, 
 mripard@kernel.org, vkoul@kernel.org, dri-devel@lists.freedesktop.org, 
 daniel@ffwll.ch, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, airlied@gmail.com, 
 jernej.skrabec@gmail.com, s.hauer@pengutronix.de, oliver.brown@nxp.com, 
 devicetree@vger.kernel.org, festevam@gmail.com, dmitry.baryshkov@linaro.org, 
 neil.armstrong@linaro.org
In-Reply-To: <b2e1d26f964a03163ec7a1ba6ac8d7c88d6cb111.1727159906.git.Sandor.yu@nxp.com>
References: <cover.1727159906.git.Sandor.yu@nxp.com>
 <b2e1d26f964a03163ec7a1ba6ac8d7c88d6cb111.1727159906.git.Sandor.yu@nxp.com>
Message-Id: <172720086579.2917.61541648754055069.robh@kernel.org>
Subject: Re: [PATCH v17 3/8] dt-bindings: display: bridge: Add Cadence
 MHDP8501
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240924_110109_716157_38766662 
X-CRM114-Status: UNSURE (   9.83  )
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


On Tue, 24 Sep 2024 15:36:48 +0800, Sandor Yu wrote:
> Add bindings for Cadence MHDP8501 DisplayPort/HDMI bridge.
> 
> Signed-off-by: Sandor Yu <Sandor.yu@nxp.com>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
> v16->v17:
> - Add lane-mapping property
> 
> v9->v16:
>  *No change
> 
> .../display/bridge/cdns,mhdp8501.yaml         | 109 ++++++++++++++++++
>  1 file changed, 109 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/bridge/cdns,mhdp8501.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/display/bridge/cdns,mhdp8501.yaml: lane-mapping: missing type definition

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/b2e1d26f964a03163ec7a1ba6ac8d7c88d6cb111.1727159906.git.Sandor.yu@nxp.com

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
