Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B479FD49205
	for <linux-phy@archiver.kernel.org>; Mon, 18 Nov 2024 09:38:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:To:Cc:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=mCcJnCIyirTAHPw1vDTdfhrv0ZlBluLe8qWndJ5+F3E=; b=akXkQumvuM6d3ULlOVLwoMRqQ8
	4yRJwCVvq1l8/t98l81dnScXv7b9OeKB5M/LPgwZ+3oEU/WCszgDj6JI8Mu9ZFr3R9NaeWkEmCrjH
	NlBdPP6s0hzbqAFtmK1UGrXeuEfJyA7XnNFlJCVLCefC+Q6FpTbcP0biCPEn2e7tIIggxJLDKsAZZ
	ti5KE7BWiCAIVy8VxJlmNW5RBCD96NJ9IHYzxVnShxoGWRkiw3QwMQB38TpH2VIAUhvrMrHBQBrlg
	DddnK0n4Bkb3KT+WLz/DkOyodOKtoFG8XbGap0NIt6LdPk+hky/FuoYkq04kJsS1nc0nEG3NZciUg
	Phi3bf7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tCyDF-00000008wLy-3wys;
	Mon, 18 Nov 2024 09:38:29 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tCyCI-00000008w8p-34s2
	for linux-phy@lists.infradead.org;
	Mon, 18 Nov 2024 09:37:32 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id B67E7A418AF;
	Mon, 18 Nov 2024 09:35:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CE41FC4CED0;
	Mon, 18 Nov 2024 09:37:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731922649;
	bh=RQgVYHEPorJ+99MZGykNM934RDtHC2VNhtpWhmYDngE=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=Tj5S9db9Q4TOehcZaFU+gEWyP1/BX3Hz7ol6oIhBQw41zo4YWOm+YoD4V2trId6wX
	 F+CUO8HgnXawxMHao5lKg0w3PXs0g14Bx1CSaVm8+0XoCYLm6EKm2dq19IF1ccjdSe
	 JwxVOdmMPJTMaLFlrKpdYYrzZZDlfvT+mM8X06v3RF8aV1OjwGkQOJk0BtND4ptE2i
	 43yUn6NtewzY2NwBWgG9/McK6wf59GaH3Xr5nyJMXbK99P1LmPllZOH2rBDowbACF4
	 5jM9u8YasstS6uxNKjTDUjao6kVozzTXGU/QIC/13NF/1tXL99xpMRdEryzU0K6CMO
	 XwITIZJAkh0Mw==
Date: Mon, 18 Nov 2024 03:37:27 -0600
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: robh+dt@kernel.org, devicetree@vger.kernel.org, 
 quic_shashim@quicinc.com, kernel@quicinc.com, quic_tdas@quicinc.com, 
 quic_aiquny@quicinc.com, quic_qianyu@quicinc.com, quic_tingweiz@quicinc.com, 
 neil.armstrong@linaro.org, andersson@kernel.org, 
 linux-kernel@vger.kernel.org, kishon@kernel.org, 
 manivannan.sadhasivam@linaro.org, kw@linux.com, lpieralisi@kernel.org, 
 bhelgaas@google.com, linux-phy@lists.infradead.org, conor+dt@kernel.org, 
 konradybcio@kernel.org, 
 Krishna chaitanya chundru <quic_krichai@quicinc.com>, vkoul@kernel.org, 
 linux-arm-msm@vger.kernel.org, quic_kaushalk@quicinc.com
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
In-Reply-To: <20241118082619.177201-4-quic_ziyuzhan@quicinc.com>
References: <20241118082619.177201-1-quic_ziyuzhan@quicinc.com>
 <20241118082619.177201-4-quic_ziyuzhan@quicinc.com>
Message-Id: <173192264707.1449621.6365585789543415603.robh@kernel.org>
Subject: Re: [PATCH 3/5] dt-bindings: PCI: qcom: Document the QCS615 PCIe
 Controller
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241118_013730_899189_0B72198F 
X-CRM114-Status: GOOD (  16.03  )
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


On Mon, 18 Nov 2024 16:26:17 +0800, Ziyue Zhang wrote:
> From: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> 
> Add dedicated schema for the PCIe controllers found on QCS615.
> A new compatible for qcs615 is needed, for we do not find the
> similar one which is ok to use.
> 
> Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
> ---
>  .../bindings/pci/qcom,pcie-qcs615.yaml        | 161 ++++++++++++++++++
>  1 file changed, 161 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/pci/qcom,pcie-qcs615.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/pci/qcom,pcie-qcs615.yaml: properties:resets: 'anyOf' conditional failed, one must be fixed:
	'minItems' is not one of ['maxItems', 'description', 'deprecated']
		hint: Only "maxItems" is required for a single entry if there are no constraints defined for the values.
	'minItems' is not one of ['description', 'deprecated', 'const', 'enum', 'minimum', 'maximum', 'multipleOf', 'default', '$ref', 'oneOf']
	'maxItems' is not one of ['description', 'deprecated', 'const', 'enum', 'minimum', 'maximum', 'multipleOf', 'default', '$ref', 'oneOf']
	1 is less than the minimum of 2
		hint: Arrays must be described with a combination of minItems/maxItems/items
	hint: cell array properties must define how many entries and what the entries are when there is more than one entry.
	from schema $id: http://devicetree.org/meta-schemas/reset.yaml#
Documentation/devicetree/bindings/pci/qcom,pcie-qcs615.example.dts:24:18: fatal error: dt-bindings/clock/qcom,qcs615-gcc.h: No such file or directory
   24 |         #include <dt-bindings/clock/qcom,qcs615-gcc.h>
      |                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
compilation terminated.
make[2]: *** [scripts/Makefile.dtbs:129: Documentation/devicetree/bindings/pci/qcom,pcie-qcs615.example.dtb] Error 1
make[2]: *** Waiting for unfinished jobs....
make[1]: *** [/builds/robherring/dt-review-ci/linux/Makefile:1442: dt_binding_check] Error 2
make: *** [Makefile:224: __sub-make] Error 2

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20241118082619.177201-4-quic_ziyuzhan@quicinc.com

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
