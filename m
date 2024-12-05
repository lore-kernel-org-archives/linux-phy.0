Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC7FCE77178
	for <linux-phy@archiver.kernel.org>; Thu,  5 Dec 2024 17:14:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xYSYHFzyBVRBZ7M3QnQQZTUUS3+lBs9zUoKeuYo/sL8=; b=Ktvkfdqdvso4tW
	RpSWrU7loyJA/YCkYu75nD5+GIGgqZE6tPIcaMC4gtdJ1hwZ1ZK/kF1tJZTxczMYztauWkPYhnC51
	oKBTNuHM9USLkSLlD+H7i03P+QX+p9LRwXTL8e4CW6f6vztgoreTDphbj/7Pq+EA0RrWZCPzKZxo+
	twof7T/XyYF9b9t3OTT9ybCsxUKPSOsUnAx/Zx+Ss9aB+838H+rgV5iBUL5GlflzZogVVr3w9rS0W
	DykZUbVLEgghj0FhkNPePTJoPVqvty6vi2BzcuwCitNR3+ndNCTzoslM4T1JNL9Rcm7LtgjHPF9Uz
	rpb+Lgzud0/pWywHvrdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tJFQj-0000000Gtij-2PJQ;
	Thu, 05 Dec 2024 17:14:21 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tJFBo-0000000Gqyo-3C0A
	for linux-phy@lists.infradead.org;
	Thu, 05 Dec 2024 16:58:57 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B5Ffngj010215
	for <linux-phy@lists.infradead.org>; Thu, 5 Dec 2024 16:58:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	29LB2PMCJTqg6yaaSPjNIptSdWN5G/aO+7nwXHFP66E=; b=nA+oCSMh4jchwVni
	RSHAfSeWqiZFtvavwFwCEDRSpwg+QzKYPVmowHEl9wIGzr1Tm1xoVIr+rbGlwOqv
	zDs3/cxXNd4DBCZYY9XlJ1qdDLhevKbLjzCJQbghWntsu1gZTxU8abzsvynthvCF
	niHKoqDIBkkoQb7Js67T423mJWBsW0hvybopO2i3W8FYs9nn3IPnae/ZG+1vnXbS
	s1KmUqwI1d6wHdnL0bwpPZgpBXfj+TaNclXbJPrikKJdhXBn553DqT1lN41BZ7aw
	esVExIR5Tnxh1jJLU27E1WSvDRH+Ce3SMwGr6xuPcIE05y28Bo3qnoatxIML9OFN
	Wl/X8Q==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 439v800ecp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 05 Dec 2024 16:58:55 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6d885b3003cso3320346d6.1
        for <linux-phy@lists.infradead.org>; Thu, 05 Dec 2024 08:58:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733417935; x=1734022735;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=29LB2PMCJTqg6yaaSPjNIptSdWN5G/aO+7nwXHFP66E=;
        b=nh98eD6a1wR+kc6b+ybc8EM1EXvqgAYxoXSytzIQQtBB2FxVXq+1+/D8Je/5K9/1oK
         KioKa8VRxPxUhto+9+tmGDfvNfQp3XXALMgc5XlWwuB2w3foh24U06ver8FKVC4Gi3Jo
         wUoBHyiGVms2SOaIaNWuRWHbo+7WsD3SwTaqL8gM3+F1Oy2mPUMmXOrwZo9bHb4YKv4w
         FimduDp1Qem70gWuNlLEfz76THtT1Bg+AfBau1o+UDHBbPIYpfegzgDaYSfYshCUe//0
         y92sBYM+OaBw6oxpHO5gm6G66Zqui0MmxtXB4NuO8NO4VmjerGqbcchE8teeqi8GbhlG
         a7HQ==
