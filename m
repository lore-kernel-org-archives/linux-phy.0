Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B8E1CA1015
	for <linux-phy@archiver.kernel.org>; Thu,  4 Sep 2025 09:52:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vFxG4JAa5J5U6rBFvPv7HBByGdxneX8xASmjArXVaEs=; b=iGYEVi4YEKrdLQ
	hYRU7fxpsYu5rrNM0IPGelmlMb5svhNo8Rk9Gvk0qP3QiVYu0XwOt6eLLVJPET2OiV2I1d5qwHHEn
	5BSP7PxmrhDWV7b1pTJ8w+a4OOSnFvDeMnk/KtOavjzZUR+8VjsvHzwPav02ahMVLqsgqkZPKGkZt
	TnvyBHAUvYV1+BEMhPoTMKKh0Tvg6SqbIxUIoHaluGmynr1ymFCxtzW1lC7Ud+xxahrVKBvURnEcA
	KhYc94yBHHRdrK+qfIqXfV5YD2rUg6bZ9sTQADaNFdC8aSF01mjgKuhZi1uxtotMFHPqQbTavMmg+
	WeXbWl79H1vwqMFGu//w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu6dW-0000000AgSv-3bi3;
	Thu, 04 Sep 2025 09:52:10 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu5WM-0000000AIua-1SXM
	for linux-phy@lists.infradead.org;
	Thu, 04 Sep 2025 08:40:43 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5841dDuM003604
	for <linux-phy@lists.infradead.org>; Thu, 4 Sep 2025 08:40:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	I4P4Vpckc6QJ4OtjBhntsKaQJGflNRN1gBEgtyUv9mg=; b=mRR9JaMuBjiUkIC5
	iZv+AUF4xoQaK0bIgVVycAebuDTEGGDgdDyuqPmDKKLYYJ8B78r4q6ssMhNqnMPV
	2jYEFJPPg3LQ6ssw2So1aaI753Fwx+D/7ViUVzSTtCHOYbVbWn0BhcWDJAutNj+c
	ywOFwv/BkFGyoiTfMa/DtVhilXvtcF+gqkWgO+LpZH29LhsF2pOEc36CHwgozXcE
	tCQ9WDsm1O8u1+8ws28m6SQPQ6JB0qF0YfcmdsKVV+2V83au334aHNgepId9JerW
	af1krn3OwbAcdfftxQcTqpP/44LwfBJmUZW6BCi3oVLqPeMiLIhJiJGEzihdzVhW
	Fg4LUw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ura8xqnv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 04 Sep 2025 08:40:41 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4b32216a52cso1862581cf.2
        for <linux-phy@lists.infradead.org>; Thu, 04 Sep 2025 01:40:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756975240; x=1757580040;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=I4P4Vpckc6QJ4OtjBhntsKaQJGflNRN1gBEgtyUv9mg=;
        b=A8a+SujN4QyKpEhDI6pga/XQE1ishn7Ik9oW6isAb1lYaL0Gl2IUkdCdtLKithxcpv
         xhYLeAhfF5gh5QVQxlmVjOUG1aRu89d9OSf5jbf0lkIPNdIltewqH6kVuZsPi1yPqQgs
         zq4S5NipFkHNshwRp2iVDd0gkMczfEmC1GLKo7ElxUapcq773PXqS6l2IaE7Xmp/8Ybu
         edpuCHnBopySbN34SLafre9RfRxmUpJ9vA3swK81JGilGfPS7pelqCTxuaL/K3eKaatl
         FGuVhWEWcF5vGtKmu7nJpCDwIUd7mVdxPQ3KVBCtmv7mX/QYcBOKre8beQB/kmAe6nn/
         c51w==
X-Forwarded-Encrypted: i=1; AJvYcCXmSmdQmx6yitd2AZrDZu9dIn755nR80h2ZKErM++6Yuxk+oA5k8I/68cq872gaVabLkeKQh/6c5Mw=@lists.infradead.org
X-Gm-Message-State: AOJu0YwFuo6cZV0tOLIe9B2F/V5/4EJRG9aJErp9SMScxTfjU0Iyz3Xp
	1CeF2yfrgJvUlg2gzkbn6BvSdtEEIdCsfOkJe17yqI/scJJY3k5XmHXw+Xp9VM4owwCkytt9g4E
	WT9MkQXWgLLisz58pLPKTRZkCJm7qixFa9mslvSkngYTZ3an7PX53eZSCkxToSj+KdzMc
