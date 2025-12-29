Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4AF54E8FDB1
	for <linux-phy@archiver.kernel.org>; Mon, 29 Dec 2025 12:26:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zxu1K9dpvDWo89U6dltsW3bGsVJJfhpoXhMKl8uP4o8=; b=JRBFN2rNrn22f3
	z7KTXSYXWVOBEFgLmk7ExfS7uRc04QblkfYpFlCaVbqPAhdDZ2RNRUWbLa/rVbGtJG+Mpv1XdR4rv
	P1FyaGsoXtIwPrtYQoBlZu/QuU5q3o9ubtCv+A7Y3uLWNCgJni+/OT8vOgukx+ytVIstSwZt1IWQm
	WOeFOT1ykIWFB0xNefML6GYungZ5yRAuKyXAVVgnU3Z0nAfINIaitawmJL+MyKpOZCNgqeHP6+rjX
	UtZcHrAMN1wryPwl8ZZQ0u+4KmHNWpBZvtDm00hXP+yUyf2i/m+eUXDpf1bhW8M8ux+rmS/ez6Hu6
	SHFW8FTTdVuFAE5hg5jg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vaCKH-00000003fjD-3PlD;
	Mon, 29 Dec 2025 12:26:17 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vaCKF-00000003fj1-3y0O
	for linux-phy@bombadil.infradead.org;
	Mon, 29 Dec 2025 12:26:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=mN6LYrOGWt+c+fADT3LUTFhdUHN5Zo/kGP75Efm41s8=; b=acVne5b/dXE6iDI+xp8i6cS5UD
	mHhVPKXchcFtY3fxbtYsFvPP16zzfqWy8IZsiizxnoE0dKzVHff2d7htFAGE+Kl4VGURxD/KOXBJh
	KsjBnwy1zpDNhfxNpbjqRDtsygtrUQSM7bRCgCtMPt8Av3mbFkrG+N9ZW0ukRB7s5pB/5upQalPKT
	Rni0S1zAZeV7sckfVV69CsITfBQ5ji1mu4MyQUn7jDSIPDybzs058A0eN05fp4J4kBkbtIn2SxBW0
	X+LaDsqCele9gZPtlfrj++qnvXTq30ccwetoLdSOY97lBbn6yINBzMmzauYgghwhJmDoNxCS4U2mQ
	AChj7OVQ==;
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vaCKC-00000002kaW-2kVG
	for linux-phy@lists.infradead.org;
	Mon, 29 Dec 2025 12:26:14 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BT9L1fl2919557
	for <linux-phy@lists.infradead.org>; Mon, 29 Dec 2025 12:26:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mN6LYrOGWt+c+fADT3LUTFhdUHN5Zo/kGP75Efm41s8=; b=chMeYr0co3R7t63a
	BiwmMzlSUGP3AfGKxHn3Jla0+pYUFpxTUXEyzG4fPErhIVZV8NxVHRx9gyD3Q863
	FU38wg0uFWJ41jswzR8Z8vZA+fCwzL87vCMbk9M3pIzxTePfBcU+RTJKDVYawvwn
	Jbm5PxOvsLZf0pzhrPGG8Xuoi1KuOoiLkePalrmzcXWJ3gy+K53rSkOM/u1+QSsY
	3Ro2buUfu78uPupYPViDmBDYBkqAfWR8ZjHtKtmnhZCD1kJneWCM9KZGiLL2LvND
	ALvjD3bqzi1h1ErXyEmIDZX3kgV+yETdriSzn6A3ztauaK7zb1ms78U5RvFMgxWR
	reVvWg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ba4tnvgmf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 29 Dec 2025 12:26:08 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8b9f3eaae4bso303515485a.3
        for <linux-phy@lists.infradead.org>; Mon, 29 Dec 2025 04:26:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767011168; x=1767615968; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mN6LYrOGWt+c+fADT3LUTFhdUHN5Zo/kGP75Efm41s8=;
        b=DkUMCsaAx3gXeFOi25S61DnSrOKD3Xx63WSZ1ET/EopFDG7wpnjhphGqe8Oy3jTkX+
         oJVxdbnHeFU3w6/yqzzR31PqIIEF6eNWK3Kvef/T+GSbDqJIKPPDVQQsbD7G08ScF0q7
         09x1wlRWynsOZnAXhZ8ZezX67fAlxmtO5NvFBdncPOkTGaZbWOG97W7vabrb9nhkLwsJ
         vC1ZzZcPM5D7k73LSkQYUS0z4RdRlmnjC7SqavZolpfaMH2iAVgGFdLdR8DBW5oPbrwh
         eBL6CJmRHar/mFiw3txZDMkIn+TOp6NzTOMueLRTwWrhXJGsGrW22jPy4P56wsoahiCB
         /T1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767011168; x=1767615968;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mN6LYrOGWt+c+fADT3LUTFhdUHN5Zo/kGP75Efm41s8=;
        b=Pu2WjX89mQBc8RlJdah3p7uIHl2CFua2mCTw2cGOL5FcDCi04tp7llCZPeLnHXIjTm
         BNLXKmTWN5nO+6nJu6V+TLhJA1frvGNAfRyBXyBp4Wm/bUCBHuvI9KexIYEArVe6ZhpC
         5y4Xsh2Ta/7yUZH26ArWUXXyNqIGKQyVGCNBjcq8y6KQlCTNNl9BXUAD6NeM7bAyPs0I
         Ind5juT/KiGSksc5UuRZnqDNEfC069GRZ7h0hUFQUasqRafny5EqyGWS566hFfcjA7SZ
         9GdanjFfpBAU/ga7A6t+w7ARR7gib1f+gi/AYoxb3TXmQzy7/oEn/C2busMkWPxI18R3
         JanA==
