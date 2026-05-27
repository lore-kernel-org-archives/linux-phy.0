Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70EB2CD5BD0
	for <linux-phy@archiver.kernel.org>; Wed, 27 May 2026 13:33:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AlhxbwReVNUNuHgB3pm6V1V0LlV0Dq4/usMK3//SwFY=; b=kmeJp3G2XKUdsE
	5ssMR5uw3OspZMcuzHU41GIhNPHnzNndGAK4xjWZcZBCrZrIMLfnfTBpCmngSPQc/wIaTryMi/qhA
	q2zwdz6OkcqG6b7Tpde5MbXhlRfIyVgjlMKLTS2LsjNMOMRNZKtxLMKihL0zD7smyyl0hpwpGmzrg
	HOQnf5a5eOF9L5XvF26rSXJS//garOcoF1F3f3wW8c+BrJBTVOEEsL9rBNW4LOjmzofs1dR9OM6Le
	2JoBpmUgPsp/bBEjyddSEDs2+3UYHsKiJX5tOsvgmrlPOE/mcXFn15q3J1MURqOoMIJ2zDTRdI71N
	A/7TUMo4X8YJFs1KwkXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSENb-00000004CT2-3oN4;
	Wed, 27 May 2026 13:33:03 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSENa-00000004CSb-08ZG
	for linux-phy@lists.infradead.org;
	Wed, 27 May 2026 13:33:03 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64RAWUDI150161
	for <linux-phy@lists.infradead.org>; Wed, 27 May 2026 13:33:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	CL59JHQMdaZ9xSO2ZRHaR8OddiR/bapur84ZCcORKo0=; b=WHfLAHLXddp08c3h
	sDZgxxFDiMINQqglTS+vQtgTGGoCi4s6zyQWM9ft+o1zGgHOPqfAL9ufQmBcn0CX
	Z+C/ul4DgBa5BR7KVgqtzDmlvYDqik6jWm8gvRj1Vtt8t+G97DUNJQFM819RWyvr
	5CyIJiYWGpjsfHHXfZlmGyNbhe/bwFRLXwT4wqhfzuaxLGkCT03J+fNlIlpcTTGC
	rQlFVzv+oy+FbWzkzKuTt+4/QOvz7ImiBwkW4JSs88Evbn4X2ZcspqUhoeG/70Kj
	XbeNXO3m4GMXQyGsV/ggtSud/dN3/BHMbfGA9S2t1ZlFls4kcHTRPln9axtEI3c0
	CHJOZg==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4edxxvrkd4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 27 May 2026 13:33:01 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-c828f0f5c23so5774669a12.1
        for <linux-phy@lists.infradead.org>; Wed, 27 May 2026 06:33:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779888781; x=1780493581; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CL59JHQMdaZ9xSO2ZRHaR8OddiR/bapur84ZCcORKo0=;
        b=Zi7Kz2Q0bnq87nMMD/3MhKrgTO2DntfZrPOjUYQzApMTid8om+dBvznnY9tPOx9PlG
         xn72N1YdPCNDcTyHxhJnCPay2KRpND3GqHRDaISTPIp0FgGbyqxAOk1hNauxK0j6cGci
         hYEVkey69biNoZ3kqoGDWNqYUp1bXWh12mDhV8Uy0TxGN1JmP+i99sspp7cGTNssu5En
         3PP3ZPKmkXyE9V9VjiLyeM70bjmRYA2KAtpMrG1S2MziZj6jjnYtWJPTRXmVgwCTgJfd
         k6rraHzqU6R6M9EkdtWk9mJO48N6gKSXedFS8ZbjkhTMUJDVdLLOQlEDFJt2unLBBACQ
         Dhyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779888781; x=1780493581;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CL59JHQMdaZ9xSO2ZRHaR8OddiR/bapur84ZCcORKo0=;
        b=cvK2MKPbFbzX1dcuGiCKa4Q/ibFldNbm0A5RJYXFLB7JcrBS6SL7nvRKgIyXpUnDbq
         /A5bpapG6pZhOrvtyAQa6Lc9IIudlUEUBYKW3UStqt/rfeY8a/nr7ntJcyZUoGvICYsM
         MSv4l7yiSt0VpiEsvhuEFh3N0LHLfmtRD4BIdaQac1qFP7jTcPY0RjJposJCe9E7fGAR
         MtF6Ya8OhlXYYdA/D1ldCjIEGNC3sy3PflNMno+XSwFZ1v+alv+BkwSsq1A0fLXVkYt+
         cRZk2evivfwfettLZcu7HFesiedJMN+ctNs1K9BNFCrkXPslyaRo273x98lxrHumgqif
         cFEg==
