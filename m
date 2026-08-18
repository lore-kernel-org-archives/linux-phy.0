Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5BBC0C5DF81
	for <linux-phy@archiver.kernel.org>; Tue, 18 Aug 2026 15:56:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eRrX1Ozm0ztiCCsz3AiHRDO3kW6hQW8i0aA7Qv0Zitc=; b=lW6vxBI5qfucO8
	gHBYb3ba/EncvFRDOefeoHVuPJtGrEMf3vShAW2x1DAfa+RfHecUx6lQKUwqLWJUUopaPUWQV8+NE
	SGWjJwLTUChV2TzCZKllkalzdOchsSa6lfJg+7/4Jc760VjnJNdUmRFG4zri9AYDET73oF3O7rce7
	4ugNdiXuniepwKDxEyTJVp4mIBaf+5xnAMLXDnjlof3IXaE6ryBFGQpHnvFHc2oce8AVZkwAXRSku
	RWgSK6Gmzh15fMY0cZQYgxrcbh61yee1YEYH1cHF60kILWKPwgmhEfcFSzOueBGE9tfWaF5Qdaofe
	CD3UbNcXlV03/y2fXe5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwMAa-00000008JGW-3T3g;
	Tue, 18 Aug 2026 15:56:08 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwMAX-00000008JFz-3FTs
	for linux-phy@lists.infradead.org;
	Tue, 18 Aug 2026 15:56:06 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67IE1KWB1086029
	for <linux-phy@lists.infradead.org>; Tue, 18 Aug 2026 15:56:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	gSXU498YLwU49LDjGaRtSbr3kZR9SBDeN5sP7C1mZwM=; b=IpRB4FyNF9N0P/nu
	AB3j3hAslFX/7+fh0nljUNnhiz3yX/bz87zt2+dA+m9QC30+R2HScOiVbWv1Aeut
	T6W6EAOAX4OPb5WnbFc3hoBjjvnw5KwBkvcEfrFaU8iKVdqtT1qyxinruGZrLUXz
	BAt8/e9UMsFtHxTxH5YKe3AFmtgBqtYoazoTFx9KHhW4khANH/mxtgGOW68/unl4
	nPzu26k6QtrKjjJJafcSNvJIDpWT9A7xqyWoCPD0uJOGT0OFHWeAEiBNaJWsJA5r
	hMvAv4lyxBC0z8WUW2IBrDRJfvQfl8mcyrM7sJ58sxLUebOQomKMZNKomnW6CnPF
	GHuhQg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4g4fbab6gy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 18 Aug 2026 15:56:04 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-52d35a38fafso3395271cf.3
        for <linux-phy@lists.infradead.org>; Tue, 18 Aug 2026 08:56:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1787068564; x=1787673364; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=gSXU498YLwU49LDjGaRtSbr3kZR9SBDeN5sP7C1mZwM=;
        b=KcSR6SOYotPfODuQnfTkEcMsfJMBBoAeIOmSlGqmHo96zeQscI+lCKd+A4fK95nRVo
         WRzOrZ1NGMrhs6fLQjZDkATZfRHZZQ36y4TaJbaqyKW81aIzfYoHKyz3nQ79mfx7YfZr
         lGMBfElc0dqW1j7tFqk9AmuDkt2qTUuZRKjQEWCW8puY3ucKN+w/iAI3oWzshhoxhXhq
         sl40nZH1qdstFJ3MH8qtceHElqejxZ1Ydeo4cIF+QabYu14oVSoRk9K6mTAP0E+H60Hm
         AaRqm753euS8F1q6mkuWu/F8lSgTI4p8XbdIfSMZ99U+5sElgt0fXA0wiCW20dryKdXL
         7iRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787068564; x=1787673364;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=gSXU498YLwU49LDjGaRtSbr3kZR9SBDeN5sP7C1mZwM=;
        b=bVuF3AdbEKwLlboljMgiFPYIuI1hBL9x5/LgR1rwJVDCZMyju9scKjl7KMYN5fsyk+
         N1bZF/eSdzeBEUHl7Ls+Tgy7Zuq9Z5HQkrroHhp46xMIuL7TYCqu6xSw3iWKm3sXQh7W
         n6bJKDZdEAOmfpavLTG1bJjUJFS21Dl8EPKEB5d9nqKAcPqwfUUb1lSuh/HGGN+HYgD9
         6Zer3s8v8BCnepqdJWNPzPZcZslJgsgaUM5PXhPGqdAwWDzJLrsmCAWKd+QIJzX4sAMU
         dS+zbxtBxX0k4c5TFVYcvDMNh0Kz/Fr32D2ICNVLHU3P2TnPfyI6tKrJUWydnYHLNhJ7
         C/Yw==
