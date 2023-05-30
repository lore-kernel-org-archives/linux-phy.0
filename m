Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43765C77B73
	for <linux-phy@archiver.kernel.org>; Tue, 30 May 2023 12:56:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uPMWRfFLBf2kqNU7Ma5Wb+cZLFMZSkvTaKzz7W32IIw=; b=QtYLM1GKn0rIIr
	YOIMrRR0t00NT1End45fyKEz13JsNAZdrEGBC9oAh8+aDlxWnyNg01w7S1MjEQRLodgemnAy2f+Dt
	5EHIzI/z4V8/CwrT0dgZMxH68JSXFqA17RLNFFjGMgtczoN33WnfST/IWYFh9hEV1Ki5/QWHlhnVh
	jv44Mza3RGqJO+GhNICBYPVJoKXDD+z/qb682EZsWD+0OOqEhOrrIorbmymZI9lM5Q4t3CvF6k+dm
	CRGBLFUSDE3VGLMMzLRhsN0SNj/SPOEiib7MrEdfvG0NDhqc1SXDjcgRF6kJjll/DV6C9LL6rd3BF
	R/oBleqrwlYZkmNXBHEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q3yuG-00DxE4-2v;
	Tue, 30 May 2023 12:56:56 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q3yuA-00DxCM-2q
	for linux-phy@lists.infradead.org;
	Tue, 30 May 2023 12:56:52 +0000
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-51458e3af68so7713972a12.2
        for <linux-phy@lists.infradead.org>; Tue, 30 May 2023 05:56:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685451409; x=1688043409;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=AhsY+hhRc4iSF6YgdclHWjJeSAbTG4rDYJhMMhzuUyQ=;
        b=WBS0a8nQAh/I44LB/nupfxbOMVbFwBJ6OzEY/qATr6Bd41Xo5CsW1ld3/2zLPEhxd1
         fCoViKdtSykZYB6hndDKWKMiPTQ7EU/DscqVOHXxfzTN329DQl1TuS+sh0u56G2VCvPj
         cTDKAraus+XFa/kqGZLcoLg/81omH4qMDQjLJHqHMA+n1h1V+34HMaOPCY7H+zUK2FS7
         sjEWB/WYyjxM6gLf+yVm0+KuLyXo2EFGUech4YORQF4vomi/9WL8840fcfcnm2ylhgox
         sp1BFsm8ErK0Hus3+Ndc/SlywVUx5j2pT/On1Z+qzB0DjeDrMT70lChuFGKmUMlo7tm9
         tgNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685451409; x=1688043409;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AhsY+hhRc4iSF6YgdclHWjJeSAbTG4rDYJhMMhzuUyQ=;
        b=Ya5uca6dchIihGe7eyElP9PSWERKqXKEhtab3QLMXF7P3HFReuwGp2Umx+G9Eh9DeZ
         zNdz9flnBn4l7v1q3t0ptZZB1cjSNOFc4lxeyanrrcHV4zPzrlfGoo570/rDcNTM/mLU
         olzbjBbmYUxj/eFLS+9NsLtL2aq1yDXbodwFj5tXeEI71Qw+5PwzNkGjjv/aMrQk7+T1
         sOp3/2+KK/4hgt53+TSeHBRv9Ytze8mN766X8VIk+z+kGiQoVKnt0VhyzMxQcERaw1bB
         AIzoCANsa23/gct0BOPvjJJgT77xTHBPgih41roUfQdkhk/vNZ890O+WUnSyTiMR/kFT
         NxSA==
X-Gm-Message-State: AC+VfDw11LL5rop0OJG93N/ET6ITz6iH9FE4AfcWG/xpUpB9LsWOb+gT
	gnUSQatypB1i8fjyAcSI9B96dg==
X-Google-Smtp-Source: ACHHUZ52CRi1rZ1Td3mZ3VL6pr2PyrkknEvQNA1Esi8BwxVXoSn0obftCgpFKZydkULmsPFFhT9EVg==
X-Received: by 2002:a17:906:fe4d:b0:970:1a68:bacc with SMTP id wz13-20020a170906fe4d00b009701a68baccmr2314391ejb.67.1685451408768;
        Tue, 30 May 2023 05:56:48 -0700 (PDT)
Received: from krzk-bin ([178.197.199.204])
        by smtp.gmail.com with ESMTPSA id w19-20020a17090652d300b0094f23480619sm7437454ejn.172.2023.05.30.05.56.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 May 2023 05:56:48 -0700 (PDT)
Date: Tue, 30 May 2023 14:56:45 +0200
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Devi Priya <quic_devipriy@quicinc.com>
Cc: kishon@kernel.org, linux-arm-msm@vger.kernel.org, agross@kernel.org,
	quic_arajkuma@quicinc.com, conor+dt@kernel.org,
	linux-kernel@vger.kernel.org, quic_ipkumar@quicinc.com,
	konrad.dybcio@linaro.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, quic_srichara@quicinc.com,
	quic_kathirav@quicinc.com, vkoul@kernel.org, andersson@kernel.org,
	quic_anusha@quicinc.com, quic_sjaganat@quicinc.com
Subject: Re: [PATCH V2 1/2] dt-bindings: phy: qcom,qmp-pcie: Add ipq9574
 bindings
Message-ID: <20230530125645.ezd4qs5bmoyfhg33@krzk-bin>
References: <20230519085723.15601-1-quic_devipriy@quicinc.com>
 <20230519085723.15601-2-quic_devipriy@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230519085723.15601-2-quic_devipriy@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230530_055650_920694_6CCDBC5D 
X-CRM114-Status: GOOD (  13.89  )
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

On Fri, 19 May 2023 14:27:22 +0530, Devi Priya wrote:
> Add bindings for the PCIe QMP PHYs found on IPQ9574.
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Devi Priya <quic_devipriy@quicinc.com>
> ---
>  Changes in V2:
> 	- Picked up the R-b tag
> 	- Did not convert the clock IDs to numerical values as the clock
> 	  header (dependent patch) is merged in latest rc1.
> 
>  .../phy/qcom,ipq9574-qmp-pcie-phy.yaml        | 90 +++++++++++++++++++
>  1 file changed, 90 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/qcom,ipq9574-qmp-pcie-phy.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Error: Documentation/devicetree/bindings/phy/qcom,ipq9574-qmp-pcie-phy.example.dts:29.26-27 syntax error
FATAL ERROR: Unable to parse input tree
make[1]: *** [scripts/Makefile.lib:419: Documentation/devicetree/bindings/phy/qcom,ipq9574-qmp-pcie-phy.example.dtb] Error 1
make[1]: *** Waiting for unfinished jobs....
make: *** [Makefile:1512: dt_binding_check] Error 2

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/1783652

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
