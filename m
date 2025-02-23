Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F914C021B2
	for <linux-phy@archiver.kernel.org>; Sun, 23 Feb 2025 13:44:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:To:Cc:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=PqeCeH/zO1n15i15Xwr6NgUKtW4GReAGX0S4Yavdpk0=; b=KMfFM8vR/rniDiMEHJrqHzg3fe
	G/CSXO7jGgZbFltASqzE1SNZ+HGuD2MIJKmZXd36/2HrE596DErCYEVsMReg+RlPLIKaMS2RxQUgC
	GaL0xD9q/q7vOQQMJSnhyRfJfraGoiq2rzc35IkvI4HInlp78zqj6gkWVxFWw9Xiw+sSvloH3VSr1
	ymNwyaVWfODsgugp8/91PX4T2fpJLMTL/ibPfj5cSZ4pd8hoKyWFP6/3T8e9BDAm90PUFUZVaTDMY
	dJHg7nEm7tI9Rfi97K7uvFzrTOPz82LwDI8UpvqvJUkLsxH5Vq6ZG1O3qwOYy7Veo3nZJIkR0VkxX
	Rl2A5MVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tmCH7-0000000BEHu-1tS9;
	Sun, 23 Feb 2025 13:44:05 +0000
Received: from tor.source.kernel.org ([2600:3c04::f03c:95ff:fe5e:7468])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tmCFZ-0000000BE34-1Tnf;
	Sun, 23 Feb 2025 13:42:29 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 0EAD961144;
	Sun, 23 Feb 2025 13:42:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 40BD3C4CEDD;
	Sun, 23 Feb 2025 13:42:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740318148;
	bh=jwn6l1jyxsK/cyBjr2VSFnuiR+pFjsZ0dp+FXBN4EKk=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=VOvT3YKM+eQXCjRRFCLOAagcaYsSs5wa1B8tqegM6X9ADvs0gZKCNKE+rZilru1J/
	 i4DJn5BI6aHcO5IgQcZpbDb86ceSV3Ggq+usy+L1e/99m6F71L3OhOCCjHMK0IBHDr
	 V5HpUmjnaQ9lPJY1VfK1J6F0MiedheykIXvVwKK+WIjB+zFay5LaliiRTDZG4Y3bfR
	 1BvnlL02+nVY7f+gORG02yX3dXP65Z2XJ3K4pSb8tNAkpbAMlS8y385ce2gv4xzoTy
	 o5vwp7Hui2MHDxOt5YJFkGdrZfPxAz+27/uVLfIvoPTJkwUA/uvDubZ+6NJwivYpM9
	 +1jPMY8oF0sHw==
Date: Sun, 23 Feb 2025 07:42:26 -0600
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
 linux-samsung-soc@vger.kernel.org, Vinod Koul <vkoul@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, linux-phy@lists.infradead.org, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-arm-msm@vger.kernel.org, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 linux-arm-kernel@lists.infradead.org, Alim Akhtar <alim.akhtar@samsung.com>, 
 Abel Vesa <abel.vesa@linaro.org>, linux-kernel@vger.kernel.org
To: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
In-Reply-To: <20250223122227.725233-4-ivo.ivanov.ivanov1@gmail.com>
References: <20250223122227.725233-1-ivo.ivanov.ivanov1@gmail.com>
 <20250223122227.725233-4-ivo.ivanov.ivanov1@gmail.com>
Message-Id: <174031814650.3676571.3567229546810248196.robh@kernel.org>
Subject: Re: [PATCH v2 3/8] dt-bindings: phy: add
 samsung,exynos2200-usbcon-phy schema file
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


On Sun, 23 Feb 2025 14:22:22 +0200, Ivaylo Ivanov wrote:
> The Exynos2200 SoC has a USB controller PHY, which acts as an
> intermediary between a USB controller (typically DWC3) and other PHYs
> (UTMI, PIPE3). Add a dt-binding schema for it.
> 
> Signed-off-by: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
> ---
>  .../phy/samsung,exynos2200-usbcon-phy.yaml    | 76 +++++++++++++++++++
>  1 file changed, 76 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/samsung,exynos2200-usbcon-phy.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Documentation/devicetree/bindings/phy/samsung,exynos2200-usbcon-phy.example.dts:18:18: fatal error: dt-bindings/clock/samsung,exynos2200-cmu.h: No such file or directory
   18 |         #include <dt-bindings/clock/samsung,exynos2200-cmu.h>
      |                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
compilation terminated.
make[2]: *** [scripts/Makefile.dtbs:131: Documentation/devicetree/bindings/phy/samsung,exynos2200-usbcon-phy.example.dtb] Error 1
make[2]: *** Waiting for unfinished jobs....
make[1]: *** [/builds/robherring/dt-review-ci/linux/Makefile:1511: dt_binding_check] Error 2
make: *** [Makefile:251: __sub-make] Error 2

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20250223122227.725233-4-ivo.ivanov.ivanov1@gmail.com

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
