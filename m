Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8EC6C71136
	for <linux-phy@archiver.kernel.org>; Wed, 11 Jun 2025 19:55:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t4S5MT6XYmrU2VHPpHjB/GqvjPjVt2fslowULmwTeEY=; b=e6yjosWjrH7QP0
	Ejunha5J/v/y+UzwEyl0xMEXGP63etGcfTn2JU2X/0xtGQm7vfZeM8KcqxJlOihaAkFep7Yz+Qtu9
	5lgYIDpORU1J3p9RKF27C3bplsI663a0pLNvCJ6GdVRqCKIABuTDhYyffvCkh96GGgeOAiHy+WIIs
	iI2xsR8BDvHzIHzLZ4nlkZ6gJYtr/wBQuvaYTOCgT1y+r2Eade6p8/IVUmu7gZ2ExaSee8b6NtDCk
	S6kjz5/ZLGKY+t4fQhgKbbkxeZex7aDfEKEeDkKu6+DCVMaoJRs8z25Nr53QekXYfU3mTD6tmc00S
	u1hIeQ49Vf9uy6wfdRFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPRXx-0000000B3Yu-1GyJ;
	Wed, 11 Jun 2025 19:55:41 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPNTK-0000000AQ4k-2t9c
	for linux-phy@lists.infradead.org;
	Wed, 11 Jun 2025 15:34:39 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55B9DtYL010407
	for <linux-phy@lists.infradead.org>; Wed, 11 Jun 2025 15:34:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hNaG/m5ckjCaNCaR3betd1kEB9RBVitnuO8XEu1xsPw=; b=MTLXh2x2vBoA5M42
	K0m6KQf57LfkC9rvRxdn+ZUlhTcxaFcUYKVg5B3t7ceiNo3MLdKh/FLEWbllcP8o
	i3MiyXxNjWiwAE0XT6UXymkDo7uRpu16raU63odzU3QDst3vDo0XMOknXH7x2VGe
	pXCPcR0Rpn62kvKzjofYhKtjUiXn2fpjOt4PkupXryTjtk5INDG1XGAAUaS1Ve8g
	rnk3Eb+9NShsOXH2+5u//NZVr1/GvAhcLXQxNmHL6HJm9LF3ftuXpEZKzt9ORWiF
	ugcWOXHFk1T0P+InwjVn1Qy41Y4I8Cfz0JuVne7w66zu000ThPJfpLAESTkJoapX
	zpIwDQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47753bsf3q-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 11 Jun 2025 15:34:37 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c5ad42d6bcso14196085a.2
        for <linux-phy@lists.infradead.org>; Wed, 11 Jun 2025 08:34:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749656077; x=1750260877;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hNaG/m5ckjCaNCaR3betd1kEB9RBVitnuO8XEu1xsPw=;
        b=nrY/8h6gUTw/psDn/1fJxtqUs2I/8EFrdkbPnv8cEoD7cPHCDyKnGN6aWE7dXRLbE3
         A2gl+GZTkJtxv0Elyr7+3XwH0vNuIW/2U9XLaB3qS+GyOaBqexh/yi99JOERj6uMpBrr
         Ype/uyC4PABmEjSvdpoqpxq1FKyiF/dXKMXVxR0YoBMLetB7UUHrahBrvq1H0AKvBALH
         aJhEjwml0Y2uoNFsg05AwSqdtOI8YQOxgRBqah4kdy3p3zMv2qnQMoKBDT06LOoqOral
         H+ICGLMtsxxm0KTKyzbOsx2b3IVMXvATThfQoGkE6QUssTXKVLwZ0s58Q+ybhZcogzjA
         dm8A==
X-Forwarded-Encrypted: i=1; AJvYcCWm5zV84e6sHryleaYRQ+WffbbMnZEl4nTtpuzncRG2/+DywK6uhVtiDvdpIQV7GaEQroGAdowmYDo=@lists.infradead.org
X-Gm-Message-State: AOJu0YzZgEyU+kZFkqG9eRPbPUmA2w7UogN7jwPaebRUtGXbwDjNdStw
	qiOSwxGD6yxsrF5i2mYijN+AaEtK7kd8TbXPgzhVzaym88KtMyPpxj1Fh0lTnM8DVZiEToC+Ocn
	YgFinwQHKUAbvNWVIARxRBUdM/DeArBuGpCKFgPT62VghwuBBaIP2LhYaIfri0WXsJZtK
