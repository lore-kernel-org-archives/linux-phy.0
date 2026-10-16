Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3338CCA464
	for <linux-phy@archiver.kernel.org>; Fri, 16 Oct 2026 11:36:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F0YHRcc19JgXh3/tIuDNJJeZzobQI3PjQPgInNBP1BU=; b=S1Iawf/y1QQpk3
	XDs2AH5QOeFb9hXNiLXZL1r+Lds6cyzlS1h7/WFnN9jL6tDgcMD/wXKF9dr38Kk8PjgM96WBJOftc
	3rxP1NI5p9uZFbQlNOtGnmonwEmMdPW5MAwBX4WbmhmtwFYMrALl3v4mGXtwoBmqHCSU0KVbADHhv
	9d7okYtgIQdQ04MZp4RXFyxNcYrxBuBr2evueuWrp46ySDeT969UPj8iK6ipmfzOFv6FN7YR5+dp+
	Mvp7tvZUu8XnqJgrDgMECTdrLrBkyN6r3cbPR92ynmvrWbpDcwv6h5ojKbqNY8mbs5423mUJ6Y9zL
	SfLY3C6ptUTQZDfqAmmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHgEM-00000002m0E-2EWt;
	Fri, 16 Oct 2026 11:36:10 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHgEJ-00000002lzs-3bSF
	for linux-phy@lists.infradead.org;
	Fri, 16 Oct 2026 11:36:09 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69GAAGGK1983368
	for <linux-phy@lists.infradead.org>; Fri, 16 Oct 2026 11:36:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	p9ksAcVBjdGqd34D51W9ej9hy2JTcpACMlbd8wtFSMY=; b=mVQ2E3tNY9aRs3L8
	4d2tL/WbYSrzKEFQiibEOcePQM/k8n8ntLf3KrIqPiT9azT80N7Eds1o7OcccYQF
	7mB/NuOT3K/5PhUYFZRSR19kJ5q8glTYGTs/leNvodLhY9rzXQ+QpQF3TyJ1GqIX
	6jjsiDapMcLbsO2UzvLVvJEoaDhWRAsE3ohr56BxGYKZS9IqLY3kwbSsKkEFUsf7
	WyMX86GD5Js7c+U6AKabfe3wRsLrvmbXYnSwgM/T1NZmMEnCBTrdAlP1Xhr9YaqZ
	5eBLklcsU4ARdxUC5kXdpMRLKxcR3XbCqcqLlelIc0nqQBMrWqa8mL4LUKA40oer
	4IK8/A==
