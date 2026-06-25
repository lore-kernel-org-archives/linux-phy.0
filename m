Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9EFACDB466
	for <linux-phy@archiver.kernel.org>; Thu, 25 Jun 2026 07:38:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qjhhlEJmLUyu5wgmLmEO299sbzgoyujFjpO/GVNM/MM=; b=c5prFwsqjFuk7A
	faW7Kbv2u1Loy+BOQGs2ao12l3AoH54zmda+7u7aTnIWxsaOGb25Pr2WzHulh4/ygspgdIVsO7RFG
	9kMsi7jZES3qZx4z4zE2R8ZLftQnBNm4it2y2kn0Hc8Kwd3bx7r9XdtQaxm9MS7v9Cl86EMoEPAcz
	kpF1cjr0CPAn7ollyacw/KSehU763tlglraR4e4aTf6qwdd1kRZ32P4dg0E28EluZn9QTvFi9Yf/E
	M9320gfk2rzzoYE8Y3uUI7Lgwi7SaE131dRt3JI2nbBOxQP/nBcG+oWsAycv8MehaXpA440W/2W/6
	4MhrltW9MKmov7pUH0Xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcefM-00000008mBX-1Bxx;
	Thu, 25 Jun 2026 07:38:28 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcefJ-00000008mAm-0xJr
	for linux-phy@lists.infradead.org;
	Thu, 25 Jun 2026 07:38:26 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65P3e19C3405679
	for <linux-phy@lists.infradead.org>; Thu, 25 Jun 2026 07:38:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0kMOW4i+4XV2WgAdnsOAr0reBkKZzZYazMDcvSB30UE=; b=lrOc8xepROZ3JvYm
	Blh/tVWTxMfrAFsytf47oi2cXGKOnmJTQBAHBS7WDEWC1oFwIpeo+fJAbnHYlUVt
	0NPlZXMKXmMffFqWIx6gYoigCVYtCcnekQxAjj//4dWuFi97QZ9+3+FsGvE09mR3
	I5hug8Lw6ujgZ5XE6773IU8y7J8UG27FOycsotkLXNwxRUR1Z8Uz1GPLwx+50QcC
	iFySBP4eSgnA53OsKtsQlahGfTUkq6lIMLUsBG60NyGscxbTGKZfJSSh941kx8DQ
	xhHUeyl5ZF+MNKZX/6LoWR9f5qOz2li121y+hkS3koONnjTBQrLmVC5cnV8NdMMc
	FOI7MA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f0tspsa8p-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 25 Jun 2026 07:38:24 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-51a07295d67so5435671cf.2
        for <linux-phy@lists.infradead.org>; Thu, 25 Jun 2026 00:38:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782373103; x=1782977903; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=0kMOW4i+4XV2WgAdnsOAr0reBkKZzZYazMDcvSB30UE=;
        b=kdkGWmqqm6RDN4l1IQ+pnCCtw79Ml6B9KZWEvKhsP5/vFuMDDdzQHJfMzKkWjfQBLJ
         SpjgNYnIBRGiLkzpj1iSJf6CgEJ2PL0/UrlAF+9AcyAjEnvDtRM+GJ3N7QPLHqPHJuJF
         tWgXV5xZPQC69fRtaZDKQtHHk49orJ78rKsKK2aA7hlVk7z9uA/W/qOoU75cqh1GjDA5
         ZCoS4w+GmAGJAepoBxWGtzxiAkRfVeYKGiBYwn/uk1XB12ClRoGX33Ex4fjVJJqAUp+s
         Dho/u2o0smssYjaVFPydy2CExrX4MMqO6EjQAkBZd4nr6gTEIQCgplG1MkkEaZq7dc+K
         UuuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782373103; x=1782977903;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=0kMOW4i+4XV2WgAdnsOAr0reBkKZzZYazMDcvSB30UE=;
        b=c0JiVhNN1o2U+C84CVnhCO59mFb8OtLNqMCitIZvRNuQ8rvxEt6QY1+Dd2C4/nXjnW
         fbZfsky0icCUXSCQjmbPCURBRdsMAT3my+03GPbEAFhZGKhSfu/aVBzhQ3wb+hWrs9V5
         tD2G2/OkJQmoy+3Eaht+U0proZFsjpVD/+yGT9Dbs7XZiQwQBtsIPGJyNiBp9MbKAs7Z
         YMHmYDvKGlfoFUMtev8D9b5IqhqF6fM7jW37/8fuz1H/a8C3Xi9YqAXb04EiaCIwAyck
         5Ayoliw6No79vQutRjfLfejqyAA0r88Gh0WAP7qEi0WK5iVuKDj7SR3P1bw5dCKuNsj+
         Bvrw==
X-Forwarded-Encrypted: i=1; AFNElJ/luix96NyBYSE6r/eKFvwHd5wjGZGS9JrgVdkm60K6Vt60imMc3HRg9bqAeWqcphSpVcjZOAapiiI=@lists.infradead.org
X-Gm-Message-State: AOJu0YwWiDgvSwZfMTE9ITp2cll1nWnGAyKSv7vtGQ68sAdbkR2oifA1
	ymfwBQ8XT7SWq/pyZ9gfI7ZTJFa7r2FtGSHcpjyg1CB+CDESfyIHW+WhnoW6Hsg56aAAew6gz9D
	lgCt/zVReZ3QqV2kBFRjlS+BwO3W9H/g8w/3ZgxFpzVwLeJrvwam3QjEM7MzJyGJgqMl/
