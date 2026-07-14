Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B58CAC43458
	for <linux-phy@archiver.kernel.org>; Tue, 14 Jul 2026 21:58:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PkOX2oV7w0+F/RW+wVU2cGKWibunqv3BnjZneh/+X5k=; b=lxFnbCKRluOPGZ
	SxS5pMvOdwTNWfGUzdD7Nu1LR6WuSvk5JiZCEWLHAFy7gwFiABG6IuhVExsMtV/sq/Cf5HWkClYvY
	oHldIhEyfJIsBAdknnCRSB/ApjsGGPu5RF3JAt4fqfVmuRXfiML13EaGDqr6VVShhZkWwYlJf3r4f
	ieAmk98Tr89EmIrwboQYUP8BcLYoKSZE+GXD75S8TUWlncx1Lb0DpNCBxDjeVN/yOYJS++cDasP/E
	IkklmrrJFlodc6vOQRsULuiwvCu0zA0HJd7QSM4aEmEHSSUgqQBe9uRRJ07LFGc9910iGu/qX6+Vv
	9PUZZzCb1gRei8qzm8sA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjl9P-0000000DNjU-0mW4;
	Tue, 14 Jul 2026 21:58:51 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjl9N-0000000DNjK-44F6
	for linux-phy@lists.infradead.org;
	Tue, 14 Jul 2026 21:58:50 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id E85E5601ED;
	Tue, 14 Jul 2026 21:58:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8307E1F000E9;
	Tue, 14 Jul 2026 21:58:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784066327;
	bh=jIilpnqGzj8khC1MQLy4UAKt3Fn3dMi3MkFbuxyLZ9w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Dt4jxkA4TwqZ1+6gdpqQXr0td3yEo2ANQRTYH4pFYL/oWQgZtzgthWkPKSwydZG14
	 hu360Yk5Z3QM4gFEYxmrmJh2wbsiWQb8kcUPaO/RUPNv6ljfTE+TNgVy2gLCOUWWBk
	 +0eWrDG+UJT3sGaUT+YJw6/sYBEC0D/8Z0InhL8k7LDIQ/w041PIu/5S6b8SK+wbg0
	 cNlK0N79w9kBiOwmOy+HCaYGi3/C7pIcu+bbYn7hGw2IATAAoM2XHwrbnRwMfaBw92
	 YkrAl4N5tIKo2dj04VmE/gGR/BsaiG7JIr6iUd9PFDZpw0jKi6kzGFE1ngSzI/TqdP
	 ReYiWXDcJVTig==
Date: Tue, 14 Jul 2026 16:58:46 -0500
From: Rob Herring <robh@kernel.org>
To: Komal Bajaj <komal.bajaj@oss.qualcomm.com>,
	Bjorn Andersson <andersson@kernel.org>
Cc: Konrad Dybcio <konradybcio@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	Ulf Hansson <ulfh@kernel.org>, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-mmc@vger.kernel.org,
	monish.chunara@oss.qualcomm.com,
	Imran Shaik <imran.shaik@oss.qualcomm.com>,
	Monish Chunara <quic_mchunara@quicinc.com>,
	Rakesh Kota <rakesh.kota@oss.qualcomm.com>,
	Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>,
	Sneh Mankad <sneh.mankad@oss.qualcomm.com>,
	Vishnu Santhosh <vishnu.santhosh@oss.qualcomm.com>,
	Xueyao An <xueyao.an@oss.qualcomm.com>,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v7 2/5] arm64: dts: qcom: Introduce Shikra SoC base dtsi
Message-ID: <20260714215846.GA2932445-robh@kernel.org>
References: <20260708-shikra-dt-v7-0-977b65a300c1@oss.qualcomm.com>
 <20260708-shikra-dt-v7-2-977b65a300c1@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260708-shikra-dt-v7-2-977b65a300c1@oss.qualcomm.com>
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

On Wed, Jul 08, 2026 at 05:47:31PM +0530, Komal Bajaj wrote:
> Add initial device tree support for the Qualcomm Shikra SoC,
> an IoT-focused platform built around a heterogeneous CPU cluster
> (Cortex-A55 + Cortex-A78C) with RPM-based power and clock management.
> 
> Enable support for the following peripherals:
>   - CPU nodes
>   - Global Clock Controller (GCC)
>   - RPM-based clock controller (RPMCC) and power domains (RPMPD)
>   - Interrupt controller
>   - Top Level Mode Multiplexer (TLMM)
>   - Debug UART
>   - eMMC host controller
>   - System timer and watchdog
> 
> Co-developed-by: Imran Shaik <imran.shaik@oss.qualcomm.com>
> Signed-off-by: Imran Shaik <imran.shaik@oss.qualcomm.com>
> Co-developed-by: Monish Chunara <quic_mchunara@quicinc.com>
> Signed-off-by: Monish Chunara <quic_mchunara@quicinc.com>
> Co-developed-by: Rakesh Kota <rakesh.kota@oss.qualcomm.com>
> Signed-off-by: Rakesh Kota <rakesh.kota@oss.qualcomm.com>
> Co-developed-by: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
> Signed-off-by: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
> Co-developed-by: Sneh Mankad <sneh.mankad@oss.qualcomm.com>
> Signed-off-by: Sneh Mankad <sneh.mankad@oss.qualcomm.com>
> Co-developed-by: Vishnu Santhosh <vishnu.santhosh@oss.qualcomm.com>
> Signed-off-by: Vishnu Santhosh <vishnu.santhosh@oss.qualcomm.com>
> Co-developed-by: Xueyao An <xueyao.an@oss.qualcomm.com>
> Signed-off-by: Xueyao An <xueyao.an@oss.qualcomm.com>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Komal Bajaj <komal.bajaj@oss.qualcomm.com>

So none of these people nor the maintainers managed to run dtbs_check on 
this?

All of these show up as undocumented in linux-next now:

     'qcom,scm-shikra', 'qcom,scm'
     'qcom,shikra-imem', 'mmio-sram'
     'qcom,shikra-tcsr', 'syscon'

Please fix or drop this series.

I'm tired of chasing down new QCom DT warnings.

Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