Received: from mail-dy1-f197.google.com (mail-dy1-f197.google.com [74.125.82.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hb8a8ae5c-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 16 Oct 2026 11:36:07 +0000 (GMT)
Received: by mail-dy1-f197.google.com with SMTP id 5a478bee46e88-341eff9e381so17618144eec.1
        for <linux-phy@lists.infradead.org>; Fri, 16 Oct 2026 04:36:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792150567; x=1792755367; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :references:cc:to:subject:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=p9ksAcVBjdGqd34D51W9ej9hy2JTcpACMlbd8wtFSMY=;
        b=BY19lrhb3oe7WYoyInPy8Yjs4ybi3YwOLkoWdZv5m/JYbDPR2z6XtZKT2spsviEmmR
         QRtXxJRKpu8xEvcMgxzKwDN5NiNX/rjjA+a1FkoBO4h6Ykdtu/Zh4iLQQB3GUu8vCKLk
         uXZaoCJ63nsoNr4ncdFdwzO3HM+173KIvC9GW2ZH8EW5UGuaL5b3WWDbjFMaX31Pse2c
         hQgUJhtKPMYhuHjFEVtZRhCQWzznrHs29sAYxfqUzux3nQp3wRfdHb+VZi6N/XGNihUi
         zni9QGT4AzIvqwjG38C4Aly0J+hVFEMXnBOzWM2HoIAaC4dnTrNrS3xaBCyEumbr+RH2
         WdVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792150567; x=1792755367;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :references:cc:to:subject:from:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=p9ksAcVBjdGqd34D51W9ej9hy2JTcpACMlbd8wtFSMY=;
        b=d7Vsz1PlrPOwf7b0CTsj+DHWKgR8YmJfDDyKHEr89VOTdgbQ780W2i0qxNifkwjG86
         MyaDkK9p0M/mApcRlheOdf4/qArMHT1jDhmxV2LHk0DmIdizZZqHda9BQ2WF53KompgX
         NjI7A4jAPYgWdRAMfMN098OSR6hS2rPRYONeGzwYPaEkPbiT9yECmMGdff6Py6FMJmdZ
         OX1dW1iFG4+IGdZvZCEwBj9c7d2spPhT4CYJJ9LOQy0ATL3JThZV63ccSTqr8vypF+oj
         9bKae/R9/6FtIuzlf+VXVf+7zl/XIu2HYfViyMCDJohMNBkkPSQl7YKjwUYSmSIbPbNA
         5ZMw==
X-Forwarded-Encrypted: i=1; AKwUvBzD5qmKIWyb+RmsRSLtXxQOBNfB1Nke0EnNlap3Uz3cbGRhADsvl3kEkSFKE6NLeZPgfKcuKaxQH/8=@lists.infradead.org
X-Gm-Message-State: AFq9FYL6FqkFrQNakt+Kew4PSNuumi1Fw/3CzxahVMonokxLrJPPd//W
	1QiiEUXnjMKrz8XfIjxNviK5YzPAd8Hfyevu+HBUf4bdRKKYTiotZ6W++2DG3/2cMy8/ORKkcIf
	7K2i47BOz7/0PWuVQ89YEh2oFvkN1M3Qzz6TLZ8V7mptNckQmpx97qUkCDUMfCdocDfGb
X-Gm-Gg: AYBFou2Htj2iBqEaOfTCasFoNs/L6TuUD8SM5oHC04IdPD2Hp8/uxnvcEI+jgzJa1YI
	wAmgx26iXvzfajKsk6PGgFd1Z8jmIhO7+ZNWJZw4sRLSQrg64aZc5M9DXNsnRwQd271sPKXFvc7
	zByN4qe/NOmHx9GHkFgnHu2q84KWJ6cGS1tjzBpaPv5w3u/hN/tERZHOeX3VVoOjXP3EuZhHnh9
	nOJMCKJE8ocg0hiXlDNo9rmp+61LMpRm9Imu/poLMit93fIfwEgECUW3rps7naQ0oxPS1lcgI5D
	VLRPCx11dKqaOboJbmXpxo5DtDKhOH8nXxgsoOX6ru5rpM4s6/KoXfw3RnlBxafxupghmpPzci/
	PVs/8Il6UteVlmmnK69eiT/Ci6lQ=
X-Received: by 2002:a05:693c:60d4:b0:359:2a1f:520 with SMTP id 5a478bee46e88-3592a1f0673mr27197013eec.24.1792150566633;
        Fri, 16 Oct 2026 04:36:06 -0700 (PDT)
X-Received: by 2002:a05:693c:60d4:b0:359:2a1f:520 with SMTP id 5a478bee46e88-3592a1f0673mr27196976eec.24.1792150566030;
        Fri, 16 Oct 2026 04:36:06 -0700 (PDT)
Received: from [10.206.111.19] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3608308a87csm10678942eec.28.2026.10.16.04.35.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Oct 2026 04:36:05 -0700 (PDT)
Message-ID: <b92c91ba-6a1d-4c9a-8c5c-d4ed7654cc99@oss.qualcomm.com>
Date: Fri, 16 Oct 2026 17:05:58 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
Subject: Re: [PATCH RFC v2 1/4] phy: Add MIPI C-PHY mode and configuration
 options
To: geocausa@gmail.com, Bryan O'Donoghue <bod@kernel.org>,
        Vinod Koul <vkoul@kernel.org>, David Heidelberg <david@ixit.cz>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Vikram Sharma <vikram.sharma@oss.qualcomm.com>,
        Suresh Vankadara <svankada@qti.qualcomm.com>, tjose@qti.qualcomm.com,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
References: <20261016-x1e-cphy-rfc-v2-0-377654253193@gmail.com>
 <20261016-x1e-cphy-rfc-v2-1-377654253193@gmail.com>
Content-Language: en-US
In-Reply-To: <20261016-x1e-cphy-rfc-v2-1-377654253193@gmail.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDE2MDA0NiBTYWx0ZWRfX6CSiN0W9ZRlJ
 1E7rVdtQc4vH/qOro5atTwu5XATr3MWcw9M4+xBE5YctsE9h/KvHY3t37DPhMivkDyqzgl3AWpx
 UEYzeIDdInxDN5Eb8wsgvzPjRMVU4Sk=
X-Proofpoint-ORIG-GUID: fLDNEs4U7gnxQcEotm_g0-3qrAQlXYj6
X-Authority-Analysis: v=2.4 cv=GJadgeNK c=1 sm=1 tr=0 ts=6ad20c27 cx=c_pps
 a=Uww141gWH0fZj/3QKPojxA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=KKAkSRfTAAAA:8 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8 a=XL7EWEVnQUwZ90-4yZcA:9
 a=QEXdDO2ut3YA:10 a=PxkB5W3o20Ba91AHUih5:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDE2MDA0NiBTYWx0ZWRfX8R6M6OJO0m+B
 SrUqgh97nNZAg+jCvMR8Azze0mi2jM5pG4GSUcGRMkZ5fhejufPmAqZD+PZaLGOyIA4DGhtQH/X
 p8H8GT2hPzxXJPi0HsRyyZ8bDOcSp0yxMQAlcToxQkYaR8+h8FiL1MYksmd2dMlsLJuy+MSEWFr
 eHxbmgPGbkCsAK1ONLB5NHanIlSnK6wXHwPye5lm172jhJ7yamfedGRGj06jBtgbuGNrsHEDW7s
 DEPUMUxHr5gwy9n/QemUi3R4I1jOHNwHawe6HkBDPGVIx4Zobm49rMedPAU0nNzKDxU/ndm7Muj
 EY4kBwMI3scfseBmVEtMt6P0JWuRZC6jf7In9/7ymY4FR6UUcbnbYtEBe0CUx2B/KtPU5UF58As
 rkYKqgvRDyCPu7GZqSD24nCL5fTE0ItG8ZgHftLwqysSP4B8yJY2LQtXO812bkrSciEqBi2Rab7
 fNtkEoLA4671WJ9zhDA==
X-Proofpoint-GUID: fLDNEs4U7gnxQcEotm_g0-3qrAQlXYj6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-16_01,2026-10-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 spamscore=0 malwarescore=0 lowpriorityscore=0
 bulkscore=0 priorityscore=1501 phishscore=0 adultscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610080000 definitions=main-2610160046
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261016_043608_211196_32E0ED76 
X-CRM114-Status: UNSURE (   7.54  )
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



On 16-10-2026 16:27, George Neacsu via B4 Relay wrote:
> The first user is the Qualcomm CSI2 PHY, whose X1E80100 instances carry
> the C-PHY front camera of the Surface Pro 11.
> 
> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> Assisted-by: Claude:claude-opus-5-5
> Signed-off-by: George Neacsu <geocausa@gmail.com>
Reviewed-by: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>

-- 
Regards,
Nihal Kumar Gupta


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