X-Forwarded-Encrypted: i=1; AFNElJ+8FW0CDzRR1TCZkWx5BuLT96fse7gW4XFpDNJyltTcUnX2Z0y/KxS0FhvAdWhgr+wKKDyjoF/H1D4=@lists.infradead.org
X-Gm-Message-State: AOJu0YxtfsfWxJHJqqgW3cRrLrVSqxcLh9BrnjFYvxwkMskX/mJ+HITG
	0wk+442vOKlM+pnlXuw9J2IETpC/gGbd1UIKdG5woAzsSZ5Y5NXaOJOxUHDSCc1sULWc1ghkspV
	UNeCKEtYSmDmKjzunla3+MzTaMfuUWiBGjYgiK/TyD01VLXX53l3rbTZ8+sQzQLV2Hx/i
X-Gm-Gg: Acq92OGI2Mlc39/mxFUbf35/eYyx3aw7moiXP0H4XlH8beNs61nQOhaS/S+6zA7oZRT
	cVImtzOkOmd/ZXMHUkft8XTZpF2VUMS6efV92xxQILmO6WTT/dgqm/ufsTu8BDh8GaxwzpEk5yb
	6oXN3YECFzZaTuz76oy3u7gn6Zr+X3wg1Gj/p+DEZ/b6eseMDdWeiH+aU/p/0ZtBUcqfOoH6h11
	sA9V3LgQsk0jnmS1JHgZHkW216OztQeKcsTdawEx2awXCX1MRj3umwBEDPo9h8qSiMpctx6dwmL
	WsdE3Gg6QVYSOS484DUIatdQtns3RnW7hLw8GI0knCEuCTepIj4d4DGNY8m7ce4o+RAnXwQaSkv
	srStmH9kTNjYtw9M/zG4ZJRglqu9HfM/JPm7OSjKV86tYZNYR
X-Received: by 2002:a05:6a00:124d:b0:835:cc47:6ff8 with SMTP id d2e1a72fcca58-8415f3a54bemr21955246b3a.45.1779888780754;
        Wed, 27 May 2026 06:33:00 -0700 (PDT)
X-Received: by 2002:a05:6a00:124d:b0:835:cc47:6ff8 with SMTP id d2e1a72fcca58-8415f3a54bemr21955194b3a.45.1779888780182;
        Wed, 27 May 2026 06:33:00 -0700 (PDT)
Received: from [10.219.57.29] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-841d6e80288sm2663478b3a.10.2026.05.27.06.32.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 May 2026 06:32:59 -0700 (PDT)
Message-ID: <3758be2d-4553-40b3-8ae6-bc3e502d0531@oss.qualcomm.com>
Date: Wed, 27 May 2026 19:02:53 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/5] arm64: dts: qcom: Add Shikra CQ2390M SoM platform
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>, Ulf Hansson <ulfh@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-mmc@vger.kernel.org, monish.chunara@oss.qualcomm.com,
        Rakesh Kota <rakesh.kota@oss.qualcomm.com>
References: <20260522-shikra-dt-v3-0-80ffde8a3dc4@oss.qualcomm.com>
 <20260522-shikra-dt-v3-3-80ffde8a3dc4@oss.qualcomm.com>
 <63752557-6468-4aef-a847-06aa39ce108d@oss.qualcomm.com>
