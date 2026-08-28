Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E9692C61DCB
	for <linux-phy@archiver.kernel.org>; Fri, 28 Aug 2026 11:43:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5D1ms/1kTgQfoFMAMFoq28e8H9tilT5xvUVQWiN/5MI=; b=3j64/3n8rlvzgO
	QS7spU9CPqy2ss/S5UfgK7n10VrKE4uziuKfHRrm6TcRZyrUSOwUSzp34cmhgVAckno8TJZnkXckP
	X3FOAJFwYmR6w6+jRlOlb+LJBAcN7+1bP/NK1cTcLY372v+kKh4aJok0II01yBURhIBQgLGQPhs5i
	O5pfFpAzSCN/v/rxJjrPsDggU6behTWhUmvzT7rB6AC+6rJjmz9Yx8VqJDZ3G2hXuheiu1b42r7wL
	jBT4KDpdc1yjaYFqcyr+J0QU1AUi6DgvOFzY57OZuMGgEmVwn4PZePN1jBs9ScO/hBcUyrqoR3g6K
	4ya9NHC0SDPe4xEWBJiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzuzV-00000005fSC-20sm;
	Fri, 28 Aug 2026 11:43:25 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzuzS-00000005fRs-1VPW
	for linux-phy@lists.infradead.org;
	Fri, 28 Aug 2026 11:43:23 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67SA7cE62744796
	for <linux-phy@lists.infradead.org>; Fri, 28 Aug 2026 11:43:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	PlLZ/AW0rjHSgn2cU69J5W3enXVMl4VBxn8RgJOa3Aw=; b=h1D06wpxpEVKDU4C
	7MTvwoMGdtiiy/phDxBEwWtTkly7GSMQ8isO1eW8V7N6/MZNtJQaVhiQp/do/pn+
	Uuj52jXp+X1z79KtJG8Zi79lWVNgP84pWp8HuC31CZ1XQRT9/UlircoCa8e2kEjN
	acmq2XD+mKjTGPcsClYtNQ2EDouTY5gJROxsi1w8dO5Mbx55L/jFHg7V1TvArgvv
	mpLTOhJMrGLUOr95psY/K+eIg4pPsTn1YpI0dlXhu6rUgOZy3Q6TBjsx9G8dyf6I
	/RuKTeFonTmxxBPBdVxXLbk/k0DwKoEOhWwmPj07Z/zxaxex9Ym4RWFOhH3xNzKO
	55eYlA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gb3mxsjft-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 28 Aug 2026 11:43:21 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-9390890ae83so20860885a.3
        for <linux-phy@lists.infradead.org>; Fri, 28 Aug 2026 04:43:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1787917401; x=1788522201; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=PlLZ/AW0rjHSgn2cU69J5W3enXVMl4VBxn8RgJOa3Aw=;
        b=EYt/myWCfITiY0a9HxdK+Gt4GR/h8GgFDTrcw0SqfSyyBtplhvvL8Iws/8eszsPjNx
         jeE2RtJ1JnpDqhTxhl7MhxOxtVCocT+ZE6JGaVogEocaPDL+Pg3YrXK0dujQHwZLpg/L
         UXj5HfdcN1JH9Jw1yEPhzLvHsB2ShFm628+b96cGCTDcjYOcDHJBTlq8bRjqphCKUpUh
         lGHPa5GfqV0iQVvoYi9nVQxzUZxaGF9S1OrjIKmjf6Ky/NdclAQuKAXpcdOChFGpsvhT
         q6VoSBxW/FYYvlphFj+yI+mlOwICjL95Hswvvp1WMUM79jLB2OhHnhgz41g+Os4y0nId
         woPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787917401; x=1788522201;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=PlLZ/AW0rjHSgn2cU69J5W3enXVMl4VBxn8RgJOa3Aw=;
        b=iFW/20gSL3Fc5JJefLLVcjcNJATOhgg/3rrPYuuKk4+VBAJjOhOvjVw8Ry0MO8JsN8
         G/L42Jn9k74KfeCeUcU9wWWq4u7zY01mQc/K2W8vBwcVwFxZX0ZTy3+RbQPqrak/6XY4
         zmwLEO5iFBlO4hyjTCT3nxyCfe65bIJsFsOwEZeMnArqexsQWnZo8rPgqT+i7PfJqkUO
         /1v6RWaFBEDUPjFQE17Mfh4jsCyFaFbePPYN0sWWp6ZVFKYILfnZhoMM68MhpaFugBrO
         YnXngq3D+B3q+knh2xp9DEU9dET40E9UOIGi7FonLe2BnFjWGx07zzMtU7KBd3qR2MQI
         c+2Q==
X-Forwarded-Encrypted: i=1; AHgh+RqQl0CExQPVVthRyEUAEgGHi0jGZG1VwWui7Vadw9j6ENus1+GfQ4gTOrqJbmnryNlOzYFRPuFJqqw=@lists.infradead.org
X-Gm-Message-State: AFuF++ksst0eBOPXJ8rGZTFV0wbhjED1iWYCr0kd1xs+NhPSEJiz1KzZ
	SVmxw1UgekMKo0Cu6o3umFCWqforZXpQgV6LnhpC8nOstN8OtKmq1kyUbEjDaXQjOATDRxqFzzG
	HOKkbubHeURT0cyxOio2HUgCOWLJxPXUVaDc7fdwCg4M3qMFJiHaxoCRMqMngGc6eIEeo
