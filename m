Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C62FD68B07
	for <linux-phy@archiver.kernel.org>; Thu, 14 Nov 2024 13:04:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H+VCmjMAtgmSl+dSDwPQ3PNBBppNBevz75yGTtG3+ic=; b=zHS1GktNMT1e04
	fRLQsiD5FyXQXeIBudHNf8IuEH1AJSOrCl3MEnIE/2gp9s9AJl/laUKhJJW1mERAH++b9UcnEoFtp
	IPcmtDGYyJnCL8Zfjpd5Dzqb8sp0JN/eMuB+aaU95QDnUbF7tjgjYWilPHK9dSXTAL3Y91GME5C3e
	fWDUD9oboahD6pePwn5jNm7j5CIxaCkZ2wRcnSpd8FuQCHXqQILa7jw0C92RoMZsxE9Og3pdJQaFj
	BM4FLadIZC+NuQvbiCoGXu1kR/wIaUt7UVx6qiBR3h67MzO8ZHzPYEY6bKaVcdDVeVLgkkLYk8CaG
	sz43NNEDEvLltIjdpV3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tBZWK-00000009zyN-1opJ;
	Thu, 14 Nov 2024 13:04:24 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tBZVP-00000009zo5-2qSW
	for linux-phy@lists.infradead.org;
	Thu, 14 Nov 2024 13:03:28 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4AE6AGFe015430
	for <linux-phy@lists.infradead.org>; Thu, 14 Nov 2024 13:03:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	g22KIDEPaoNrEA24yQ44dQ827iCOLGg+LU5vT4ZbZGc=; b=AnXMRpYXM1EZonAy
	iqybdSbcTXmXFiU66rf1pP3HlN0g54xEbTXjNWpqiRxRVlJCH7eQNPdQSr6/HWam
	y4B26DlMQQCPOhNVZfB0XZqq6lwME9KnzAOt8bWoRX4KaewJkuZpfsCT1K7EA0CI
	GtbpVQdOL+5K+t2PtVi21Tdx/KG9j9t8+b7spw0LZ7onF2vgdQRju4xU95mCKG+y
	EWxugoteOQBeDpFTKM55H4tUP68/r1sInbgckNujrnVDGTT2QExlKImSconyh06R
	9SQazv+t8WCpwfwrb5Ijflcsd17z/wcwjTgzSFkElCUP0sImXLAz+go2sOKRjUvB
	Iv/iWw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42vsf3525j-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 14 Nov 2024 13:03:27 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4609c883bb6so1385831cf.0
        for <linux-phy@lists.infradead.org>; Thu, 14 Nov 2024 05:03:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731589406; x=1732194206;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=g22KIDEPaoNrEA24yQ44dQ827iCOLGg+LU5vT4ZbZGc=;
        b=MeX7EYzUyTxGQVwn+I1aAUcdS4MxkbWLqBwSZ/xr4WpMMjVijtajtmZWvb45hTGCin
         1yxcQNWawssbpXg+TLfHvS0MfodjI9CJWdSQt3LACuIsw2E5vgknS8+7ljKVzrXlHeLb
         FaT7qt0R97H6yhb+BO3ws2P7R3xPPMuE6hUwdDgExWoDTGUDGHcPSrEiYFV2UUpNOpok
         EawEF95P4y7DYM3Z6Yc9HGwzJ9Si44XTas49zZSsGYvlzgKkubQOE95C66JdU6+UkZNa
         s5ft0QkOCFObJQn0dzxgUFYOdcFP5vMZEhqejuPcfOjQPs336aO1vmJCWKDgqT875PmV
         ir+Q==
X-Forwarded-Encrypted: i=1; AJvYcCUPlxZdd2L+ymoHRTM/wmF2Hnzdu5W2RejNtwv0gOl7NKlaEVsYqkDYbAcusxxKJZhljFy2rtl+JCQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YxlGRf7ejsHgNQX9jDS6644Zr/Y3uAiJC4K1/2iVbdeJJki4Dcs
	XfcuRK/Dpjn/EdFc2mA12wGB4XhNva5kd2bVA63X6XbSA4M7EbwFCKZffiSYYa3DMfWf1uEAFZf
	5t0fzf2DmQfrCBv+lnzcYgpvyXoBXTHe/e8vZIVDWqMgbhmPTqCmfcqoP8u3nTTZV
