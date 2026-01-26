Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B6C7CF65DB
	for <linux-phy@archiver.kernel.org>; Mon, 26 Jan 2026 12:01:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pMJWHsl8F2eMnMgMFUK1SUgn6y+miOQs11owMIX2uJk=; b=GWEjsYyzal2NM7
	wsjEdfv9emnuR7qzxPZNeUmuT6aMv+ARwkQes5Z0lCmllSnzinXcnMN6BFb1aBMDjFxREGk/x1zZt
	3glRLcXfutq1TKk8WNpHua2jvFQKEwzFDvKZxvZGWC0mBcctDPlnhIMpoRx75pC4fWNm5XRDWab4z
	3uFlpagFeUmRvrOmWeZ/CetRqJSVePCbdxjfgczEiC1u5k5gwEgJe7rouEssXBJhe/7t3P01oCtdK
	0kf8WBcezfrvIUd+kibKrb/rxhQEu0+WGdn9dRI0PSXiykSsyFYqEvlqnkMEA4wum4VosHCnXsIJv
	GXhiUxkcSDhIGk2U/5Fw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkLHb-0000000CTub-37Hv;
	Mon, 26 Jan 2026 12:01:28 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkLHZ-0000000CTtY-28TX
	for linux-phy@lists.infradead.org;
	Mon, 26 Jan 2026 12:01:26 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60Q4Wuae031728
	for <linux-phy@lists.infradead.org>; Mon, 26 Jan 2026 12:01:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=puIsZe+lMzBVRjMEvnF4MP6s
	99iCDRjkRqcNuakVshY=; b=ozYOG1NMbMLRfHVRVEngDX5iR1bNwS1rr7KoZUCw
	4YYP9CF2w9vPHMDucUfhLI2q2ZkAN0pqgMQQg+kwjoJHsDdgZSbka3Y/HqYlFfuB
	jFWwk51axblZSnIroViIAbTQmnrdWqGqb27XEdFd7+8g1lTvKIJLEbbebD1HDrZs
	rZq1jCfIodWLFzyHKXsyliNLqn4dn1BnxUTYtvMLI4CYpEYjVzyzgz780gp2wR8i
	hMojvk5gWskSwwVdhTwlSMzzKgjeYPHuEhxZJ1Z/e1CKa3sTXGVH4cJsu57lwNSf
	kw+9gaq6dRJYf+OFdaXY0L8fQ2WBkKXWGl3gX8RKednDfg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bvq2q4bvw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 26 Jan 2026 12:01:24 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c53919fbfcso1121747085a.2
        for <linux-phy@lists.infradead.org>; Mon, 26 Jan 2026 04:01:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769428883; x=1770033683; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=puIsZe+lMzBVRjMEvnF4MP6s99iCDRjkRqcNuakVshY=;
        b=j1tSdGklyAq2tzqsm/YU4BYc6VAyhr5zecknuK6aEJ0SXnu8H85ZDXyTtxVia2tfpD
         Ybo0lkG2jy1t8PF+c0crWqjnwrFSHmMM1CYanVnfJx/CkP621ozpIGoTBKYs+5kPMrdb
         7OGLfu4RPScPSJuSmRHTXNY98QSeWMcOS2086Cnp+G6mlvN6pqOpzVaqsntR5whzHANh
         w4Xd1QE/AREoam67Vs5wi1i1kPj+88ih54Wx6Q698cmZhJAmcoZBrPvzu85CV57KtwpM
         vul0FjcVnd/Gn+LQN/uADci2sAOifGCcmuIsEfkiuNLQuaKmiB7tHU8T39gbMSArfrpG
         CoTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769428883; x=1770033683;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=puIsZe+lMzBVRjMEvnF4MP6s99iCDRjkRqcNuakVshY=;
        b=H6OmeZI57jIg1o1Yr3jWtBl672pKr4GDAawe977ouRy8MGSnZLnG6/xZGWTkPjEAzB
         XgOInnt8+kkuJOFVhqJ3yuMj1ewGIJ10rXcmEHEVHIChJEvLgaz7C2YIHQCk5ljAfdMu
         8yTCT6/pBxaGiz5EH6NMDT21vE8usGwdTD5BfN3n5//NnzA5N+H36cE7tWQTfxcFn1Lm
         r8OZtHZkLJcRtJAOhxqWqhxiKOe2PHmvWWFTkaDE0FLsahP43cuboYRWbDqR7iyinjyZ
         uMnXNUz4i/ZeitPQUjy0APX2TFXnemGJ01aDfKBjDanubtYp6sv8Mj/RiNWuFDgqcbg7
         ddJQ==
X-Forwarded-Encrypted: i=1; AJvYcCXSQqIQAipBgK0K1Vaa69bvMK/SoesCe+nDvXY28XRcmGCIhGDG+GSN1ISx/aBFI5qLGsQMtUr2Y4w=@lists.infradead.org
X-Gm-Message-State: AOJu0YyM4NtbvAi+fh7xbp6Ns1/FCMEXtSBv7qmXxWVkJfEcqS9qb4z/
	JBcdam/yk9AZuVliKRd1JtaBtgewBGkxamLVJ78DTkGx3HGvmiSnyK8srQyteS/mClUVvkvlPaR
	f69imDozjhX9ZXq0W3RDY0tRhaoMU+ZoGR8aAoLskcdNIqBWRb3wIIV1Xln1BT8Dc+QFk3I+iHt
	Ez
