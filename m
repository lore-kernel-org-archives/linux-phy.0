Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2798CC433F5
	for <linux-phy@archiver.kernel.org>; Tue, 19 Apr 2022 13:23:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F49N05MjTWjURdWpDeO08ufzwn8JcPqnIh+qPsnQb3k=; b=YjMpShRSlIbbAl
	qz1Ro1gzc2fly+20sCN3TwWUMMRh7MP6arukbpLqdUN7ZHlguEkKg/J7XGIZHDDqB6O9UPigWBX8e
	RuARW9w6cMsbcumeQsrKsgfRyWe1/S1V1nPpaBtKOtfOSFSP6WVrXHzzQYE/2Jc+WLEv0pKn8ILVa
	OagkeRa5Wqnos+U9DrdeH3c/gzTzNBXcGyrmjeI/HI56bGW41GzJ3hpk2/UQlBwaZKdhGQsUINcsy
	yM+HK8HYUJVJvm7FMtTum72FDQ+nR0DViPfktdFf1A96mrXlpU/y4z1+7kShEx8g1bdDVBVHenp/Y
	vwO+piPM8ylUYT9qPKNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ngnpW-003oae-5q; Tue, 19 Apr 2022 13:23:42 +0000
Received: from mail-oa1-f41.google.com ([209.85.160.41])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ngmjJ-003Nqt-Mk
 for linux-phy@lists.infradead.org; Tue, 19 Apr 2022 12:13:18 +0000
Received: by mail-oa1-f41.google.com with SMTP id
 586e51a60fabf-e2afb80550so17245944fac.1
 for <linux-phy@lists.infradead.org>; Tue, 19 Apr 2022 05:12:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
 :message-id;
 bh=j1rFkwOvIXBO+3tCwlNTqd0pjl7npLIdFzpaL7V+7n0=;
 b=Ke68iMEt4bvEtkSZKrfPHOh5vrFbSz/pEjphf1He/IcdByK6VC1ND/IYzkaSWejW97
 KztocpQOTu6aC/tFJjmSsN9VBndN5ICCxhc0SWvjNiGv3EgwngAsPfmn51/aDJkNskpb
 PC+jdcmwUAb5zDxEnNl95LFcCvJD8meQsHQeeluS5cPVyezEKUMYf2Q9sp/5O+CUq+f4
 FF+cUajkhEVBC+Pnz9PdDrcjv1LAm/zsjGxfNGbf17XRFN2H+RnImwEqsjz+hQdk+7f1
 FGANGHl70yAMQZYHh58KEvuxMlaRcapLXaaVasBLOYgDdMUrWip6p7nASN/om6p6ixuw
 t1vw==
X-Gm-Message-State: AOAM531rU6/+Eb9M9ssNZz/jSX75nPGaNUVEywSYBfT930Z7y3QdVhp1
 YAosX5XCDlSVGgddhzNd9w==
X-Google-Smtp-Source: ABdhPJw8+O8iy7OvXQDZqJ9fQ+HdQxBCCcLs+j8+1ctB3j5c9rN8Bw97hQrBsEse2DgYT7wYOAAbyQ==
X-Received: by 2002:a05:6870:2310:b0:da:b3f:2b76 with SMTP id
 w16-20020a056870231000b000da0b3f2b76mr8021407oao.277.1650370369925; 
 Tue, 19 Apr 2022 05:12:49 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net.
 [66.90.144.107]) by smtp.gmail.com with ESMTPSA id
 ay9-20020a056808300900b0032272231c25sm2994238oib.40.2022.04.19.05.12.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 Apr 2022 05:12:49 -0700 (PDT)
Received: (nullmailer pid 1977874 invoked by uid 1000);
 Tue, 19 Apr 2022 12:12:43 -0000
From: Rob Herring <robh@kernel.org>
To: Bhupesh Sharma <bhupesh.sharma@linaro.org>
Cc: robh+dt@kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, vkoul@kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, bhupesh.linux@gmail.com,
 bjorn.andersson@linaro.org, agross@kernel.org
In-Reply-To: <20220418205509.1102109-2-bhupesh.sharma@linaro.org>
References: <20220418205509.1102109-1-bhupesh.sharma@linaro.org>
 <20220418205509.1102109-2-bhupesh.sharma@linaro.org>
