Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 33145CF9C6F
	for <linux-phy@archiver.kernel.org>; Tue, 24 Sep 2024 14:43:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uqr32kwd+Nl/XiKIC3Vu6QXVuIeUMSUz0eqzIg+vqds=; b=W6lML5baWK3neH
	i3HTqM/Nb/apJ8eiJU3b8ZJAvu+5CKqSu0vjL2vAf7yV9KQMJMU12c1G540kQrooMyEX7GIuj1LVg
	1HIZXy0Bn3ncjoYZocCZ9FWTzuP/8grsK5bmmjODh/6HpUuhM8YdgSfJRhBks+zCXNrTMT5I9kduZ
	+C8q4OKplM/IQykafT1gSP4wwYjfpmzIVovoFZIFwam4MvlKID4SBB5FchNEN73mOU/ZB+QtadEd0
	UihPbOD6CbB4K5WcdMWknSRQMvkm7iQkbiJyLTgW+R54CRrywlyILNsUKN1LSTapYuh/z+A4WwG8y
	rZ/3Z2Gn3ZubIcGgFb7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1st6lQ-00000002a00-3a8T;
	Tue, 24 Sep 2024 14:43:40 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1st6lO-00000002ZzU-0fEw
	for linux-phy@lists.infradead.org;
	Tue, 24 Sep 2024 14:43:39 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 42DA0A42845;
	Tue, 24 Sep 2024 14:43:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E7016C4CEC4;
	Tue, 24 Sep 2024 14:43:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727189017;
	bh=pOaHZ6plz4suPJ1XBTKEDW62gJ6vaUp6YI0Xg5UnEJI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=a0iYzkAlrug1n0IlZLSOlXgS7VzKLvmGRnHbPrFvuk1ebJ2jfkbjAt7RDSNQu8cEY
	 6xew5dKI+u1EluWlLX9zdJayzHIF8FecsHZ0sNBdbHFo0yLbhprKzkGsC9FkzYKMtc
	 wMwBvwnlX3JtI4W6LILP1OBBY58nmCRuFLCRoFjhscmGbdRB0hSx1+mX9G0V54WpIG
	 VcnGgbQr+RU7MzypMtniDWpGsOQzruhSyD74Ffvkepuxk4ZIgJKjIfy4DS/OR4FWEf
	 sCB6d7EwemR6SE3FQApy6cvIKM7crIC0laMKlXN2DWgsGBmmcFcLNPj0lUU5xln6ZN
	 uDsypDFZm0XPw==
Received: from johan by theta with local (Exim 4.98)
	(envelope-from <johan@kernel.org>)
	id 1st6lJ-000000001KR-1x2Y;
	Tue, 24 Sep 2024 16:43:33 +0200
Date: Tue, 24 Sep 2024 16:43:33 +0200
From: Johan Hovold <johan@kernel.org>
To: Qiang Yu <quic_qianyu@quicinc.com>
Cc: manivannan.sadhasivam@linaro.org, vkoul@kernel.org, kishon@kernel.org,
	robh@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, mturquette@baylibre.com,
	sboyd@kernel.org, abel.vesa@linaro.org, quic_msarkar@quicinc.com,
	quic_devipriy@quicinc.com, dmitry.baryshkov@linaro.org,
	kw@linux.com, lpieralisi@kernel.org, neil.armstrong@linaro.org,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-clk@vger.kernel.org
Subject: Re: [PATCH v4 6/6] arm64: dts: qcom: x1e80100: Add support for PCIe3
 on x1e80100
Message-ID: <ZvLQFSjwR-TvHbm_@hovoldconsulting.com>
References: <20240924101444.3933828-1-quic_qianyu@quicinc.com>
 <20240924101444.3933828-7-quic_qianyu@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240924101444.3933828-7-quic_qianyu@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240924_074338_313139_16D25FA2 
X-CRM114-Status: UNSURE (   9.68  )
X-CRM114-Notice: Please train this message.
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

On Tue, Sep 24, 2024 at 03:14:44AM -0700, Qiang Yu wrote:
> Describe PCIe3 controller and PHY. Also add required system resources like
> regulators, clocks, interrupts and registers configuration for PCIe3.

> @@ -2907,6 +2907,208 @@ mmss_noc: interconnect@1780000 {
>  			#interconnect-cells = <2>;
>  		};
>  
> +		pcie3: pcie@1bd0000 {
> +			device_type = "pci";
> +			compatible = "qcom,pcie-x1e80100";

> +			interrupts = <GIC_SPI 158 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 166 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 769 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 836 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 671 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 200 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 218 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 219 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 121 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-names = "msi0",
> +					  "msi1",
> +					  "msi2",
> +					  "msi3",
> +					  "msi4",
> +					  "msi5",
> +					  "msi6",
> +					  "msi7",
> +					  "global";

This ninth "global" interrupt is not described by the bindings, which
would also need to be updated. What is it used for?

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