X-Gm-Gg: AR+sD13HfhP6CuXMkPEdnRUTfW4lkkBT7EqPElzQVgAxYG5/3vhMkaJktAX6cXJyCBY
	wOfiPFFAxQCtF3xonLDeVWrmJJk8aZP6etaALtzFCHYRSeFV0GVD4vDRv2DTblYyGOOMM1nQ/Yu
	hrWGkgeeQ7wtjeM1T5oBdTh7CPf2NaKFzBlUcE8ecj2ufhn9n5pJl1jDinFVT8PDFL4jSigmFPJ
	ITjlDVENUDfY1KXmeq5XdPzHRjSRsYmFkTg9eCltmef/6zbnzYeiq7UWYkRiLCntW8WAtqq4dhb
	UPWL6ScIbsLTLyRCgvYGW05VBSprm+wY6qK51u/32/niEb/83J25fq9Ypejt9RUV80xyYNEqzSC
	1H3skiN8jQroR11qQgKA9f3Q=
X-Received: by 2002:a05:620a:8399:b0:939:fe9:4310 with SMTP id af79cd13be357-939138a057fmr374113185a.2.1787917397908;
        Fri, 28 Aug 2026 04:43:17 -0700 (PDT)
X-Received: by 2002:a05:620a:8399:b0:939:fe9:4310 with SMTP id af79cd13be357-939138a057fmr374109885a.2.1787917397495;
        Fri, 28 Aug 2026 04:43:17 -0700 (PDT)
Received: from [192.168.120.193] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c255f1b59ffsm71808066b.34.2026.08.28.04.43.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Aug 2026 04:43:16 -0700 (PDT)
Message-ID: <213b039b-8d2d-4c67-bf7d-2f2b063dc793@oss.qualcomm.com>
Date: Fri, 28 Aug 2026 13:43:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/4] phy: qualcomm: qmp-combo: Update DP PHY common
 init tables
To: Nabige Aala <nabige.aala@oss.qualcomm.com>, Vinod Koul
 <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>
References: <20260828-glymur-phy-v3-v3-0-8e73ce7c4636@oss.qualcomm.com>
 <20260828-glymur-phy-v3-v3-2-8e73ce7c4636@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260828-glymur-phy-v3-v3-2-8e73ce7c4636@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODI4MDEwMSBTYWx0ZWRfX011U7fPZDjwN
 rHtPjpQgahWx7VXRQZ0TzYF3wcc5Fe0pjQWdcRxdzNGglqMmUFwHO1XOm5zXXnA7QeiZDN60j0E
 qB/Mg3X30jvadO9x3YAeLrUBNIc9d7DvR5QJpFS8dT8eZnr5TNEcv6CIc3M1gp+uIpeHPVHCXVX
 09YqTLitMGkXpD+pjouG6t7HYDhHdpJqqEgkPbVsMmfV7lw8c9Y9wOTX4M47OW0nkLwCCc6MP4r
 T4/FCnnOEFRKgJcC9W9hHQddort40P4oYweQPw5L8ln19teytVg/l/Dj/8TCnGBMupVy7JC9ax5
 UvKmcQwJ/KvjuP824Uz5payH21bU4pXtEOp+WLsLWlWx0OBaWqYk7siSYmGkx9ggGQqILnn8AIf
 B3M0hihP3Uvep/1C12LozFRhk0ZOzbrjnR0UDSCLoLZa/fI1wlb3ubsZyaFlIXPNpOcOP7QNRfy
 e1JpBrpOkxUYMTilAYQ==
X-Authority-Analysis: v=2.4 cv=MONQXsZl c=1 sm=1 tr=0 ts=6a917459 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=Oqahiz4U4qnBBrGiSRoA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwODI4MDEwMSBTYWx0ZWRfXyIz/eTvUwKRD
 gZ78GDg8zF+aZGcCCJxYNYwAnkOVnAqst2rONr93pZi3FirGDnkGSkxQNeH2x19CLX/jH7jYw0B
 5ENK0B1sdsEa2FnwDFnOcGd0Rf3k0zs=
X-Proofpoint-ORIG-GUID: vGzYqaYeM9lpCFNKyJYh-KisPDyL4YBH
X-Proofpoint-GUID: vGzYqaYeM9lpCFNKyJYh-KisPDyL4YBH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-28_03,2026-08-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 lowpriorityscore=0 phishscore=0 suspectscore=0 bulkscore=0
 impostorscore=0 spamscore=0 priorityscore=1501 clxscore=1015 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608280101
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260828_044322_540979_4925FCAE 
X-CRM114-Status: UNSURE (   7.10  )
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

On 8/28/26 11:43 AM, Nabige Aala wrote:
> From: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
> 
> Update common DP PHY serdes and TX initialization tables with
> corrected PLL control values (MODE0 instead of MODE1), updated
> SSC step size, reset control, and various TX lane configuration
> parameters including emphasis levels and driver enable settings.
> 
> Signed-off-by: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
> Signed-off-by: Mahadevan P <mahadevan.p@oss.qualcomm.com>
> Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
