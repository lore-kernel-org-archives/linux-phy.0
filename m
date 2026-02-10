Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59E01EA3F35
	for <linux-phy@archiver.kernel.org>; Tue, 10 Feb 2026 10:29:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gA4ut7scRFaoiXalt8H/2CgTXbu60VGZz6n97bQdXVk=; b=FvmFCNb+sSWX+Y
	RasHQQETJ7CsxI5opG9uq90/fAuB3pLGil73xci2fSfAYCqFmkvG+h1huPw6fE/40Jp6iYlIAH2ti
	SQZyr7eEp8Hcuhr2+DdcTsnYTgZsgQ/8GBwcbbRtWkKYO1zh93NfBG7HlMyGVGZSmBiKHHn+1dj/Q
	1qZf1OQg6CnA3fD8LXO77O61CTkCh2AwjOCaXdP23MsYz/gdOlPg/fW2BurB5Y3NIJkI7NY1/gAtO
	3XX/11EJquINNpHd8NvQ/tFtGUhIbNa/l/8HkV4huOfKVorWIQw8x4EkM6BAQFe7RewRArnBe3E/P
	ldJLxgRtVxVTVYtOOF5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpkzz-0000000Gq6p-3uXN;
	Tue, 10 Feb 2026 10:29:39 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpkzx-0000000Gq6U-0dIB
	for linux-phy@lists.infradead.org;
	Tue, 10 Feb 2026 10:29:38 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61A9GdYT1231983
	for <linux-phy@lists.infradead.org>; Tue, 10 Feb 2026 10:29:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	UyShRs8H98+Iv0NfP9uKmh8Iz3yjnfMsJhckbhbT2SA=; b=Mpt+so5Frzez3FO7
	ONKQbsYkrb2N2saBbg+punr1pmCLeuEcq+DE0iO9XIe7M577EDQ9RAq+PL9eywsi
	HhO55MimkqGwVp+0IKJyBeIrPyxzwPG7oQScBZ7afp46pjz8B2Clm7MkjwYmI+96
	19da005he2DastLVR6PakgIVXFKoag1YwWKHdgCegEHEZe/2rQZ1oRRcUyiLLGiu
	n4NFKAAuRGrhwzV5K8VgXbSGm78dgp1pjmoPnDCQS3rjjWel7RQtiAYbUS86lEFh
	Wk6c2mDBz7E5mP+xaJH4SsGECVW1yUCN7b6Suul9TEhBuAvBzskiz+OZ69lQkTha
	XSQcSw==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c7uv59f2p-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 10 Feb 2026 10:29:35 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-8243c83d108so6439350b3a.0
        for <linux-phy@lists.infradead.org>; Tue, 10 Feb 2026 02:29:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770719375; x=1771324175; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UyShRs8H98+Iv0NfP9uKmh8Iz3yjnfMsJhckbhbT2SA=;
        b=KAhMeAufiEeh7j52FUDnpC073GuZetB/ZKKM8Gx0xMNhYz5lQAZQapw9FCRq2LFC2c
         97noMljdSQf6RJ3MBrvKcdhB9iAo9wVOxewxCC1p6MOONerO7jKKa0ERr/KLLL8/qHVa
         XZOIG0lptD0qGVrd/XOSTr+wv80v3YzmdJeFNW49ZLUG56BpQ6cdPipzNdl3x9wj7J4t
         rNGFQ3aSa4YUlfPs11sGo2DaoAYeXpX8JLvAMXoPjka8zzTYbCsLPunL0o1oc8WRoWtg
         NHUcnsQzudxwpG3M0cyKz4D97/SQY2PuWdsBE0N6eE0cy9s/GMBMzt5TYgJj/E8Jx7nK
         FJOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770719375; x=1771324175;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UyShRs8H98+Iv0NfP9uKmh8Iz3yjnfMsJhckbhbT2SA=;
        b=q/BXeKdD8HzXiaptkLQ5Jwqj9pwIMSvuf1hQQ2XilPebOjdzbY5HFzAe+Z911lwPJl
         iAIFdYTmeNKJZ+2SDHOjipDBKYpjtvJ17lJzk6feWXV6C6k1c5/jY72kLw0AGAs1eFKw
         JqqMOGP8E6NJAsZuzQYXYWFr8tF+qQGzQVBrArVzIEy0G3hUJGuEXE5QwyfSrNNtMM2d
         99pMGIQSPEhlb88ZzQ/13zM3z3IOuG1/2ggaeyBv9HzHPXj7l9H8Y+kTMVJoKrUxq2xZ
         9bmbPjeTTYXrK/UJSZJfE9CzoRscvXHmVZTxwAJ4W/5EQQe6yXJXVT0F1n+Tv6t6t7Ey
         h/8A==
