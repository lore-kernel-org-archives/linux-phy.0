Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B7DEEC4167B
	for <linux-phy@archiver.kernel.org>; Fri, 30 Dec 2022 16:43:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iviqBA4DU44KZHmMYd2dTqKlGPfeqPE8zl69ymkrMjI=; b=F+tTTpD+mp5955
	WKXetzBzK5uWUMrWX+IZy1qiu04A84y1MOG4F7xSi9fAv/jjooXgM5hnXcEHVP8R1z7MQjg+ZhXK1
	1SARZi7NT8vOa8fM3wAKGHehzy+i4XxgOLPP8eU9Z06LXX6QSisNwHoCE/Us8qqbHL/WWo765uyZO
	/rvvtHswpYvNFiYpTKM7ffzE42bNmhT5gRn2ITcK1mwaNWLDT63bQD78E80DZOkqv78zHmbZ6FV0t
	W3HqRKZ0Ejncg1nlc12XoS9zfbj7OM5XzgNXABM+JlPfVuCLDM7djbxtNoW6VDBqbeLRk7LMLdMJA
	YDgrweEXdP4vT9RVEd+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pBITl-00BCzV-2y; Fri, 30 Dec 2022 16:43:33 +0000
Received: from mail-il1-f174.google.com ([209.85.166.174])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pBILE-00B5nE-D8
	for linux-phy@lists.infradead.org; Fri, 30 Dec 2022 16:34:46 +0000
Received: by mail-il1-f174.google.com with SMTP id u8so11501702ilq.13
        for <linux-phy@lists.infradead.org>; Fri, 30 Dec 2022 08:34:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=w+v7wd3dT3eh8vuF26/+yKiLrnBmKfWIUiJDjsHaDWM=;
        b=yufm/2ePoOijvCUQS74Pzf1mYHxV8LewG7CjPRfO8TOaf1zykNx1CIMe1M0BAP0LU2
         4COz0AMq6phhLpWEfEvxxUULD79I5UUMUJZzUZ2SWBQyRe1Ttdrmrm378MVnJrkAo026
         cu8iXr+f0XONbgraoPYQqMk3YhgQrTNiHtCw9234en3do7ByWbB29KiIwKajQl7sAfk/
         kD3dNvQUDSSJ5QURJC4pL3x/lSdjQLPY14aqxSNM0Uyc8XWZVxgmIZR/lxgWSxax6U4e
         4j38R0lcGPacOuzC/+/3WDC3yTNH7kOouP3ApeLZIo1QF/gQ8z3dJNgcJVAAhjijtdQH
         KSeA==
X-Gm-Message-State: AFqh2krHI5Ieb0d5k0+MyQcHvAdOXODTO8ntuTMPlJDVzM3IfypVJjCR
	HUJ6cpKUc+32Le9OoKFL1g==
X-Google-Smtp-Source: AMrXdXv3fY9Kz2DtRRLLOs8xLxNlA7/NakEv6wgyqMVFh8rk68CwW73iliRhxeL44HyFvDdLWHICrg==
X-Received: by 2002:a05:6e02:112:b0:30c:3204:5fbd with SMTP id t18-20020a056e02011200b0030c32045fbdmr1770681ilm.31.1672418080549;
        Fri, 30 Dec 2022 08:34:40 -0800 (PST)
Received: from robh_at_kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id w5-20020a029685000000b003758390c97esm6925751jai.83.2022.12.30.08.34.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Dec 2022 08:34:40 -0800 (PST)
Received: (nullmailer pid 1935059 invoked by uid 1000);
	Fri, 30 Dec 2022 16:34:28 -0000
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>, linux-arm-msm@vger.kernel.org, Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org, Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, Bjorn Andersson <andersson@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-phy@lists.infradead.org, Kishon Vijay Abraham I <kishon@kernel.org>
In-Reply-To: <20221229115932.3312318-2-dmitry.baryshkov@linaro.org>
References: <20221229115932.3312318-1-dmitry.baryshkov@linaro.org>
 <20221229115932.3312318-2-dmitry.baryshkov@linaro.org>
Message-Id: <167241774332.1928179.4447846135439331544.robh@kernel.org>
Subject:  Re: [PATCH v3 1/2] dt-bindings: phy: qcom,pcie2-phy: convert to YAML format
Date: Fri, 30 Dec 2022 10:34:28 -0600
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221230_083444_540087_8869A0C6 
X-CRM114-Status: GOOD (  10.63  )
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


On Thu, 29 Dec 2022 13:59:31 +0200, Dmitry Baryshkov wrote:
> Convert the bindings for the Qualcomm PCIe2 PHY into the YAML format
> from the text description.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  .../bindings/phy/qcom,pcie2-phy.yaml          | 86 +++++++++++++++++++
>  .../bindings/phy/qcom-pcie2-phy.txt           | 42 ---------
>  2 files changed, 86 insertions(+), 42 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/phy/qcom,pcie2-phy.yaml
>  delete mode 100644 Documentation/devicetree/bindings/phy/qcom-pcie2-phy.txt
> 

Running 'make dtbs_check' with the schema in this patch gives the
following warnings. Consider if they are expected or the schema is
incorrect. These may not be new warnings.

Note that it is not yet a requirement to have 0 warnings for dtbs_check.
This will change in the future.

Full log is available here: https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20221229115932.3312318-2-dmitry.baryshkov@linaro.org


phy@7786000: '#clock-cells' is a required property
	arch/arm64/boot/dts/qcom/qcs404-evb-1000.dtb
	arch/arm64/boot/dts/qcom/qcs404-evb-4000.dtb


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
