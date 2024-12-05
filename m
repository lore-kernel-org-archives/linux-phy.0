Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 853DEE7716E
	for <linux-phy@archiver.kernel.org>; Thu,  5 Dec 2024 21:21:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i43EjEQLjtkoc79UVXoS5KIAx0wc4evs1mLgOlSKESs=; b=Bq7DSSnmGFFDON
	ZDW1wkehqVlOqYbpkLgfQAqYM1K5HZgMPoMwhk7RrNGWMcN3KZ/vGr3rYPs1sMnrO82sw8arNMGaK
	TVZBezjFztaUbUPuCuQV7hHSyNtF0zhBoJ/hUSlnFShZoOXK0Ja8Bc7wR0xkbZWw5hRQgccB2R+Ec
	X1sl8rx1RJTJgos9l3QpAZppLTCE3Tj1CX5Dwu5KWc+yH2m0T+zM9pBc21X8ZetFg2At4HCphhqKb
	Dnk2GL6QiUCEogKFX/ETOgIUzuo6pJIcASplGPorLzmgHN3z6nrsfqeojtgFQHFjjTfcdPFsaZAiE
	3CYqqJ+EMezobGemzbfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tJJI6-0000000HOGt-1yis;
	Thu, 05 Dec 2024 21:21:42 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tJJI4-0000000HOGP-3ff4
	for linux-phy@lists.infradead.org;
	Thu, 05 Dec 2024 21:21:42 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B5HaGDg003725
	for <linux-phy@lists.infradead.org>; Thu, 5 Dec 2024 21:21:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	9wSKuFAw0pvLNlawQARI7JAUgvlhJLy4giEcuIJ/xFE=; b=c72aI9GE3h1hgefA
	yh2mdztFSppkAR1fa4zj5DaMbyqGfRj0jPqj8JIhkp99f1WQXpukx4oahsSqLJYu
	7M7osg8nhVjzrMu1Wv6eAPeNbQ6Ky5xYBnw1Dsq2l2u8BPAWVWdTrkrNpUR/HCnB
	d6YLbqz3zE5ij5+6ke9BtAcA4qyoiZtdmvVFK3nbr9cDaovu5ezWHcRdpeFjSC2b
	M1kAiz5sKqEPwkkCMs5pql4RVnVSd5YSVMdWYBcLKxnRJcSKaB/XqvOCd2EleTK8
	lEMTH0H/bvkjqWnXB5e7vrXL5KUbCGqept2xv9qktFLzsQTtk+/tKfLlki45OBSn
	q6/CiQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43ba0khrth-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 05 Dec 2024 21:21:39 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7b6635bf76eso7763685a.0
        for <linux-phy@lists.infradead.org>; Thu, 05 Dec 2024 13:21:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733433698; x=1734038498;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9wSKuFAw0pvLNlawQARI7JAUgvlhJLy4giEcuIJ/xFE=;
        b=VDWBP6qGIEs6pp1FhZUdqpASHsEBiSCWkhGplwma4lzkUo82NlOm7rPNcroOhw8j4M
         uhUnDydgPJ2UbZKLwDwIE9bR9/xhxKbn16mutQWc2xMkhL4OSUI6CwE4oXf5UObN+NGE
         i80d9gtBXE/Z7RmLs0zPVWCVcY72yLk5QHv/56u1irimaWNVtb3ZDegT7krn7yEaQLE0
         lZE9rT3bg43nmgei74+zXyXybPZouCkma+3mwpK4uzxHBpc+Hr7CrvAsvO2zL575S+/A
         xGJVqXPy4sfyxdWO86VZcZmOdJft//8N/AccaBubmohdhXm8LeUJzEcsy+WTN7CNvds+
         QVDQ==
X-Forwarded-Encrypted: i=1; AJvYcCXVfAvAX0uyDhrN9kwrWDB2pRrKz93+IMM0SFlwOgsLPjxO8u2Hin59DgR2D5RCy78Wdtnpl1zV1VE=@lists.infradead.org
X-Gm-Message-State: AOJu0YwSCEKCgd5y930JRe1r75G5Upm8jMBOautcfnaIrO/D+7vTqehM
	WxXJI+sbl06D17Rhlv76LdfhhM9d07gmgml0T+9j3/kyreXKocaI4qqZkOzzOV1EnJllaXbrN11
	FGp8R6c1YSkG4OjQh4ReR8hxLCRrBA4ov4YxVRJiTAYjmJ3UNpwtNWg4DuENzZWHz
