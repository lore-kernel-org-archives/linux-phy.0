Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8C7ECA1005
	for <linux-phy@archiver.kernel.org>; Tue,  2 Sep 2025 12:29:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HXLTzVDnTfkZkdxJS2PuY0ylU9mhTqIuzhEg4k74ql8=; b=uWK3jmc/ktatIR
	aeRpqwvAwIqeqFtN4VaPsmnLFZk8uVnCpsTI/gw4oEWcgG56ZWuY/F+0YRv6/ZRlRWipIZTUGLtZr
	ApBP47u4N8juq+J0t/aon3qSdjvi8eicay1y+/eSCw50UX5fsGC3fxPaSAsK+N9a3G+qyMij9fj89
	cIZiDwpTq7QsbANrNz41wZwiXA00FzrOXtz8k5hPvNcywn1B8s7Fe9m0S21HFva70zNw5PndJl5ro
	Uw8pjddo8S3WLW+ZQGX9l1ORYtbXxkiOt6Axt/Ax/lcaC7agvG2LKmz/GBh89v+JAO30Jw8w7FOS8
	EvSk6eRnzLlKJ/gjcu3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utQ8w-0000000HGut-1EhQ;
	Tue, 02 Sep 2025 12:29:46 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utNQy-0000000GQAq-0bgu
	for linux-phy@lists.infradead.org;
	Tue, 02 Sep 2025 09:36:13 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5822RmdD009790
	for <linux-phy@lists.infradead.org>; Tue, 2 Sep 2025 09:36:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	tl/lcg8Vvutgd2X0nRCKCHGLUZWnWVuMPA89h352iRk=; b=RoCTbPlWxVKYakv6
	KKQaoyQRyVVuJWhXkduNvIRHO93U2I6kCQ5uw1pDJitUJCocwKELR6i+8TlT3SiU
	jc+ePAQ61Y04brd7oqfkT9x69OQ7IHUi7FE/F9+uyhCfjqYLH5r0JZgaAoyTXAhY
	dQj3LCNPECR+qkzrXxU/YqVSpCRekgtEn0v4dXi4fEwJEkkP3hhgheFjyznOAnrg
	PlyPhf4USp9muDHJBif6yHt7WMCqvgLSGeTOYT78IQghhp3pluCf3uJT+O6g5C+0
	8V1CDxLeOsKFQ+PdCRJL3h9wVD0rJ0lXq3F0d0sPpwv48sWhRYfvrrW/Y6Msu+55
	njEhbQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48urmjfa7n-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 02 Sep 2025 09:36:09 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b33d08f681so3624721cf.1
        for <linux-phy@lists.infradead.org>; Tue, 02 Sep 2025 02:36:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756805769; x=1757410569;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tl/lcg8Vvutgd2X0nRCKCHGLUZWnWVuMPA89h352iRk=;
        b=N4g+m6cDgRya4C3NWiDuHWwplsWsA3qzmgszfACQ5XMZOKcKoVjaRRhIMuu51/jMK3
         T+Tvucg2Nq4UDFHbwgeTB26nqECm3U/EW32dUrxvjA6PlKHxSgoII0WHLnUT5i2J64LB
         QlCatHpsrxnTftPb8WCKMH0qvaNfNKs0h6axcj930Xnd4wIs3hqT+V+y8bQkTMUrGhod
         UeZc4wVX3gV6aGv0t8rK9HoefS8bn9pgaD4bSV7UerQk9JV/z8s7MfFD7OXbYyLbjZa3
         QDOXYRviibb9iRB7BQLud3jltQwvkf7fuQYlOFig43JWlEeLt+m1ky1D0s+64B8Ttikq
         hw2g==
X-Forwarded-Encrypted: i=1; AJvYcCU0zBEe0O38aPEuSBo644FrCNrK7ULL/N2hzBKvhIhiSoxDJitfogLBjrV4Ot7RfTJJgBaDoGk+xHU=@lists.infradead.org
X-Gm-Message-State: AOJu0YxAhjR8kc0UiAsYHIMm5X2XQfXULfsRt6PN8ZcQExP5+7aPa51P
	kk4o7Aa4k03jXhomjFtmDOiLUM8G99ImjDj1cg6Jwhcc0WIFwTZcd8vubzl/SLFujHvNgi/s1Yy
	4VBWxF1C6eUf0yl4GTEgw8aDTFPmJJVD32BGDQOlDPFexAL/7xfwy07f9O0dJZctFyphy