X-Gm-Gg: ASbGncuRr7AlKQn+tSMWZZEEAaFnR+mTh/OcGusOUMxYq+wjqflOZcI2jxaKwMbt3pW
	yI18Wymhy+COaEK06/Y9Zc1R0Cd/9xXctbZ+sd3WMDJovdb/SkOxAFRFJvcRs/hDOuqVoObZPcj
	AWd62SSZdRUWNLmchGQygwLkwpOR1OfsEF+OUrSA+2QXh0up/3s5yrVs+lxQC8uNxqx1lLOEAeh
	ipihInfiEh98pPBHkXXdboZ7BVou7AOqpMl7c4rk6hNOzw5E5pBaQjkiEs75nuzNlyqV9Rgcs1f
	Oi2jutac++9RNSEZp9mfaB0OnPhW1yCzTrwzGy7IIJX2fmmx0D91fV83gDmchx4VocTX4WKqfzZ
	sKisSe8BbIYTz0+badzdf4Q==
X-Received: by 2002:a05:622a:349:b0:4b3:d2c:f2a0 with SMTP id d75a77b69052e-4b30e9a9735mr176386711cf.11.1756975240395;
        Thu, 04 Sep 2025 01:40:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE3LGMrSU/BytfgHKLmHyXhzao5cramuAbvzO2C5SkqEfzxhB2VBfo0CX0aTEn069I0+lokrA==
X-Received: by 2002:a05:622a:349:b0:4b3:d2c:f2a0 with SMTP id d75a77b69052e-4b30e9a9735mr176386541cf.11.1756975239917;
        Thu, 04 Sep 2025 01:40:39 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b0431832a98sm886966366b.80.2025.09.04.01.40.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Sep 2025 01:40:39 -0700 (PDT)
Message-ID: <34d9e8eb-e0f4-47e9-a731-fe50e932fea1@oss.qualcomm.com>
Date: Thu, 4 Sep 2025 10:40:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] arm64: dts: qcom: Add missing TCSR refclk to the
 DP PHYs
To: Abel Vesa <abel.vesa@linaro.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Sibi Sankar <quic_sibis@quicinc.com>,
        Rajendra Nayak <quic_rjendra@quicinc.com>
Cc: Johan Hovold <johan@kernel.org>, Taniya Das <quic_tdas@quicinc.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        stable@vger.kernel.org
References: <20250903-phy-qcom-edp-add-missing-refclk-v2-0-d88c1b0cdc1b@linaro.org>
 <20250903-phy-qcom-edp-add-missing-refclk-v2-3-d88c1b0cdc1b@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250903-phy-qcom-edp-add-missing-refclk-v2-3-d88c1b0cdc1b@linaro.org>
X-Proofpoint-ORIG-GUID: s_hGaZ9xrVMdYoWab61C-OKgzkNYslkK
X-Proofpoint-GUID: s_hGaZ9xrVMdYoWab61C-OKgzkNYslkK
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAyMCBTYWx0ZWRfX/2OCrQxBOEd5
 rFQvH8zEwvfMmsY9uYAkrLO7hjqELsqZhVfB9+LIbn5JqTscu1ShkBiV0dtrdFDeIWC2pyWcyCk
 FxAIUslkX4sahJqZ9YVz9sTXWKpA9hwjQVMTIdqfibGS3N265vPZUCVI0oCfJZQkarPdIMw+V2x
 qAKsflcKAMY9csQVPU4Ln9EnumOAmB8LoD/qpHERJW6bbguii484kIYo792jmdDN2PUBUnBTDIc
 Irf6Pn8IrgazEyS+wcKfsU0Nr4dQwdEVGwFirj8AweXIDCqSYFEqdoLxXfa7Tqsh2Yf82voUeI0
 u3NWDm3djjeckAZLTUv/jlcPLgptiAaZjzyJMAWyHDaknCH8kJ96HrgetH8fsgFY9OJ3+B9tRSF
 SQAwpJFF
X-Authority-Analysis: v=2.4 cv=VNndn8PX c=1 sm=1 tr=0 ts=68b95089 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=LkxnY9FmGKG3Lg6D2dsA:9
 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-04_03,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 impostorscore=0 malwarescore=0 bulkscore=0
 clxscore=1015 adultscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300020
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250904_014042_510422_8AE5CC93 
X-CRM114-Status: GOOD (  12.98  )
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

On 9/3/25 2:37 PM, Abel Vesa wrote:
> The DP PHYs on X1E80100 need the refclk which is provided
> by the TCSR CC. So add it to the PHYs.
> 
> Cc: stable@vger.kernel.org # v6.9

You want to backport this to 6.9, but you also want to backport
the driver patch to 6.10, "meh"

I'm not sure it makes sense to backport functionally, as this would
only exhibit issues if:

a) the UEFI did no work to enable the refclk
or:
b) unused cleanup would happen

but the board would not survive booting with b) in v6.9, at least
it wouldn't have display  - see Commit b60521eff227 ("clk: qcom:
gcc-x1e80100: Unregister GCC_GPU_CFG_AHB_CLK/GCC_DISP_XO_CLK")

and a) is not something we'd hit on any of the upstream-supported
targets

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