Subject: Re: [PATCH v3 1/4] dt-bindings: phy: qcom,
 qmp: Mark '#clock-cells' as a 'optional' property
Date: Tue, 19 Apr 2022 07:12:43 -0500
Message-Id: <1650370363.629686.1977873.nullmailer@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220419_051313_784686_60B0E398 
X-CRM114-Status: GOOD (  13.64  )
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

On Tue, 19 Apr 2022 02:25:06 +0530, Bhupesh Sharma wrote:
> '#clock-cells' is not a required property for qmp-phy(s) in the
> '/' node, but it should be is used in 'phy@' subnode (where it is
> actually a 'required' property). Fix the same.
> 
> This also fixes the following 'make dtbs_check' warning(s):
> 
> sm8350-microsoft-surface-duo2.dt.yaml: phy@1d87000:
>   '#clock-cells' is a required property
> 
> Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
> Cc: Vinod Koul <vkoul@kernel.org>
> Cc: Rob Herring <robh+dt@kernel.org>
> Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
> ---
>  Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml | 8 +++-----
>  1 file changed, 3 insertions(+), 5 deletions(-)
> 

Running 'make dtbs_check' with the schema in this patch gives the
following warnings. Consider if they are expected or the schema is
incorrect. These may not be new warnings.

Note that it is not yet a requirement to have 0 warnings for dtbs_check.
This will change in the future.

Full log is available here: https://patchwork.ozlabs.org/patch/


phy@1c07000: 'lanes@1c06000' does not match any of the regexes: '^phy@[0-9a-f]+$', 'pinctrl-[0-9]+'
	arch/arm/boot/dts/qcom-sdx55-mtp.dtb
	arch/arm/boot/dts/qcom-sdx55-t55.dtb
	arch/arm/boot/dts/qcom-sdx55-telit-fn980-tlb.dtb

phy@1c0e000: 'lanes@1c0e200' does not match any of the regexes: '^phy@[0-9a-f]+$', 'pinctrl-[0-9]+'
	arch/arm64/boot/dts/qcom/sc7280-crd.dtb
	arch/arm64/boot/dts/qcom/sc7280-herobrine-herobrine-r0.dtb
	arch/arm64/boot/dts/qcom/sc7280-herobrine-herobrine-r1.dtb
	arch/arm64/boot/dts/qcom/sc7280-idp2.dtb
	arch/arm64/boot/dts/qcom/sc7280-idp.dtb

phy@1d87000: 'lanes@1d87400', 'vdda-max-microamp', 'vdda-pll-max-microamp' do not match any of the regexes: '^phy@[0-9a-f]+$', 'pinctrl-[0-9]+'
	arch/arm64/boot/dts/qcom/sm8450-hdk.dtb
	arch/arm64/boot/dts/qcom/sm8450-qrd.dtb

phy@1d87000: 'vdda-max-microamp', 'vdda-pll-max-microamp' do not match any of the regexes: '^phy@[0-9a-f]+$', 'pinctrl-[0-9]+'
	arch/arm64/boot/dts/qcom/sm8350-microsoft-surface-duo2.dtb

phy@627000: 'vdda-phy-max-microamp', 'vdda-pll-max-microamp', 'vddp-ref-clk-always-on', 'vddp-ref-clk-max-microamp' do not match any of the regexes: '^phy@[0-9a-f]+$', 'pinctrl-[0-9]+'
	arch/arm64/boot/dts/qcom/msm8996-xiaomi-gemini.dtb
	arch/arm64/boot/dts/qcom/msm8996-xiaomi-scorpio.dtb

phy-wrapper@88e9000: 'vdda-phy-supply' is a required property
	arch/arm64/boot/dts/qcom/sm8350-sony-xperia-sagami-pdx214.dtb
	arch/arm64/boot/dts/qcom/sm8350-sony-xperia-sagami-pdx215.dtb

phy-wrapper@88e9000: 'vdda-pll-supply' is a required property
	arch/arm64/boot/dts/qcom/sm8350-sony-xperia-sagami-pdx214.dtb
	arch/arm64/boot/dts/qcom/sm8350-sony-xperia-sagami-pdx215.dtb

ssphy@78000: '#clock-cells', 'lane@78200' do not match any of the regexes: '^phy@[0-9a-f]+$', 'pinctrl-[0-9]+'
	arch/arm64/boot/dts/qcom/ipq6018-cp01-c1.dtb


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