X-Gm-Gg: AZuq6aKUIS9zEjuB04iHtrNsNZhlonOQ7FkpC2X6CcIcmvA0Uej3rixD8H9gmGn3kCT
	/696Vg3teaofzt2PLqWkgPd2ZMnwWUaNpRyTajJcmOiyzXaS7Of/koGRUJsR+WhgG0rMjaqlr2u
	xIk1v8QDkxbDLr2bG+TxLdYbHFgL5AW4XHEiTdv2D498ORAC6cWSGZFoRhSPwMPph5WIZMAM9/+
	mLeOpXHGqy1pLnIF6W+1ajQn6fbFoSMz+CKAxZsCvHpR8W8i5Y8PYsEndDiEwmItcf3vyt1xhp+
	ERzExdZ0fCi5XYOSwlH6EK5kWsuk7HTXsLxhK0nIpT4bgkbptpgGIXCA7FZSBWef9AC5knr+3Cp
	KnE3UoJNfv0gPcPP4Bz4MP/kv
X-Received: by 2002:a05:620a:17a8:b0:8c6:e223:3ee9 with SMTP id af79cd13be357-8c6f9643034mr427986385a.54.1769428883043;
        Mon, 26 Jan 2026 04:01:23 -0800 (PST)
X-Received: by 2002:a05:620a:17a8:b0:8c6:e223:3ee9 with SMTP id af79cd13be357-8c6f9643034mr427975785a.54.1769428882163;
        Mon, 26 Jan 2026 04:01:22 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-480470472f1sm380540675e9.7.2026.01.26.04.01.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jan 2026 04:01:21 -0800 (PST)
Date: Mon, 26 Jan 2026 14:01:20 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Loic Poulain <loic.poulain@oss.qualcomm.com>
Cc: vkoul@kernel.org, kishon@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, dmitry.baryshkov@oss.qualcomm.com,
        neil.armstrong@linaro.org, konrad.dybcio@oss.qualcomm.com
Subject: Re: [PATCH v2 1/6] phy: qcom: qmp-combo: Prevent unnecessary PM
 runtime suspend at boot
Message-ID: <aw4ypn7tar5y3jhyd2lnqfvfw5v3zydabshyt3zgu4e3bl7hn4@rjsfewlzndmi>
References: <20260121142827.2583-1-loic.poulain@oss.qualcomm.com>
 <20260121142827.2583-2-loic.poulain@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260121142827.2583-2-loic.poulain@oss.qualcomm.com>
X-Proofpoint-GUID: aT5HZrlrkF_yAfOb4ik-NgCt1SZ-6_2x
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI2MDEwMiBTYWx0ZWRfX/01Cx2ctARry
 PMcEMZu6lGDIj1udlISuqAWyxT++CF6iMqnm3YCXeTWTLCrWLZxaNerKvQkEJmd4gMtRMNlJopU
 Bnq2umYGYODGfDiLhgeg93lxFI1/w5h2Uw1ka8qbr/h+/eJqpHLpb09JfzYs7bA4WUE9Whc+Qk0
 ydlACz2+lrSIQY25DnFedJrjGR/VnepW7Q78x6BFNbStV0dXLi9FqF6wAMHfcyrlQbzFpOs0U0K
 zkK6CWk7Cat+7Lw21ocMyEq/mskTWabPrEr7ODs1s9cyUfpUkRwIn+kfoGSRbN4mDt2d5JiWV1O
 sKUIFHeroUsJE7K9YI+hdcQu26dKdcWhs/Gifbdbv69UwS4KKTRbvmEpdVQVjbk377+Rj0KDMrq
 GPkcDB4LSpmc0M6Xx1dEYkh4mk7n5wYLF9yZLUS/2TCWqfa+M0YccSw/spC7QftvlvRw+BrVeqO
 yCXEKT/yXjWFjcslvpg==
X-Proofpoint-ORIG-GUID: aT5HZrlrkF_yAfOb4ik-NgCt1SZ-6_2x
X-Authority-Analysis: v=2.4 cv=POECOPqC c=1 sm=1 tr=0 ts=69775794 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=kj9zAlcOel0A:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=pxQL0frbaL4a0zJdC2sA:9
 a=CjuIK1q_8ugA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-26_02,2026-01-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 malwarescore=0 suspectscore=0 lowpriorityscore=0 clxscore=1015
 bulkscore=0 priorityscore=1501 spamscore=0 impostorscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601260102
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260126_040125_679222_32784089 
X-CRM114-Status: GOOD (  11.66  )
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

On 26-01-21 15:28:22, Loic Poulain wrote:
> There is a small window where the device can suspend after
> pm_runtime_enable() and before pm_runtime_forbid(), causing an
> unnecessary suspend/resume cycle while the PHY is not yet registered.
> 
> Move pm_runtime_forbid() before pm_runtime_enable() to eliminate
> this race.
> 
> Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