X-Forwarded-Encrypted: i=1; AJvYcCWfSUtCpvGK3dGldsLM7QARxJyTw3Ccka41nt2RO1atYWsIOL+nCuOPhWzvBaLo7r/wEYQ2vkUNPG0=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx8o+hdAI/deXaLUC9JX6+wYuDpmf9+N3lzMtdS5iPPjr5DeuUz
	4stAicUEElCsMfw2QiLMxbRgk6lLTsL4rsUZImUyQkOs1a8bSri+aO6x4UHJbl5gmtPnyXkAQsg
	nb437lYKcaksNxDVzB0TBtbM32QUdj8sJdg11Kdn67h1ebXbE9T2SKZ6qm5EvbL79tpeh
X-Gm-Gg: AY/fxX5QPgIYOjMiAS8dfT0T6sE+coV/xsPRWzr99SSNFpbtzyKwOW9gYHp4hcZXDoc
	AOoTMUKfVAQrAHFOao4yanHSN5QUrbm5NqnT7bzc5wd/0MQBMTfo5pwXixr/YRmAwfZuZfUjw7q
	V/pSgBZXpqo+n1SYXng0kBYVs0wMHT9CW5IhamGWU6mNiJbRIKnjBjxoTLwtdzUMqlcu7ZMcFF5
	4g0HiEzdzyxfR3N6lAel6lE1offUEP6mb9VBR45XGOaNjmUSnhdknMMBZfm5h30yPrv5XmTOS6S
	p15uu84LzsEWf6Sc7QTuy1VsPOzuWUq/YzlgwHipgIkKFhdVK1aM6JXUJzm3FQVc3xdptgn9h3A
	kFMk2KzpRMR920qey7CcsUw/38lw6zSA2UpyEhW0FAcHjd9VcTavHEYwm7iqDm7Mgmg==
X-Received: by 2002:a05:622a:4d:b0:4f1:b3c1:20f8 with SMTP id d75a77b69052e-4f4abd30b01mr356524191cf.4.1767011167860;
        Mon, 29 Dec 2025 04:26:07 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHTNhJGS6wpzmfsSBspDO1neXn7hzzMwDf7y6CRLVLjolv5e+1eTU6agqRUfN/9vpmI89qn7w==
