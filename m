Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D5C1C3ABC0
	for <linux-phy@archiver.kernel.org>; Thu,  8 May 2025 15:24:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P6y6OILNb6bKu2XBlXeumjMoqi6FQ6IHgUNXPYt+xK4=; b=WAwsTigG43rvmz
	3inqmKjUCLfrUulwSR4M7jAyzH71PPFOEHZOYG63kY7NvmBe5G7A0X4ro1ddOAYGMzWZWJQl/Y5Zy
	V/1BtQ/EPrT7mZosmp5kJIF3IDdvh7jmkskRFDFGZrB3WX6PJ6yveykfmVO+qI8d/BiSSeQmgIu/M
	CeNKYD6ln7paYcNesxSoNavBjnE0oN68//CZF+QTkDWuKav4vyEPaN4I5a0REDasW2S4N8Mma+BuD
	HRpYWNgKQ4TSnw8XHSiiDGuaulLuUxeV5hYEVPL5cS4TAkQU4Sa1qKopAGs3fA66VtUN7JSLxNsN7
	uuQxaeImUTo1jma3sOEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uD36l-000000017nl-1NLU;
	Thu, 08 May 2025 15:24:23 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uD2X4-00000000zEp-2pnk
	for linux-phy@lists.infradead.org;
	Thu, 08 May 2025 14:47:31 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 548Cx8WZ008510
	for <linux-phy@lists.infradead.org>; Thu, 8 May 2025 14:47:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	9tZOCsJGlyFLYoLfnAHP+VSjddc9mN16QDqcdZ3mWyQ=; b=nwwux9qjSB+axDMG
	+BWniAkTKP28HEqRJBPR5hVSNv5i4HCQ0bHNBCKCNCFb7l1uYkO3+AEKXSGujFfw
	Fx2uUpOdZQKwa1xy4un4N1Y1eEtb3iRmTG4MNo4G/G0O4vA8ZjVusFd7N7+h5L+1
	wPOCEjFgc86mb/FIv5lLn2ZYZX3f86zaTkY6/I26bZY8P778V7Btajd+gnnpMC/p
	utU1lztRL/NaasJGk9RN02lUqc7ipG8nVl+nJ3MjeWZmEqRj+cIksJFZOpr7Iwa/
	bblXbMVav2pb3Igxv5pv0vA/VkxZAL7iDbKjcOglQxyho2jttx2Ylm5cy/0hwtJl
	nZi5Gw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46gnp59pfc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 08 May 2025 14:47:29 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c5560e0893so16671485a.1
        for <linux-phy@lists.infradead.org>; Thu, 08 May 2025 07:47:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746715649; x=1747320449;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9tZOCsJGlyFLYoLfnAHP+VSjddc9mN16QDqcdZ3mWyQ=;
        b=VcWzpCWgJ2RLcGdBp+x1Y/qm33dzNGQLW3LzR+k3Nv8FccOEtLkE6QuV8CvV2NgFFH
         jEDQsUrzWnv1Ph0NMnrVvoLd4UwJR/7pY18WjWLyuS+t1f+pF3epduwAA/raTomfJQR2
         ACKqWL2xYZib42FXopyG8+3+tnzYMQ8ijOHmSKxyINk2weFaxzGMtxXeClOyVupm0c4/
         5M4uRpRYxwuhWOvE2lF0Zj1i9CSR9fDK0dhvyJohvd45ncsmxP7Gl2UO6D3VRe9g+b7S
         Ss45II3G0mW4WZngIvI4xCtKeJWRVZXQEVcfps2ebGYzwtvIGXOEkBQVRbvQmqzQ9WlA
         Xw4g==
X-Gm-Message-State: AOJu0YyWGjHiH3+9hmlJTWmMTREKuIq9LUudx78b2WOq8EnknW9N+Adj
	2Nc+jSwBYj3H2HTiT6vsecbgqmeJFM4ipsKQBd/BZgu3tGsSeqI07rLbbMi4/7yM6W2+s4Ho81A
	X1cuawwe0z6XeifOTlAOg94w7+yu3PB9fSUq/cljEgOVT24m9CEPbUlXKPA8fH4Kc
X-Gm-Gg: ASbGnct3OLczL10ntaA0WWKe5cw5ZrcfiuJ7RXFsh0/i5wjOjkw+NBjMrnn6+y3d8ci
	QkFfE9s5YpWuxK7Q/Alg5A4yoR+K2QSnl0WhT+Tah9t89a2i6e8plVKTCLF9cRfDx9NPqNpRjOA
	iRUuY+Iq/dYRjlXk1BvGPuqRVDNimjkPI0pWRkpxKEvIkVQlQLTRpDpNWK4zIqepFvS+0wC0Ozf
	eDiy2pjpFfS9QMgrMD324Bt7dxZ2Jpo94oY/49EhlxhfNLft68C3UP6yCsqqLLCqVHuLO/2D4d9
	cGAOvZnU6assSlnJpkv12eWkzvMtROGAd57FxgMfCbPse6YB0lES9N9LfLhY0HHaPGg=
