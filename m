Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C2BBEC02198
	for <linux-phy@archiver.kernel.org>; Sat,  8 Feb 2025 22:06:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=haAU+8BhWsWfTqlCL32kvFrZ+/QuRZ6u5WUiqezfjh0=; b=XPG0+4QT3xMiyc
	umr/s0U4tQeGnspvtjS7RxOBN22PQoa9cE1J4G0qSeRRkNfDz2/OdgX9JsSVV0QN0O4fnz4p3+7co
	bMRSTGTBruav6A8bTs1AkyFpiQH68ByNoaWwdCXlkgMBVpssqrstr7i5wCx/G5MK5gHndLjLr1NGV
	vzrYJhlwKodAT9oRaB3duncuIaC18CmuXSXYa6SLds07xp6b9y2A9fBcca/9JbkgpScfZwfNVuojA
	bFrcRbqfx+C5m/2xKgUL5XNVI+KsVI0SQXycvqvl1d/ociRcxkOFfB4hwk11sJwAFTHCk9zzdiMB+
	oJp/5rXELQld5oIjyNfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tgsyJ-0000000Dci4-2d5U;
	Sat, 08 Feb 2025 22:06:43 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tgsyG-0000000Dch6-37Sn
	for linux-phy@lists.infradead.org;
	Sat, 08 Feb 2025 22:06:42 +0000
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-53e3a37ae07so3550935e87.3
        for <linux-phy@lists.infradead.org>; Sat, 08 Feb 2025 14:06:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739052397; x=1739657197; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=LrS7fwaYNFpy0Tlho86QxjG6trr99uIwcC04J7bzN3U=;
        b=jboSBuVwca5bjY7roRRR6aAmMQ22mWavNaodN0wLjRTTJFcFTFvGSTnMBWezEg6f1/
         hWi6ZZ3tGSWiUsR2Srw28R225gCG1psG8uW8QUxXyD2xhBR3tiasW4rYAZlsvZdPBY3U
         cBeJ/4g0AJu8d9vmHKMv2CM4kugeAE4GNviA5DRdcE3hs58az9k28WHPNiwaxuQ8QoHt
         N3UVcNJiebBnvc2N12EOyjnOYhBEPa9ggmZjxVlFzUqCbHcVMq3bVo0aFtnQ9MKmpTee
         zX3/ihfVjPYR6nsXipIpNCeWBtB/0p8ZdLc6oss82I06VsZJWzfC7aLq+s5sCFEdQq00
         GkJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739052397; x=1739657197;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LrS7fwaYNFpy0Tlho86QxjG6trr99uIwcC04J7bzN3U=;
        b=I0hS7MPZTrCyH/ADgIH0cwnf10BQbIf4lqZUWUwchwuZSJUdYglyR0+aprjbKWEDFU
         C5EvTgOdLUI3jqDz2EqwcGLhSegIrlkuVoBu98clPD26atT77HKzyz3fTODAWQ95KAoU
         49LlI8hOTBihtW3VXA5VHllFNYQmRPJYX0QuNVA879yVyFASUmYBp4a1+ojpHjftBUPP
         9AC7OwLt0TgNWJTRBJndOMcHO2C+PJHFJEm0eFo4M8XQSD/Y6NYd2f1INvbxIAq1cu0W
         KJhBzEJ3T89SyskHY/5qIZIsKHeh10LejNOjfizQbzZ6CiBZzG7fLgVwa1kmu47zv7PJ
         H6ig==
X-Forwarded-Encrypted: i=1; AJvYcCWgWs2Nm6r/1pyo8XQPqKN2ljHxGnxxHBfavagGhNvvb4hPZIJDyDwyzkUmKuJocggiLSZ90bE1QrI=@lists.infradead.org
X-Gm-Message-State: AOJu0YzmphVLzzdbxWRPOeDOPt1wUad6lAFVpx/0qsnwruxS5JznO8hf
	JIE++FacLHs/tWeAmm2fsiTRm1hCXILAd76VsuVnV9kRqXVCgFhOlQy+RX6zZXw=
X-Gm-Gg: ASbGnctqSamXmwbxt/7rBNSFKKdb7Zr/fo4Z1VmLueKquT0pbXiTGFDDTz9nVKxU8gn
	iaEDD36fzZZzOHudpSrYDSJCyBZIGg9gFj//hcpoqXafaNmV4EhehhCt2eKKLWFBIiWf9MLJwD9
	kmu6GCTbkAmMD465P0DR32D6IOLyv/z4sWBYDVwUhNNEGq8AlliaYTzezswQtGy/nk9eBY9MsdF
	DVv16Wa7pkTInG+nwykMHHty31FPme13xPPLzZ2/jQloa+HYjYN4aJBeHHnePC5q01Wz6V0qyDJ
	yI6TAydcmLRy4N42KAsZmUkKXrs9tvI6HLkuUeEp3dqEkgonFoswKexrR2h7hobQGGjCUn0=