X-Forwarded-Encrypted: i=1; AJvYcCWRLnsHuEP+HDpJOyCNPq8dCESYuRMMLL4Q3YQeVVnvWg0+yxhXYPaZOrMPKEZvUvCE2fBRpXtaVeE=@lists.infradead.org
X-Gm-Message-State: AOJu0YwJ+2R4J7mvBVwr4wJg+RPKrwdK1w+7tZLOrWWhrYYwbbmTJb8L
	XBtUyu66P5IomK81gIO9nT1XS3eu9qLZYkwiU3CBt3eLqlKE5XzYvBeI5ETkvA6LrY25SDZ9i7R
	d0YtCaBi9cd1rpaXjFTpFfjeLeHFS8gEuSkmYW/hb+WMVd81xwoBOr/F5cvIyqf+B44oi
X-Gm-Gg: AZuq6aK7Arha2yh0cWXfP/LG0+nLGVAUsYO3IHEwgJeJ+2hAjoqwEDIF82M98k8dlJ6
	M3G5IObp2N9xkc75Nq14DODg5MzKm1nehFi+5s7aELn20SAV9P+4MqdjbbKu/UkSbKZSPJ2mjLs
	ipap5hbE+sU56mMq08rjafaVkVNehdX9MhoCa3DwXULTSBvUz6qocMF+sUGpBOUQ+rnxYjWcxus
	pZkphdlHqGA4s3hs9ar+VqH+mj1uMOV4BCZFmlklFPvNKxZFIMaMyuu2Z4xSiXEIuyAieJ48J1Y
	gTGz9rSmPrGi/EyXDN4gXZYSh1FaEz4eav8431+yEE9WwveNnU9c+Ce4Zo35g9RkL7TdVVzQqjq
	ikJ9J/n0v/TAfoi89Bb0yup0N0qhMy1bNaXki68eAUw0tyVwk7GWsUJois0QAsfdqDvX5o+ASLP
	Wdb8tv8PzPXVDNNtw=
X-Received: by 2002:a05:6a00:6ca1:b0:81e:a228:f0cb with SMTP id d2e1a72fcca58-824416f8ee0mr13630300b3a.36.1770719374681;
        Tue, 10 Feb 2026 02:29:34 -0800 (PST)
X-Received: by 2002:a05:6a00:6ca1:b0:81e:a228:f0cb with SMTP id d2e1a72fcca58-824416f8ee0mr13630279b3a.36.1770719374213;
        Tue, 10 Feb 2026 02:29:34 -0800 (PST)
Received: from [10.133.33.6] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8244169ddbasm12302656b3a.25.2026.02.10.02.29.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Feb 2026 02:29:33 -0800 (PST)
Message-ID: <845165e6-4595-41de-8cff-d065e8f6b6be@oss.qualcomm.com>
Date: Tue, 10 Feb 2026 18:29:29 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] phy: qcom: edp: Add eDP phy mode switch support
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20260205-edp_phy-v1-0-231882bbf3f1@oss.qualcomm.com>
 <20260205-edp_phy-v1-3-231882bbf3f1@oss.qualcomm.com>
 <af15838f-6a31-4017-ae5d-7b5e30f24aa4@oss.qualcomm.com>