X-Received: by 2002:a05:622a:4d:b0:4f1:b3c1:20f8 with SMTP id d75a77b69052e-4f4abd30b01mr356523821cf.4.1767011167324;
        Mon, 29 Dec 2025 04:26:07 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b80377f2f18sm3295432366b.0.2025.12.29.04.26.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Dec 2025 04:26:06 -0800 (PST)
Message-ID: <5c97bac1-d796-4046-9450-65cc99ef7469@oss.qualcomm.com>
Date: Mon, 29 Dec 2025 13:26:04 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V1 1/4] scsi: ufs: phy: dt-bindings: Add QMP UFS PHY
 compatible for Hamoa
To: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>, vkoul@kernel.org,
        neil.armstrong@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, martin.petersen@oracle.com, andersson@kernel.org,
        konradybcio@kernel.org, taniya.das@oss.qualcomm.com,
        dmitry.baryshkov@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com
References: <20251229060642.2807165-1-pradeep.pragallapati@oss.qualcomm.com>
 <20251229060642.2807165-2-pradeep.pragallapati@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251229060642.2807165-2-pradeep.pragallapati@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=G+YR0tk5 c=1 sm=1 tr=0 ts=69527360 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=x0PFmZ93Zfwba3del2YA:9
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: A7TVjrclbCQAdcKpv61yy-fX_BbpNIO7
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI5MDExNSBTYWx0ZWRfXwPJCqqZmgPPq
 czuW4l1FrlrepaAhZ5BNS9irGbJ0/sCaOoRg+lw+otIkNHFwu1f2SSN2b/iIAUdNxtvXjfff02A
 uIeF56MwjcCEL8i0Kb3wh9tPTlsDTfuNQjUpsiJ6VYPcqdnNxHkG6Ll88jI2v495QxD2rhl6zY5
 OXXacWm6/4KW99CvZIfgYxxMaI2lZqg2Qc6RqIt1lIq33LAActkN6jmP96MCnsBsbgvikt65/hL
 GyMb7EZXKiLYro827jyD5ZNwr5qmFy06YL7S/mU7D9Bi2KSIOyOQlWmLBsfdBmwKGbzkFtHCx4u
 8yw7XvbPIqRd+izmSoNa6I6yrN8PepmxB+/vzMs/OzctH1xe0rJ1mNEjynVFjiK1+hDWQLD/1xC
 TPYEnichEAE6P7GpfvGae9/C0wwsRTp/U/27aI8+RkbMZ2PAYzPW/Q+HKo0n1Lnfq3g8/nNl7yQ
 MJ5ZA+T5OTAfrDiuRYA==
X-Proofpoint-ORIG-GUID: A7TVjrclbCQAdcKpv61yy-fX_BbpNIO7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-29_04,2025-12-29_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 bulkscore=0 adultscore=0 spamscore=0
 lowpriorityscore=0 suspectscore=0 clxscore=1015 priorityscore=1501
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512290115
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251229_122613_094739_EFB629DD 
X-CRM114-Status: GOOD (  14.67  )
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

On 12/29/25 7:06 AM, Pradeep P V K wrote:
> Document the QMP UFS PHY compatible for Qualcomm Hamoa to support
> physical layer functionality for UFS found on the SoC. Use fallback to
> indicate the compatibility of the QMP UFS PHY on the Hamoa with that
> on the SM8550.
> 
> Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
> ---
>  .../devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml    | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
> index fba7b2549dde..b501f76d8c53 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
> @@ -28,6 +28,10 @@ properties:
>            - enum:
>                - qcom,kaanapali-qmp-ufs-phy
>            - const: qcom,sm8750-qmp-ufs-phy
> +      - items:
> +          - enum:
> +              - qcom,hamoa-qmp-ufs-phy
> +          - const: qcom,sm8550-qmp-ufs-phy

For platforms introduced before we were cleared to use chip codenames,
let's stay with the numerical identifiers for consistency (i.e. all other
compatibles in hamoa.dtsi say qcom,x1e80100-xyz)

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
