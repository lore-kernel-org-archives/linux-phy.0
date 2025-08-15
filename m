Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F3007CA0ED1
	for <linux-phy@archiver.kernel.org>; Fri, 15 Aug 2025 21:19:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:To:Cc:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ZIp8wj0YbzSA505K3wJ+nBZZUs3gIC9Wqrv+uqiSbRc=; b=Rpbna+hGITVwALvmX6qMb5kS/v
	vZT3mXl6xraSGZmIAqdFvDoPnGtVMdW9pPVMIg6Tu+blixj3y491N6v2mB30Dmmq9b8bMQJf+m5wF
	KozigopxV5fOVxdBFO5gLJs7/ESfKCGDOSGf07gaubCTHjw5zt8pp8YowuRuY12hLsuojPnfCfqQ+
	8k8AGXWAEwWQKCB3yShYDUNW2PPdBYT6kpX2bL/qSOzIZie6v6XYCSeex+XCjobcARSUQ++xCnyDT
	gxB1muyfnsPnCky59CPajK4OE6NMoU0JjPBGXzN0MyCmBQ2sBCDqEAHoFvaJmw/zPs6tlXqFjbmBu
	woA8n0pQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1un1pQ-00000003XEs-2DeH;
	Fri, 15 Aug 2025 21:19:12 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1un1pO-00000003XEN-2SD5
	for linux-phy@lists.infradead.org;
	Fri, 15 Aug 2025 21:19:10 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 7764B61409;
	Fri, 15 Aug 2025 21:19:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D5268C4CEF1;
	Fri, 15 Aug 2025 21:19:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755292749;
	bh=AQ9VJele7mJRNjTxss9xSw0/jNvbCg97+1WB45EM7pM=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=i2ubSBLhZ/wEoeBbZYdVvOxQUu1R8+kG5J2QvX9EgxUFcIYie0GOZPkNMSn7QOgF/
	 SEDZ44qwoCG/cfBqg0pAd8vE6RLlQY8aJV/t0JdqE0BrbJoll/uvcup7ROwVTwk883
	 LKr0CFlNK0gSlHVkX9SRGzi4H6EqNx55qhWjAxM5YN7AUnTP3cFo0eR7JcNP268sZ3
	 +UEiK+RCJmr2S3QKj67CitykdSpsIZkI509+3UzY7XYTts6mwDVy3450UebE5eKsBa
	 /WxbJmhCqVI90GcywEhyALqcvAyMmxY4HqQUGMGNkLuvSZ8tLdJ1JOrPnY1BI7+yM7
	 hihExMEQ/Thjg==
Date: Fri, 15 Aug 2025 16:19:08 -0500
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: kirill@korins.ky, conor+dt@kernel.org, linux-scsi@vger.kernel.org, 
 andersson@kernel.org, alim.akhtar@samsung.com, linux-kernel@vger.kernel.org, 
 avri.altman@wdc.com, vkoul@kernel.org, mani@kernel.org, marcus@nazgul.ch, 
 kishon@kernel.org, krzk+dt@kernel.org, bvanassche@acm.org, 
 agross@kernel.org, devicetree@vger.kernel.org, 
 linux-phy@lists.infradead.org, linux-arm-msm@vger.kernel.org
To: Harrison Vanderbyl <harrison.vanderbyl@gmail.com>
In-Reply-To: <20250814005904.39173-1-harrison.vanderbyl@gmail.com>
References: <20250814005904.39173-1-harrison.vanderbyl@gmail.com>
Message-Id: <175529259928.3212336.2833391770643806145.robh@kernel.org>
Subject: Re: [PATCH 0/3] Describe x1e80100 ufs
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


On Thu, 14 Aug 2025 10:59:01 +1000, Harrison Vanderbyl wrote:
> Describes the UFS nodes for the x1e80100/x1p42100 chipset.
> 
> This is relevant to the following devices/patches:
> Surface Pro 12 Inch
> HONOR MagicBook Art 14
> Link: https://lore.kernel.org/r/871px910m1.wl-kirill@korins.ky/
> Samsung Galaxy Book4 Edge
> Link: https://lore.kernel.org/r/p3mhtj2rp6y2ezuwpd2gu7dwx5cbckfu4s4pazcudi4j2wogtr@4yecb2bkeyms/
> 
> Forthcoming work *not* included in this patch:
> Surface 12in display description
> Surface 12in Surface Aggregator Module description
> Surface 12in device tree
> 
> harrisonvanderbyl (3):
>   dt-bindings: describe x1e80100 ufs
>   ufs: ufs-qcom: describe x1e80100 quirks
>   dts: describe x1e80100 ufs
> 
>  .../phy/qcom,sc8280xp-qmp-ufs-phy.yaml        |  2 +
>  .../devicetree/bindings/ufs/qcom,ufs.yaml     |  2 +
>  arch/arm64/boot/dts/qcom/x1e80100.dtsi        | 91 +++++++++++++++++++
>  drivers/phy/qualcomm/phy-qcom-qmp-ufs.c       |  3 +
>  drivers/ufs/host/ufs-qcom.c                   |  1 +
>  5 files changed, 99 insertions(+)
> 
> --
> 2.48.1
> 
> 
> 


My bot found new DTB warnings on the .dts files added or changed in this
series.

Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
are fixed by another series. Ultimately, it is up to the platform
maintainer whether these warnings are acceptable or not. No need to reply
unless the platform maintainer has comments.

If you already ran DT checks and didn't see these error(s), then
make sure dt-schema is up to date:

  pip3 install dtschema --upgrade


This patch series was applied (using b4) to base:
 Base: attempting to guess base-commit...
 Base: tags/v6.17-rc1-2-gc123519bffd2 (exact match)

If this is not the correct base, please add 'base-commit' tag
(or use b4 which does this automatically)

New warnings running 'make CHECK_DTBS=y for arch/arm64/boot/dts/qcom/' for 20250814005904.39173-1-harrison.vanderbyl@gmail.com:

Error: arch/arm64/boot/dts/qcom/x1e80100.dtsi:2839.29-30 syntax error
FATAL ERROR: Unable to parse input tree
make[3]: *** [scripts/Makefile.dtbs:131: arch/arm64/boot/dts/qcom/x1e80100-asus-zenbook-a14.dtb] Error 1
make[2]: *** [scripts/Makefile.build:556: arch/arm64/boot/dts/qcom] Error 2
make[2]: Target 'arch/arm64/boot/dts/qcom/x1e80100-asus-zenbook-a14.dtb' not remade because of errors.
make[1]: *** [/home/rob/proj/linux-dt-testing/Makefile:1480: qcom/x1e80100-asus-zenbook-a14.dtb] Error 2
arch/arm64/boot/dts/qcom/x1e80100-dell-xps13-9345.dtb: phy@1d80000 (qcom,x1e80100-qmp-ufs-phy): clocks: [[2, 0], [61, 242]] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-ufs-phy.yaml#
arch/arm64/boot/dts/qcom/x1e80100-dell-xps13-9345.dtb: crypto@1d90000 (qcom,x1e80100-inline-crypto-engine): compatible:0: 'qcom,x1e80100-inline-crypto-engine' is not one of ['qcom,qcs8300-inline-crypto-engine', 'qcom,sa8775p-inline-crypto-engine', 'qcom,sc7180-inline-crypto-engine', 'qcom,sc7280-inline-crypto-engine', 'qcom,sm8450-inline-crypto-engine', 'qcom,sm8550-inline-crypto-engine', 'qcom,sm8650-inline-crypto-engine', 'qcom,sm8750-inline-crypto-engine']
	from schema $id: http://devicetree.org/schemas/crypto/qcom,inline-crypto-engine.yaml#
arch/arm64/boot/dts/qcom/x1e80100-dell-xps13-9345.dtb: /soc@0/crypto@1d90000: failed to match any schema with compatible: ['qcom,x1e80100-inline-crypto-engine', 'qcom,inline-crypto-engine']
arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s-oled.dtb: phy@1d80000 (qcom,x1e80100-qmp-ufs-phy): clocks: [[2, 0], [61, 242]] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-ufs-phy.yaml#
arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s-oled.dtb: crypto@1d90000 (qcom,x1e80100-inline-crypto-engine): compatible:0: 'qcom,x1e80100-inline-crypto-engine' is not one of ['qcom,qcs8300-inline-crypto-engine', 'qcom,sa8775p-inline-crypto-engine', 'qcom,sc7180-inline-crypto-engine', 'qcom,sc7280-inline-crypto-engine', 'qcom,sm8450-inline-crypto-engine', 'qcom,sm8550-inline-crypto-engine', 'qcom,sm8650-inline-crypto-engine', 'qcom,sm8750-inline-crypto-engine']
	from schema $id: http://devicetree.org/schemas/crypto/qcom,inline-crypto-engine.yaml#
arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s-oled.dtb: /soc@0/crypto@1d90000: failed to match any schema with compatible: ['qcom,x1e80100-inline-crypto-engine', 'qcom,inline-crypto-engine']
arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dtb: phy@1d80000 (qcom,x1e80100-qmp-ufs-phy): clocks: [[2, 0], [61, 242]] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-ufs-phy.yaml#
arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dtb: crypto@1d90000 (qcom,x1e80100-inline-crypto-engine): compatible:0: 'qcom,x1e80100-inline-crypto-engine' is not one of ['qcom,qcs8300-inline-crypto-engine', 'qcom,sa8775p-inline-crypto-engine', 'qcom,sc7180-inline-crypto-engine', 'qcom,sc7280-inline-crypto-engine', 'qcom,sm8450-inline-crypto-engine', 'qcom,sm8550-inline-crypto-engine', 'qcom,sm8650-inline-crypto-engine', 'qcom,sm8750-inline-crypto-engine']
	from schema $id: http://devicetree.org/schemas/crypto/qcom,inline-crypto-engine.yaml#
arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dtb: /soc@0/crypto@1d90000: failed to match any schema with compatible: ['qcom,x1e80100-inline-crypto-engine', 'qcom,inline-crypto-engine']
Error: arch/arm64/boot/dts/qcom/x1e80100.dtsi:2839.29-30 syntax error
FATAL ERROR: Unable to parse input tree
make[3]: *** [scripts/Makefile.dtbs:131: arch/arm64/boot/dts/qcom/x1p42100-crd.dtb] Error 1
make[2]: *** [scripts/Makefile.build:556: arch/arm64/boot/dts/qcom] Error 2
make[2]: Target 'arch/arm64/boot/dts/qcom/x1p42100-crd.dtb' not remade because of errors.
make[1]: *** [/home/rob/proj/linux-dt-testing/Makefile:1480: qcom/x1p42100-crd.dtb] Error 2
arch/arm64/boot/dts/qcom/x1e001de-devkit.dtb: phy@1d80000 (qcom,x1e80100-qmp-ufs-phy): clocks: [[2, 0], [61, 242]] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-ufs-phy.yaml#
arch/arm64/boot/dts/qcom/x1e001de-devkit.dtb: crypto@1d90000 (qcom,x1e80100-inline-crypto-engine): compatible:0: 'qcom,x1e80100-inline-crypto-engine' is not one of ['qcom,qcs8300-inline-crypto-engine', 'qcom,sa8775p-inline-crypto-engine', 'qcom,sc7180-inline-crypto-engine', 'qcom,sc7280-inline-crypto-engine', 'qcom,sm8450-inline-crypto-engine', 'qcom,sm8550-inline-crypto-engine', 'qcom,sm8650-inline-crypto-engine', 'qcom,sm8750-inline-crypto-engine']
	from schema $id: http://devicetree.org/schemas/crypto/qcom,inline-crypto-engine.yaml#
arch/arm64/boot/dts/qcom/x1e001de-devkit.dtb: /soc@0/crypto@1d90000: failed to match any schema with compatible: ['qcom,x1e80100-inline-crypto-engine', 'qcom,inline-crypto-engine']
arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dtb: phy@1d80000 (qcom,x1e80100-qmp-ufs-phy): clocks: [[2, 0], [61, 242]] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-ufs-phy.yaml#
arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dtb: crypto@1d90000 (qcom,x1e80100-inline-crypto-engine): compatible:0: 'qcom,x1e80100-inline-crypto-engine' is not one of ['qcom,qcs8300-inline-crypto-engine', 'qcom,sa8775p-inline-crypto-engine', 'qcom,sc7180-inline-crypto-engine', 'qcom,sc7280-inline-crypto-engine', 'qcom,sm8450-inline-crypto-engine', 'qcom,sm8550-inline-crypto-engine', 'qcom,sm8650-inline-crypto-engine', 'qcom,sm8750-inline-crypto-engine']
	from schema $id: http://devicetree.org/schemas/crypto/qcom,inline-crypto-engine.yaml#
arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dtb: /soc@0/crypto@1d90000: failed to match any schema with compatible: ['qcom,x1e80100-inline-crypto-engine', 'qcom,inline-crypto-engine']
arch/arm64/boot/dts/qcom/x1e80100-qcp.dtb: phy@1d80000 (qcom,x1e80100-qmp-ufs-phy): clocks: [[2, 0], [61, 242]] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-ufs-phy.yaml#
arch/arm64/boot/dts/qcom/x1e80100-qcp.dtb: crypto@1d90000 (qcom,x1e80100-inline-crypto-engine): compatible:0: 'qcom,x1e80100-inline-crypto-engine' is not one of ['qcom,qcs8300-inline-crypto-engine', 'qcom,sa8775p-inline-crypto-engine', 'qcom,sc7180-inline-crypto-engine', 'qcom,sc7280-inline-crypto-engine', 'qcom,sm8450-inline-crypto-engine', 'qcom,sm8550-inline-crypto-engine', 'qcom,sm8650-inline-crypto-engine', 'qcom,sm8750-inline-crypto-engine']
	from schema $id: http://devicetree.org/schemas/crypto/qcom,inline-crypto-engine.yaml#
arch/arm64/boot/dts/qcom/x1e80100-qcp.dtb: /soc@0/crypto@1d90000: failed to match any schema with compatible: ['qcom,x1e80100-inline-crypto-engine', 'qcom,inline-crypto-engine']
arch/arm64/boot/dts/qcom/x1e80100-asus-vivobook-s15.dtb: phy@1d80000 (qcom,x1e80100-qmp-ufs-phy): clocks: [[2, 0], [61, 242]] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-ufs-phy.yaml#
arch/arm64/boot/dts/qcom/x1e80100-asus-vivobook-s15.dtb: crypto@1d90000 (qcom,x1e80100-inline-crypto-engine): compatible:0: 'qcom,x1e80100-inline-crypto-engine' is not one of ['qcom,qcs8300-inline-crypto-engine', 'qcom,sa8775p-inline-crypto-engine', 'qcom,sc7180-inline-crypto-engine', 'qcom,sc7280-inline-crypto-engine', 'qcom,sm8450-inline-crypto-engine', 'qcom,sm8550-inline-crypto-engine', 'qcom,sm8650-inline-crypto-engine', 'qcom,sm8750-inline-crypto-engine']
	from schema $id: http://devicetree.org/schemas/crypto/qcom,inline-crypto-engine.yaml#
arch/arm64/boot/dts/qcom/x1e80100-asus-vivobook-s15.dtb: /soc@0/crypto@1d90000: failed to match any schema with compatible: ['qcom,x1e80100-inline-crypto-engine', 'qcom,inline-crypto-engine']
arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtb: phy@1d80000 (qcom,x1e80100-qmp-ufs-phy): clocks: [[2, 0], [61, 242]] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-ufs-phy.yaml#
arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtb: crypto@1d90000 (qcom,x1e80100-inline-crypto-engine): compatible:0: 'qcom,x1e80100-inline-crypto-engine' is not one of ['qcom,qcs8300-inline-crypto-engine', 'qcom,sa8775p-inline-crypto-engine', 'qcom,sc7180-inline-crypto-engine', 'qcom,sc7280-inline-crypto-engine', 'qcom,sm8450-inline-crypto-engine', 'qcom,sm8550-inline-crypto-engine', 'qcom,sm8650-inline-crypto-engine', 'qcom,sm8750-inline-crypto-engine']
	from schema $id: http://devicetree.org/schemas/crypto/qcom,inline-crypto-engine.yaml#
arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtb: /soc@0/crypto@1d90000: failed to match any schema with compatible: ['qcom,x1e80100-inline-crypto-engine', 'qcom,inline-crypto-engine']
Error: arch/arm64/boot/dts/qcom/x1e80100.dtsi:2839.29-30 syntax error
FATAL ERROR: Unable to parse input tree
make[3]: *** [scripts/Makefile.dtbs:131: arch/arm64/boot/dts/qcom/x1p42100-asus-zenbook-a14.dtb] Error 1
make[2]: *** [scripts/Makefile.build:556: arch/arm64/boot/dts/qcom] Error 2
make[2]: Target 'arch/arm64/boot/dts/qcom/x1p42100-asus-zenbook-a14.dtb' not remade because of errors.
make[1]: *** [/home/rob/proj/linux-dt-testing/Makefile:1480: qcom/x1p42100-asus-zenbook-a14.dtb] Error 2
arch/arm64/boot/dts/qcom/x1e80100-hp-elitebook-ultra-g1q.dtb: phy@1d80000 (qcom,x1e80100-qmp-ufs-phy): clocks: [[2, 0], [61, 242]] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-ufs-phy.yaml#
arch/arm64/boot/dts/qcom/x1e80100-hp-elitebook-ultra-g1q.dtb: crypto@1d90000 (qcom,x1e80100-inline-crypto-engine): compatible:0: 'qcom,x1e80100-inline-crypto-engine' is not one of ['qcom,qcs8300-inline-crypto-engine', 'qcom,sa8775p-inline-crypto-engine', 'qcom,sc7180-inline-crypto-engine', 'qcom,sc7280-inline-crypto-engine', 'qcom,sm8450-inline-crypto-engine', 'qcom,sm8550-inline-crypto-engine', 'qcom,sm8650-inline-crypto-engine', 'qcom,sm8750-inline-crypto-engine']
	from schema $id: http://devicetree.org/schemas/crypto/qcom,inline-crypto-engine.yaml#
