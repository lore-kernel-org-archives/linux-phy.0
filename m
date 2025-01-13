Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 531FAC02180
	for <linux-phy@archiver.kernel.org>; Mon, 13 Jan 2025 23:28:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:To:Cc:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9DIs5H8MofiCt9SUvoxGx5Z2/wcAxEZyxCSnvmRAx24=; b=z+/1XEOZ4zMelqA7QFP0WiH+Q/
	WQ920kkGmq92A+4CPzCL+hhU+uOgps8idPRh92g/DYTWrBeSaduJiDOtNjXyBxrNqj9YqAnR9V7n1
	pcb5dLhGA1R/dquQoNaTB0pi//0LZCPTxmGWISWU12P/xaEUQfSZMDiZfwjSYLGYOWwYgP2Im/GAK
	zlCSXLLsjnZVZa93xhLs7geZu5IF+ju35hYfk8pp/DE8bsandtxSsIIm2JH2Tpx4cThI+GiKRax9N
	m9mo/lsxpvPTlxIDApwfVsBqn11DmEcgPt4+C5+azXg5XQ5AWOsjBFeNL6XB+IFD0/lpeqZUCgAlv
	sDL0lzlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tXTrR-00000006wvz-2vQP;
	Mon, 13 Jan 2025 23:28:45 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tXTq8-00000006wWI-410i;
	Mon, 13 Jan 2025 23:27:26 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id C03C3A40162;
	Mon, 13 Jan 2025 23:25:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 68FB8C4CEE2;
	Mon, 13 Jan 2025 23:27:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736810843;
	bh=Wyd0GkcBwPWXois4+LKVXlzTBRXNw0WbLYeURxTamHg=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=I3uAMJeS15prghq7+Kg6lXcRid8omW21cyV3RO8r5ELoTOhgWVC6aGwxWwXFnz8fx
	 AMrbO7x1n7S+0gYWpSD/jHCY3EtrI+rld6e9mJ4A/1e5tywXx+DlVdOZl1HoqDGft+
	 C5GXUiFhgjPNJSZ7Pj7y33kHbXQR9UqK+4SsP0rKe5lNVaD7HSjOSiR/XZxrPvdlJK
	 QLc2LlxgDRNQAs5zFTYDFVvJ7wc7Uc5FCisrXMx0CfGgI7JGTyPxi+RlCizLrj29JB
	 ZF7X482UUobRP3eFzYY3iJSL3kDjsRYSIoA9tTDGpwDYJ652Fkhl9NX5FH33khzdH/
	 /RlxjLI8G0osA==
Date: Mon, 13 Jan 2025 17:27:22 -0600
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, Conor Dooley <conor+dt@kernel.org>, 
 Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>, 
 linux-arm-msm@vger.kernel.org, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Will Deacon <will@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Vinod Koul <vkoul@kernel.org>, linux-arm-kernel@lists.infradead.org, 
 linux-usb@vger.kernel.org, Trilok Soni <quic_tsoni@quicinc.com>, 
 Konrad Dybcio <konradybcio@kernel.org>, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>, 
 devicetree@vger.kernel.org, Wesley Cheng <quic_wcheng@quicinc.com>
To: Melody Olvera <quic_molvera@quicinc.com>
In-Reply-To: <20250113-sm8750_usb_master-v1-2-09afe1dc2524@quicinc.com>
References: <20250113-sm8750_usb_master-v1-0-09afe1dc2524@quicinc.com>
 <20250113-sm8750_usb_master-v1-2-09afe1dc2524@quicinc.com>
Message-Id: <173681084057.3609181.3813483305054365666.robh@kernel.org>
Subject: Re: [PATCH 2/7] dt-bindings: phy: Add the M31 based eUSB2 PHY
 bindings
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250113_152725_118443_5310BC19 
X-CRM114-Status: GOOD (  12.88  )
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


On Mon, 13 Jan 2025 13:52:08 -0800, Melody Olvera wrote:
> From: Wesley Cheng <quic_wcheng@quicinc.com>
> 
> On SM8750, the M31 eUSB2 PHY is being used to support USB2. Add the
> binding definition for the PHY driver.
> 
> Signed-off-by: Wesley Cheng <quic_wcheng@quicinc.com>
> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
> ---
>  .../bindings/phy/qcom,m31-eusb2-phy.yaml           | 84 ++++++++++++++++++++++
>  1 file changed, 84 insertions(+)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.example.dts:18:18: fatal error: dt-bindings/clock/qcom,sm8750-gcc.h: No such file or directory
   18 |         #include <dt-bindings/clock/qcom,sm8750-gcc.h>
      |                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
compilation terminated.
make[2]: *** [scripts/Makefile.dtbs:131: Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.example.dtb] Error 1
make[2]: *** Waiting for unfinished jobs....
make[1]: *** [/builds/robherring/dt-review-ci/linux/Makefile:1506: dt_binding_check] Error 2
make: *** [Makefile:251: __sub-make] Error 2

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20250113-sm8750_usb_master-v1-2-09afe1dc2524@quicinc.com

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