X-Gm-Gg: AfdE7cmdSA3V7S8Y21tVZfWLcHed59ZTG5w5YP5hgeRoOV27jF4rpOIf+CtUV/o8MYf
	Kl2ZUT+f9Qo2IqMKm+QUAXhggkn/sa6kXKyqRMugseBMc17nrgqaHnG6Hm097b0nLfkRw2t0PPR
	vj57j3q54AUWpVrBUWAV1+qQpBjeI9AwBPGPKts89HFLh2IRYnLdYa7e+fNR9WgV1w/D/unjDLU
	gnQZMFFKAQ9XS1gL45LI2b2Xgxbcizfn3xSkzmqNIgTYfEmJfuxkAxFiDCQWXB+hi0A5i1tFXee
	GtmTMCSiruetwK0sCCm4TVayb82NpgOkLbOA0N98UnqrTy5NiNvzTjgQr/i4Bb6BlE4e15gPrI8
	yHZC34t6EGLkb3AgbW/COzQRUQMjEQQcW7mo=
X-Received: by 2002:ac8:58d3:0:b0:510:144a:636 with SMTP id d75a77b69052e-51a72ad2276mr10886201cf.8.1782373103377;
        Thu, 25 Jun 2026 00:38:23 -0700 (PDT)
X-Received: by 2002:ac8:58d3:0:b0:510:144a:636 with SMTP id d75a77b69052e-51a72ad2276mr10885901cf.8.1782373102900;
        Thu, 25 Jun 2026 00:38:22 -0700 (PDT)
Received: from [192.168.120.170] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c11fbedf971sm120256666b.62.2026.06.25.00.38.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Jun 2026 00:38:22 -0700 (PDT)
Message-ID: <ba15ebf4-ea95-43ce-b612-8df25a9f179a@oss.qualcomm.com>
Date: Thu, 25 Jun 2026 09:38:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/8] clk: qcom: dispcc-sm8450: Fix mdss clocks
To: Esteban Urrutia <esteuwu@proton.me>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Brian Masney <bmasney@redhat.com>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        "Joerg Roedel (AMD)" <joro@8bytes.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        iommu@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
        linux-phy@lists.infradead.org
References: <20260622-sm8450-qol-v1-0-37e2ee8df9da@proton.me>
 <20260622-sm8450-qol-v1-1-37e2ee8df9da@proton.me>
 <65873506-1a9a-40ec-ac67-60f61a0b4b4c@oss.qualcomm.com>
 <9bc524b9-c6da-47a1-a7cf-abeb131416a7@proton.me>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <9bc524b9-c6da-47a1-a7cf-abeb131416a7@proton.me>
X-Authority-Analysis: v=2.4 cv=OL8XGyaB c=1 sm=1 tr=0 ts=6a3cdaf0 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=yUEngxm9hVyLX7FlFv4A:9 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjI1MDA2NSBTYWx0ZWRfXx5LlGlHg3lKB
 gHTtCjtt4IG2wKyRhZAx5yPXw4vHINju22vZIXQs9tw3Uvimuemzvp9M6usuL4jg3Jn411tEXKg
 EvaclOwofJzpZZ93bZUIfwi3z7s78p039Y3bOfhQvsBTsFheNyytwHuQ7KhSEFuW0T5c6dVVobu
 EBPY9/EDgrTliwtwQV0wk/AAm1BQSqMu5b4ijBeNBpR33BVJuKTYPqiM/x3+EieJJw2TFaRCJD+
 AbzUXSb3yOztwvY/I7pbW3kSIDgfDfkjGLK3/y1zgBs0Yu1Rwrr/qPw2079NrQAEzqV9UCV9VbP
 T5Gu1sZWzHYzePy3iQBPG34brNPvV7NJbW65vW51opfaC6reEQbVc/E8aJMDtpONxB+S4RHGxP5
 byoPqHcJbYJn3hOyGCXZ3A5uWMPb/GZegcQMlvOi6f3nv2cKLBGzfmZ85eYCfQ4qvh4s3I8/brF
 vqV7xYetsRl59S5l3CA==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjI1MDA2NSBTYWx0ZWRfX5s3zpxSGSj/q
 Wnl/8AWJxS9NI49Ti74vZuJxdPRv1Pl+QQbl6Rrr2qQL/McNRhy71WgwT/m9LGG8qIfM19Dwb7l
 hiUUrt3tDjInSGZpYk7bA1tAR4asVMM=
X-Proofpoint-ORIG-GUID: tIQfJTIAXvK1zNNWGzYJC8oCc-pcZtsO
X-Proofpoint-GUID: tIQfJTIAXvK1zNNWGzYJC8oCc-pcZtsO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-25_01,2026-06-24_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 phishscore=0 clxscore=1015 malwarescore=0 lowpriorityscore=0
 suspectscore=0 priorityscore=1501 spamscore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2606250065
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260625_003825_276601_274C41CE 
X-CRM114-Status: GOOD (  14.14  )
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

On 6/25/26 4:22 AM, Esteban Urrutia wrote:
> On 6/23/26 11:50 AM, Konrad Dybcio wrote:
>> This can also be fixed by migrating to use qcom_cc_driver_data,
>> which takes a list of alpha PLLs to be configured, and thenthere's
>> a switch-statement in clk-alpha-pll.c that always assigns the
>> correct function
> 
> If this is done, should a patch that migrates to qcom_cc_driver_data and a
> patch that fixes the issue be sent, or should only a single patch be sent?

It's fine to just have one patch, but please mention that this
actually happens to fix the issue in the commit message

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
