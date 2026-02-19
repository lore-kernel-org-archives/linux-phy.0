Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F48EE9A048
	for <linux-phy@archiver.kernel.org>; Thu, 19 Feb 2026 13:35:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x9+c6tY52zxwqYsoh5f98WZYH+PF/g9+XnaJl4dQ5q0=; b=AErLmijrpxhmk7
	WUKlmGkFs12BkwTV2gqIWtBtuzmgZIUL4f/+IqCuByIFz9v+PqhL93aO6xo2OrVXmMqD6VO3OwUgT
	Rk3NnC/KuKXorYP/MngVtDi0tCIxSjGdysof9m7CgymmblyiBi54ls+NiXDItGHguTj2AI+n+w5Hr
	aISFRXfrOF7T2D+5O0h0FkOtyaj4R056JgH2bSGSGxmfa+zqTnrA/Uf/qNoyE0YxR3eRGYcshLspT
	yQP1HhLUDtpBu01eE3ykSj8IvrSfNIvVnLkjcV2N1GK9y//cD80rl3ZWpN2xmtD5MOt+nLk04zjqM
	+AbZx1PvwvLKhq5Hwlng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vt4BR-0000000BPMn-2vEL;
	Thu, 19 Feb 2026 13:35:09 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vt4BO-0000000BPMP-3bQG
	for linux-phy@lists.infradead.org;
	Thu, 19 Feb 2026 13:35:08 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61JA3xpK3133082
	for <linux-phy@lists.infradead.org>; Thu, 19 Feb 2026 13:35:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	uC7s8FOKOc4QcSg/6dSZjoiAxg49acrq24OqsiqPGu8=; b=Y4z9GCJntT7Upwi9
	2gxU9QMbAknnA3JdKLhsH2LZjLkIGWWLsweitBpQpmz+fHNlG21GSVlSzkJAP2WV
	MPPVApekODBuKVJcxLQRkjKogHFRiQ6a5LSAvCIlFdTPdBEn+WehhktCKlqwNv+c
	RFq8nNnD+esrQsLf4vUtll8xUKDTs4u+9YwdwK8s4mvyfLOkO23zhASPqXagtDGw
	EjDy5r0/cU8R+ZfsDD32PLlcnfKyWVuaFVWWGpGusqHTV5bIpTtutf/q9QhdTF3z
	WlGJmdbRnl0vm/7j0aaFw57GbLC1riWL65Xekujzj/u8jD0vyesDlomkgVhOV+ZG
	jHpy5g==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cdmxvt6gr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 19 Feb 2026 13:35:05 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cb38346fdbso83519785a.0
        for <linux-phy@lists.infradead.org>; Thu, 19 Feb 2026 05:35:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771508104; x=1772112904; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uC7s8FOKOc4QcSg/6dSZjoiAxg49acrq24OqsiqPGu8=;
        b=e9UXeQOzTeequo9fOeKkXPsLqwOL5Sc3j5CJgx/KyXNfLlJgeTr7hPfJtpE6wF7Qff
         EGsfVKAogPUaexAXH14rk0NDecvGiVy7ltfDZ9shNC/KjBUT2KUr/YIXRpsJf1OQHV1C
         jRV63s0wr3GkuKqc2eKzUna5JinIsN+taBkabM0kXFYrAlWMbQX65aujgWIHanzncWzk
         v7mj449s2hEcjz3X6vac73CXm1qxkQurrkAGAk7HbC1w5keSvorguUe1gt8hSL9a+dOJ
         +yJY1STQjXgp3o//Ie6ci0CpCXrkZcxngxbIQ4BxTKu7aLaBe/HTTehzphDsOhuJHuk0
         jb9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771508104; x=1772112904;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uC7s8FOKOc4QcSg/6dSZjoiAxg49acrq24OqsiqPGu8=;
        b=JFHHMvKaMbP231bx0EoG9+5c5U1rEQX+rV0UDdmvWJHh72ZuDtMF21aHZODgm382DE
         U1ZsWkYkU07NWv/62DxD1LrJ6muFna6dbEEgcYzZyrmVLCfCQnE6m6hhzwgkfZrg+cXA
         fOak2NaszggWMq8YDkP5WWD5eO5ri4peNda76X9k04Uc1qK+NIl7sSL655ejI5ZHEb4/
         WHkxYm0HgmxHDfISgpTY9TSkaCGPMhzUDczl/XTglKdraoaVap7kyMNoagNuyJ/lMIPM
         tkIzeR3Bw8MdoF9QQe91ozmvAdCuc4xWKkdnIPHo9ArTczIAlJ3JVYhiggYj3LpQ2jOw
         pydQ==
X-Forwarded-Encrypted: i=1; AJvYcCVWhO6+emSQ4bw7airJJ7hHDah937Is0ASQDTOROeVWZbhU3iaRo9nxMc1NaUNhNNQh7S4mFakJ9jM=@lists.infradead.org
X-Gm-Message-State: AOJu0YwHXxiskrsUviQ5Y3ZVKjwJ1DFhCDRJPpGby8xUXAyFmWDSboCe
	e9z1WyiTUCkJz7fL5jdfjWSNAQL3voPh5LwkSyHmYt6pdhTlb+m4j7/i2moJ5gUdk86x8F2lmWw
	XD+32qjtmKdjrix8SJmokQtBoLzxW15wJB2NIigrxJZMh0Jb7UiB9xL2RuRTis2i+JzfV
