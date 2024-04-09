Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE99ECD128A
	for <linux-phy@archiver.kernel.org>; Tue,  9 Apr 2024 20:49:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=uPQSH2I87QcO2SDm5LE3n5DSB1HE51OpfvgnBP35kl4=; b=qEx43CeE56a9ApVdc4Vm5dKxD1
	tixRioXdrc7lv0PuKDSYUn71e5HSX+fS6Ldh/XwXyrfICpo9EKea31hRcLCnkjzGTCos+7mRikQiU
	KZyLZB+J+n7v4rhsfQ23U+nXiF0KkxDSWaLBbNY94OX/TnktBqfIbwxu0Rb6y2kJInFUamW3CXvMH
	CzR4kOeVm2aSQSR8W+wrYCFpL4bd5MhNOfv2qyQv/P/gAk9CGb29tVCOFiixgoYD+L+5YnoWWB8Zh
	yMGpgYdzAxjOFYihLZxUYryexdB00EpIn+gTfUyBGPp1CUiVFeOb4bgqIL6b18zPb89f3AKhHBgst
	A+Ps23Iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruIPB-00000003nLB-293k;
	Tue, 09 Apr 2024 20:49:21 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruIP6-00000003nKL-1aU5
	for linux-phy@lists.infradead.org;
	Tue, 09 Apr 2024 20:49:18 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 3ECBBCE23C8;
	Tue,  9 Apr 2024 20:49:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4FABCC433F1;
	Tue,  9 Apr 2024 20:49:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712695752;
	bh=pCdcsQUmCnc6COisoFP/0WhirgGUlE6yNK7he9qeYd8=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=YCQobwuHqqXxEosscmDYkKbigWayEoJkp3jcBbVGjj7vC7+mfI7VPVXNj/nQoI/Q+
	 GKA5HxgVLlLWmpQzWguWxbakVwzyJ3ZwqB2fqXo1xWcOcvmrtYfRehWAqS3fwqU/32
	 aiCl4nsBBSkp769fBxlucQlze2lN4georAHEL20O1P/bhlpYS39Yhh9I0uJyLVeBwa
	 355jDfoTGZvVdAHzXRRbG96qLFRGGaQpK5/fybciti1mkKfVekmWpRxKGlyLmVkcfN
	 KqGDyuQnZ7C75SRK9VZ6A66jIjCQInNt5YIDpFZ7nArT7sPv0vggXeiHNyXoYdKS23
	 gYf/CN5wT3tZg==
Date: Tue, 09 Apr 2024 15:49:11 -0500
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Alexandru Gagniuc <mr.nuke.me@gmail.com>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 linux-phy@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>, 
 linux-kernel@vger.kernel.org, Konrad Dybcio <konrad.dybcio@linaro.org>, 
 linux-arm-msm@vger.kernel.org, Bjorn Andersson <andersson@kernel.org>, 
 Vinod Koul <vkoul@kernel.org>, devicetree@vger.kernel.org
In-Reply-To: <20240409190833.3485824-6-mr.nuke.me@gmail.com>
References: <20240409190833.3485824-1-mr.nuke.me@gmail.com>
 <20240409190833.3485824-6-mr.nuke.me@gmail.com>
Message-Id: <171269575025.2154927.5085638397784185466.robh@kernel.org>
Subject: Re: [PATCH v2 5/7] dt-bindings: phy: qcom,ipq8074-qmp-pcie: add
 ipq9574 gen3x2 PHY
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240409_134916_808157_D974FB80 
X-CRM114-Status: UNSURE (   9.80  )
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


On Tue, 09 Apr 2024 14:08:31 -0500, Alexandru Gagniuc wrote:
> The IPQ9574 gen3x2 PHY is very similar to IPQ6018. It requires two
> extra clocks named "anoc" and "snoc". Document this, and add a
> new compatible string for this PHY.
> 
> Signed-off-by: Alexandru Gagniuc <mr.nuke.me@gmail.com>
> ---
>  .../phy/qcom,ipq8074-qmp-pcie-phy.yaml        | 31 ++++++++++++++++++-
>  1 file changed, 30 insertions(+), 1 deletion(-)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.example.dtb: phy@84000: clock-names: ['aux', 'cfg_ahb', 'pipe'] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,ipq8074-qmp-pcie-phy.yaml#

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20240409190833.3485824-6-mr.nuke.me@gmail.com

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
