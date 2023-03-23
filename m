Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D2EAC6FD1D
	for <linux-phy@archiver.kernel.org>; Thu, 23 Mar 2023 12:14:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f1QyoB1rGw8RPTHCtjTh04k+sk9Gy3leL9LxK9J2teY=; b=yiE+kJLE9eArIB
	8sQPWN7KgQa9a9o5cAlZbOdvF7m+gj2iLhZAyP5ZQlw1uZkdpRs9MTQdrKQ85ZT33+HjZ5akKnmW7
	Peop6We52ykyGCucng9Z5lFJqL1cz3NF3FNJxrn0vLvNeS0503Np0B756O/TWnbZumPv9IlV+r7HX
	hTCphcZLuUwNAPATrtP8dZ5aKlAzKeZalFnwceI3MKoAXVvXaIC9vcKhO92Zqw4BCwBWXVUws+Fsw
	Ewc9lE5wTvtRzRMIxae69huI3/1MVuKqmh+aDzXKX+WttXnLXx7gUWA34qfbhcqV7f9K5Vw8s3o+I
	xOTQoSmF+8nTlu+Jcnig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfJpi-001rmA-03;
	Thu, 23 Mar 2023 12:14:18 +0000
Received: from mail-yw1-x112e.google.com ([2607:f8b0:4864:20::112e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfJpQ-001rdX-17
	for linux-phy@lists.infradead.org;
	Thu, 23 Mar 2023 12:14:01 +0000
Received: by mail-yw1-x112e.google.com with SMTP id 00721157ae682-544b959a971so357230697b3.3
        for <linux-phy@lists.infradead.org>; Thu, 23 Mar 2023 05:14:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679573640;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=6r3XVRqIULYm4CGKu7hP4tgnIXEFH+P3K6MMzZmDA6Y=;
        b=poaqupKGqOdpI+XuLb3+5WiJSKB91AHjkpbRvzeNSCauU7DKUnMk4sf/P3ZHQQmbAP
         ARbOcThfNJU0Hn4clq72ZdyXd/r3F0ab6foRIfOKMiFqcMvuat9WQxOPr35VpEdjfkbA
         cO4S/t4jJyo8Fk5AcTDpoQRJ1qCQ2NkmBTKLSaXCW1FJYpmY4YqRb7hSl6XTBmkF7hzH
         XTr9UdEk0wlxjE86JvwxdevqOcThn8EJrgsozLsudhW107AE7NEo3w8eoQNNHQZjOo2O
         MVi4Dda1p8sYdktausdj3pklzzceXec49Yr1kLB1f0hDmHCZCDiGZ6gtOjU35z4NSTGs
         kpUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679573640;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6r3XVRqIULYm4CGKu7hP4tgnIXEFH+P3K6MMzZmDA6Y=;
        b=SHtwfXRR+G5RaYd0gCA1utR9gFUqUx0KTalt1RKmwtWPs/PoFDNu4oo/bquUicX/QO
         JD15iP5yYB9QY5AWPXRtmtxUCd8cEjLeHXu2Dpbbz5rpwdICcG74XDD11OzEdqnljB2u
         np9XZ66xSJJR3NqB+lAOiAsgWNRCCdN38kQXV0BMI0T9bpMH7U7hWF1tronNTbz9ptSg
         xROdAaEcaV+W2exa3usQTQfbZR4uwHyXUH7ytfhJ0dyzAXmz36jMuqY4LenrS1/VbJxU
         lRdMnwg6Kkf8fs0x01Ou5T3SVUPLIw7l3cKyE0quPFBCpTeDmP2ukFTnlR3yvowNq9JS
         LvXg==
X-Gm-Message-State: AAQBX9f4iRdeHoHSX2wMDPfaDrNzLogKU459gcGA7uvOi43Z/THPW22F
	q8dkEcxV6JfiOXSHhd9+TqMqCaBjaABNbXYAeLuzMw==
X-Google-Smtp-Source: AKy350YrzARwXS8DQFIp2Yjci1l9v45eFynyY5At2IrDlpyb+0NB5f39rOS96b7EjLMpprOrk8d3M4mQdbcyMs8c8/o=
X-Received: by 2002:a81:b3c3:0:b0:545:343b:ecba with SMTP id
 r186-20020a81b3c3000000b00545343becbamr1735168ywh.0.1679573638541; Thu, 23
 Mar 2023 05:13:58 -0700 (PDT)
MIME-Version: 1.0
References: <20230316120549.21486-1-rashmi.a@intel.com> <20230316120549.21486-3-rashmi.a@intel.com>
In-Reply-To: <20230316120549.21486-3-rashmi.a@intel.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 23 Mar 2023 13:13:22 +0100
Message-ID: <CAPDyKFqvEOSOYwTTTfMv2jboASgjiw0pX1+yG6Z2TAqSAimQuQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/4] dt-bindings: mmc: Remove bindings for Intel
 Thunder Bay SoC"
To: rashmi.a@intel.com
Cc: michal.simek@xilinx.com, p.zabel@pengutronix.de, linux-mmc@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, vkoul@kernel.org, kishon@kernel.org, 
	yuancan@huawei.com, andriy.shevchenko@linux.intel.com, 
	linux-phy@lists.infradead.org, mgross@linux.intel.com, 
	kris.pan@linux.intel.com, adrian.hunter@intel.com, mahesh.r.vaidya@intel.com, 
	nandhini.srikandan@intel.com, vasavi.v.itha@intel.com, 
	kenchappa.demakkanavar@intel.com, furong.zhou@intel.com, 
	mallikarjunappa.sangannavar@intel.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230323_051400_387251_C4884C83 
X-CRM114-Status: GOOD (  14.52  )
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

On Thu, 16 Mar 2023 at 13:06, <rashmi.a@intel.com> wrote:
>
> From: "A, Rashmi" <rashmi.a@intel.com>
>
> Remove Thunder Bay specific code as the product got cancelled
> and there are no end customers or users.
>
> Signed-off-by: A, Rashmi <rashmi.a@intel.com>
> Reviewed-by: Hunter, Adrian <adrian.hunter@intel.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  .../devicetree/bindings/mmc/arasan,sdhci.yaml | 25 -------------------
>  1 file changed, 25 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/mmc/arasan,sdhci.yaml b/Documentation/devicetree/bindings/mmc/arasan,sdhci.yaml
> index 8296c34cfa00..e8e8b48dc5e5 100644
> --- a/Documentation/devicetree/bindings/mmc/arasan,sdhci.yaml
> +++ b/Documentation/devicetree/bindings/mmc/arasan,sdhci.yaml
> @@ -88,12 +88,6 @@ properties:
>          description:
>            For this device it is strongly suggested to include
>            arasan,soc-ctl-syscon.
> -      - items:
> -          - const: intel,thunderbay-sdhci-5.1   # Intel Thunder Bay eMMC PHY
> -          - const: arasan,sdhci-5.1
> -        description:
> -          For this device it is strongly suggested to include
> -          clock-output-names and '#clock-cells'.
>
>    reg:
>      maxItems: 1
> @@ -309,22 +303,3 @@ examples:
>                     <&scmi_clk KEEM_BAY_PSS_SD0>;
>            arasan,soc-ctl-syscon = <&sd0_phy_syscon>;
>      };
> -
> -  - |
> -    #define EMMC_XIN_CLK
> -    #define EMMC_AXI_CLK
> -    #define TBH_PSS_EMMC_RST_N
> -    mmc@80420000 {
> -          compatible = "intel,thunderbay-sdhci-5.1", "arasan,sdhci-5.1";
> -          interrupts = <GIC_SPI 714 IRQ_TYPE_LEVEL_HIGH>;
> -          reg = <0x80420000 0x400>;
> -          clocks = <&scmi_clk EMMC_XIN_CLK>,
> -                   <&scmi_clk EMMC_AXI_CLK>;
> -          clock-names = "clk_xin", "clk_ahb";
> -          phys = <&emmc_phy>;
> -          phy-names = "phy_arasan";
> -          assigned-clocks = <&scmi_clk EMMC_XIN_CLK>;
> -          clock-output-names = "emmc_cardclock";
> -          resets = <&rst_pss1 TBH_PSS_EMMC_RST_N>;
> -          #clock-cells = <0x0>;
> -    };
> --
> 2.17.1
>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