X-Gm-Gg: ASbGnctpVzc3+Eqovi+c/GlO3m/kipYUcxDVVqlomWd32q3znwl5VCTdOzdSNXKp1+x
	l8OYhBNS+ukIW/eqzxAkxNJ07u7tEVUaG7L3ti3MRfN5hIpui4GTaP4qbqs8Yr1BXEHapaeY0X6
	/2JF/CnpONgNvDJEWbMKslOJYJ07HDsxbLoBdsI1RjVlhJ7V3OZepG5qMVqrYeTGLY223qJaVke
	xqjmr7MeJtQ7NiG/3sM6EY2GbgMcdtkQKWz9NkEF0/3fOX6sx4HmhNC+E1I1rp9Hg/femKvqNNx
	S0T4uOPMpA3Ambtz0XMTuBRkD9imYBM=
X-Received: by 2002:a05:620a:40d1:b0:7b3:2107:2eef with SMTP id af79cd13be357-7b6bcbb4a89mr43687585a.16.1733433698178;
        Thu, 05 Dec 2024 13:21:38 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGP2eroqw5GjfjqU4teCdxLTjTM2852lowFJw5191BqDO0Ct4lPnhyAhDYPqgGpdYtEezYmZg==
X-Received: by 2002:a05:620a:40d1:b0:7b3:2107:2eef with SMTP id af79cd13be357-7b6bcbb4a89mr43685085a.16.1733433697790;
        Thu, 05 Dec 2024 13:21:37 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa625e4dbfesm142253866b.6.2024.12.05.13.21.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Dec 2024 13:21:37 -0800 (PST)
Message-ID: <d4f7ca97-b37e-4b8f-918c-9976e4a9cf41@oss.qualcomm.com>
Date: Thu, 5 Dec 2024 22:21:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/3] arm64: dts: qcom: qcs615: add UFS node
To: Xin Liu <quic_liuxin@quicinc.com>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Bart Van Assche <bvanassche@acm.org>, Andy Gross <agross@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, quic_jiegan@quicinc.com,
        quic_aiquny@quicinc.com, quic_tingweiz@quicinc.com,
        quic_sayalil@quicinc.com
References: <20241122064428.278752-1-quic_liuxin@quicinc.com>
 <20241122064428.278752-3-quic_liuxin@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241122064428.278752-3-quic_liuxin@quicinc.com>
X-Proofpoint-ORIG-GUID: N4U3Lff-NnN0V5Q-kIbzhYrUQ05YQNNA
X-Proofpoint-GUID: N4U3Lff-NnN0V5Q-kIbzhYrUQ05YQNNA
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 suspectscore=0
 mlxscore=0 bulkscore=0 mlxlogscore=999 spamscore=0 malwarescore=0
 impostorscore=0 lowpriorityscore=0 clxscore=1015 priorityscore=1501
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412050159
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241205_132140_921208_85BE567F 
X-CRM114-Status: GOOD (  10.80  )
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

On 22.11.2024 7:44 AM, Xin Liu wrote:
> From: Sayali Lokhande <quic_sayalil@quicinc.com>
> 
> Add the UFS Host Controller node and its PHY for QCS615 SoC.
> 
> Signed-off-by: Sayali Lokhande <quic_sayalil@quicinc.com>
> Co-developed-by: Xin Liu <quic_liuxin@quicinc.com>
> Signed-off-by: Xin Liu <quic_liuxin@quicinc.com>
> ---

[...]

> +
> +			operating-points-v2 = <&ufs_opp_table>;
> +			interconnects = <&aggre1_noc MASTER_UFS_MEM QCOM_ICC_TAG_ALWAYS
> +					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
> +					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
> +					 &config_noc SLAVE_UFS_MEM_CFG QCOM_ICC_TAG_ALWAYS>;

QCOM_ICC_TAG_ACTIVE_ONLY for the cpu path

> +			interconnect-names = "ufs-ddr",
> +					     "cpu-ufs";
> +
> +			power-domains = <&gcc UFS_PHY_GDSC>;
> +			required-opps = <&rpmhpd_opp_nom>;

this contradicts the levels in the OPP table:

> +
> +			iommus = <&apps_smmu 0x300 0x0>;
> +			dma-coherent;
> +
> +			lanes-per-direction = <1>;
> +
> +			phys = <&ufs_mem_phy>;
> +			phy-names = "ufsphy";
> +
> +			#reset-cells = <1>;
> +
> +			status = "disabled";
> +
> +			ufs_opp_table: opp-table {
> +				compatible = "operating-points-v2";
> +
> +				opp-50000000 {
> +					opp-hz = /bits/ 64 <50000000>,
> +						 /bits/ 64 <0>,
> +						 /bits/ 64 <0>,
> +						 /bits/ 64 <37500000>,
> +						 /bits/ 64 <75000000>,
> +						 /bits/ 64 <0>,
> +						 /bits/ 64 <0>,
> +						 /bits/ 64 <0>;
> +					required-opps = <&rpmhpd_opp_low_svs>;
> +				};
> +

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
