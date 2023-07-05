Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 54BFAC0015E
	for <linux-phy@archiver.kernel.org>; Wed,  5 Jul 2023 09:16:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vCuducvz21nYIgzGXyO5G7sDu6QzJlMVz3gzCJbu+LI=; b=gE1O7xukdeu3aw
	AaKvAz/adb91KFhnPGq/hddpYOwQW69LvKi6Z404yn4E3ZIZhP44u21h/465tpRxNRkVPmmQS1NlZ
	/xJ/F5OqpvzvDMzZyKSU4bdClSvLINNZ7H6bXAsD/FxQyykhsTiBVvgG6mS+3lH6NpZ1+NajBSaLu
	0AZIsUP0z7CynohvLyA6LKyGFQmnpF/d7VncczkOmrketbTXT3ZsdA8bQ/4+Q843fVD8K03/Rhw3m
	8w/he6dIR3keKGGwIQIRdxt7K63tIpaLkmrUTcSznSKbxLs/bhjoVEWeUQylIZO1u0ENXkSkY79fD
	sy520rgdxPfSa+7vAcrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qGycs-00FKWY-01;
	Wed, 05 Jul 2023 09:16:42 +0000
Received: from mail-io1-f48.google.com ([209.85.166.48])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qGyco-00FKTf-1K
	for linux-phy@lists.infradead.org;
	Wed, 05 Jul 2023 09:16:39 +0000
Received: by mail-io1-f48.google.com with SMTP id ca18e2360f4ac-7835ffc53bfso10420839f.1
        for <linux-phy@lists.infradead.org>; Wed, 05 Jul 2023 02:16:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688548593; x=1691140593;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=lq04kjYiYY2D3X+Ef3fDnIElUg0AyuRuSsj7VlSyuoQ=;
        b=Y4QRS7TnZaAh8krXb9NVcxMTcaaSy5/SZT/bbVR2hbrHyjM9DM8tFKVXoCVYh/4Ydp
         x31G68k+cCrNVBRFHWnArWBAUL+yAFmfLyJgSRHzs3KJgubp6z5QldeCx24jwnlwRxeu
         xn6qNHJXv+REFLGjNlfx0zsE4AtkQONCi/MSsP+EjBI14IHNEooJ09FYfkAZyxZSKON3
         XgRWY5Cs24agW0V7Ph+vJYSekvczK+9wwieAijCOS8hZkFahxYep+X4iLAdIdVmaaCDd
         Qu2gozHNPJmBpanpfs2KBmLih1RxIRaSzPQTkXo2ADoaDtATLjYeig7DdVC56uhmucYB
         iQew==
X-Gm-Message-State: ABy/qLZi/FZF0CaLM2YbqLw3IAI1jUSlRwuVLrkGa8afxd7RZJI6AK1w
	8L/Pean5M3zBYwpbrVD58g==
X-Google-Smtp-Source: APBJJlGE/605ujaMNU/z7n4PfFpdNXqgpH5xUQ/WO6pZbEYqJ7Qqw5V8pnQPxHsByRVJ6CADRgbktA==
X-Received: by 2002:a6b:f314:0:b0:783:727a:8e15 with SMTP id m20-20020a6bf314000000b00783727a8e15mr1322122ioh.6.1688548592781;
        Wed, 05 Jul 2023 02:16:32 -0700 (PDT)
Received: from robh_at_kernel.org ([64.188.179.250])
        by smtp.gmail.com with ESMTPSA id b20-20020a056602001400b007791e286fdbsm3863821ioa.21.2023.07.05.02.16.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Jul 2023 02:16:32 -0700 (PDT)
Received: (nullmailer pid 4038328 invoked by uid 1000);
	Wed, 05 Jul 2023 09:16:27 -0000
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Mrinmay Sarkar <quic_msarkar@quicinc.com>
Cc: conor+dt@kernel.org, Vinod Koul <vkoul@kernel.org>, linux-kernel@vger.kernel.org, quic_ramkri@quicinc.com, quic_nayiluri@quicinc.com, Kishon Vijay Abraham I <kishon@kernel.org>, Lorenzo Pieralisi <lpieralisi@kernel.org>, linux-pci@vger.kernel.org, andersson@kernel.org, quic_shazhuss@quicinc.com, linux-arm-msm@vger.kernel.org, =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, agross@kernel.org, linux-phy@lists.infradead.org, mani@kernel.org, konrad.dybcio@linaro.org, Bjorn Helgaas <bhelgaas@google.com>, krzysztof.kozlowski+dt@linaro.org, quic_nitegupt@quicinc.com, devicetree@vger.kernel.org
In-Reply-To: <1688545032-17748-3-git-send-email-quic_msarkar@quicinc.com>
References: <1688545032-17748-1-git-send-email-quic_msarkar@quicinc.com>
 <1688545032-17748-3-git-send-email-quic_msarkar@quicinc.com>
Message-Id: <168854858712.4038293.10826309392324391984.robh@kernel.org>
Subject: Re: [PATCH v1 2/6] dt-bindings: phy: qcom,qmp: Add sa8775p QMP
 PCIe PHY
Date: Wed, 05 Jul 2023 03:16:27 -0600
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230705_021638_452123_1DABC6E9 
X-CRM114-Status: GOOD (  10.08  )
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


On Wed, 05 Jul 2023 13:47:07 +0530, Mrinmay Sarkar wrote:
> Add devicetree YAML binding for Qualcomm QMP PCIe PHY
> for SA8775p platform.
> 
> Signed-off-by: Mrinmay Sarkar <quic_msarkar@quicinc.com>
> ---
>  .../phy/qcom,sc8280xp-qmp-pcie-phy.yaml       | 19 ++++++++++++++++++-
>  1 file changed, 18 insertions(+), 1 deletion(-)
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.example.dtb: phy@1c18000: clock-names:4: 'phy_aux' was expected
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-pcie-phy.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.example.dtb: phy@1c18000: clock-names:5: 'pipe' was expected
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-pcie-phy.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.example.dtb: phy@1c24000: clock-names:4: 'phy_aux' was expected
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-pcie-phy.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.example.dtb: phy@1c24000: clock-names:5: 'pipe' was expected
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-pcie-phy.yaml#

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/1688545032-17748-3-git-send-email-quic_msarkar@quicinc.com

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