X-Gm-Gg: ASbGncsbZtEwIlk1zS/sV15tHuDRJIN4Sz+sT5QX91iL5B3ZnrQEiqmW+mC8IcRrtac
	UiiY9KRPw/3M/2+ewNf3oq05p1TeePu2mvW2HDLCpWQG+PAnpWFZTyGpzZUbOtoJa9poD9GysI9
	/iVmYmIAo5v9tpgeKnU7C2hK5tIcqltn1BjYYzWCLEWVA8d7AFZauelhfVU/xORtSYRD4GLkwno
	Rz+JZ5SXuUiMyyLHkvnGyxAFhPrxGLQ+EPdITWs4UsEGDBmsI9epojFmx6VxUxuHvmY3T+nYRZa
	l9oR/7TPuDW7kUxrRiemnvBCOstxCSvNIwPhi2M3miDnkFMFkJsP8TjgpTyhUorf8hft86yB6Il
	NsaI=
X-Received: by 2002:a05:620a:2456:b0:7cd:4a08:ea12 with SMTP id af79cd13be357-7d3a8732298mr205847885a.0.1749656076711;
        Wed, 11 Jun 2025 08:34:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF/ouoE52qGE7NcwixeAf1E/9WuVIcED+AzFLeYamXtXx05GWCerQ9yNA/jVMaQIkg69Bj3+Q==
X-Received: by 2002:a05:620a:2456:b0:7cd:4a08:ea12 with SMTP id af79cd13be357-7d3a8732298mr205839285a.0.1749656075131;
        Wed, 11 Jun 2025 08:34:35 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ade1d75467fsm920990266b.14.2025.06.11.08.34.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Jun 2025 08:34:34 -0700 (PDT)
Message-ID: <fcfa77dd-d7a7-4d3e-8e67-6d3f3eb439b4@oss.qualcomm.com>
Date: Wed, 11 Jun 2025 17:34:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] arm64: dts: qcom: sa8775p: Add PCIe lane
 equalization preset properties
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, jingoohan1@gmail.com, mani@kernel.org,
        lpieralisi@kernel.org, kwilczynski@kernel.org, bhelgaas@google.com,
        johan+linaro@kernel.org, vkoul@kernel.org, kishon@kernel.org,
        dmitry.baryshkov@linaro.org, manivannan.sadhasivam@linaro.org,
        neil.armstrong@linaro.org, abel.vesa@linaro.org, kw@linux.com
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        linux-phy@lists.infradead.org, qiang.yu@oss.qualcomm.com,
        quic_krichai@quicinc.com, quic_vbadigan@quicinc.com
References: <20250611100319.464803-1-quic_ziyuzhan@quicinc.com>
 <20250611100319.464803-3-quic_ziyuzhan@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250611100319.464803-3-quic_ziyuzhan@quicinc.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjExMDEzMSBTYWx0ZWRfXz7cL+JJrjjRH
 5hFASowbPJh0OBgwvB0cKgCn+Pm6fVn4vdVQ0GsK2hBOYyraNy4Ui/XSAwCTYlX6dkjNgH4x6HZ
 xDXO5eCKXdcGL0DCJHdpPThBS0GIJ2Q++7dKpCmWFS8IL0JnSw3++QC8EyjCjZZMLmKgx6r3VHL
 ENCsckFVXx/XSAR+lgEHtF2YSIdxStVZmaiUD6mN4Pczw9q4Mf5gHDVdb6NJN7o+yD1ZaOWZXL9
 XiqirDqtHvtz3OcihXBq/LR+4GR3KsxAJZQtI6lspaO8idKmHE0XIqhtEnA1EagnCyhAOw9iM8T
 lmXe7Tj70k4PcKSZlDh+DkoTUxQMr/jnH49k0vf6US00xVKeZgpWs8J2HJoPnrLjwY/yfpP8tzo
 C2RYDsgA0ksA/8kzmZD1n/n9tzdBDDfQIITeGdrlSMpeD2IPhjI4VxWcL2ZQ4aSY2GB1cNUc
X-Proofpoint-GUID: fpsZcw7LDlNtfCbvo7nO90qlZ4QMjsAY
X-Proofpoint-ORIG-GUID: fpsZcw7LDlNtfCbvo7nO90qlZ4QMjsAY
X-Authority-Analysis: v=2.4 cv=SqOQ6OO0 c=1 sm=1 tr=0 ts=6849a20d cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8
 a=E4L0-HUXtsqUrGG0iVcA:9 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-11_05,2025-06-10_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 mlxscore=0 mlxlogscore=852 bulkscore=0 impostorscore=0
 spamscore=0 priorityscore=1501 lowpriorityscore=0 phishscore=0 suspectscore=0
 clxscore=1015 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506110131
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250611_083438_849192_21349B2E 
X-CRM114-Status: UNSURE (   7.60  )
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

On 6/11/25 12:03 PM, Ziyue Zhang wrote:
> Add PCIe lane equalization preset properties with all values set to 5 for
> 8.0 GT/s and 16.0 GT/s data rates to enhance link stability.
> 
> Co-developed-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