Content-Language: en-US
From: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
In-Reply-To: <af15838f-6a31-4017-ae5d-7b5e30f24aa4@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEwMDA4NSBTYWx0ZWRfX5KAQBlUYiUCv
 PLZX9/96KO4zuwf9+hluNJ2BouImhnoJjPtM6YfsQEaVq7W9VhsGCdMHJiGr00c9O/uy8belYwq
 m9uIG544a+eaN06kFO8errRdRUkK1CNWS8HT0WZR70lbgwHn39RUBIfJGSeSwLo8nPudlu8A0vP
 FiSaz6cvW+2qTI6D3mlxB3a/WQuke6UlgkKaI1GXlljoh3UKel/A8CpajmYVO/FvIaveVh+3bMI
 He//sSgsekHigS/nRywzlg7yd99FeEfJgZmLIrB1M75Qwt+afXlHUi4M7vs1XvaxxlWDTcjT4wo
 Klq84id5XgVH7NSO5EllzVBh6tFXYxFvl1ip92UssfPytD3vfwtGnyOpkJbEifFw2rYfd7pzt2u
 Ha+5G/gwJmPVs1BbDQFxgWt+tIzq2eGqRwH5KeLOY0z2knjZFJfcgkB62uN/son0KXvb3zVFm3p
 CrZE4NLZv2luyk5jEDA==
X-Authority-Analysis: v=2.4 cv=P+Q3RyAu c=1 sm=1 tr=0 ts=698b088f cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=z0i2z7H4iVerI-YqTMIA:9 a=QEXdDO2ut3YA:10
 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-ORIG-GUID: phOrhJyo4iAbvKg0wge-11dMaY9cqJUV
X-Proofpoint-GUID: phOrhJyo4iAbvKg0wge-11dMaY9cqJUV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-10_01,2026-02-09_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 priorityscore=1501 impostorscore=0 suspectscore=0
 clxscore=1015 lowpriorityscore=0 malwarescore=0 adultscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602100085
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260210_022937_319405_B5E12207 
X-CRM114-Status: GOOD (  15.58  )
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



On 2/6/2026 7:02 PM, Konrad Dybcio wrote:
> On 2/5/26 10:20 AM, Yongxing Mou wrote:
>> Add DP/eDP switch support by splitting the PHY swing/pre-emphasis tables
>> into separate DP and eDP configurations. This allows the driver to select
>> the correct table based on the is_edp flag.
>>
>> Add a dedicated table for the SC7280/glymur platforms, as they are not
>> compatible with the others.
>>
>> Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
>> ---
> 
> [...]
> 
>> +static const u8 edp_swing_hbr2_hbr3_v3[4][4] = {
>> +	{ 0x0b, 0x11, 0x16, 0x1b },
>> +	{ 0x0b, 0x19, 0x1f, 0xff },
>> +	{ 0x18, 0x1f, 0xff, 0xff },
>> +	{ 0x1f, 0xff, 0xff, 0xff }
>> +};
>> +
>> +static const u8 edp_pre_emp_hbr2_hbr3_v3[4][4] = {
>> +	{ 0x0c, 0x15, 0x19, 0x1e },
>> +	{ 0x09, 0x14, 0x19, 0xff },
>> +	{ 0x0f, 0x14, 0xff, 0xff },
>> +	{ 0x0d, 0xff, 0xff, 0xff }
>> +};
> 
> This is not quite in line with docs for kodiak. Now, if you have
> better/newer sequences than the HPG, I'm not objecting, but please
> cross-check
> 
> the rest of this patch I think looks fine
> 
> Konrad
Thanks for point that..
 >> +static const u8 edp_swing_hbr2_hbr3_v3[4][4] = {
 >> +	{ 0x0b, 0x11, 0x16, 0x1b },
here should be { 0x06, 0x11, 0x16, 0x1b }, arr[0][1]: 0x0b->0x06
does this looks fine? will check tables again..

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
