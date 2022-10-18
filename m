Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 019C0C4332F
	for <linux-phy@archiver.kernel.org>; Tue, 18 Oct 2022 13:32:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Subject:Message-Id:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G336Vxiyr/TVV8qp90x0r9eyHBTGYfhrDa4sdGyWKYA=; b=1W/xrhfZXTwNKN
	OkXyr2uoK6gBnp1n4F35sYIoxtKqxEsJqPPtmUHgGPZeUwLmY3v54012xz6NGSpp/LeHZgtIYXETy
	zYk0KzHmkEvQCXWZz9iC17TACs9iinOB1NHyuCl2Se0rgXAUatkX74bzQsQ3zm8/bBi+wwfSPPZVv
	3cjNNHZrGrpEPxeFTFNlgKM0MxkHuZQEkosclgUSjMjeymKLFXCt1FhFAhHuMIq6YkNkXeZbHm8j3
	ZgIXRsUkJvlYGIl6kD8wf42Beh+JA/iAQCN8SZDQ12IUzrLUpWThYNJgvRDIU49dZmijlysQCaG00
	6y2slY4EaMaQkhkjz28w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okmhT-0075I1-CQ; Tue, 18 Oct 2022 13:32:07 +0000
Received: from mail-oa1-f44.google.com ([209.85.160.44])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okmhR-0075Gb-4m; Tue, 18 Oct 2022 13:32:06 +0000
Received: by mail-oa1-f44.google.com with SMTP id 586e51a60fabf-1322fa1cf6fso16793582fac.6;
        Tue, 18 Oct 2022 06:32:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gEJ3nN0wOjqyjek8ZcKMEHHdhLOGpeMQeNTSyKEyuvo=;
        b=sy1XKMp69HETWGRAzthuTKyht4wu6WutROdgvpY4l8BF8wJ1IGc9OoarCkCx95X0Qw
         mOStpPiNSDuCPeIFymNkJfhtd/EyzHoZPGEOS+kwIOWtJjrIwUjaAJxO4qcEIFx8w+4n
         CFCN/KnAhpXHL8iNbqC2mRPaUX4tCKWt00Of1YQStlnJ2ihOiIsYtyEqb65R8g3tHqGJ
         QawjywlkUFYmA41g1kMJyMwXX+wpVn8YaGoG8or2wqjkvoTl8KSiOpTJuTdwclPJosLW
         151N//lp7GlNUPrJIHPMyTqbNwVroTCrAcpYtNwpx0Fx84d9Yo5Cp+VzIjKlX7JaU3sA
         icKw==
X-Gm-Message-State: ACrzQf1HpE56kZlXuzbepso7p9Rwkj6qJ3h9/MC7HlheZJkMwhjc1f7G
	KlwjDA8MgGzliRWHoo77miuGNNKeZw==
X-Google-Smtp-Source: AMsMyM4jST8n+8ZZo9uiDI29BwfZwbKZGPxkYGiRwMYca9UhzVLi1KxoUnPi4QS1AdrgrAKBc6liug==
X-Received: by 2002:a05:6871:1d5:b0:12b:239:ef00 with SMTP id q21-20020a05687101d500b0012b0239ef00mr1561467oad.85.1666099922195;
        Tue, 18 Oct 2022 06:32:02 -0700 (PDT)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id e12-20020a9d63cc000000b0066102eb189fsm5926004otl.26.2022.10.18.06.32.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Oct 2022 06:32:01 -0700 (PDT)
Received: (nullmailer pid 180827 invoked by uid 1000);
	Tue, 18 Oct 2022 13:32:01 -0000
From: Rob Herring <robh@kernel.org>
To: Siddharth Vadapalli <s-vadapalli@ti.com>
Cc: rogerq@kernel.org, krzysztof.kozlowski@linaro.org, linux-kernel@vger.kernel.org, vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org, devicetree@vger.kernel.org, lee@kernel.org, linux-phy@lists.infradead.org, dan.carpenter@oracle.com, krzysztof.kozlowski+dt@linaro.org, linux-arm-kernel@lists.infradead.org
In-Reply-To: <20221018084333.149790-2-s-vadapalli@ti.com>
References: <20221018084333.149790-1-s-vadapalli@ti.com> <20221018084333.149790-2-s-vadapalli@ti.com>
Message-Id: <166609952062.171721.12955273990805791032.robh@kernel.org>
Subject: Re: [PATCH v2 1/3] dt-bindings: phy: ti: phy-gmii-sel: Add bindings for J721e
Date: Tue, 18 Oct 2022 08:32:01 -0500
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221018_063205_201174_6348FE71 
X-CRM114-Status: GOOD (  13.21  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Tue, 18 Oct 2022 14:13:31 +0530, Siddharth Vadapalli wrote:
> TI's J721e SoC supports additional PHY modes like QSGMII and SGMII
> that are not supported on earlier SoCs. Add a compatible for it.
> 
> Extend ti,qsgmii-main-ports property to support selection of upto
> two main ports at once across the two QSGMII interfaces.
> 
> Signed-off-by: Siddharth Vadapalli <s-vadapalli@ti.com>
> ---
>  .../bindings/phy/ti,phy-gmii-sel.yaml         | 48 +++++++++++++++----
>  1 file changed, 40 insertions(+), 8 deletions(-)
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:
./Documentation/devicetree/bindings/phy/ti,phy-gmii-sel.yaml:75:12: [error] syntax error: mapping values are not allowed here (syntax)

dtschema/dtc warnings/errors:
make[1]: *** Deleting file 'Documentation/devicetree/bindings/phy/ti,phy-gmii-sel.example.dts'
Documentation/devicetree/bindings/phy/ti,phy-gmii-sel.yaml:75:12: mapping values are not allowed in this context
make[1]: *** [Documentation/devicetree/bindings/Makefile:26: Documentation/devicetree/bindings/phy/ti,phy-gmii-sel.example.dts] Error 1
make[1]: *** Waiting for unfinished jobs....
./Documentation/devicetree/bindings/phy/ti,phy-gmii-sel.yaml:75:12: mapping values are not allowed in this context
./Documentation/devicetree/bindings/mfd/ti,j721e-system-controller.yaml: Unable to find schema file matching $id: http://devicetree.org/schemas/phy/ti,phy-gmii-sel.yaml
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/phy/ti,phy-gmii-sel.yaml: ignoring, error parsing file
make: *** [Makefile:1492: dt_binding_check] Error 2

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/

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