X-Google-Smtp-Source: AGHT+IHD3w+RD2uIY/nbdfmmcQb7IkradBev5VfMYzeQzDJnvkdElXfAgc+erv7xrm5uRwc1zCnFQA==
X-Received: by 2002:ac2:4ed0:0:b0:542:9883:26f with SMTP id 2adb3069b0e04-54414aee2c3mr2164430e87.50.1739052397255;
        Sat, 08 Feb 2025 14:06:37 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54508f5617asm43871e87.170.2025.02.08.14.06.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 08 Feb 2025 14:06:36 -0800 (PST)
Date: Sun, 9 Feb 2025 00:06:34 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Nitin Rawat <quic_nitirawa@quicinc.com>
Cc: Melody Olvera <quic_molvera@quicinc.com>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>, 
	Bart Van Assche <bvanassche@acm.org>, Bjorn Andersson <andersson@kernel.org>, 
	Andy Gross <agross@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>, Trilok Soni <quic_tsoni@quicinc.com>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org, 
	Manish Pandey <quic_mapa@quicinc.com>
Subject: Re: [PATCH 4/5] arm64: dts: qcom: sm8750: Add UFS nodes for SM8750
 SoC
Message-ID: <ferdaevlfrpf2ewzcct7mqyxltvmt6aaar4fujxfehrmizm3qw@aaroprnpwlxq>
References: <20250113-sm8750_ufs_master-v1-0-b3774120eb8c@quicinc.com>
 <20250113-sm8750_ufs_master-v1-4-b3774120eb8c@quicinc.com>
 <vifyx2lcaq3lhani5ovmxxqsknhkx24ggbu7sxnulrxv4gxzsk@bvmk3znm2ivl>
 <be8a4f65-3b36-4740-a4f7-312126cfd547@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <be8a4f65-3b36-4740-a4f7-312126cfd547@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250208_140640_791357_67E4DA89 
X-CRM114-Status: GOOD (  27.04  )
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