arch/arm64/boot/dts/qcom/x1e80100-hp-elitebook-ultra-g1q.dtb: /soc@0/crypto@1d90000: failed to match any schema with compatible: ['qcom,x1e80100-inline-crypto-engine', 'qcom,inline-crypto-engine']
arch/arm64/boot/dts/qcom/x1e80100-microsoft-romulus15.dtb: phy@1d80000 (qcom,x1e80100-qmp-ufs-phy): clocks: [[2, 0], [61, 242]] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-ufs-phy.yaml#
arch/arm64/boot/dts/qcom/x1e80100-microsoft-romulus15.dtb: crypto@1d90000 (qcom,x1e80100-inline-crypto-engine): compatible:0: 'qcom,x1e80100-inline-crypto-engine' is not one of ['qcom,qcs8300-inline-crypto-engine', 'qcom,sa8775p-inline-crypto-engine', 'qcom,sc7180-inline-crypto-engine', 'qcom,sc7280-inline-crypto-engine', 'qcom,sm8450-inline-crypto-engine', 'qcom,sm8550-inline-crypto-engine', 'qcom,sm8650-inline-crypto-engine', 'qcom,sm8750-inline-crypto-engine']
	from schema $id: http://devicetree.org/schemas/crypto/qcom,inline-crypto-engine.yaml#
arch/arm64/boot/dts/qcom/x1e80100-microsoft-romulus15.dtb: /soc@0/crypto@1d90000: failed to match any schema with compatible: ['qcom,x1e80100-inline-crypto-engine', 'qcom,inline-crypto-engine']
Error: arch/arm64/boot/dts/qcom/x1e80100.dtsi:2839.29-30 syntax error
FATAL ERROR: Unable to parse input tree
make[3]: *** [scripts/Makefile.dtbs:131: arch/arm64/boot/dts/qcom/x1e80100-crd.dtb] Error 1
make[2]: *** [scripts/Makefile.build:556: arch/arm64/boot/dts/qcom] Error 2
make[2]: Target 'arch/arm64/boot/dts/qcom/x1e80100-crd.dtb' not remade because of errors.
make[1]: *** [/home/rob/proj/linux-dt-testing/Makefile:1480: qcom/x1e80100-crd.dtb] Error 2
arch/arm64/boot/dts/qcom/x1e80100-microsoft-romulus13.dtb: phy@1d80000 (qcom,x1e80100-qmp-ufs-phy): clocks: [[2, 0], [61, 242]] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-ufs-phy.yaml#
arch/arm64/boot/dts/qcom/x1e80100-microsoft-romulus13.dtb: crypto@1d90000 (qcom,x1e80100-inline-crypto-engine): compatible:0: 'qcom,x1e80100-inline-crypto-engine' is not one of ['qcom,qcs8300-inline-crypto-engine', 'qcom,sa8775p-inline-crypto-engine', 'qcom,sc7180-inline-crypto-engine', 'qcom,sc7280-inline-crypto-engine', 'qcom,sm8450-inline-crypto-engine', 'qcom,sm8550-inline-crypto-engine', 'qcom,sm8650-inline-crypto-engine', 'qcom,sm8750-inline-crypto-engine']
	from schema $id: http://devicetree.org/schemas/crypto/qcom,inline-crypto-engine.yaml#
