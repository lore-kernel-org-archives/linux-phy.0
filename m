Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A9130C10F1A
	for <linux-phy@archiver.kernel.org>; Thu,  9 May 2024 07:37:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0b9qdoJ3jTZqmWIkBAn+UceQ0BnfeqIfe0BHDVe5nWc=; b=fxx5NHt9v8zvvbpOheNf3OF0Mw
	v5EZVG607JE0BzRVmO+nGCMRIsdqbgdd7SLK49wOoWtWNXf+I+xMR0eoeAWjMV+8WZQXp4E6LPMB5
	UnhZDa35ni/O/u4MzV50i/wvG2FHVxhhByO1/WioWn5oag4zWdPM4DnIrkEPOSnaDP2Vu0sNaOq/q
	5N7eGT1I8PLAEp6HlU5fftw4qfgYogS+p0IXTp0+yBYrDZ6Dfa5oRFx60LsSG6Ntz+2UKkvj0DOCP
	kB8BqjSJsXH0ZQL9Aar9o/Uk3MlMxj5eTMYRazQRRNvcHyOvWKAtvxGLMwudJvLOgTK2VWmNYcyyk
	+9oK/u9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4yLG-00000000iGB-1LfR;
	Thu, 09 May 2024 07:37:26 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4yLB-00000000iET-3V2M;
	Thu, 09 May 2024 07:37:23 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id C14B5CE1AAF;
	Thu,  9 May 2024 07:37:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B3EC6C116B1;
	Thu,  9 May 2024 07:37:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715240237;
	bh=qk2+IBmDngaDBCJU7AWu8KKJZ2Rxhc2kyG9HF1G1JBg=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=oOAsEd7PQJIoZ2Vr4Q5rpV1oePjIklqIWCXS8FlQab75d64GDWCB8eUa5P55ZeyQD
	 s0XWc8mGImqVD5UyZP9uXkGUmPKRyyCqC4+YYHq5rQta7obsKDM3GmmBFlD6PRYxtS
	 xpV8tZpda60FRWM491//iijyjJWzvd0sbsvOd3UmUwekPdk6tYzGIDln7JZSqH9tFr
	 IzNZrca1dt4rYw9pjk5FnvoFvM23bUJv7LNZozAu3NCtlzeErQOjwQ0V4R9rVDFCZb
	 vf2MsxLB0Y10AHcRi7X3IOm4uxjqr0sd6Y2VNxkBmZmAVirDLPIGiQt0pFge40JtTT
	 hp4/O84Z3NyPA==
Date: Thu, 09 May 2024 02:37:15 -0500
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Richard Zhu <hongxing.zhu@nxp.com>
Cc: kernel@pengutronix.de, imx@lists.linux.dev, 
 krzysztof.kozlowski+dt@linaro.org, conor@kernel.org, conor+dt@kernel.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, vkoul@kernel.org, 
 robh+dt@kernel.org, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, frank.li@nxp.com, kishon@kernel.org
In-Reply-To: <1715234181-672-3-git-send-email-hongxing.zhu@nxp.com>
References: <1715234181-672-1-git-send-email-hongxing.zhu@nxp.com>
 <1715234181-672-3-git-send-email-hongxing.zhu@nxp.com>
Message-Id: <171524023506.3993776.14373949922426519018.robh@kernel.org>
Subject: Re: [PATCH v4 2/3] dt-bindings: phy: Add i.MX8Q HSIO SerDes PHY
 binding
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240509_003722_187162_F1C31877 
X-CRM114-Status: GOOD (  10.29  )
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


On Thu, 09 May 2024 13:56:20 +0800, Richard Zhu wrote:
> Add i.MX8QM and i.MX8QXP HSIO SerDes PHY binding.
> Introduce one HSIO configuration 'fsl,hsio-cfg', which need be set at
> initialization according to board design.
> 
> Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
> ---
>  .../bindings/phy/fsl,imx8qm-hsio.yaml         | 142 ++++++++++++++++++
>  1 file changed, 142 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/fsl,imx8qm-hsio.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:
./Documentation/devicetree/bindings/phy/fsl,imx8qm-hsio.yaml:54:13: [error] string value is redundantly quoted with any quotes (quoted-strings)
./Documentation/devicetree/bindings/phy/fsl,imx8qm-hsio.yaml:54:22: [error] string value is redundantly quoted with any quotes (quoted-strings)

dtschema/dtc warnings/errors:

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/1715234181-672-3-git-send-email-hongxing.zhu@nxp.com

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