X-Gm-Gg: AZuq6aKYyj+atQmlGg9x8vk6ynTsstvbQD+cJQdkFeDHM00L6piXrHy9RxU52eiP03e
	3rIx0bXLRUxXjF8uWcW7ZOxHKsy1MRgCEx0+1FFRL+nESgTBO8xoGdkoJtaQdFQs31ycc6TeiDK
	y6WOBvXeR2dlV+NDa/Qr452ABID4fJO4EjJbAFwwgIWyZgjOyKffxSY3H3FmWRY0MaZCJ5RHi1G
	JFPk21kYTQxZkBGpor2cMgp4NMbumVnmvgFXSMO3CmOQRc5FPaGWm21F0vrK1w8gDsg9igL9wxA
	ztzYcb2Ge4dbADnxUzKvm8Y22JRFIAt/dG8RwP54d8WgIaJUedpol6UUZDZOItviU8L8D+YaCvG
	VHWzGrp8DGH7ut3EeIQvHS9Fqcy/dIK5IRN2/bg6ZZmN7F57IwpHNVyotruW+MlYV11Vb+lfy3K
	1EloM=
X-Received: by 2002:a05:620a:708e:b0:8c6:ab77:f95e with SMTP id af79cd13be357-8cb4091adb2mr1953559185a.11.1771508104314;
        Thu, 19 Feb 2026 05:35:04 -0800 (PST)
X-Received: by 2002:a05:620a:708e:b0:8c6:ab77:f95e with SMTP id af79cd13be357-8cb4091adb2mr1953557485a.11.1771508103863;
        Thu, 19 Feb 2026 05:35:03 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8fc76c6b8bsm552980666b.65.2026.02.19.05.34.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Feb 2026 05:35:01 -0800 (PST)
Message-ID: <3ee0a0b8-7070-4317-b8fb-20cb7ab467c0@oss.qualcomm.com>
Date: Thu, 19 Feb 2026 14:34:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: qcom: qmp-ufs: Fix SM8650 PCS table for Gear 4
To: Abel Vesa <abel.vesa@oss.qualcomm.com>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, stable@vger.kernel.org,
        Nitin Rawat <nitin.rawat@oss.qualcomm.com>
References: <20260219-phy-qcom-qmp-ufs-fix-sm8650-pcs-g4-table-v1-1-f136505b57f6@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260219-phy-qcom-qmp-ufs-fix-sm8650-pcs-g4-table-v1-1-f136505b57f6@oss.qualcomm.com>
X-Proofpoint-GUID: Ouwq9dRSiUhWqmRnWIhLbMgVt3ewmnjC
X-Proofpoint-ORIG-GUID: Ouwq9dRSiUhWqmRnWIhLbMgVt3ewmnjC
X-Authority-Analysis: v=2.4 cv=XpX3+FF9 c=1 sm=1 tr=0 ts=69971189 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=hrNMlQYg83u7S6_LzQYA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE5MDEyNCBTYWx0ZWRfX6D2WqZHVB68n
 lInz1jgaSbNXbez9knGAZ9kvv7nkzETqqAJrvmt+V5TT8uOpkM1niuA2sM/m0o60ukAlr67n+0X
 RwucrgS5+RsgHmp//kbBiM6j/XhB+D1aelpjrHOcI75GQIxc1XQTsivZcpGVYpFpkQiGboKViE7
 nDYidwg26gN7BynKBfLxnxI5nODUn3ro8AbC+mT24LeixCw+pyNSGye/blyt5FuBdchptpQQp9Y
 ZjoUBWv4BmaHkoDV8mAzD+4qlC011NtzvxRPHazUJPMr67f3sxr/AEjmpairkzivBzNDxPuvvhL
 P/Cq2YBrvvnkjJANTRxZHaSxS0/TSPF2/f05dIMHcMZ2ABFWnqFu4904GsXRIYr4hGxxs9RpBRG
 7L2umvOhC/MMRwqjv+hi3bTo1yDznd875wnT1rXQ0NngkrBWoSGJRCa0fpA4YJ+IyE8vm05CCdH
 AMyBVLyEfhRR2Gnk55A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-19_04,2026-02-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 impostorscore=0 suspectscore=0 clxscore=1015 adultscore=0
 priorityscore=1501 lowpriorityscore=0 bulkscore=0 malwarescore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602190124
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260219_053506_909357_1D25693F 
X-CRM114-Status: GOOD (  13.09  )
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

On 2/19/26 12:11 PM, Abel Vesa wrote:
> According to internal documentation, on SM8650, when the PHY is configured
> in Gear 4, the QPHY_V6_PCS_UFS_PLL_CNTL register needs to have the same
> value as for Gear 5.
> 
> At the moment, there is no board that comes with a UFS 3.x device, so
> this issue doesn't show up, but with the new Eliza SoC, which uses the
> same init sequence as SM8650, on the MTP board, the link startup fails
> with the current Gear 4 PCS table.
> 
> So fix that by moving the entry into the PCS generic table instead,
> while keeping the value from Gear 5 configuration.
> 
> Cc: stable@vger.kernel.org # v6.10
> Fixes: b9251e64a96f ("phy: qcom: qmp-ufs: update SM8650 tables for Gear 4 & 5")
> Suggested-by: Nitin Rawat <nitin.rawat@oss.qualcomm.com>
> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