X-Gm-Gg: ASbGncunjSEVHqB3enUybInFvWIBLNcv32RSpHga3lSEjfQZpBbzwz93tQ8L0mmhVU7
	32/zhtw4PbcYlFLzRdJsQLALJv9vsB2pP7I0AJkEV8vv9A7ICQhMlQ+9OgMO4OTcU94Ta68oZJj
	vbAUc1HwSzFLlaS5iIEgNPyhlpXrTaZUEpw81y/lA7JrwRunqxA8MUSYVniR0y26Ywpsud48HRq
	ms6GaanlndO5keAgZPg5EwwFTwrzfjFGGOl/cirVC7BrpkHCXEP/sI8IN9hsIMyAM+9nQ6WV4Bv
	AjV6JgYAmv4SVklW20wxxjbD1b/7CwY=
X-Received: by 2002:a05:622a:4b0e:b0:463:5391:de49 with SMTP id d75a77b69052e-46353921c77mr26518881cf.11.1731589405741;
        Thu, 14 Nov 2024 05:03:25 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEnYr/dJ9JI7zdcoIIcj9YSm0IKKIhzv1y8yOR26raCDF+9A/UXkpyuCfsNPOChTVAIJ0zHnQ==
X-Received: by 2002:a05:622a:4b0e:b0:463:5391:de49 with SMTP id d75a77b69052e-46353921c77mr26518501cf.11.1731589404570;
        Thu, 14 Nov 2024 05:03:24 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa20dffd6a6sm61162066b.99.2024.11.14.05.03.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Nov 2024 05:03:24 -0800 (PST)
Message-ID: <26943ea3-109c-473d-818b-2a08dba859ab@oss.qualcomm.com>
Date: Thu, 14 Nov 2024 14:03:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/5] arm64: dts: qcom: qcs8300: enable pcie0 for QCS8300
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org,
        manivannan.sadhasivam@linaro.org, bhelgaas@google.com, kw@linux.com,
        lpieralisi@kernel.org, quic_qianyu@quicinc.com, conor+dt@kernel.org,
        neil.armstrong@linaro.org, andersson@kernel.org,
        konradybcio@kernel.org, quic_shashim@quicinc.com,
        quic_kaushalk@quicinc.com, quic_tdas@quicinc.com,
        quic_tingweiz@quicinc.com, quic_aiquny@quicinc.com, kernel@quicinc.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
References: <20241114095409.2682558-1-quic_ziyuzhan@quicinc.com>
 <20241114095409.2682558-5-quic_ziyuzhan@quicinc.com>
 <rg4isufmnhnbsiljm34rfdsn46gfpatbsiscynaqtsnykbhnm3@ovcaulkfj4nk>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <rg4isufmnhnbsiljm34rfdsn46gfpatbsiscynaqtsnykbhnm3@ovcaulkfj4nk>
X-Proofpoint-ORIG-GUID: mnFjfXWJLRq-sybDGRzliHDM_SyeezQB
X-Proofpoint-GUID: mnFjfXWJLRq-sybDGRzliHDM_SyeezQB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 adultscore=0
 bulkscore=0 phishscore=0 malwarescore=0 suspectscore=0 priorityscore=1501
 clxscore=1015 mlxscore=0 spamscore=0 lowpriorityscore=0 mlxlogscore=749
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2409260000
 definitions=main-2411140102
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241114_050327_761513_F25596E2 
X-CRM114-Status: GOOD (  16.01  )
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

On 14.11.2024 1:10 PM, Dmitry Baryshkov wrote:
> On Thu, Nov 14, 2024 at 05:54:08PM +0800, Ziyue Zhang wrote:
>> Add configurations in devicetree for PCIe0, including registers, clocks,
>> interrupts and phy setting sequence.
>>
>> Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
>> ---
>>  arch/arm64/boot/dts/qcom/qcs8300-ride.dts |  44 +++++-
>>  arch/arm64/boot/dts/qcom/qcs8300.dtsi     | 176 ++++++++++++++++++++++
>>  2 files changed, 219 insertions(+), 1 deletion(-)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts b/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
>> index 7eed19a694c3..9d7c8555ed38 100644
>> --- a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
>> +++ b/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
>> @@ -213,7 +213,7 @@ vreg_l9c: ldo9 {
>>  &gcc {
> 
> The patch doesn't seem to update the gcc node in qcs8300.dtsi. Is there
> any reason to have the clocks property in the board data file?

Definitely not. Ziyue, please move that change to the soc dtsi

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