X-Forwarded-Encrypted: i=1; AJvYcCWREfBgpdadQXKNNxSzZxftzeY7ab1fp2IrO0mobn6u69lG/LivJcxPwXXWiV8ITV5DpowZvs3J0zY=@lists.infradead.org
X-Gm-Message-State: AOJu0YwbxgSgCKTBbwMkexGH2lyuRjxwHeXIUvMwfEzMNJjGCtHw5amz
	bTWPjLd9IZx7lxJiz7t6UR/+yXQrY2q098XkuFXfVWrM0Wztr8DtlklSxel+UcRMromg/gTUx62
	Wrk8aM7aTHunKYDQvfvk/0kS20AlbrhTNsRNS4eC/2XlECuEWPXTVWZ5S4jo+LoRZ
X-Gm-Gg: ASbGncsnFf3DciXgeEkPGoYKn6Nb1vjhK23vM3WynsT/tSxQ0GpskLFVFDhQQJYJCf2
	wWoHut/zvd3ans4Ukxan/zDHPm9zYrZ0psKvGwp78KJvGoZ+QztBsu4xvNC5EWxqjur54IsGNdC
	nhiwSFzbQ3jrLm8hR2S/QEPPABv+svXjFbhbVPFH3mL/LN2bZ7KH2dPdRoTLyPH8o2kkCCrTC+p
	ErGDD+xARBwGVIp2CI3IEmrfe8qV1PkVISdieJaA+7oWM9n67zj35lW8Lxy5fAYQX9CrSmu4umT
	/bc9HR4ogv1LFoHClNkG4BQF9q/kDMI=
X-Received: by 2002:a05:6214:224d:b0:6d8:7d84:a4fe with SMTP id 6a1803df08f44-6d8b740269bmr66744226d6.11.1733417935135;
        Thu, 05 Dec 2024 08:58:55 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHONcwWmMF297h6ReXiuQIfs1VJfMAMwnr4Li/G53W2Qo/RcNGYjv5W4a29cWUw0S2dbXt6Pw==
X-Received: by 2002:a05:6214:224d:b0:6d8:7d84:a4fe with SMTP id 6a1803df08f44-6d8b740269bmr66743966d6.11.1733417934782;
        Thu, 05 Dec 2024 08:58:54 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa6260e0389sm115040066b.174.2024.12.05.08.58.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Dec 2024 08:58:54 -0800 (PST)
Message-ID: <724bf111-ae58-4986-aacc-3db3230a7a36@oss.qualcomm.com>
Date: Thu, 5 Dec 2024 17:58:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 6/6] arm64: dts: qcom: ipq5332: Enable PCIe phys and
 controllers
To: Varadarajan Narayanan <quic_varada@quicinc.com>, lpieralisi@kernel.org,
        kw@linux.com, manivannan.sadhasivam@linaro.org, robh@kernel.org,
        bhelgaas@google.com, krzk+dt@kernel.org, conor+dt@kernel.org,
        vkoul@kernel.org, kishon@kernel.org, andersson@kernel.org,
        konradybcio@kernel.org, p.zabel@pengutronix.de,
        quic_nsekar@quicinc.com, dmitry.baryshkov@linaro.org,
        linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org
Cc: Praveenkumar I <quic_ipkumar@quicinc.com>
References: <20241204113329.3195627-1-quic_varada@quicinc.com>
 <20241204113329.3195627-7-quic_varada@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241204113329.3195627-7-quic_varada@quicinc.com>
X-Proofpoint-ORIG-GUID: r8Er4IqT9kLJLA-cIt2fyu1ojAQNbVQ_
X-Proofpoint-GUID: r8Er4IqT9kLJLA-cIt2fyu1ojAQNbVQ_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 mlxscore=0
 impostorscore=0 adultscore=0 priorityscore=1501 clxscore=1015
 lowpriorityscore=0 suspectscore=0 mlxlogscore=746 malwarescore=0
 bulkscore=0 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412050124
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241205_085856_917853_9AEF70E4 
X-CRM114-Status: UNSURE (   7.26  )
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

On 4.12.2024 12:33 PM, Varadarajan Narayanan wrote:

Subject:

arm64: dts: qcom: ipq5332-rdp441: xyz abc

Konrad


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