Content-Language: en-US
From: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
In-Reply-To: <63752557-6468-4aef-a847-06aa39ce108d@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: 4Tcv8TMRgQptdclGSpycNtcdwAlWVAMM
X-Authority-Analysis: v=2.4 cv=bJAm5v+Z c=1 sm=1 tr=0 ts=6a16f28d cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=Ze1idgdxkBYruiX_gtsA:9 a=QEXdDO2ut3YA:10
 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTI3MDEzMiBTYWx0ZWRfXw0p9YOjwHHxz
 ySJa1UMF9Y49NaiV1uMdNdZ2d0CLwX+8XHZk+N/bAE2Y7vcvYSuP93+l3rQVFEFRbwdvfMabDza
 Pv4sVid8wggWIe02c8cpwaALKMiX3Oi5kPLdyW+bqK2bKQCrXIZiVC6Q4CuWVkxHWcC88ueMiiV
 Mf7SF2Scm2IprLBmjcptfzWmIQhFCWr1x9YuLNNoEXJXVfzwtP1D0G/I/k5oJrRhCqEv0KOM9CF
 m/qVzQcf2K3mZq9TJ3hiu/wjusu2uQlS9rFI1ADHTXAeRx0y+iNXwZVfKUD0ysLL96Mufek1NYf
 pJs/2b3VeL+J2u44WmQB21w1+ccLk5fhZfM9DEk1hTP/NyZ2h8lny67ZZhmrdKaytjTcy4RZoZj
 VtIs1J7yCFaq60FximSk6MjzWYLGinPrF/XuHf2soPdUXrOnWdglz2UYt8GG1iEbilCShbje4VK
 tV31aX605qrgZs8cz5A==
X-Proofpoint-GUID: 4Tcv8TMRgQptdclGSpycNtcdwAlWVAMM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-05-27_02,2026-05-26_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 adultscore=0 spamscore=0 impostorscore=0
 bulkscore=0 priorityscore=1501 malwarescore=0 phishscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605270132
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260527_063302_105246_B7C42809 
X-CRM114-Status: GOOD (  14.46  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 5/25/2026 6:46 PM, Konrad Dybcio wrote:
> On 5/22/26 8:02 PM, Komal Bajaj wrote:
>> Add device tree include for the CQ2390M variant of the Shikra
>> System-on-Module, a compact compute module integrating the Shikra SoC
>> and PMIC for IoT applications, designed to mount on carrier boards.
>>
>>    - shikra-cqm-som.dtsi: Retail SoM with modem (PM4125 and PM8005 PMIC)
>>
>> The DTSI includes the common shikra.dtsi, adds PM4125 and PM8005 PMIC
>> regulator definitions specific to this variant.
>>
>> Co-developed-by: Rakesh Kota <rakesh.kota@oss.qualcomm.com>
>> Signed-off-by: Rakesh Kota <rakesh.kota@oss.qualcomm.com>
>> Signed-off-by: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
>> ---
> [...]
>
>> +/ {
>> +	gpio-key {
> This is usually 'gpio-keys', reglardless of the amount

ACK

>
>> +		compatible = "gpio-keys";
>> +		label = "gpio-keys";
>> +		pinctrl-names = "default";
>> +		pinctrl-0 = <&vol_up_n>;
> property-n
> property-names
>
> in this order, please

Yes, i will correct this.

>
> [...]
>
>> +&pm4125_resin {
>> +	linux,code = <KEY_VOLUMEDOWN>;
>> +	status = "okay";
> A \n before 'status' is customary

ACK

>
>> +};
>> +
>> +&pm8005_regulators {
>> +	status = "disabled";
>> +};
> ?

Already there's an ongoing discussion over the thread [1].
PM8005 regulators are controlled by rpmpd so it's not expected to be 
enabled here.

[1]: 
https://lore.kernel.org/all/20260525093453.edmqryggp5kcqxxy@hu-kotarake-hyd.qualcomm.com/

>
> (also double \n below)

Will remove it.

Thanks
Komal

>
> Konrad


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
