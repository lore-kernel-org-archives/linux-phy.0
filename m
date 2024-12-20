Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE6C0E7718B
	for <linux-phy@archiver.kernel.org>; Fri, 20 Dec 2024 10:26:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VJZaoUbBM3wAs1wJ/hCy4UCznv5NCj+hBNC0G0/LbMA=; b=PM4GdbfPCRSJYU
	0tqoQ1BHG+AM2zH+XvA7fVcgE57joy7gvOVHOCu4qZ8c6Rg9msmNp/SGJDuB9NKF5q0ma6m3kfRV+
	FRR9Xxl0vkiGyPy9EDrNZgMoQUbMuC9naz23Iu7LRxPyQqEULB3JsOhnAS1emEabr/CAQimAeAbL8
	tbOKjVVFlMnlOHvyKiymJLItMU3GfI7oBQCWGqGcaa4AtjJN4GTdF8mOyDCsL2eDlRldYm1dAwaWj
	f+k3dws7rePIPziFBknYiaqrosENnRXwfDvZ1lAVbcJe4GelVZo0gFbeHG3udnrQeBPlrmzMMvhmv
	wN2tP5lDXcaHzo4+4ugw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tOaDA-00000004aVt-20dR;
	Fri, 20 Dec 2024 10:26:24 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tOa4A-00000004Yk6-1RAw
	for linux-phy@lists.infradead.org;
	Fri, 20 Dec 2024 10:17:07 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BK7M0Dj028939
	for <linux-phy@lists.infradead.org>; Fri, 20 Dec 2024 10:17:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	u/mWcyc9PSpD3cCH/0Ahpmf2yDEfveb9OVwcHH2HhT0=; b=DxWqrbI20UOSakCn
	Nsv0liTSK1fHfnSQdkXO1fd7bBjvImRv3tnZQKohnMScfBYEKNfPbfYdQ1z5u4ar
	8kyNdx/Q+NRq6+UgbbokFafkHSydyTqcHxk5feA9rDrZMDCwKwa8IPXLRyevws62
	EHjz8ZL0lgTsztsBs1pAYoeFXjcjAR7Eg1mgH9jgTl4XgonV6VDdVG39NxqBUccR
	rFXuiPp5bzqWleKm8f2UzY0oxfxz+BSbJOXgw2nM3zUsgOWj4JA5Moo5IzvvSrXB
	hA43RP6wGmNE7Nwsgzc3JaMIQMrHkO9DFFFQF3tLFYDfgJNCIsUgQ/Ckp7xbR9hs
	9LYGvw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43n44hrgcm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 20 Dec 2024 10:17:04 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-467a0d7fb9fso4455351cf.2
        for <linux-phy@lists.infradead.org>; Fri, 20 Dec 2024 02:17:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734689824; x=1735294624;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=u/mWcyc9PSpD3cCH/0Ahpmf2yDEfveb9OVwcHH2HhT0=;
        b=gAHJoHB9luY0imiN9SK8aP/eLajw6eOsuqZGHPDG+MGZtA+X06kMYTpP3T4ieymcnG
         hMExFpnhe/PesPKacSJO31sYp3z0oehsy5DxrttOx0yCxtZC0Rht5RQ6asRqFMzv35NL
         rVgd1p35J1XnM/pml0ndLWnuPClD5r4nxDclrMIWBzeQUwA9jrq5mwN4vUKu3v9WhtGt
         Kv+DPbHnoq18NyC88d2jVz4qDrOn43XnFVf5aSqmhrj9Q73VlE57QrqcIapet3mmqb4J
         T0UpjTND4PtdLUH2cC+VHQcJEy8ah/i59pcwjAkYe4JMDtjxcRFdCL5Nr+u2V/aAIgI/
         7JDQ==
X-Gm-Message-State: AOJu0YyQ2NfV+oliTWbt9uWIrBNGExMeHsKanbkm4xYJonDhee20M+iF
	2LBdpOzay4c/vIA8fbWYj3Q6xW4UtUmTnYmIrOff+H+tyPmVGFuIe7mP3bfoVFfmu1Kx2jmM65F
	8/31s0Oi435C3NudjzjfDb9tK84O69eR5vUW75fzNCJCEn6gVXU0fiL9BY+jrQfJ6
X-Gm-Gg: ASbGncvvl24LQqF3L6+nVDAoA1yEaPvoHgugHE8UHUkUVyIVN0GhyjyTtjWjd4XXYGw
	9rLW0WOqk5er+3Wl8D8si0hVybhD42SS8Uwofig7g/I97RNx0m8crtsmMCU7l+QgoJvF/Vni4v9
	2f/TOxJO3pC0f+JkSXLOp96H/y+zgMIcGnSoIXt5c/d0IeB620gQVxDVSHFO4vVyN2odN6dEzx8
	NzFeVIhm9eQBmkEpCRVCBPV710ShUM90BQrizCpzUNk8qDD9J5NxxNhFm14CWx9CeBS80fYEGwq
	mCC1clBc3OijFx7qzxXxdkpRJY4/kIsq7ps=
X-Received: by 2002:a05:622a:14d3:b0:46a:312a:54d3 with SMTP id d75a77b69052e-46a4a8cbf47mr14269541cf.4.1734689824250;
        Fri, 20 Dec 2024 02:17:04 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGTTu/4H6/KMrUaTlWO8zj44laXUXuji5sXvxSpCA42Sd1+lO0jgLoRuunnQ5f1OzfWmVhKew==
X-Received: by 2002:a05:622a:14d3:b0:46a:312a:54d3 with SMTP id d75a77b69052e-46a4a8cbf47mr14269401cf.4.1734689823951;
        Fri, 20 Dec 2024 02:17:03 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0efe4922sm158207866b.113.2024.12.20.02.17.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Dec 2024 02:17:03 -0800 (PST)
Message-ID: <525056b2-09b6-45ef-ae38-718af8d6b76d@oss.qualcomm.com>
Date: Fri, 20 Dec 2024 11:17:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 6/8] arm64: dts: qcom: qcs8300: enable pcie0 for
 qcs8300 platform
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>, vkoul@kernel.org,
        kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, dmitry.baryshkov@linaro.org,
        neil.armstrong@linaro.org, abel.vesa@linaro.org,
        manivannan.sadhasivam@linaro.org, lpieralisi@kernel.org, kw@linux.com,
        bhelgaas@google.com, andersson@kernel.org, konradybcio@kernel.org
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-pci@vger.kernel.org, quic_qianyu@quicinc.com,
        quic_krichai@quicinc.com, quic_vbadigan@quicinc.com
References: <20241220055239.2744024-1-quic_ziyuzhan@quicinc.com>
 <20241220055239.2744024-7-quic_ziyuzhan@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241220055239.2744024-7-quic_ziyuzhan@quicinc.com>
X-Proofpoint-GUID: rqwTzdMP7obGk-QMkNXJ6tOq5SCIzQnm
X-Proofpoint-ORIG-GUID: rqwTzdMP7obGk-QMkNXJ6tOq5SCIzQnm
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 mlxscore=0
 mlxlogscore=739 phishscore=0 malwarescore=0 impostorscore=0 bulkscore=0
 adultscore=0 suspectscore=0 clxscore=1015 priorityscore=1501
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412200085
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241220_021706_501415_BA4909BE 
X-CRM114-Status: UNSURE (   7.85  )
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

On 20.12.2024 6:52 AM, Ziyue Zhang wrote:
> Add configurations in devicetree for PCIe0, board related gpios,
> PMIC regulators, etc.
> 
> Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
