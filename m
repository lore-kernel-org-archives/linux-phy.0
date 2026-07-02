Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04C49C43458
	for <linux-phy@archiver.kernel.org>; Thu,  2 Jul 2026 12:00:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tpJgF/mfBhJsqpDdm8itjnsf8OOlFYfO53FyG1VeJO8=; b=qXHaBRASfmmdyz
	4tllejuhUrdcRp2rQaCQXrhERDQo6hSr41CU5xz0AGUoYnXPgWNlIYkEI0ZAGfYKrgQ9Kd8MF8Ocm
	DosohrCKV3wKiaGR0dVqJ2H1dE/Y01ABGakWOBOSN02RkqyMqSLAhOC9V8So9U1QdDMX6p5AEdqa/
	r9vKBDzGa/hduvsAlEmMjoxsM3aEv3NG/D5zge2ZsaNtBF3qj8eQqqQoMgnMjYzJ01BStqwwGtFxT
	15Sp3b0AVIont6wZKN/ADiy/CALeZdQDLtTaQvM8JROV0etr1B3Np3oeIj0UVpFagocT3GonZe1MF
	XuB+9I5zkmWLLBVjDqUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfG5W-00000004NOn-2Fsa;
	Thu, 02 Jul 2026 12:00:14 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfG5U-00000004NNP-1sxo
	for linux-phy@lists.infradead.org;
	Thu, 02 Jul 2026 12:00:13 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6629KthL4117250
	for <linux-phy@lists.infradead.org>; Thu, 2 Jul 2026 12:00:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	VE009zKAiRXRg9OovYQVDq4QF8WErMKoILqPn+zh/QQ=; b=psYFDeYrljUYVs1S
	dKbspBuA291Ut4sXnY8N7fn6GOQyMjLQ9P16Lkk1AQuh1zdQ5/7K7gyHLNAdBO7s
	DzUdHERWOUnblsLe1+pATVDrr1VeNAaAmjbHxcMVAq3WpXreK5GCQoZAJRiVUIkU
	QJ7ufVWFYPY9WzOgjUdRtRNMPzYWzq+c5dcNr1Bl/A3NbzhzB+gJC47udqrCl/xK
	WZ1JC5zh5WR+wSS27qLBLr4y8+sjC4aaQI8IYYx/lplhbZQF7q9Db9OwsuidVjam
	z+88IMNu4ISsLpO9grjSHPgDp8DZFaUF+JXfVh0RO86EpWd8RaiJ0w9q3RMYrMog
	OIzLhA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f5n9bgjua-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 02 Jul 2026 12:00:11 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-51c267931ebso6838431cf.2
        for <linux-phy@lists.infradead.org>; Thu, 02 Jul 2026 05:00:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782993610; x=1783598410; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=VE009zKAiRXRg9OovYQVDq4QF8WErMKoILqPn+zh/QQ=;
        b=Gf5NYIWBX+9Q12TGvyhyhJUlEUhgK0YQlkhUW63wN5+GLQdgGhLt/0FPfYFzdp/WQf
         8PIh0L0L54Lw5w0Q/m+miK/PjzzgEk+mnO9X+XV66WJqsDTS9fK4ufP0KOhji/RdqbEh
         oVwkQ3oF5KsgU6+YPh5yycEZIuKH0bsCi3iQLUpgwxfMCZlRAwofy1iMCU89+uGuntyb
         96uYfM2VYxzMK9cAaypuT9Lnd9ugIv4y6+coskWOBb+va+doog4l8DtMfHUb/OLP7ekj
         7V0whWus+TB9sCORokBIUPfImzhNSLgZ5hlgT8app0NFWx7AeZIGJ3RndcJDFIfJzldY
         h29A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782993610; x=1783598410;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=VE009zKAiRXRg9OovYQVDq4QF8WErMKoILqPn+zh/QQ=;
        b=bts3VBR42Lh9NFaWYKU5B3EmMWzr0Qgrib5c47aVwZUx24Knf/rdUt5X++akVvwuA9
         ypo3ZKrLh+6mVbuMOo9j9oDtd6++8dghOZ00+v5pGpAQUKN+7TMjxb0dSHMDObzh+2iD
         Oa5BFw5nOpCw7W8LSXbYcEJnTyQdN+PriCNlGcOQlAq1ziAIwzR8b1zYSrqVEEMEIyUC
         8sptWYFcDnnLQo8uHfonreDDLeyUhqCy8cYZUCFNTl1MSWBOa5fHpfoED941eGH09h/S
         9rTF4HJMKBHSB95hFdH+ZY+3M2b30SIJ6OJ93RBuWG3662Gwo1tzO1/e4XQmj4UptbeF
         B5AQ==
X-Forwarded-Encrypted: i=1; AFNElJ/Eb5l7L1VDm9KpySLR8m1BENLlMu9bHv++/21+IVhg/qBgIzY5s0+KRoCAZbA2ZJDAf8Z5s4y7qp0=@lists.infradead.org
X-Gm-Message-State: AOJu0YzKM2RVAlxwAM3N5nzTaSp2+ZgzYsuxjeoOzQrCGiJazLURUiwQ
	IENDJRovVRQCmcD8V5/lVAaCJ4qb1aNHKDZOR571W6todUTH6deFYwUgS0pCgUe6NGZ3a6Lvm5p
	7xbBT7LXiAY7MN7Rpb3CkZRs0OEoS9Rx/M80bk4jym22zsSn8WmNKhhqcX1eAaW10i73B