X-Forwarded-Encrypted: i=1; AHgh+RrmYBBjPtuUyGD5dBAWL9FaYpP4lkeOH7Juv8n0liueyQf7PWuuAYAktOXi6GDfHyuVV/FL7Nw3ox4=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyr21G1Wl5l8bNK2/GsCq8pHpUXVXi1ZJ0c8DTnCx3JlM5XPldJ
	J120CwkmCpHsU57NmLr1tQ/k+GI1MdFS/e0+GLtAkcJlmojWAgU4GH5kDNGKnKfM/hDKUUUSmlM
	yKVzgFAe7AP1PP615aGsiVOP7FkSBgSImhkYKLd17Dg1yCqKHZeJT4loSmT4fESzuko6u
X-Gm-Gg: AR+sD10BQli/UZsbpg8/gbOnoF5A7eZTryapDQ7RrKzP+OXhA3IrdCfd4wrup3MxJgI
	58LVAis3sVYr7BGyJNEA0NvQ8POU/0+64/OXCpjuf4jcrw2bfI8pT+Q1VB483wVY4e3G79f1qbU
	MQeGDCc+iNmiRc8GksXIapA3/aubnzI/2ag/N39WDrC42e6Ahh8mehXpvxe73DPoQFc97+rM3V2
	0P6aUM+ewQGBwHJA6S3E42bl23B2GNGSxQqSrTWG73Kf5FPWunqoNny+eOO4+YrcN6gGunGTS66
	NFD2znnqs6b1y6JvzjcCLiqjYTaHuvRrdBvk7JHQOM0riAefRsv/kPaU6Qs9MAmFAsGRFZv9pqP
	bLjNawLAK3q3TeD9alfB2w3nK
X-Received: by 2002:a05:622a:1310:b0:528:3722:a372 with SMTP id d75a77b69052e-52d854d54f9mr237812951cf.4.1787068564033;
        Tue, 18 Aug 2026 08:56:04 -0700 (PDT)
X-Received: by 2002:a05:622a:1310:b0:528:3722:a372 with SMTP id d75a77b69052e-52d854d54f9mr237812341cf.4.1787068563403;
        Tue, 18 Aug 2026 08:56:03 -0700 (PDT)
Received: from [192.168.120.193] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c2187d269dbsm161593066b.7.2026.08.18.08.56.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Aug 2026 08:56:02 -0700 (PDT)
Message-ID: <8b837959-0a9c-4980-8a56-2c3150383598@oss.qualcomm.com>
Date: Tue, 18 Aug 2026 17:56:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/5] phy: qualcomm: qmp-combo: Add preliminary USB4
 support
To: Manivannan Sadhasivam <mani@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, usb4-upstream@oss.qualcomm.com,
        Raghavendra Thoorpu <rthoorpu@qti.qualcomm.com>,
        Mika Westerberg <westeri@kernel.org>, Sven Peter <sven@kernel.org>
References: <20260730-topic-usb4phy-v3-0-ccf0f7ea98b5@oss.qualcomm.com>
 <20260730-topic-usb4phy-v3-3-ccf0f7ea98b5@oss.qualcomm.com>
 <dgvdvug7zeoommfh6iszybwzpcm6f5vz3pwkpamtezjxenx4ua@ew5xgoc5reqd>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <dgvdvug7zeoommfh6iszybwzpcm6f5vz3pwkpamtezjxenx4ua@ew5xgoc5reqd>
