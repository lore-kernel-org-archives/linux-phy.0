Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C5EBE77188
	for <linux-phy@archiver.kernel.org>; Fri, 20 Dec 2024 10:26:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z8nwbhMnTgeR3ToSISydnDh7InNLVAEJpJLhZxsouMM=; b=ncJfMEK0+lNuG3
	GdUQemFvt/g20yTwN/j4jurea/sWlchUwi+/N/92fHJN8MWqwmOk7EG+duEWd65KEqH6TgHX3Of68
	j/XWGtbwZl/TtPGglm7PFoGKWMTVkbXPyRG8AoC5dfGTUvjYagEp8q6BUc25+r/+nWTKcOZYCURIO
	FywrozBn44XoBLlc3uZ4DaHNtguP8S2Mr3fxMOM8nwY0AAprTmZr3ZznxXyHR0r8mObadqD0NALGJ
	h8dwdSWIAVZv98uts3n9oZOtIkox+YN2z+G+14GwCdB7LJGlzjikVHnrFOc014gfEvdXHYnbf6a10
	UgVw3oevBuqyQ5K6M5PQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tOaDA-00000004aVd-0lfV;
	Fri, 20 Dec 2024 10:26:24 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tOa3w-00000004Yhd-09lC
	for linux-phy@lists.infradead.org;
	Fri, 20 Dec 2024 10:16:53 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BK5egii004935
	for <linux-phy@lists.infradead.org>; Fri, 20 Dec 2024 10:16:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2plerijmrwjFfyc03fiI+ZOSqEAbdDcNmapb7eS9TvY=; b=IHlnk6EHMnrBcZ74
	IKAC2zADG9qYQgtXmozR0PEucoOftxMRiS9YvXMXIDmbLM4/UMAXuChrYmjqnURF
	TKT2UaBxJjHDrP/oh3PhyRNPbgd/zFJb4pt1iLe1Ij9AsZBAhLeVZxz7jKrn9fCl
	XOy5PssEaTOkYgkhwJHtaFtBoUk2JaIwx7ZvzDut3/teNLvfhvpD4WOJ4DHAdM+s
	dzIzTwtYvr+RPvc+AEeYL4J5BzTUyulRsKKaNGvquvrm0cND5UZQVyPIY8n4bIv1
	Aqyf2N7G/yWuQZu20YV4eUoyemF8abyU6/fq/swgfHpEwR9K8i+OZY0diiCXjOss
	Z452Jg==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43n2n5rqvq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 20 Dec 2024 10:16:51 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6d8f77bf546so4679326d6.0
        for <linux-phy@lists.infradead.org>; Fri, 20 Dec 2024 02:16:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734689810; x=1735294610;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2plerijmrwjFfyc03fiI+ZOSqEAbdDcNmapb7eS9TvY=;
        b=aU4SMKBekyvbXledRmpaFeJ3c8NJzb0wTKhxNP+uxuXs5LxqM0StwyH9V7PHhaZnz0
         ABkzQ5VgBvz48qRb/oj8fTo5Fg9pSUddvGgN6l4n2DrFFz06FLNftRkIRPh9YcDm9sub
         rpSZUbYRCaSZE9JpmDHVN6th8J0U6Ta2LCd/+ZCIBI8t8Af/czuQGuniyPtRtKNy6k5X
         sDGfhKi399m6AhNRCv2q2PjMZzmb3NegMHPaZOEclPJTeLMSl7bVdwdsBDdFUAbQoTST
         Ly8FIfvkQypndiYP/evoUl/0VE5U+u3Zj+fAUPNmATgVPqkOzcuUptrUEIGpe8imbwdv
         0NGw==
X-Gm-Message-State: AOJu0Yx3ranuBcc1DsM9hbAkWrgVDNE9sn6RVonP6v0iV9xKoy9rPfOz
	I+bQjUw8XLN3Sc72o/4eL+jub1QSpApit92WFPFg+q7HwQMU45OeLeaLW0TVwf7UIVmdC4NHs99
	UiNSeAFpBQNg6jOUR8HYqvYxC/60BsyKUgshOCbf66AKse3BigizBiJuKO6Lwg2bW
X-Gm-Gg: ASbGncsb0u/ixI4QV/zl/tyrFGGVI9pPxF5WH0qL079d5RWusyN3ArVSTJ/WqfdawbU
	UCT4cAaI435bWc1nLDUzIcrvHfdCX88y2I4vJR59sOpBPEJm+Zy4POJk8TVJEDoBPIk/S/hOhZ7
	xa3en0+zmTR2vkMqBCDb3buv/9iiXBcqQMEuN+B4f9xba3baNPc86Yjc/Od2ucY1zJs8z1Y0KRf
	cl2W6ONzkI9FuOnGFMLbH8B+dFAI0q44ey+rkAVxWvUEGIPeLISTERlxPpaKgvM37Pbwf2Z5b+x
	ZQND212oeUGbDL90zypeey1kwcwUoiAIWxA=
X-Received: by 2002:a05:622a:1183:b0:460:900d:6052 with SMTP id d75a77b69052e-46a4a9a34c7mr15453711cf.14.1734689810020;
        Fri, 20 Dec 2024 02:16:50 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGbTjysDU3iJ2soFkGdUfDu2M048DzuQYp6VI5Z0UlAKsD+pGIOi2Js+UX7PhFTnlIclh6ePQ==
X-Received: by 2002:a05:622a:1183:b0:460:900d:6052 with SMTP id d75a77b69052e-46a4a9a34c7mr15453461cf.14.1734689809515;
        Fri, 20 Dec 2024 02:16:49 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d80679f11dsm1569766a12.46.2024.12.20.02.16.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Dec 2024 02:16:49 -0800 (PST)
Message-ID: <19fa7f66-ab50-4cd0-8fb7-4f126736ebc3@oss.qualcomm.com>
Date: Fri, 20 Dec 2024 11:16:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 5/8] arm64: dts: qcom: qcs8300: enable pcie0 for
 qcs8300 soc
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
 <20241220055239.2744024-6-quic_ziyuzhan@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241220055239.2744024-6-quic_ziyuzhan@quicinc.com>
X-Proofpoint-ORIG-GUID: PyvfkxcQ5eeNjVvdXZxm6790uq5Ws9bP
X-Proofpoint-GUID: PyvfkxcQ5eeNjVvdXZxm6790uq5Ws9bP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 spamscore=0
 bulkscore=0 phishscore=0 priorityscore=1501 lowpriorityscore=0
 clxscore=1015 mlxscore=0 mlxlogscore=626 adultscore=0 malwarescore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412200085
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241220_021652_084477_3F69E98A 
X-CRM114-Status: UNSURE (   7.68  )
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
> Add configurations in devicetree for PCIe0, including registers, clocks,
> interrupts and phy setting sequence.
> 
> Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
