Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0AFCCEB64DD
	for <linux-phy@archiver.kernel.org>; Wed,  5 Jul 2023 09:16:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p932mQdU4mjzT+/3oYXxh2Ovt1btDV+IyOw1Qm63PM0=; b=FDbX683vVwZ+to
	eBJIY6zBSff1YovSvHHeKDnPvoIMsdu7SvSYT9qtPR9Sqh+659nmTzb1BkDLZXJExV3zYn7f1YMfR
	P1x4MLgQYzCTCXKl6KO0FTwCqMPxCK8HFyBuo1o8IN30TtLUrj/JTbJlcN6xZu/xbWrk6MS/+RIvZ
	GB1NScZn2yPj84EQRT8tdximRlLck6tki7CSbCTlcF/hOuaacrULhn3PXaHK2OqGG3IJhlk0pjFXs
	k9EF0i60TQa9619OZABqx4n/x+6jd7+KnvizchyHTnZf0GDhyBvGl3xHYsW8fAHXNQwxxWjm2ZQjN
	/5APpidFPItFwmBp0fbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qGycq-00FKWD-2D;
	Wed, 05 Jul 2023 09:16:40 +0000
Received: from mail-io1-f52.google.com ([209.85.166.52])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qGyco-00FKSl-0u
	for linux-phy@lists.infradead.org;
	Wed, 05 Jul 2023 09:16:39 +0000
Received: by mail-io1-f52.google.com with SMTP id ca18e2360f4ac-78360b822abso252332839f.2
        for <linux-phy@lists.infradead.org>; Wed, 05 Jul 2023 02:16:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688548590; x=1691140590;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=zrxkvponYz4V5NTYWmXXqT0XM8M8zhkcRZKfUVdIvfo=;
        b=Ll63NtRctCBbfmfoeGuRGZurCoxKzxUoo5aCIPG6VqcWiqdjnSoYg19i8D2Nb4XREf
         7/OrYWQUNCY0XIY8/e1QZj5umZaE4KUlr3hpdrzAulmEmAqYgKMdCo/7vQ3zJCWAqHRF
         3HpfL3KRVEwWXx/ZkHBwj/d3eUrDsDZrmiQIb/6BfG4LjJR298add2ae/oCfHbvVe2My
         c7o7g9JfLlosenNUPLp7DcM6ROPJDIl84anYER9cIKUlkURsoG1+sairmxsMe7e77VAJ
         i6uSC9yRahtX7Ca2TvDCHLTce5gr698LS0t5T4WSNTR5AuungPjgsOvtlStZAVb4vHn+
         Pc7w==
X-Gm-Message-State: AC+VfDzGhwX/msh4KfE8PRsUcU7CzhMssEUHIEz4JmR2WJ8fxkCUVjNc
	sPHznSl1mNackJOqJRmSqA==
X-Google-Smtp-Source: ACHHUZ7uV5drZripZphbrl8LDJeBSaflagI8Iu3OZ5ufCPyk2D1KK9nohHZs6UkU+btahidNzSfF3g==
X-Received: by 2002:a5e:a911:0:b0:77e:3d2f:d1f4 with SMTP id c17-20020a5ea911000000b0077e3d2fd1f4mr15269163iod.15.1688548589990;
        Wed, 05 Jul 2023 02:16:29 -0700 (PDT)
Received: from robh_at_kernel.org ([64.188.179.250])
        by smtp.gmail.com with ESMTPSA id e20-20020a02a514000000b0042b48e5da4bsm1717283jam.134.2023.07.05.02.16.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Jul 2023 02:16:29 -0700 (PDT)
Received: (nullmailer pid 4038325 invoked by uid 1000);
	Wed, 05 Jul 2023 09:16:27 -0000
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Mrinmay Sarkar <quic_msarkar@quicinc.com>
Cc: =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, agross@kernel.org, Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, konrad.dybcio@linaro.org, linux-pci@vger.kernel.org, quic_nayiluri@quicinc.com, quic_shazhuss@quicinc.com, linux-phy@lists.infradead.org, Bjorn Helgaas <bhelgaas@google.com>, quic_ramkri@quicinc.com, linux-arm-msm@vger.kernel.org, Lorenzo Pieralisi <lpieralisi@kernel.org>, andersson@kernel.org, krzysztof.kozlowski+dt@linaro.org, quic_nitegupt@quicinc.com, conor+dt@kernel.org, mani@kernel.org
In-Reply-To: <1688545032-17748-2-git-send-email-quic_msarkar@quicinc.com>
References: <1688545032-17748-1-git-send-email-quic_msarkar@quicinc.com>
 <1688545032-17748-2-git-send-email-quic_msarkar@quicinc.com>
Message-Id: <168854858595.4038242.5895489616920935149.robh@kernel.org>
Subject: Re: [PATCH v1 1/6] dt-bindings: PCI: qcom: Add sa8775p compatible
Date: Wed, 05 Jul 2023 03:16:27 -0600
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230705_021638_322910_4B8DB0ED 
X-CRM114-Status: GOOD (  10.22  )
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


On Wed, 05 Jul 2023 13:47:06 +0530, Mrinmay Sarkar wrote:
> Add sa8775p platform to the binding.
> 
> Signed-off-by: Mrinmay Sarkar <quic_msarkar@quicinc.com>
> ---
>  .../devicetree/bindings/pci/qcom,pcie.yaml    | 28 +++++++++++++++++++
>  1 file changed, 28 insertions(+)
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:
./Documentation/devicetree/bindings/pci/qcom,pcie.yaml:753:17: [warning] wrong indentation: expected 14 but found 16 (indentation)

dtschema/dtc warnings/errors:

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/1688545032-17748-2-git-send-email-quic_msarkar@quicinc.com

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