X-Gm-Gg: ASbGncvn5xL2XKVkii+HjRss2fB91LysYPnMYzfs8R+hoc8UmN4hVzkhMQG1vjwxMVq
	Atziy0053I8OZJjw7AVSFo4LExBQsvReBogP2wW8vIaLamD4QBSP4oVIs5UpQrJo0aZVbefsDyp
	sT4iyUDrJ/Lg/HxPXT5gSgG1gqUqx2UWI4LzXC9vxEZaFWt4tKWai+jL+WXILAcaHd0hZRy4poz
	y27NB3zLPyj8qW24cBtBHbXspXjBmjzLhPXrTkPRXf/zufRuVtCV+/RTNZpon/5D4FN5ZjJoE8h
	8rv+1RwfdtG/QVw6jycMK6Y5StXp2lcWoWH4HfWjXG7kIzHf/phf1DcYROQH0gfdzLxlFjrDlCP
	2nQmMMWCtrvhICy2g9/4iOg==
X-Received: by 2002:ac8:7e89:0:b0:4b1:1e8c:13af with SMTP id d75a77b69052e-4b313b8c812mr90242791cf.0.1756805768974;
        Tue, 02 Sep 2025 02:36:08 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFl44Pco1b/qvJrJe/DJPXSQCR9wDNYF6uLVy6zduo7vkFZyrpgXm2kKC7QlUx4jo7DSH1DkA==
X-Received: by 2002:ac8:7e89:0:b0:4b1:1e8c:13af with SMTP id d75a77b69052e-4b313b8c812mr90242631cf.0.1756805768360;
        Tue, 02 Sep 2025 02:36:08 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b0421939da1sm527037866b.27.2025.09.02.02.36.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Sep 2025 02:36:07 -0700 (PDT)
Message-ID: <f9d6106a-d59a-4565-bc80-fa7816a1d6ac@oss.qualcomm.com>
Date: Tue, 2 Sep 2025 11:36:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V2 2/2] phy: qcom-qmp-ufs: Add regulator loads for SM8550
 and SM8750
To: Nitin Rawat <quic_nitirawa@quicinc.com>, vkoul@kernel.org,
        kishon@kernel.org, mani@kernel.org, dmitry.baryshkov@oss.qualcomm.com,
        andersson@kernel.org, konradybcio@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20250818124110.8136-1-quic_nitirawa@quicinc.com>
 <20250818124110.8136-3-quic_nitirawa@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250818124110.8136-3-quic_nitirawa@quicinc.com>
X-Authority-Analysis: v=2.4 cv=OemYDgTY c=1 sm=1 tr=0 ts=68b6ba89 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=FoF8l4-XPnHLV7uwFA0A:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: 1qjdhegq8e9uTg7QyHbW-dUSgRsKxoIB
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAyNCBTYWx0ZWRfXyDYEaIcLacOP
 k2weHz/WL8kfKoMaO5xdB8G/TpWxYtFi3Y6V0OHVxQlDNgtlu/FqJM3FPEzWIbQTryXt7XfDieq
 hUB1ehzsW0zVatUfUIgEJlJzefBHbVIf8RpF0+g7rWXiLEWiiCiwbf6zwmhjLQddtNSkdDoGq4S
 mbsh8dw5pAQu1WMYkx+GPFJkCnHS/9YU9BMi0tIFCi3rIKWFPq+0u7Z6hzz+XcmLfKPIwuVCsbm
 bPZGqdWjudBQZ8Rw8sdnMFZDxBO+hKIJd0sq6rh95dK0qHOC0uJJ3ghvxo44W7EkWOpK3DwK1qH
 GoMX26sefwijn0FonP5fmUOBmclMLgcrjZpcG82QZB2h1V8+gP2CnEUo3cOTq6xDaG9Hf115oEZ
 piXV5WvB
X-Proofpoint-ORIG-GUID: 1qjdhegq8e9uTg7QyHbW-dUSgRsKxoIB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-02_03,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 spamscore=0 bulkscore=0 priorityscore=1501
 adultscore=0 clxscore=1015 phishscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300024
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250902_023612_305021_AD12A753 
X-CRM114-Status: GOOD (  18.19  )
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

On 8/18/25 2:41 PM, Nitin Rawat wrote:
> Add regulator load configuration for SM8550 and SM8750 UFS PHY.
> This ensure proper regulator load management and mode selection for
> optimal power efficiency on these SoC platforms where regulators may
> be shared with other IP blocks.
> 
> The load requirements are:
> 
> - SM8550: vdda-phy=205000uA, vdda-pll=17500uA
> - SM8750: vdda-phy=213000uA, vdda-pll=18300uA
> 
> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> index f7a4a8334026..50875d9609f6 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> @@ -1172,6 +1172,17 @@ static const char * const qmp_phy_vreg_l[] = {
>  	"vdda-phy", "vdda-pll",
>  };
> 
> +/* Regulator load arrays for specific configurations */
> +static const int sm8650_vreg_load_ua[] = {
> +	205000, /* vdda-phy */
> +	17500,  /* vdda-pll */

Is one really supposed to be 10x higher? I mean, it may be, but
it looks odd..

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
