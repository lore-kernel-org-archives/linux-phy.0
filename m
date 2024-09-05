Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3836CD5BA9
	for <linux-phy@archiver.kernel.org>; Thu,  5 Sep 2024 11:33:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7TxJ6gjfgZGiTSSPqYljOIW9bzasjw1cOQB3CbHHzNg=; b=MaRk+sVaMHOUzf
	uOuIsNKlMq1BbcwRRnTW4SXJgHncOZH63+jLBRRSDcyZSHW5w2imrBP5pnWSTPX0vfXMhIAfwg/LI
	/SBWgfYr1zkztYSZj+tj47vSpopWa2ZwXJr/eFWN9X2H5m01Cz9SOknJDLHHplGNYKGBgSSBEftQj
	7gDm2Al/1w9U2AmIReKVSJviPhfwF4yMZtz0fUyXzASSKJiwlbtLdDU8GbalNn/GdzfCflnGyvFIb
	OvoxsHBRcavqteDZy5F4XMGIt2lK8DNc9TIgEq7l4aCzdLjucZVba1Zk30yxzNQ6jBEAFRSQkfbU5
	MASca0Il2BoYnF/N+f5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smAkM-000000088ER-1QWL;
	Thu, 05 Sep 2024 11:33:54 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smAif-000000087ic-2E1y;
	Thu, 05 Sep 2024 11:32:11 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 72242A416C8;
	Thu,  5 Sep 2024 11:32:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 28182C4CEC3;
	Thu,  5 Sep 2024 11:31:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725535928;
	bh=vFGbvJgagX7pycnyLSyGLOXNpMsQbEA2VPqFK/LxMVk=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=MH3Vu9NkIaVJTQRY9bsxF4XNon84qFN6htU9jBkoaQ7SFxX7RTdsVJB/Q/qf4NI2A
	 jUp9aP4Y+T27yUjaWKGGauYE7M5Si171BzXITROP99aiQ8I/FOGh9FybE+ftgc8kMR
	 lPovjw3wz7+v4ErmLt0m8Wz+dxEpnNU549csr9aNQPt34wO7Rpg/DgNwoXSdbFUvlI
	 jiWAB75ckfrwgUK30aji2MTlbeLSAwHd5EwIydhzaGmqf/ypZCi5HKnqygFhGx0kU0
	 liahfy3EgC5Qx5ZS9nBBcbxkjJc+Wt7RJJbUhg2pmICo8kAnIZ6yNSY5WzHZztsoqc
	 owEeW++rAZtdA==
Message-ID: <8ad6d902-8d19-49a5-b12d-d0d8b0b17cb6@kernel.org>
Date: Thu, 5 Sep 2024 13:31:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 06/19] dt-bindings: power: rpmpd: Add QCS8300 power
 domains
To: Konrad Dybcio <konradybcio@kernel.org>,
 Jingyi Wang <quic_jingyw@quicinc.com>, Bjorn Andersson
 <andersson@kernel.org>, Mathieu Poirier <mathieu.poirier@linaro.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>,
 Bart Van Assche <bvanassche@acm.org>, Andy Gross <agross@kernel.org>,
 Ulf Hansson <ulf.hansson@linaro.org>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 Joerg Roedel <joro@8bytes.org>, Robert Marko <robimarko@gmail.com>,
 Das Srinagesh <quic_gurus@quicinc.com>, Jassi Brar
 <jassisinghbrar@gmail.com>, Lee Jones <lee@kernel.org>,
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
 <d5e338fe-bd38-49f7-b69f-fc27f9f87495@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konradybcio@kernel.org>
In-Reply-To: <d5e338fe-bd38-49f7-b69f-fc27f9f87495@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240905_043209_822424_864ED71E 
X-CRM114-Status: GOOD (  12.72  )
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

On 5.09.2024 1:30 PM, Konrad Dybcio wrote:
> On 4.09.2024 10:33 AM, Jingyi Wang wrote:
>> From: Shazad Hussain <quic_shazhuss@quicinc.com>
>>
>> Add compatible and constants for the power domains exposed by the RPMH
>> in the Qualcomm QCS8300 platform.
>>
>> Signed-off-by: Shazad Hussain <quic_shazhuss@quicinc.com>
>> Signed-off-by: Tingguo Cheng <quic_tingguoc@quicinc.com>
>> Signed-off-by: Jingyi Wang <quic_jingyw@quicinc.com>
>> ---
>>  .../devicetree/bindings/power/qcom,rpmpd.yaml         |  1 +
>>  include/dt-bindings/power/qcom-rpmpd.h                | 19 +++++++++++++++++++
>>  2 files changed, 20 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/power/qcom,rpmpd.yaml b/Documentation/devicetree/bindings/power/qcom,rpmpd.yaml
>> index 929b7ef9c1bc..be1a9cb71a9b 100644
>> --- a/Documentation/devicetree/bindings/power/qcom,rpmpd.yaml
>> +++ b/Documentation/devicetree/bindings/power/qcom,rpmpd.yaml
>> @@ -32,6 +32,7 @@ properties:
>>            - qcom,msm8998-rpmpd
>>            - qcom,qcm2290-rpmpd
>>            - qcom,qcs404-rpmpd
>> +          - qcom,qcs8300-rpmhpd
>>            - qcom,qdu1000-rpmhpd
>>            - qcom,qm215-rpmpd
>>            - qcom,sa8155p-rpmhpd
>> diff --git a/include/dt-bindings/power/qcom-rpmpd.h b/include/dt-bindings/power/qcom-rpmpd.h
>> index 608087fb9a3d..7dd7b9ebc480 100644
>> --- a/include/dt-bindings/power/qcom-rpmpd.h
>> +++ b/include/dt-bindings/power/qcom-rpmpd.h
>> @@ -4,6 +4,25 @@
>>  #ifndef _DT_BINDINGS_POWER_QCOM_RPMPD_H
>>  #define _DT_BINDINGS_POWER_QCOM_RPMPD_H
>>  
>> +/* QCS8300 Power Domain Indexes */
>> +#define QCS8300_CX	0
>> +#define QCS8300_CX_AO	1
>> +#define QCS8300_DDR	2
>> +#define QCS8300_EBI	3
>> +#define QCS8300_GFX	4
>> +#define QCS8300_LCX	5
>> +#define QCS8300_LMX	6
>> +#define QCS8300_MMCX	7
>> +#define QCS8300_MMCX_AO	8
>> +#define QCS8300_MSS	9
>> +#define QCS8300_MX	10
>> +#define QCS8300_MX_AO	11
>> +#define QCS8300_MXC	12
>> +#define QCS8300_MXC_AO	13
>> +#define QCS8300_NSP0	14
>> +#define QCS8300_NSP1	15
>> +#define QCS8300_XO	16
> 
> Some time ago we moved RPM*h*pd to common defines.. we should
> definitely do the same here. Please reuse the RPMPD_xxx definitions
> from [1] and credit Rohit in the commit message, as he did some
> processing on that to make sure they're ordered based on usage

Oh no, this is actually rpmhpd... drop this patch and use RPMHPD_x
from include/dt-bindings/power/qcom,rpmhpd.h

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