X-Proofpoint-Spam-Info: AW1haW4tMjYwODE4MDExNyBTYWx0ZWRfX7LV7pPzDygHN
 3+snm5Y2Nph1AT0LoD6uI0RMjXtD2WCRHAHaXD/QjuP9sBBKNwC0HiZo8hOZajR/TGufUuQTv10
 BVHV9x+UtEyoBUfoa5TGqbLA/yEv+58=
X-Authority-Analysis: v=2.4 cv=VsITxe2n c=1 sm=1 tr=0 ts=6a848094 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=645x-19ulo7_aJH2oRwA:9 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-ORIG-GUID: Amty5eeAjuLZczXGd37OGibHjQtPmk6m
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODE4MDExNyBTYWx0ZWRfX+w4Jbet63owv
 GelUKVJuOce7IhfOvbkEVJFKXaPJvkJKNhDjDar6sK+Tv+VFv8BFW7Y6bNB12Bw4SlCxvYb5MNX
 vprT9E5Hic9mbmDjom/z1cwjU6PbNOE1sncrU4dnnozMNXGZnlQq1zhwwfjdUGwcJfZD+iaCnXO
 M6B0upMhsMqjAbGJ9TiYlQUUxfVxWSCZ+oHbsdVDvSUGAYfAvuQCsZEZ9nVIyhjPrzQdLrFXa/g
 KvGwwdFYodeQbI0Ub0CpqfUdvUrR5Cc7Xe9FOYC+vflwXR4Mv1NB8DGpL5E37PvXVfwplZp9F65
 YAVf+9H2UnoS8o2vedKmTk+/PuFYHjLuVxqglQAdz86cdnIBFriRMqfriwvFFUvOQJ7QCdAW9eU
 jGkeVmAZ4YNcEcpuXJPSPIZPZOjkLGMeKxQPP17J0Q7x3+v+LDqiAI6/UpJUWOY5yIe4ylwQZLY
 aJdVlAGWJNW17+YNpVQ==
X-Proofpoint-GUID: Amty5eeAjuLZczXGd37OGibHjQtPmk6m
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-18_02,2026-08-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 lowpriorityscore=0 malwarescore=0
 clxscore=1015 bulkscore=0 priorityscore=1501 phishscore=0 adultscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2608180117
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260818_085605_826974_B9E8B29C 
X-CRM114-Status: GOOD (  12.61  )
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

On 8/7/26 2:48 PM, Manivannan Sadhasivam wrote:
> On Thu, Jul 30, 2026 at 04:19:15PM +0200, Konrad Dybcio wrote:
>> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>
>> Some Combo PHYs (so far only on SC8280XP, X1E80100 and Glymur), come in
>> a flavor called USB43DP, which as the name implies, features USB4, USB3
>> and DP signal processing capabilities. In that architecture, USB3 and
>> USB4 PHYs share the same USB_PLL while featuring separate logic spaces.
>> The DP part is roughly the same as on the instances without USB4.

[...]

>> +static int qmp_combo_reconfigure_phy(struct qmp_combo *qmp, enum qmpphy_mode new_mode)
>> +{
>> +	dev_dbg(qmp->dev, "qmp_combo_reconfigure_phy: switching from qmpphy mode %d to %d\n",
>> +		qmp->qmpphy_mode, new_mode);
>> +
> 
> Looks like a downstream debug leftover.

No, that's an upstream debug non-leftover.. the downstream one was
definitely not _dbg-suffixed

This is present in the code before this patch, just in a different
place
> 
>> +	if (qmp->usb_init_count || qmp->usb4phy_init_count)
>> +		qmp_combo_usb_power_off(qmp->usb_phy);
>> +
>> +	if (qmp->dp_init_count)
>> +		writel(DP_PHY_PD_CTL_PSR_PWRDN, qmp->dp_dp_phy + QSERDES_DP_PHY_PD_CTL);
>> +
>> +	qmp_combo_com_exit(qmp, true);
>> +
> 
> No delay required between power off/on?

Correct

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
