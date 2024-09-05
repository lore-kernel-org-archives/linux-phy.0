Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39D17CD5BAA
	for <linux-phy@archiver.kernel.org>; Thu,  5 Sep 2024 11:32:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+/zr7rq12vE2L+TU9fA8e4mgp4wA2qsIeelI/wlmFMo=; b=hOQVovUABKxfKg
	JJ4Bs4XFOc4geeoQpG48OUQTN4gqINcEbLJg/x+r3qaw0qFtMKJQWF3yZtekKC1af3xKE9WCFl7Li
	2tBIo/U73bHgDvCC6c+eGZ62iXOcn/EWoYIIl4xvxjra4T+T3+Q3qUc8GsWqviscm+UIwrkI94XVz
	iCggb5ujyOzfgay/4V/VJqVmRI+uRm2fAtKxOXvx/1pxyik0ZhnnuE9myOVHekeShsSEOEz4Xe/N3
	fz7jqAG5g7ysqHx1x8+N6vHR/utn3my4WGDuqevGOySsmlbvQ2kaKPxVCeaJR6LCLqYpoeG/gZ+Sj
	wxpJEUmT+0mzH9uQYRbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smAjQ-000000087zZ-3BVf;
	Thu, 05 Sep 2024 11:32:56 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smAha-000000087Up-1HZO;
	Thu, 05 Sep 2024 11:31:03 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 3817C5C5C8D;
	Thu,  5 Sep 2024 11:30:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3E207C4CEC3;
	Thu,  5 Sep 2024 11:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725535860;
	bh=aTcY6lnCeCXuN+hBR/lTjApexCcG5nl9Skw7Ca45bF0=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=X7GKr78v0KZSNjtPief4MGOvOX4Z7dQlMmWRBIpTU1p13LSzit5Su1pTaielep1O7
	 nFVcp3oxh6jjpSMAIINYxPiRmE+AKjLiCo1KluI7uRmpH8IM8bjm+5uOgWvRRrW34Q
	 SEIl6tqmJE+99KgmZZBjoJXm5YYjbvB9/+xlkE6SVOSYibxY33HZlmGVFMhg/ePM25
	 AqHzGdkKE2cumqW4AGDK7UMY1dK/zM/1MfbPQGBPXFfTi/LMxxRJ22WQ+u97zxcsUS
	 PT/P9fsSxWW9VT8MvPSPcrSawtpyg+Eaqh7U5bZdYSpr5RcoMaiZaDa94gU6n0rCC2
	 J4BIvJw8awzOQ==
Message-ID: <d5e338fe-bd38-49f7-b69f-fc27f9f87495@kernel.org>
Date: Thu, 5 Sep 2024 13:30:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 06/19] dt-bindings: power: rpmpd: Add QCS8300 power
 domains
To: Jingyi Wang <quic_jingyw@quicinc.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>,
 Bart Van Assche <bvanassche@acm.org>, Andy Gross <agross@kernel.org>,
 Ulf Hansson <ulf.hansson@linaro.org>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 Joerg Roedel <joro@8bytes.org>, Konrad Dybcio <konradybcio@kernel.org>,
 Robert Marko <robimarko@gmail.com>, Das Srinagesh <quic_gurus@quicinc.com>,
 Jassi Brar <jassisinghbrar@gmail.com>, Lee Jones <lee@kernel.org>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-scsi@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 iommu@lists.linux.dev, Shazad Hussain <quic_shazhuss@quicinc.com>,
 Tingguo Cheng <quic_tingguoc@quicinc.com>
References: <20240904-qcs8300_initial_dtsi-v1-0-d0ea9afdc007@quicinc.com>
 <20240904-qcs8300_initial_dtsi-v1-6-d0ea9afdc007@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konradybcio@kernel.org>
In-Reply-To: <20240904-qcs8300_initial_dtsi-v1-6-d0ea9afdc007@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240905_043102_524564_244683DA 
X-CRM114-Status: GOOD (  13.60  )
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

On 4.09.2024 10:33 AM, Jingyi Wang wrote:
> From: Shazad Hussain <quic_shazhuss@quicinc.com>
> 
> Add compatible and constants for the power domains exposed by the RPMH
> in the Qualcomm QCS8300 platform.
> 
> Signed-off-by: Shazad Hussain <quic_shazhuss@quicinc.com>
> Signed-off-by: Tingguo Cheng <quic_tingguoc@quicinc.com>
> Signed-off-by: Jingyi Wang <quic_jingyw@quicinc.com>
> ---
>  .../devicetree/bindings/power/qcom,rpmpd.yaml         |  1 +
>  include/dt-bindings/power/qcom-rpmpd.h                | 19 +++++++++++++++++++
>  2 files changed, 20 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/power/qcom,rpmpd.yaml b/Documentation/devicetree/bindings/power/qcom,rpmpd.yaml
> index 929b7ef9c1bc..be1a9cb71a9b 100644
> --- a/Documentation/devicetree/bindings/power/qcom,rpmpd.yaml
> +++ b/Documentation/devicetree/bindings/power/qcom,rpmpd.yaml
> @@ -32,6 +32,7 @@ properties:
>            - qcom,msm8998-rpmpd
>            - qcom,qcm2290-rpmpd
>            - qcom,qcs404-rpmpd
> +          - qcom,qcs8300-rpmhpd
>            - qcom,qdu1000-rpmhpd
>            - qcom,qm215-rpmpd
>            - qcom,sa8155p-rpmhpd
> diff --git a/include/dt-bindings/power/qcom-rpmpd.h b/include/dt-bindings/power/qcom-rpmpd.h
> index 608087fb9a3d..7dd7b9ebc480 100644
> --- a/include/dt-bindings/power/qcom-rpmpd.h
> +++ b/include/dt-bindings/power/qcom-rpmpd.h
> @@ -4,6 +4,25 @@
>  #ifndef _DT_BINDINGS_POWER_QCOM_RPMPD_H
>  #define _DT_BINDINGS_POWER_QCOM_RPMPD_H
>  
> +/* QCS8300 Power Domain Indexes */
> +#define QCS8300_CX	0
> +#define QCS8300_CX_AO	1
> +#define QCS8300_DDR	2
> +#define QCS8300_EBI	3
> +#define QCS8300_GFX	4
> +#define QCS8300_LCX	5
> +#define QCS8300_LMX	6
> +#define QCS8300_MMCX	7
> +#define QCS8300_MMCX_AO	8
> +#define QCS8300_MSS	9
> +#define QCS8300_MX	10
> +#define QCS8300_MX_AO	11
> +#define QCS8300_MXC	12
> +#define QCS8300_MXC_AO	13
> +#define QCS8300_NSP0	14
> +#define QCS8300_NSP1	15
> +#define QCS8300_XO	16

Some time ago we moved RPM*h*pd to common defines.. we should
definitely do the same here. Please reuse the RPMPD_xxx definitions
from [1] and credit Rohit in the commit message, as he did some
processing on that to make sure they're ordered based on usage

Konrad

[1] https://lore.kernel.org/all/1688647793-20950-2-git-send-email-quic_rohiagar@quicinc.com/

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