On Sun, Feb 09, 2025 at 12:47:56AM +0530, Nitin Rawat wrote:
> 
> 
> On 1/14/2025 4:22 PM, Dmitry Baryshkov wrote:
> > On Mon, Jan 13, 2025 at 01:46:27PM -0800, Melody Olvera wrote:
> > > From: Nitin Rawat <quic_nitirawa@quicinc.com>
> > > 
> > > Add UFS host controller and PHY nodes for SM8750 SoC.
> > > 
> > > Co-developed-by: Manish Pandey <quic_mapa@quicinc.com>
> > > Signed-off-by: Manish Pandey <quic_mapa@quicinc.com>
> > > Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
> > > Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
> > > ---
> > >   arch/arm64/boot/dts/qcom/sm8750.dtsi | 81 ++++++++++++++++++++++++++++++++++++
> > >   1 file changed, 81 insertions(+)
> > > 
> > > diff --git a/arch/arm64/boot/dts/qcom/sm8750.dtsi b/arch/arm64/boot/dts/qcom/sm8750.dtsi
> > > index 3bbd7d18598ee0a3a0d5130c03a3166e1fc14d82..20690c102244b337847a6482dd83c37e19746de9 100644
> > > --- a/arch/arm64/boot/dts/qcom/sm8750.dtsi
> > > +++ b/arch/arm64/boot/dts/qcom/sm8750.dtsi
> > > @@ -13,6 +13,7 @@
> > >   #include <dt-bindings/power/qcom,rpmhpd.h>
> > >   #include <dt-bindings/power/qcom-rpmpd.h>
> > >   #include <dt-bindings/soc/qcom,rpmh-rsc.h>
> > > +#include <dt-bindings/gpio/gpio.h>
> > >   / {
> > >   	interrupt-parent = <&intc>;
> > > @@ -1939,6 +1940,86 @@ mmss_noc: interconnect@1780000 {
> > >   			#interconnect-cells = <2>;
> > >   		};
> > > +		ufs_mem_phy: phy@1d80000 {
> > > +			compatible = "qcom,sm8750-qmp-ufs-phy";
> > > +			reg = <0x0 0x01d80000 0x0 0x2000>;
> > > +
> > > +			clocks = <&rpmhcc RPMH_CXO_CLK>,
> > > +				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,
> > > +				 <&tcsrcc TCSR_UFS_CLKREF_EN>;
> > > +			clock-names =	"ref",
> > > +					"ref_aux",
> > > +					"qref";
> > > +
> > > +			resets = <&ufs_mem_hc 0>;
> > > +			reset-names = "ufsphy";
> > > +
> > > +			power-domains = <&gcc GCC_UFS_MEM_PHY_GDSC>;
> > > +
> > > +			#clock-cells = <1>;
> > > +			#phy-cells = <0>;
> > > +
> > > +			status = "disabled";
> > > +		};
> > > +
> > > +		ufs_mem_hc: ufs@1d84000 {
> > > +			compatible = "qcom,sm8750-ufshc", "qcom,ufshc", "jedec,ufs-2.0";
> > > +			reg = <0x0 0x01d84000 0x0 0x3000>;
> > > +
> > > +			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>;
> > > +
> > > +			clocks = <&gcc GCC_UFS_PHY_AXI_CLK>,
> > > +				 <&gcc GCC_AGGRE_UFS_PHY_AXI_CLK>,
> > > +				 <&gcc GCC_UFS_PHY_AHB_CLK>,
> > > +				 <&gcc GCC_UFS_PHY_UNIPRO_CORE_CLK>,
> > > +				 <&rpmhcc RPMH_LN_BB_CLK3>,
> > > +				 <&gcc GCC_UFS_PHY_TX_SYMBOL_0_CLK>,
> > > +				 <&gcc GCC_UFS_PHY_RX_SYMBOL_0_CLK>,
> > > +				 <&gcc GCC_UFS_PHY_RX_SYMBOL_1_CLK>;
> > > +			clock-names = "core_clk",
> > > +				      "bus_aggr_clk",
> > > +				      "iface_clk",
> > > +				      "core_clk_unipro",
> > > +				      "ref_clk",
> > > +				      "tx_lane0_sync_clk",
> > > +				      "rx_lane0_sync_clk",
> > > +				      "rx_lane1_sync_clk";
> > > +			freq-table-hz = <100000000 403000000>,
> > > +					<0 0>,
> > > +					<0 0>,
> > > +					<100000000 403000000>,
> > > +					<100000000 403000000>,
> > > +					<0 0>,
> > > +					<0 0>,
> > > +					<0 0>;
> > 
> > Use OPP table instead
> 
> Currently, OPP is not enabled in the device tree for any previous targets. I

Excuse me? ufs_opp_table is present on SM8250, SM8550 and SDM845 (and
QCS615). So this is not correct

> plan to enable OPP in a separate patch at a later stage. This is because
> there is an ongoing patch in the upstream that aims to enable multiple-level
> clock scaling using OPP, which may introduce changes to the device tree
> entries. To avoid extra efforts, I intend to enable OPP once that patch is
> merged.

Whatever changes are introduced, old DT must still continue to work.
There is no reason to use legacy freq-table-hz if you can use OPP table.

> Please let me know if you have any concerns.
> 
> 
> > 
> > > +
> > > +			resets = <&gcc GCC_UFS_PHY_BCR>;
> > > +			reset-names = "rst";
> > > +
> > > +
> > > +			interconnects = <&aggre1_noc MASTER_UFS_MEM QCOM_ICC_TAG_ALWAYS
> > > +					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
> > > +					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
> > > +					 &config_noc SLAVE_UFS_MEM_CFG QCOM_ICC_TAG_ALWAYS>;
> > 
> > Shouldn't cpu-ufs be ACTIVE_ONLY?
> 
> As per ufs driver implementation, Icc voting from ufs driver is removed as
> part of low power mode (suspend or clock gating) and voted again in
> resume/ungating path. Hence TAG_ALWAYS will have no power concern.
> All previous targets have the same configuration.

arch/arm64/boot/dts/qcom/qcs615.dtsi:                                    &config_noc SLAVE_UFS_MEM_CFG QCOM_ICC_TAG_ACTIVE_ONLY>;

It might be a mistake for that target though. Your explanation sounds
fine to me.

> 
> Thanks,
> Nitin
> 
> 
> > 
> > > +			interconnect-names = "ufs-ddr",
> > > +					     "cpu-ufs";
> > > +
> > > +			power-domains = <&gcc GCC_UFS_PHY_GDSC>;
> > > +			required-opps = <&rpmhpd_opp_nom>;
> > > +
> > > +			iommus = <&apps_smmu 0x60 0>;
> > > +			dma-coherent;
> > > +
> > > +			lanes-per-direction = <2>;
> > > +
> > > +			phys = <&ufs_mem_phy>;
> > > +			phy-names = "ufsphy";
> > > +
> > > +			#reset-cells = <1>;
> > > +
> > > +			status = "disabled";
> > > +		};
> > > +
> > >   		tcsr_mutex: hwlock@1f40000 {
> > >   			compatible = "qcom,tcsr-mutex";
> > >   			reg = <0x0 0x01f40000 0x0 0x20000>;
> > > 
> > > -- 
> > > 2.46.1
> > > 
> > 
> 
> 
> -- 
> linux-phy mailing list
> linux-phy@lists.infradead.org
> https://lists.infradead.org/mailman/listinfo/linux-phy

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
