Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C01B6CA0FFA
	for <linux-phy@archiver.kernel.org>; Tue,  5 Sep 2023 17:49:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u3B0HIDqyh2UZxU9h+4ISRKZfdYlNb/+rLZ0bVd2Scg=; b=gJkVUYuLEvyBCj
	BlcHDlxmwV9L7Ub5bIZBBtBJvMMhQTr5EU2J/W6gQ8KtwNQchhXjyvAuCzJdO176bGN9Zg68UpVGG
	kQXPUdd4eB47MB966WNvdrMbI2M3v+lijdZE24HNEHWklUPydrKQNE9KNAgWwZ9hfDgLslGZbPvqM
	DcW4e7Ht+EjOd2TcZ1fsyzPqWnXMDhqeSh0XvenzoVKP9fmW7AEzNDbWiqXD54Zj+NxcoDhaLjyIA
	aMSqmPZxgUWmBlJzjLp0BoaeOFyVLmMEIFALWzoeIeefQaWu6CRcrVvgJVy7sDUpEPwrT7VGLtwKK
	I/TkNQa/9QdSf+vSS2Yg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qdaAe-006U2w-17;
	Tue, 05 Sep 2023 17:49:00 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qdaAa-006U2X-33
	for linux-phy@lists.infradead.org;
	Tue, 05 Sep 2023 17:48:58 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 1A68FB815A9;
	Tue,  5 Sep 2023 17:48:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CF86DC43397;
	Tue,  5 Sep 2023 17:48:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693936133;
	bh=RBAG8ZYYuvEXmzdeIKhCe4dQDTnUdRpxhlaQhZKuHLI=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=qjC562cgkOdXqEWXTtWkaQcHbRLvNVIaRWHl9pW6MecM9dh7mA7zhrIFGV9l/WCEe
	 XLvL6fira6Dj/9h7l8280L9aHBNuNqS2DUxNNb2cRBuXygxA2pydOC7Sogz+y4jlQA
	 qk2S8Ej+u5Rla1Oa4oMQUMycVx1w324CD/lFf/PpxUw3B9Xk2fnZzH6bao3FKWvVBF
	 6rrjVfRaEe1n5FAFeisVcdTGWJzrBr/arxb9nWcTehN/CXW2ya+7rVVi5gixa9qP2L
	 ytecjGb7MxI9p5jocvg8CcRTpXAIVKWUoZiNfW/Rua5A8KaiPs54zJzYO+mll4HR5m
	 LGh/6PDH/OECw==
Received: (nullmailer pid 3654274 invoked by uid 1000);
	Tue, 05 Sep 2023 17:48:50 -0000
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Rohit Agarwal <quic_rohiagar@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org, quic_wcheng@quicinc.com, linux-usb@vger.kernel.org, konrad.dybcio@linaro.org, devicetree@vger.kernel.org, gregkh@linuxfoundation.org, linux-phy@lists.infradead.org, krzysztof.kozlowski+dt@linaro.org, andersson@kernel.org, kishon@kernel.org, kernel@quicinc.com, conor+dt@kernel.org, agross@kernel.org, abel.vesa@linaro.org, vkoul@kernel.org
In-Reply-To: <1693889028-6485-3-git-send-email-quic_rohiagar@quicinc.com>
References: <1693889028-6485-1-git-send-email-quic_rohiagar@quicinc.com>
 <1693889028-6485-3-git-send-email-quic_rohiagar@quicinc.com>
Message-Id: <169393613081.3654258.4653148258731976775.robh@kernel.org>
Subject: Re: [PATCH 2/5] dt-bindings: phy: Add qcom,sdx75-qmp-usb3-uni
 schema file
Date: Tue, 05 Sep 2023 12:48:50 -0500
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230905_104857_145039_1D28AEB0 
X-CRM114-Status: GOOD (  13.02  )
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


On Tue, 05 Sep 2023 10:13:45 +0530, Rohit Agarwal wrote:
> Add a dt-binding schema for SDX75 SoC.
> 
> Signed-off-by: Rohit Agarwal <quic_rohiagar@quicinc.com>
> ---
>  .../bindings/phy/qcom,sdx75-qmp-usb3-uni-phy.yaml  | 106 +++++++++++++++++++++
>  1 file changed, 106 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/qcom,sdx75-qmp-usb3-uni-phy.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Documentation/devicetree/bindings/phy/qcom,sdx75-qmp-usb3-uni-phy.example.dts:18:18: fatal error: dt-bindings/clock/qcom,gcc-sdx75.h: No such file or directory
   18 |         #include <dt-bindings/clock/qcom,gcc-sdx75.h>
      |                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
compilation terminated.
make[2]: *** [scripts/Makefile.lib:419: Documentation/devicetree/bindings/phy/qcom,sdx75-qmp-usb3-uni-phy.example.dtb] Error 1
make[2]: *** Waiting for unfinished jobs....
make[1]: *** [/builds/robherring/dt-review-ci/linux/Makefile:1500: dt_binding_check] Error 2
make: *** [Makefile:234: __sub-make] Error 2

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/1693889028-6485-3-git-send-email-quic_rohiagar@quicinc.com

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
