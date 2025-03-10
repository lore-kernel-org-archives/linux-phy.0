Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF2D5C28B30
	for <linux-phy@archiver.kernel.org>; Mon, 10 Mar 2025 08:23:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:To:Cc:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=eK6xIsed/y3NMhCGMTWwDWue3yNzDXHbH+Wvem64fJQ=; b=SHM7zjeZVOHP2zlWuFDp2nWpd7
	m3uezps30jN/ZdqJXYLGBAlQ+Ov3ig4afOXDtDpq6+XY7rE+7NG8LkDU69HWDnzJkwP5nNRfILH6w
	F1DEDY37auzXAi+EbNE0+a2cIXVl8yMX5HLBu02KFvQ9JeBE4iRm51IDE6OKsijhm3QGHyfWQ5xfF
	aSEIJRn4Ad3Uxl84BeTyKRNWK9PKz/I3Tl0yLneVHmktRoRL8NExxQy92LTl7UOPKzuyRBKuL385y
	QdyWHSkycLWhA82NE5AZhgWNpNsaLUhaoM3THeGloNUAjrazjhgmkt94zGlqviX/xBvW/gq76kuH2
	0feQ5fyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trYQA-00000001tJk-1fXG;
	Mon, 10 Mar 2025 08:23:34 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trYQ7-00000001tIx-3QeX
	for linux-phy@lists.infradead.org;
	Mon, 10 Mar 2025 08:23:33 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id CDAB0A449E7;
	Mon, 10 Mar 2025 08:18:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 82443C4CEE5;
	Mon, 10 Mar 2025 08:23:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741595010;
	bh=6YS12As8AjAjGZ/NYR1OL7LWdlVVM8Ywxsw7OqaqjCw=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=M8T+aQzptkie1CRGdVDOBLsQKkwmiHQ7cqdLudZskVnXs6UfjBFtoBV/3o1LOXlRF
	 3deQyAH8FPL+0DH3RnJfWbMiIkfUVyMrQTgx7+wAa4WTHpyoCUeI5cicmUq5UVYRTE
	 HgJfqDe6B66Ar4pdnRt+Ix7Qcyj0YSvbBz2H1D6TbNSGoIZOpqD6TR551rv1YrkV0D
	 nggLc84OktxwOKoB3s7p1xrm16gyu/nEumhk/920jINDpOmeI+ffKfrbQgc8kNVGKs
	 llIqyVT8NzH/o4EgXxhdTqGeKZmkXxv61lmAWRcnNH6biWz2XJ4jL1QPZnanxCPROM
	 v4zXQ7WhhoNgA==
Date: Mon, 10 Mar 2025 03:23:29 -0500
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: linux-kernel@vger.kernel.org, abel.vesa@linaro.org, 
 linux-pci@vger.kernel.org, linux-phy@lists.infradead.org, kw@linux.com, 
 johan+linaro@kernel.org, neil.armstrong@linaro.org, lpieralisi@kernel.org, 
 conor+dt@kernel.org, vkoul@kernel.org, devicetree@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, kishon@kernel.org, andersson@kernel.org, 
 dmitry.baryshkov@linaro.org, konradybcio@kernel.org, 
 quic_krichai@quicinc.com, krzk+dt@kernel.org, bhelgaas@google.com, 
 manivannan.sadhasivam@linaro.org, quic_qianyu@quicinc.com
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
In-Reply-To: <20250310065613.151598-2-quic_ziyuzhan@quicinc.com>
References: <20250310065613.151598-1-quic_ziyuzhan@quicinc.com>
 <20250310065613.151598-2-quic_ziyuzhan@quicinc.com>
Message-Id: <174159500913.3380799.14221924313975247180.robh@kernel.org>
Subject: Re: [PATCH v3 1/4] dt-bindings: PCI: qcom: Document the QCS615
 PCIe Controller
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250310_012331_918147_3BE675F9 
X-CRM114-Status: GOOD (  11.26  )
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


On Mon, 10 Mar 2025 14:56:10 +0800, Ziyue Zhang wrote:
> From: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> 
> Add dedicated schema for the PCIe controllers found on QCS615.
> Due to qcs615's clock-names do not match any of the existing
> dt-bindings, a new compatible for qcs615 is needed.
> 
> Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
> ---
>  .../bindings/pci/qcom,qcs615-pcie.yaml        | 160 ++++++++++++++++++
>  1 file changed, 160 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/pci/qcom,qcs615-pcie.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Error: Documentation/devicetree/bindings/pci/qcom,qcs615-pcie.example.dts:58.35-36 syntax error
FATAL ERROR: Unable to parse input tree
make[2]: *** [scripts/Makefile.dtbs:131: Documentation/devicetree/bindings/pci/qcom,qcs615-pcie.example.dtb] Error 1
make[2]: *** Waiting for unfinished jobs....
make[1]: *** [/builds/robherring/dt-review-ci/linux/Makefile:1511: dt_binding_check] Error 2
make: *** [Makefile:251: __sub-make] Error 2

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20250310065613.151598-2-quic_ziyuzhan@quicinc.com

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
