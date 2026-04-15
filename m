Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A826F4198B
	for <linux-phy@archiver.kernel.org>; Wed, 15 Apr 2026 11:00:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WZUDC6LhGqTqtDklsCz5cPJrtxpSLS/5TDVLRihcTos=; b=voMrqvMZRgmKMv
	fNeebINDD7ex3SzCsgOaPReE2BfPvokVY9tff4cxS6Bv1Y4hCtOUIvnNHLv3M9GYI4A56ruKlU3Cx
	W+EN4Dlfe0VmxRBOtVu/grgF+OuLgRGJ0MeBWo/TF3xa1NpAAJs9GBmkOjqJuHSc9jUhWpr1Vrqvn
	3NPyJPhg5y5bSTgtStfZsnAy6FVjLmDRQ75lDobctI24jjt3jH48mK6E7VBtIJWMebkyA1eZHMN9J
	rLVSmUveUZJzgckQz6QPZcE+DJ9WQdC5PyACFMJOw0YlZBwfu8WXIKN5eQGhVGyg0j+J2aP+jYyyu
	V9EzHa8P3b2xXlnY/WIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCxyS-000000010RS-4A1S;
	Wed, 15 Apr 2026 11:00:00 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCxyQ-000000010QK-1r9D
	for linux-phy@lists.infradead.org;
	Wed, 15 Apr 2026 10:59:59 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63F9x5ED1701751
	for <linux-phy@lists.infradead.org>; Wed, 15 Apr 2026 10:59:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	r/7FN8NQtfV7xQGVRyNcE/DUA+bUuRssnQVKpgLbVXk=; b=o+vvvPTZrb/xN3zj
	49oGiH1oJIYx8vbIku1sto2ygLwSW+b1f4xN0ORlCBzAdIrBidJo3R0/cIDPHtuP
	WoOJ3M3lMN8t4GhUrkEsTVPDm691cOy1uPhucOLy/BLpw8wDfHGCqFFJyWVF++/a
	RkNRrXJhQClGZOWtul2uBkpswW2RBi9MH6Ee5CKDvN7UMfqzccvt7G6liumpH5gO
	mZCoqNgRi9VAX0hQ8yyJvDUKNDFB5jZ3prEs+QEoXd46gyb8BstOr1d/VtmDEh+t
	8jUMv8Uva4wt3wsNmURzMwHM1+5b3kQn1XtXp+m36K2urwRAmMBzxoAdv/o4wjzX
	K658Kg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dht56tx9j-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 15 Apr 2026 10:59:57 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8d45ebdbc9fso141640385a.1
        for <linux-phy@lists.infradead.org>; Wed, 15 Apr 2026 03:59:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1776250797; x=1776855597; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=r/7FN8NQtfV7xQGVRyNcE/DUA+bUuRssnQVKpgLbVXk=;
        b=Xs9gLu1MdM/MfVSixjDi/RPSUpNTkQqosoLwCzH9KnxtmvescSyUyPRMMIYE17RMrA
         DGEcbjkKTgeed3PY4aj/cd8zuJPh4rvPyJjwtY/pperZhUatnqif4T/b1i7lELfjNdFm
         UdTMGIkEPVlLdhA8t7CeSZukDtIi+jLgEiesuINgDplKwsbUKO2xt9DWEIHiE60rOBvB
         0yz9Ha2z3wPqRnx2toIij8iNnw+G/Gw9Im+WzeWB5N5kwK0frAGrq4jb+hXOkYRuCq9H
         yi0bwExAV/sIeWXI01Ak5MjsgSkO9aBFIev4QxVaJ2Y3wYmtOnoq3mOQj++Bz20R48MC
         j89g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776250797; x=1776855597;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=r/7FN8NQtfV7xQGVRyNcE/DUA+bUuRssnQVKpgLbVXk=;
        b=Ea3rojlGvThdM5T7gKAft8wIT8G5L6RxqZWCyYwF4dBHJCKTKDxbQbbGQSjnn8t1dN
         +zVHyywqAFMjNY0Rpjl2M/qB7EdeU3SBwBLcqOeJwH0A+1ybceyv5+XFp6+e3aBzYctg
         NqTsLGkbNkxAbIScbqQ65bjeJiB3HOuxeY58OnIUNjLCqUkAyPvHZOWH2ZYqSP0tSHAT
         T1PXbySFU8uc7OKbmD4q+srbnuujmki86j7BeiRkYgH7H4yboYVAmo/FlXIREpWzshbH
         9tN6vYHtlg0+cgE/dyZ202ck18gG5eA8mBfaeJis1FZgTZhOFKZ4vHdUDbwU2R+OC5o7
         xn/w==
X-Forwarded-Encrypted: i=1; AFNElJ+8wHHDCdz7PJg/tEnDZgj3YD6prbYUIyaiIcywy9dcKINdzqi0G/XPl+yZTO5yOMAQsxDwY12/DTo=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy0x8RHHctZ2DiNCY0YhyqnRM7vOGglam24a8op3h+TYecSeLpw
	Uhe72M1t+pq+tdufQn1OmM41W2QNMM+FyEKXpQxYyJv4UX0EoijkwxnyagJzSh8QrnijJ4FhcHU
	qoEUsSX+2vto6o7SyTpITDiF0OeBlhK10bs/6LTp1t+e95jT1oFEksVoq3/aT5ZGiIgDg