X-Gm-Gg: AfdE7ckjq8/6Qc/eVsqEfHRGeWmfrei5AKz1QiKVzODHAUPgylh5pwXF5iJSdSTh+7b
	HePp7FDG2gVgJsEGQHpxfRp23iY/07jd0tc4o4T3nXnFZs3HLJ997dtbffCWusDhm5fMsi5o8yN
	JMxZVFvfulyuR4KjV5raqMDOmd/GTvzntAByXdfFmvPVk3jDC2IOAB3t2E5QlacwwKgWtwT12Hx
	yaImeYZ1dTM3P5nSyMAxTPLW0l341TkROZgLfjr6PDskik86BCNtDGn/1sYjjIg4jKI85PtZcbR
	MuirBmU05Gn/Rd+LGV8AdOvcYHdKf0EyuMHqBcbT9weaUtS+KU1/Hix8gX0O/1usXqGMdcVPcsv
	keXJIUhihPC74Z14SnXtbvjhvnmshcg1G5ZU=
X-Received: by 2002:ac8:7d83:0:b0:50b:2875:5782 with SMTP id d75a77b69052e-51c26b03d36mr53766651cf.6.1782993610128;
        Thu, 02 Jul 2026 05:00:10 -0700 (PDT)
X-Received: by 2002:ac8:7d83:0:b0:50b:2875:5782 with SMTP id d75a77b69052e-51c26b03d36mr53766061cf.6.1782993609460;
        Thu, 02 Jul 2026 05:00:09 -0700 (PDT)
Received: from [192.168.120.170] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c12b609382esm119942966b.18.2026.07.02.05.00.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Jul 2026 05:00:08 -0700 (PDT)
Message-ID: <64f7efcc-1cd6-40f5-80c0-ab5f882854a3@oss.qualcomm.com>
Date: Thu, 2 Jul 2026 14:00:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] phy: qcom-qusb2: don't unrelated bits if autoresume
 is not used
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kathiravan T <quic_kathirav@quicinc.com>,
        Baruch Siach <baruch@tkos.co.il>, Dmitry Baryshkov <lumag@kernel.org>,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20260702-fix-qusb2-v1-0-b5cf55621524@oss.qualcomm.com>
 <20260702-fix-qusb2-v1-1-b5cf55621524@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260702-fix-qusb2-v1-1-b5cf55621524@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: BIE65MOyJVZhmm7JzE4h-38J17tkNyZh
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzAyMDEyNSBTYWx0ZWRfXyfuy3SfKoNtz
 kB//JoPdN1BgMZMYH5zKTaU4OU0qg/IQIXaPUM5aaqquSBz61nLipAyotLBGybe8/orFoJ7DcHs
 +Imo7Hhiut/WUdou7kzjiXWVHWmy5GI=
X-Proofpoint-GUID: BIE65MOyJVZhmm7JzE4h-38J17tkNyZh
X-Authority-Analysis: v=2.4 cv=bOom5v+Z c=1 sm=1 tr=0 ts=6a4652cb cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=Y22fvUz4BkWrnB2esuoA:9 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzAyMDEyNSBTYWx0ZWRfX9VQntD6R4E7e
 L4ig7jLMXggoiu6P8h8Vmuuf5mq2lAssjX+duOao/XbStpWiPrRQEqMjgNvu1U4/7Mmsp/2NssB
 LEtoE4PuJ8pI5MtWK7dNh9dbhYbswzahE7a6gj0I6Jm/llNwb6J5W2gqo4c/Br71JrhLF8yibyi
 rDin/qA4HcsStkz0Be4Q84bK1nX18ORl5LlCQlkpxDFejjV+nXQxLV0C3bSvqHK1Mwa6oUU1cPJ
 4MDjX65GWR6IBncjrvaWbEpOEheilruXt3lyyl46QgPxSXoQXTI6UrhZGM4701lTjC9YOXVodfR
 rAPbsWiU1X4sGS2oBmD37XaGpmVkP9QwoK8IwU2RDs95wKDCf+niTqvd7jc/RVA6XCyp576BtGv
 CAvd3VRlbKV6ssSlNTarD6ceWZkHlKvGIBK502hsfjCXFroZnJT/p0nIufzLSq1RYQdM/Ytl7fe
 YuMJoUjoubgLw6JbaKA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-07-02_01,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 adultscore=0 clxscore=1015 suspectscore=0
 phishscore=0 priorityscore=1501 impostorscore=0 malwarescore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607020125
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260702_050012_522803_1B6A78E2 
X-CRM114-Status: UNSURE (   7.90  )
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

On 7/2/26 1:40 PM, Dmitry Baryshkov wrote:
> The IPQ6018 and QCS615 platforms don't need to toggle the autoresume
> bit.

why?

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