X-Received: by 2002:a05:620a:254c:b0:7c0:bb63:5375 with SMTP id af79cd13be357-7caf7385bdcmr375785085a.4.1746715648863;
        Thu, 08 May 2025 07:47:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGbEK+0rVOs5KX20bF2OzVz+4r7xuzdh1bFzxcezKHmRZSJtEuVUnd36y5OF/bb2KQ1G70Cng==
X-Received: by 2002:a05:620a:254c:b0:7c0:bb63:5375 with SMTP id af79cd13be357-7caf7385bdcmr375782885a.4.1746715648491;
        Thu, 08 May 2025 07:47:28 -0700 (PDT)
Received: from [192.168.65.105] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5fbfbe5c5bfsm2220198a12.9.2025.05.08.07.47.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 May 2025 07:47:27 -0700 (PDT)
Message-ID: <96c54162-f985-46d9-820b-48868cfb1405@oss.qualcomm.com>
Date: Thu, 8 May 2025 16:47:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/5] arm64: dts: qcom: qcs615: enable pcie
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
References: <20250507031559.4085159-1-quic_ziyuzhan@quicinc.com>
 <20250507031559.4085159-4-quic_ziyuzhan@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250507031559.4085159-4-quic_ziyuzhan@quicinc.com>
X-Authority-Analysis: v=2.4 cv=Lu2Symdc c=1 sm=1 tr=0 ts=681cc401 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=u-Wjf5nI4b4gXCDVDnUA:9
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: k_-FQ3JHLB4ts0_s06dfTqvwTsNwZp_X
X-Proofpoint-ORIG-GUID: k_-FQ3JHLB4ts0_s06dfTqvwTsNwZp_X
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA4MDEyNyBTYWx0ZWRfX1VqQar2gtuJN
 ON8+5UZBP56Pcam1vPmg1WHzVHZcAeb0YyYN6ud3k0Bewby/Fu3wZlqjCPgo4WhEkgvUSeUmwu4
 kaoW3euIj6QCSXUukt4NM2TBAqPU351OnxJCKcZ/XPeR5TukotMsA2sAuh6Rbz8mOBMnLjr93mX
 D/KKJmt3E93KzWUwTv88Mv8nHWQy3Zm37FyTAiKRGnJYlJlHF+ojPLzW4vbLcOzD4tsSlCbz4tH
 Mw3lPuruRKQ47ZWnHCpD7nqK3mSW2syy7MNxcuPQIm9DJkDSjztfPGTWFT6M0Sg18njnUpyaV2G
 /Q68vaUT/aIjQLMDwMZtXDrLNmN8WgCgvrtp+tTyYDSQmfL0s58IMfvWYNH7tCs1YYeyRC9roOH
 ln4VYIBRCDFxdnK/FZkYokK6NK6ZaW3sfbH6aFNnpynC31CbMhNY/L76H6TrxP0kYJD6lvLh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-08_05,2025-05-07_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 bulkscore=0 mlxlogscore=668
 priorityscore=1501 suspectscore=0 clxscore=1015 adultscore=0 malwarescore=0
 spamscore=0 impostorscore=0 mlxscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2504070000 definitions=main-2505080127
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250508_074730_832273_B3918306 
X-CRM114-Status: GOOD (  10.57  )
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

On 5/7/25 5:15 AM, Ziyue Zhang wrote:
> From: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> 
> Add configurations in devicetree for PCIe0, including registers, clocks,
> interrupts and phy setting sequence.
> 
> Add PCIe lane equalization preset properties for 8 GT/s.
> 
> Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
> ---

[...]

> +			#interrupt-cells = <1>;
> +			interrupt-map-mask = <0 0 0 0x7>;
> +			interrupt-map = <0 0 0 1 &intc 0 0 0 149 IRQ_TYPE_LEVEL_HIGH>,
> +					<0 0 0 2 &intc 0 0 0 150 IRQ_TYPE_LEVEL_HIGH>,
> +					<0 0 0 3 &intc 0 0 0 151 IRQ_TYPE_LEVEL_HIGH>,
> +					<0 0 0 4 &intc 0 0 0 152 IRQ_TYPE_LEVEL_HIGH>;

You added too many zeroes after &intc, this could not have worked

[...]

> +
> +			eq-presets-8gts = /bits/ 16 <0x5555 0x5555 0x5555 0x5555
> +					  0x5555 0x5555 0x5555 0x5555>;

very odd indentation, please put the 0x's under each other

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
