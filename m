Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 428BBE77188
	for <linux-phy@archiver.kernel.org>; Fri,  3 Jan 2025 13:14:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J4F74y5hK0G1fx7c4b2PyNU9pCSlQIJbfwWKEhvKVpE=; b=ShzG6pGfksB77E
	54avdgpL139N3sXXSZGEXA+KubSROMWoCCgquLXNV81+cH8z54p7BWCatpNJ0ZYhqDOcp79m2eeGf
	sNCLXTffjEtPzW8S0vm9Jp/+Smvg62JRqa/2vvCjjwewfp3oZ0xCOgUu3xgrujBCv1YUlXAYYkTFb
	4RoI42vVpgfWnzTDZWklMNv7FzVLFLvsPMxrrJZxfeUjohi3BakoPnZ1dODN8sCMIHm90g/UToR2y
	kgfk761/yC9LzaODUbDJx4euwvNMQIrelgcCXTa1u1NYD7b7Two3z+iUTTHcW/QXKk9yAcVmRiZXz
	RZtD59Pz4m3NHzkuARqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tThVU-0000000CyZV-29RK;
	Fri, 03 Jan 2025 13:14:28 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tThVR-0000000CyYw-2PuB
	for linux-phy@lists.infradead.org;
	Fri, 03 Jan 2025 13:14:26 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 503C4baJ022494
	for <linux-phy@lists.infradead.org>; Fri, 3 Jan 2025 13:14:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Zs4a2hB2iyjshiuXvUroL7xY8a8QZWPTWdCIATDXiu8=; b=ilRI2H2idECs2PmL
	PN7mxrqgB9zaEGXw6A5EdowL11CQOexJZdIRc74ryDWSPooNAycjSgO8VwSvtWQs
	VwliAx0UHvpejLOeW2Nld/J0xwWR1FLJvQulerfmGsf8u8wRz+W/NfnTFWuKwYRs
	u7l439GAHvM0PCaCivOYibmEyzBBSFLbNBEUSfzfLH7SdpxyrGaS01aLLyPH65El
	lWakqyLHICgRpJ0oV3+PiCLteuXV5ObWnbMu+2FB34hkpRzSqadASfPX3rutG+KZ
	3ur0RV788DNcKyLMn9LoD5oFxcFS6vSg3OXH6o7oV8/TSp1/chScOkDILFhziPsU
	XIQ4AA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43xfk3g3vv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 03 Jan 2025 13:14:24 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-467a0d7fb9fso30228891cf.2
        for <linux-phy@lists.infradead.org>; Fri, 03 Jan 2025 05:14:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735910063; x=1736514863;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Zs4a2hB2iyjshiuXvUroL7xY8a8QZWPTWdCIATDXiu8=;
        b=i7XEG1ZTGQBF6d4L475+dlrYZ4selxvzsYvfnUqxAbQzbQHLZoJgHEl7K/dcoCKTTh
         MMPYvt2f1/bp7N+shxLxzZSyr4oKGZqOblhzr/cExg0BehPaDZroldVKCYtoZlocad4I
         QfBN9yJf1cYPkWepXb7cYuN7OKRArP5GLATMOkhEU5gQRNMH7PvhoT9UTIC9cwaDu5iM
         l2x7/7etrbx18EhH5kVPjPfdtsLh7382SmDOKtygTmNULJrgNnfN7aINtAzv5QN3wWYH
         /oGiDX8PFkvJr7KOcweQ71l7kYQZjsHPRZ1v0z5blkhisxHjokVYwDmLNFQ22+/zlgVH
         S92w==
X-Gm-Message-State: AOJu0YzPMfy7FndyxFIHDgN6XQD6frVtXvr0aJpRiGuIJoVz1aF+4dMW
	Q5XRarI6zTMfIH5qFSZcrOiWkGqdiA7H8kMy2IQcZGdO73ZVQUcUXAHXP0wfdeCPa27Qhz+I8Xi
	8qivl5xzg4J1iNGnoOEKFY7sSabyDRvAvXC/YcqcbPbl0mDLJGtANSmzYJ2O2rfwO
X-Gm-Gg: ASbGncvkO4SdL8PrXHPikoDXheklxNjVjJq+e0LCT2hRnJiCIgbx7TY+FhV6xWVL/9n
	MygulhLITtYbjlizJ57H1ihKDMGpOFemFNP4gu3N51roqC0dddHpsUeQNtaIase4/SJU67Bm7+m
	jc8S3Yfiyc1uwvuKSvS34lFb8EDH2zMQFnxPGTADCWAKeSw3WkXGbDXg/0kKFD3H1Gfg6Uldle3
	dDWyK20DqGhW9Ky1166KXPPFc32y6DQhwFFU7+lKzfUJT6EKawwUtofEiipEFA5PlRYN4Inuzsz
	HfZsV0yg7m0N0aRD7pcBIzLC2g599g/ySq0=
X-Received: by 2002:a05:622a:2891:b0:464:9463:7475 with SMTP id d75a77b69052e-46a80758455mr163481311cf.2.1735910063456;
        Fri, 03 Jan 2025 05:14:23 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEtSCiX+k+KsO86q71/HLEx4LrYnqWiPisT04z7RdRIYvR9bGfBVgELyJkqShujMdRnUNYBOQ==
X-Received: by 2002:a05:622a:2891:b0:464:9463:7475 with SMTP id d75a77b69052e-46a80758455mr163481071cf.2.1735910063124;
        Fri, 03 Jan 2025 05:14:23 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0efe490asm1890162166b.98.2025.01.03.05.14.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Jan 2025 05:14:22 -0800 (PST)
Message-ID: <dca2e244-873f-4c3f-b7f5-86e6bec3d9fc@oss.qualcomm.com>
Date: Fri, 3 Jan 2025 14:14:19 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 7/8] arm64: dts: qcom: qcs8300: enable pcie1 for
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
 <20241220055239.2744024-8-quic_ziyuzhan@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241220055239.2744024-8-quic_ziyuzhan@quicinc.com>
X-Proofpoint-GUID: H8a-cNz4xkrWiXj10_YNToDVMCJSE27s
X-Proofpoint-ORIG-GUID: H8a-cNz4xkrWiXj10_YNToDVMCJSE27s
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=609 phishscore=0
 adultscore=0 priorityscore=1501 lowpriorityscore=0 spamscore=0
 suspectscore=0 malwarescore=0 mlxscore=0 clxscore=1015 bulkscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501030116
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250103_051425_741901_D05C2026 
X-CRM114-Status: UNSURE (   7.88  )
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
> Add configurations in devicetree for PCIe1, including registers, clocks,
> interrupts and phy setting sequence.
> 
> Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
> ---

Acked-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