arch/arm64/boot/dts/qcom/x1e80100-microsoft-romulus13.dtb: /soc@0/crypto@1d90000: failed to match any schema with compatible: ['qcom,x1e80100-inline-crypto-engine', 'qcom,inline-crypto-engine']
make: *** [Makefile:248: __sub-make] Error 2
make: Target 'qcom/apq8096-ifc6640.dtb' not remade because of errors.
make: Target 'qcom/msm8916-samsung-j3ltetw.dtb' not remade because of errors.
make: Target 'qcom/msm8998-fxtec-pro1.dtb' not remade because of errors.
make: Target 'qcom/sm7325-nothing-spacewar.dtb' not remade because of errors.
make: Target 'qcom/x1e80100-asus-zenbook-a14.dtb' not remade because of errors.
make: Target 'qcom/sm7125-xiaomi-curtana.dtb' not remade because of errors.
make: Target 'qcom/x1e80100-dell-xps13-9345.dtb' not remade because of errors.
make: Target 'qcom/msm8998-mtp.dtb' not remade because of errors.
make: Target 'qcom/msm8916-samsung-a5u-eur.dtb' not remade because of errors.
make: Target 'qcom/sc8280xp-lenovo-thinkpad-x13s.dtb' not remade because of errors.
make: Target 'qcom/sc7180-trogdor-lazor-r3-lte.dtb' not remade because of errors.
make: Target 'qcom/sc7280-herobrine-crd-pro.dtb' not remade because of errors.
make: Target 'qcom/sm6115p-lenovo-j606f.dtb' not remade because of errors.
make: Target 'qcom/msm8998-sony-xperia-yoshino-maple.dtb' not remade because of errors.
make: Target 'qcom/ipq9574-rdp454.dtb' not remade because of errors.
make: Target 'qcom/qcs6490-rb3gen2.dtb' not remade because of errors.
make: Target 'qcom/msm8992-xiaomi-libra.dtb' not remade because of errors.
make: Target 'qcom/sc7180-trogdor-lazor-limozeen-r4.dtb' not remade because of errors.
make: Target 'qcom/sdm450-motorola-ali.dtb' not remade because of errors.
make: Target 'qcom/x1e78100-lenovo-thinkpad-t14s-oled.dtb' not remade because of errors.
make: Target 'qcom/sc7180-trogdor-quackingstick-r0.dtb' not remade because of errors.
make: Target 'qcom/sc7180-trogdor-pazquel360-wifi.dtb' not remade because of errors.
make: Target 'qcom/sdm630-sony-xperia-ganges-kirin.dtb' not remade because of errors.
make: Target 'qcom/sc7180-trogdor-coachz-r1-lte.dtb' not remade because of errors.
make: Target 'qcom/sdm845-lg-judyp.dtb' not remade because of errors.
make: Target 'qcom/sdm845-cheza-r3.dtb' not remade because of errors.
make: Target 'qcom/msm8939-wingtech-wt82918.dtb' not remade because of errors.
make: Target 'qcom/qrb2210-rb1.dtb' not remade because of errors.
make: Target 'qcom/msm8996-mtp.dtb' not remade because of errors.
make: Target 'qcom/sm8750-mtp.dtb' not remade because of errors.
make: Target 'qcom/sc7280-herobrine-zombie.dtb' not remade because of errors.
make: Target 'qcom/msm8992-lg-bullhead-rev-10.dtb' not remade because of errors.
make: Target 'qcom/qrb5165-rb5.dtb' not remade because of errors.
make: Target 'qcom/x1e80100-lenovo-yoga-slim7x.dtb' not remade because of errors.
make: Target 'qcom/sm8550-qrd.dtb' not remade because of errors.
make: Target 'qcom/sdm630-sony-xperia-nile-discovery.dtb' not remade because of errors.
make: Target 'qcom/sm8550-sony-xperia-yodo-pdx234.dtb' not remade because of errors.
make: Target 'qcom/msm8939-huawei-kiwi.dtb' not remade because of errors.
make: Target 'qcom/sc7180-trogdor-wormdingler-rev1-inx.dtb' not remade because of errors.
make: Target 'qcom/sc8280xp-microsoft-arcata.dtb' not remade because of errors.
make: Target 'qcom/sdm845-oneplus-fajita.dtb' not remade because of errors.
make: Target 'qcom/sc7180-trogdor-lazor-limozeen-nots-r4.dtb' not remade because of errors.
make: Target 'qcom/sdm660-xiaomi-lavender.dtb' not remade because of errors.
make: Target 'qcom/sc7180-trogdor-coachz-r1.dtb' not remade because of errors.
make: Target 'qcom/sc7180-trogdor-lazor-r10.dtb' not remade because of errors.
make: Target 'qcom/msm8939-wingtech-wt82918hd.dtb' not remade because of errors.
make: Target 'qcom/ipq6018-cp01-c1.dtb' not remade because of errors.
make: Target 'qcom/msm8916-motorola-surnia.dtb' not remade because of errors.
make: Target 'qcom/sm8350-microsoft-surface-duo2.dtb' not remade because of errors.
make: Target 'qcom/qcm6490-idp.dtb' not remade because of errors.
make: Target 'qcom/sm8550-mtp.dtb' not remade because of errors.
make: Target 'qcom/msm8916-samsung-a3u-eur.dtb' not remade because of errors.
make: Target 'qcom/sdm845-sony-xperia-tama-akari.dtb' not remade because of errors.
make: Target 'qcom/x1p42100-crd.dtb' not remade because of errors.
make: Target 'qcom/sm8250-mtp.dtb' not remade because of errors.
make: Target 'qcom/sc7180-trogdor-lazor-limozeen-nots-r9.dtb' not remade because of errors.
make: Target 'qcom/sm8250-xiaomi-elish-csot.dtb' not remade because of errors.
make: Target 'qcom/msm8916-wingtech-wt88047.dtb' not remade because of errors.
make: Target 'qcom/msm8916-thwc-ufi001c.dtb' not remade because of errors.
make: Target 'qcom/msm8998-xiaomi-sagit.dtb' not remade because of errors.
make: Target 'qcom/qcs8550-aim300-aiot.dtb' not remade because of errors.
make: Target 'qcom/sdm450-lenovo-tbx605f.dtb' not remade because of errors.
make: Target 'qcom/sm8250-xiaomi-elish-boe.dtb' not remade because of errors.
make: Target 'qcom/qcs404-evb-4000.dtb' not remade because of errors.
make: Target 'qcom/qcs9100-ride.dtb' not remade because of errors.
make: Target 'qcom/msm8996-sony-xperia-tone-kagura.dtb' not remade because of errors.
make: Target 'qcom/sm8150-sony-xperia-kumano-griffin.dtb' not remade because of errors.
make: Target 'qcom/sdm670-google-sargo.dtb' not remade because of errors.
make: Target 'qcom/x1e001de-devkit.dtb' not remade because of errors.
make: Target 'qcom/sa8775p-ride.dtb' not remade because of errors.
make: Target 'qcom/sc7280-herobrine-crd.dtb' not remade because of errors.
make: Target 'qcom/ipq5424-rdp466.dtb' not remade because of errors.
make: Target 'qcom/sc8180x-lenovo-flex-5g.dtb' not remade because of errors.
make: Target 'qcom/sdm845-lg-judyln.dtb' not remade because of errors.
make: Target 'qcom/sm6125-xiaomi-ginkgo.dtb' not remade because of errors.
make: Target 'qcom/sc7180-trogdor-lazor-r3-kb.dtb' not remade because of errors.
make: Target 'qcom/msm8916-motorola-osprey.dtb' not remade because of errors.
make: Target 'qcom/sm8250-xiaomi-pipa.dtb' not remade because of errors.
make: Target 'qcom/sdm845-oneplus-enchilada.dtb' not remade because of errors.
make: Target 'qcom/msm8956-sony-xperia-loire-suzu.dtb' not remade because of errors.
make: Target 'qcom/sc7280-idp.dtb' not remade because of errors.
make: Target 'qcom/sc7280-herobrine-evoker-lte.dtb' not remade because of errors.
make: Target 'qcom/sc7180-trogdor-homestar-r4.dtb' not remade because of errors.
make: Target 'qcom/msm8916-samsung-rossa.dtb' not remade because of errors.
make: Target 'qcom/apq8039-t2.dtb' not remade because of errors.
make: Target 'qcom/msm8916-motorola-harpia.dtb' not remade because of errors.
make: Target 'qcom/msm8916-samsung-e5.dtb' not remade because of errors.
make: Target 'qcom/sc7280-idp2.dtb' not remade because of errors.
make: Target 'qcom/msm8939-sony-xperia-kanuti-tulip.dtb' not remade because of errors.
make: Target 'qcom/ipq8074-hk01.dtb' not remade because of errors.
make: Target 'qcom/sm8150-mtp.dtb' not remade because of errors.
make: Target 'qcom/ipq9574-rdp433.dtb' not remade because of errors.
make: Target 'qcom/sdm845-sony-xperia-tama-apollo.dtb' not remade because of errors.
make: Target 'qcom/msm8998-lenovo-miix-630.dtb' not remade because of errors.
make: Target 'qcom/msm8994-sony-xperia-kitakami-karin.dtb' not remade because of errors.
make: Target 'qcom/sdm630-sony-xperia-nile-pioneer.dtb' not remade because of errors.
make: Target 'qcom/msm8916-samsung-grandmax.dtb' not remade because of errors.
make: Target 'qcom/msm8916-alcatel-idol347.dtb' not remade because of errors.
make: Target 'qcom/ipq9574-rdp453.dtb' not remade because of errors.
make: Target 'qcom/sc7180-acer-aspire1.dtb' not remade because of errors.
make: Target 'qcom/sc7180-trogdor-r1.dtb' not remade because of errors.
make: Target 'qcom/msm8916-samsung-e7.dtb' not remade because of errors.
make: Target 'qcom/ipq5018-rdp432-c2.dtb' not remade because of errors.
make: Target 'qcom/apq8016-schneider-hmibsc.dtb' not remade because of errors.
make: Target 'qcom/qrb4210-rb2.dtb' not remade because of errors.
make: Target 'qcom/ipq5018-tplink-archer-ax55-v1.dtb' not remade because of errors.
make: Target 'qcom/sc7280-herobrine-evoker.dtb' not remade because of errors.
make: Target 'qcom/sc7180-trogdor-kingoftown.dtb' not remade because of errors.
make: Target 'qcom/sm4450-qrd.dtb' not remade because of errors.
make: Target 'qcom/msm8916-samsung-j5.dtb' not remade because of errors.
make: Target 'qcom/msm8998-asus-novago-tp370ql.dtb' not remade because of errors.
make: Target 'qcom/sc7180-trogdor-pompom-r2-lte.dtb' not remade because of errors.
make: Target 'qcom/msm8992-lg-h815.dtb' not remade because of errors.
make: Target 'qcom/sdx75-idp.dtb' not remade because of errors.
make: Target 'qcom/sm8350-sony-xperia-sagami-pdx215.dtb' not remade because of errors.
make: Target 'qcom/apq8096-db820c.dtb' not remade because of errors.
make: Target 'qcom/msm8996-sony-xperia-tone-keyaki.dtb' not remade because of errors.
make: Target 'qcom/msm8916-longcheer-l8150.dtb' not remade because of errors.
make: Target 'qcom/msm8994-sony-xperia-kitakami-suzuran.dtb' not remade because of errors.
make: Target 'qcom/sdm845-mtp.dtb' not remade because of errors.
make: Target 'qcom/sm6375-sony-xperia-murray-pdx225.dtb' not remade because of errors.
make: Target 'qcom/msm8916-yiming-uz801v3.dtb' not remade because of errors.
make: Target 'qcom/qcs9100-ride-r3.dtb' not remade because of errors.
make: Target 'qcom/x1e80100-hp-omnibook-x14.dtb' not remade because of errors.
make: Target 'qcom/msm8953-xiaomi-vince.dtb' not remade because of errors.
make: Target 'qcom/sdm845-cheza-r2.dtb' not remade because of errors.
make: Target 'qcom/ipq5332-rdp441.dtb' not remade because of errors.
make: Target 'qcom/msm8992-lg-bullhead-rev-101.dtb' not remade because of errors.
make: Target 'qcom/msm8917-xiaomi-riva.dtb' not remade because of errors.
make: Target 'qcom/msm8996-xiaomi-gemini.dtb' not remade because of errors.
make: Target 'qcom/sc7180-trogdor-lazor-limozeen-r9.dtb' not remade because of errors.
make: Target 'qcom/msm8998-sony-xperia-yoshino-lilac.dtb' not remade because of errors.
make: Target 'qcom/msm8916-samsung-gprimeltecan.dtb' not remade because of errors.
make: Target 'qcom/sc7180-trogdor-pazquel360-lte.dtb' not remade because of errors.
make: Target 'qcom/sdm845-shift-axolotl.dtb' not remade because of errors.
make: Target 'qcom/msm8996-oneplus3t.dtb' not remade because of errors.
make: Target 'qcom/sc7280-herobrine-zombie-lte.dtb' not remade because of errors.
make: Target 'qcom/sc7180-trogdor-lazor-r3.dtb' not remade because of errors.
make: Target 'qcom/sar2130p-qar2130p.dtb' not remade because of errors.
make: Target 'qcom/sm8650-hdk.dtb' not remade because of errors.
make: Target 'qcom/sc7280-herobrine-herobrine-r1.dtb' not remade because of errors.
make: Target 'qcom/msm8916-longcheer-l8910.dtb' not remade because of errors.
make: Target 'qcom/sdm630-sony-xperia-nile-voyager.dtb' not remade because of errors.
make: Target 'qcom/sm8450-hdk.dtb' not remade because of errors.
make: Target 'qcom/msm8929-wingtech-wt82918hd.dtb' not remade because of errors.
make: Target 'qcom/sm8250-sony-xperia-edo-pdx203.dtb' not remade because of errors.
make: Target 'qcom/sm8350-hdk.dtb' not remade because of errors.
make: Target 'qcom/ipq8074-hk10-c1.dtb' not remade because of errors.
make: Target 'qcom/sm8450-qrd.dtb' not remade because of errors.
make: Target 'qcom/msm8916-lg-c50.dtb' not remade because of errors.
make: Target 'qcom/sm8250-sony-xperia-edo-pdx206.dtb' not remade because of errors.
make: Target 'qcom/sm7225-fairphone-fp4.dtb' not remade because of errors.
make: Target 'qcom/sa8155p-adp.dtb' not remade because of errors.
make: Target 'qcom/x1e80100-qcp.dtb' not remade because of errors.
make: Target 'qcom/sc7180-trogdor-lazor-r1-kb.dtb' not remade because of errors.
make: Target 'qcom/msm8916-samsung-grandprimelte.dtb' not remade because of errors.
make: Target 'qcom/sc7280-herobrine-zombie-nvme-lte.dtb' not remade because of errors.
make: Target 'qcom/sc7180-trogdor-homestar-r3.dtb' not remade because of errors.
make: Target 'qcom/ipq5332-rdp474.dtb' not remade because of errors.
make: Target 'qcom/x1e80100-asus-vivobook-s15.dtb' not remade because of errors.
make: Target 'qcom/sm8150-microsoft-surface-duo.dtb' not remade because of errors.
make: Target 'qcom/msm8996pro-xiaomi-scorpio.dtb' not remade because of errors.
make: Target 'qcom/x1e78100-lenovo-thinkpad-t14s.dtb' not remade because of errors.
make: Target 'qcom/sm8150-hdk.dtb' not remade because of errors.
make: Target 'qcom/sc8180x-primus.dtb' not remade because of errors.
make: Target 'qcom/sc7180-trogdor-lazor-r10-lte.dtb' not remade because of errors.
make: Target 'qcom/msm8916-samsung-j5x.dtb' not remade because of errors.
make: Target 'qcom/x1p42100-asus-zenbook-a14.dtb' not remade because of errors.
make: Target 'qcom/sc7180-idp.dtb' not remade because of errors.
make: Target 'qcom/msm8916-mtp.dtb' not remade because of errors.
make: Target 'qcom/x1e80100-hp-elitebook-ultra-g1q.dtb' not remade because of errors.
make: Target 'qcom/sc7180-trogdor-lazor-limozeen-r10.dtb' not remade because of errors.
make: Target 'qcom/sc7280-herobrine-zombie-nvme.dtb' not remade because of errors.
make: Target 'qcom/x1e80100-microsoft-romulus15.dtb' not remade because of errors.
make: Target 'qcom/qru1000-idp.dtb' not remade because of errors.
make: Target 'qcom/msm8998-hp-envy-x2.dtb' not remade because of errors.
make: Target 'qcom/sc7180-trogdor-wormdingler-rev1-boe-rt5682s.dtb' not remade because of errors.
make: Target 'qcom/sc7180-trogdor-pazquel-parade.dtb' not remade because of errors.
make: Target 'qcom/sc7180-trogdor-lazor-r9-kb.dtb' not remade because of errors.
make: Target 'qcom/sc7180-trogdor-wormdingler-rev1-boe.dtb' not remade because of errors.
make: Target 'qcom/qcs615-ride.dtb' not remade because of errors.
make: Target 'qcom/sc7180-trogdor-coachz-r3-lte.dtb' not remade because of errors.
make: Target 'qcom/sc7280-crd-r3.dtb' not remade because of errors.
make: Target 'qcom/msm8916-samsung-gt58.dtb' not remade because of errors.
make: Target 'qcom/sa8775p-ride-r3.dtb' not remade because of errors.
make: Target 'qcom/sc7280-herobrine-villager-r1.dtb' not remade because of errors.
make: Target 'qcom/sc7180-trogdor-pazquel-ti.dtb' not remade because of errors.
make: Target 'qcom/qcm6490-shift-otter.dtb' not remade because of errors.
make: Target 'qcom/qcs8300-ride.dtb' not remade because of errors.
make: Target 'qcom/apq8016-sbc.dtb' not remade because of errors.
make: Target 'qcom/msm8996pro-xiaomi-natrium.dtb' not remade because of errors.
make: Target 'qcom/sdm845-samsung-starqltechn.dtb' not remade because of errors.
make: Target 'qcom/sc7180-trogdor-pompom-r1-lte.dtb' not remade because of errors.
make: Target 'qcom/msm8953-xiaomi-tissot.dtb' not remade because of errors.
make: Target 'qcom/sc7180-trogdor-lazor-r9.dtb' not remade because of errors.
make: Target 'qcom/sm6125-xiaomi-laurel-sprout.dtb' not remade because of errors.
make: Target 'qcom/msm8994-sony-xperia-kitakami-sumire.dtb' not remade because of errors.
make: Target 'qcom/msm8916-samsung-serranove.dtb' not remade because of errors.
make: Target 'qcom/sc7180-trogdor-coachz-r3.dtb' not remade because of errors.
make: Target 'qcom/sdm845-sony-xperia-tama-akatsuki.dtb' not remade because of errors.
make: Target 'qcom/ipq9574-rdp449.dtb' not remade because of errors.
make: Target 'qcom/sc7180-trogdor-r1-lte.dtb' not remade because of errors.
make: Target 'qcom/msm8916-lg-m216.dtb' not remade because of errors.
make: Target 'qcom/x1e80100-crd.dtb' not remade because of errors.
make: Target 'qcom/apq8094-sony-xperia-kitakami-karin_windy.dtb' not remade because of errors.
make: Target 'qcom/sc7180-trogdor-lazor-r9-lte.dtb' not remade because of errors.
make: Target 'qcom/sc7180-trogdor-pazquel-lte-ti.dtb' not remade because of errors.
make: Target 'qcom/msm8996-sony-xperia-tone-dora.dtb' not remade because of errors.
make: Target 'qcom/sa8295p-adp.dtb' not remade because of errors.
make: Target 'qcom/msm8994-sony-xperia-kitakami-ivy.dtb' not remade because of errors.
make: Target 'qcom/sdm845-xiaomi-beryllium-ebbg.dtb' not remade because of errors.
make: Target 'qcom/sc7180-trogdor-pompom-r3.dtb' not remade because of errors.
make: Target 'qcom/msm8998-oneplus-dumpling.dtb' not remade because of errors.
make: Target 'qcom/sm8650-mtp.dtb' not remade because of errors.
make: Target 'qcom/msm8996-oneplus3.dtb' not remade because of errors.
make: Target 'qcom/sm8550-hdk.dtb' not remade because of errors.
make: Target 'qcom/x1e80100-microsoft-romulus13.dtb' not remade because of errors.
make: Target 'qcom/sc7180-trogdor-lazor-r1-lte.dtb' not remade because of errors.
make: Target 'qcom/msm8939-samsung-a7.dtb' not remade because of errors.
make: Target 'qcom/qcm6490-fairphone-fp5.dtb' not remade because of errors.
make: Target 'qcom/sc8280xp-huawei-gaokun3.dtb' not remade because of errors.
make: Target 'qcom/sc7180-trogdor-wormdingler-rev1-inx-rt5682s.dtb' not remade because of errors.
make: Target 'qcom/msm8953-xiaomi-mido.dtb' not remade because of errors.
make: Target 'qcom/msm8916-asus-z00l.dtb' not remade because of errors.
make: Target 'qcom/sc7180-trogdor-pompom-r2.dtb' not remade because of errors.
make: Target 'qcom/sm6350-sony-xperia-lena-pdx213.dtb' not remade because of errors.
make: Target 'qcom/sdm632-fairphone-fp3.dtb' not remade because of errors.
make: Target 'qcom/msm8953-motorola-potter.dtb' not remade because of errors.
make: Target 'qcom/sda660-inforce-ifc6560.dtb' not remade because of errors.
make: Target 'qcom/sm8150-sony-xperia-kumano-bahamut.dtb' not remade because of errors.
make: Target 'qcom/sc7180-trogdor-pazquel-lte-parade.dtb' not remade because of errors.
make: Target 'qcom/sc7180-trogdor-homestar-r2.dtb' not remade because of errors.
make: Target 'qcom/sm8250-hdk.dtb' not remade because of errors.
make: Target 'qcom/sm8650-qrd.dtb' not remade because of errors.
make: Target 'qcom/sc8280xp-microsoft-blackrock.dtb' not remade because of errors.
make: Target 'qcom/ipq8074-hk10-c2.dtb' not remade because of errors.
make: Target 'qcom/msm8953-xiaomi-daisy.dtb' not remade because of errors.
make: Target 'qcom/sc8280xp-crd.dtb' not remade because of errors.
make: Target 'qcom/sdm850-samsung-w737.dtb' not remade because of errors.
make: Target 'qcom/sc7180-trogdor-lazor-limozeen-nots-r5.dtb' not remade because of errors.
make: Target 'qcom/msm8916-samsung-gt510.dtb' not remade because of errors.
make: Target 'qcom/sdm850-lenovo-yoga-c630.dtb' not remade because of errors.
make: Target 'qcom/msm8916-thwc-uf896.dtb' not remade because of errors.
make: Target 'qcom/sc7180-trogdor-lazor-r10-kb.dtb' not remade because of errors.
make: Target 'qcom/msm8994-sony-xperia-kitakami-satsuki.dtb' not remade because of errors.
make: Target 'qcom/sdm632-motorola-ocean.dtb' not remade because of errors.
make: Target 'qcom/sc7280-herobrine-villager-r1-lte.dtb' not remade because of errors.
make: Target 'qcom/sm6115-fxtec-pro1x.dtb' not remade because of errors.
make: Target 'qcom/sc7180-trogdor-pompom-r3-lte.dtb' not remade because of errors.
make: Target 'qcom/msm8998-sony-xperia-yoshino-poplar.dtb' not remade because of errors.
make: Target 'qcom/msm8916-huawei-g7.dtb' not remade because of errors.
make: Target 'qcom/msm8916-wingtech-wt86518.dtb' not remade because of errors.
make: Target 'qcom/sm8350-sony-xperia-sagami-pdx214.dtb' not remade because of errors.
make: Target 'qcom/msm8916-wingtech-wt86528.dtb' not remade because of errors.
make: Target 'qcom/sdm845-db845c.dtb' not remade because of errors.
make: Target 'qcom/sa8540p-ride.dtb' not remade because of errors.
make: Target 'qcom/msm8939-longcheer-l9100.dtb' not remade because of errors.
make: Target 'qcom/qdu1000-idp.dtb' not remade because of errors.
make: Target 'qcom/sm8550-samsung-q5q.dtb' not remade because of errors.
make: Target 'qcom/msm8992-msft-lumia-octagon-talkman.dtb' not remade because of errors.
make: Target 'qcom/msm8916-gplus-fl8005a.dtb' not remade because of errors.
make: Target 'qcom/sm8350-mtp.dtb' not remade because of errors.
make: Target 'qcom/msm8956-sony-xperia-loire-kugo.dtb' not remade because of errors.
make: Target 'qcom/msm8976-longcheer-l9360.dtb' not remade because of errors.
make: Target 'qcom/sc7180-trogdor-lazor-r1.dtb' not remade because of errors.
make: Target 'qcom/sc7180-trogdor-pompom-r1.dtb' not remade because of errors.
make: Target 'qcom/msm8998-oneplus-cheeseburger.dtb' not remade because of errors.
make: Target 'qcom/sc7280-herobrine-villager-r0.dtb' not remade because of errors.
make: Target 'qcom/sm8750-qrd.dtb' not remade because of errors.
make: Target 'qcom/sm4250-oneplus-billie2.dtb' not remade because of errors.
make: Target 'qcom/sdm636-sony-xperia-ganges-mermaid.dtb' not remade because of errors.
make: Target 'qcom/qcs404-evb-1000.dtb' not remade because of errors.
make: Target 'qcom/ipq5332-rdp442.dtb' not remade because of errors.
make: Target 'qcom/sdm845-cheza-r1.dtb' not remade because of errors.
make: Target 'qcom/msm8994-msft-lumia-octagon-cityman.dtb' not remade because of errors.
make: Target 'qcom/msm8916-acer-a1-724.dtb' not remade because of errors.
make: Target 'qcom/sdm845-xiaomi-beryllium-tianma.dtb' not remade because of errors.
make: Target 'qcom/sm6125-sony-xperia-seine-pdx201.dtb' not remade because of errors.
make: Target 'qcom/sdm845-xiaomi-polaris.dtb' not remade because of errors.
make: Target 'qcom/ipq9574-rdp418.dtb' not remade because of errors.
make: Target 'qcom/msm8216-samsung-fortuna3g.dtb' not remade because of errors.
make: Target 'qcom/sm8450-sony-xperia-nagara-pdx223.dtb' not remade because of errors.
make: Target 'qcom/sm8450-sony-xperia-nagara-pdx224.dtb' not remade because of errors.
make: Target 'qcom/sm7125-xiaomi-joyeuse.dtb' not remade because of errors.
make: Target 'qcom/msm8994-huawei-angler-rev-101.dtb' not remade because of errors.
make: Target 'qcom/ipq5332-rdp468.dtb' not remade because of errors.
make: Target 'qcom/sc7180-trogdor-lazor-limozeen-nots-r10.dtb' not remade because of errors.
make: Target 'qcom/sc7180-trogdor-quackingstick-r0-lte.dtb' not remade because of errors.






-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