X-Gm-Gg: AeBDietT2nAFewAk/IiU3o+2uVU66AhPe2LF6Zgaok3Lgo55TxvUnaaOWHF3ZmCXc14
	bVtcAq/3rN1yVvUXfKAbO8l3DGA76Wa5cG+vVRpwvciEYfigOyzg2DWqQzZailtf9o0CCieotk7
	uyOIJsnaTmwyhTJ06d/biBj7A6f+Rb7D05+gkAhUrZMesEPg0mdNpJgW1LuCo6LrVuGQbdMVrz3
	spk+CCPxis6QpM2SP8aIt27ceTA/pJvHsTnAOj1jB+CReni5x7WJ7lk8VpV/l7z+kOWhWOiSf16
	CAtxP23WXi4LPiRVZ7NNhuHtwJjQcv9R/lZwoIbx1XeBHr5RanpG+nOG6PZhxsslTmbBHIJpSPL
	wT8Vx0ATstlXtYYem30RO4v7XoPgTkUEE8YKNOPLUansly1KUK6YUu40wVti9xDIWLSk92Mhq6r
	C+TLRuetRGp8YTSA==
X-Received: by 2002:ac8:690d:0:b0:509:a3c:e390 with SMTP id d75a77b69052e-50e1a7601b3mr16917271cf.4.1776250796855;
        Wed, 15 Apr 2026 03:59:56 -0700 (PDT)
X-Received: by 2002:ac8:690d:0:b0:509:a3c:e390 with SMTP id d75a77b69052e-50e1a7601b3mr16917081cf.4.1776250796485;
        Wed, 15 Apr 2026 03:59:56 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-67237fff281sm310720a12.20.2026.04.15.03.59.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Apr 2026 03:59:54 -0700 (PDT)
Message-ID: <baa7a564-2106-40d1-a363-b95645d283bf@oss.qualcomm.com>
Date: Wed, 15 Apr 2026 12:59:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: qcom-qmp-ufs: Fix kaanapali PHY PLL lock failure
 after SM8650 G4 fix
To: Nitin Rawat <nitin.rawat@oss.qualcomm.com>, vkoul@kernel.org,
        neil.armstrong@linaro.org, dmitry.baryshkov@oss.qualcomm.com,
        mani@kernel.org, abel.vesa@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, stable@vger.kernel.org
References: <20260415104851.2763238-1-nitin.rawat@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260415104851.2763238-1-nitin.rawat@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: t2PWvvtAb3UWE9q293Dp8i6hChPLLUaC
X-Proofpoint-GUID: t2PWvvtAb3UWE9q293Dp8i6hChPLLUaC
X-Authority-Analysis: v=2.4 cv=K9gS2SWI c=1 sm=1 tr=0 ts=69df6fad cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=IGLtpV1Bqx4y0bnjnHsA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDE1MDEwMSBTYWx0ZWRfXyPOhMmeRorT9
 hZGefbjLxeWcPeyB38+hy7BMvfCHJ7BtDUU/UJkIFXHv7bq8QJ79VjPisavZ4VxhnKfOfHXHx9P
 PBzFsN2kkuPfKXaiVupW6iw3noV5ikRGc9MM81s9XHwfutDMmV7CKGp31YWV+b/kj1/0iyAJNhz
 67HJL7q5XMsB2BdUeDhoAzGFBNyKE3nlmnRqlUtqzw2cFGnRsY0H9AvKiotU1YDAJxCSff1RRx3
 8C1gcyJjmSMseokgiMHZDE4x9xMsETA1tdNQj5+GdB0b+NLHnkn74iWp/dnvJg/Yc4XzpeqAgZs
 UdcV7rPwIcD0IlwbIWEGXc8J8z8prHyQGclVB3L8vhbcHlN88GLgfzJa+J+HHX/MBBbhl0eXa+j
 6JKNjDjZSZOaMXagP6qOyEz5SN3gCidekKwD1Q3Rm935ORLKKnpwEGN7PbCsuQs3ynU35dzGO1/
 5u0rYl/IIi7izNfnfGg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-14_04,2026-04-13_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 impostorscore=0 suspectscore=0 malwarescore=0
 priorityscore=1501 spamscore=0 clxscore=1015 phishscore=0 bulkscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2604070000
 definitions=main-2604150101
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260415_035958_608971_DDC8EB7F 
X-CRM114-Status: GOOD (  11.79  )
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

On 4/15/26 12:48 PM, Nitin Rawat wrote:
> Commit 81af9e40e2e4 ("phy: qcom: qmp-ufs: Fix SM8650 PCS table for Gear 4")
> moved QPHY_V6_PCS_UFS_PLL_CNTL register configuration from the shared
> sm8650_ufsphy_g5_pcs table to the SM8650-specific sm8650_ufsphy_pcs base
> table to fix Gear 4 operation on SM8650.
> 
> However, this change inadvertently broke kaanapali and SM8750 SoCs
> which also rely on the shared sm8650_ufsphy_g5_pcs table for Gear 5
> configuration but use their own sm8750_ufsphy_pcs base table. After the
> change, kaanapali PHYs are left without the required PLL_CNTL = 0x33
> setting, causing the PHY PLL to remain at its hardware reset default
> value, preventing PLL lock and resulting in DME_LINKSTARTUP timeouts.
> 
> Fix this by adding the missing QPHY_V6_PCS_UFS_PLL_CNTL = 0x33 entry
> to the sm8750_ufsphy_pcs table, mirroring what the original commit
> already did for sm8650_ufsphy_pcs.
> 
> Cc: stable@vger.kernel.org # v6.19.12
> Fixes: 81af9e40e2e4 ("phy: qcom: qmp-ufs: Fix SM8650 PCS table for Gear 4")
> Signed-off-by: Nitin Rawat <nitin.rawat@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
