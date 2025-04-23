Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6B30C369CB
	for <linux-phy@archiver.kernel.org>; Wed, 23 Apr 2025 11:56:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2qdxEe86SJcxoqFEAAEjaWsVG2AzLlFSoM6CgDoKokI=; b=TTJAkj6I0pFx8m
	yAydJFUzZe3j6cZk4P5Xnbd/6jpKHtc6aSvQYW/LvfTdHQOBKWxG8PrSryteEGoNWlha4KxNn8MF3
	edAYbRLIbktIHg3fkk9c95WutoiwPsox+Jj3IxjwtOsVDgKKTP2oCxotMxlha1pzn3rh/t9InXZOn
	iMwrN/Gcct+iIUkt75hxPaoH12dAenx0B+A6ucdrSoqdt69YdUkS+SaN4Ne3Qti81eYNHRNjVulR5
	FcE3JYLzGu1fT5SErniqTj0K1HyHm9BjzBVovakHmyL3YxZKT7qOwOB89YOWg73H7QxnZoNstgP/Q
	IHf8bejwrxUuRX3ietUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7Yim-0000000AP4Y-1ohw;
	Wed, 23 Apr 2025 11:56:56 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7XYc-0000000ADE6-1GvN
	for linux-phy@lists.infradead.org;
	Wed, 23 Apr 2025 10:42:23 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53NAMd9j014535
	for <linux-phy@lists.infradead.org>; Wed, 23 Apr 2025 10:42:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	B/sUVk9OKoRUIb1LnNSnSHgYKaMS9g0fDBib8P+9OBo=; b=IiU+rpCMYxFJiHvO
	+HIoPm450HBMyp2/oWkQm2mY9CR70Z8whPzjZGhAk/IyZRSfWGH0p9EBggmsGTmx
	5SM6b07V62/6+9pY/ewyDAo2NozPqfZ8ilG6Bfgz4BDVnYZeO8lp1gqR3IaHMQ2I
	/SuIXkgnYcpw1aOYL0rK3vwBmoqZScauKBgvZCAnCwlqrQdeFK69SnunOZuoJVMU
	FF3Tp1IE5haUORVjnilSPfPF6ZWClMianHp0rY9n1eIcVUQqqv2/jR6vV8q+k2jP
	0k1PF3fgyMGPEosjFsbyMBqIeISr9nYC5mNHC3HywwPmqhwtqKAcq1pclbFYf9Zg
	u9hFgw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh0hu7u-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 23 Apr 2025 10:42:19 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c54be4b03aso104805285a.3
        for <linux-phy@lists.infradead.org>; Wed, 23 Apr 2025 03:42:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745404939; x=1746009739;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=B/sUVk9OKoRUIb1LnNSnSHgYKaMS9g0fDBib8P+9OBo=;
        b=FfTtTYQ0Fj/MSODMWP1kzPEYrBdTFd1pDNzCXQ5++NgO2DjGAyL/9C12zvfdhOnm1i
         BxBI+ib95o8AyIXdv8VyTCC9D8NkKzS+RWVD1SRUL86ptcTSWGCxqi3WWJl/yYIqKlvP
         QloSHUpW2YrMAS9/toPBg7MAdel3oPXCe+VlncLrFzPMY4zYNIomq6uSCQbzrD+RHf32
         98wmQ3DucQc5gfNmBZlI9MBTKP1uL4lyEFNz7usJmH8F1SJwMKvGMGElkvn2LooUInk4
         L6eLFAS/2SfWZeoQhxvzeTUMIXojJtLFwVAoKEq7FzWhbowUq/qk/VYXSSoj9U/FxPVz
         7n/Q==
X-Forwarded-Encrypted: i=1; AJvYcCXIBmR2vTJCkTiJjAg4gCwnYvfax3D+PUv5tvQNSTfsgLRHs1oy0YU/KAObgLOGk1dFRo98gk31UvU=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxhbr+SiKhBdTivJVNafL0qSqGSSG64UhGhlFEmF4lmEFfwcjax
	yUL7yPy6rac82yZTXcu+2rUJOYBq31n82sG/iL3GluvUHmabzjovG3sJHTV5YeSHYJfkO+oacfx
	XGVU1Jotcb9Mu2BgPpSZ1b4YfAKO1QgaJFSWyNMgEUJ5uD0DhBetHr6mDX1Jn3cjJ
X-Gm-Gg: ASbGnctF92qqxRBtKFXtFyIpa99+mWt8MBHns1E98AvKrxdKYTv6oOb+FpWYvEbgQmC
	oIKzobgBKf56+7ODkiEUAN74UPWfoHwguQaTC8XSN2XWbsz8SbwW5nXsPLgSAuGOZeMFzqyf0gi
	dUAhL1CAl9HPdNA6OqRDvlw/WNo1Twez7roJVr5A42Tb7hSDtMsK91ouEXEVmdS14NYdGEP27N0
	dX7KCFu4sDAFFGQzyoP7ogV9G/A9ZY+jPoi1igxK5yr8TEqse65LEAurN2p+WGaqJN56NPCiUTr
	W7IgG0joDLIkbXmbOoJUMatplk09F+8hl4oBDXaXz8oUItVb718fP2lVkf+2KyMfX5c=
X-Received: by 2002:a05:622a:2d1:b0:474:e213:7482 with SMTP id d75a77b69052e-47aec49d152mr115859681cf.11.1745404939184;
        Wed, 23 Apr 2025 03:42:19 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGiwe0IYpezKkV2uUZMKDuNbDxC8roBj3sADr4v35lgHslXOIiXv/KaGkpVkodjQUBRrJJZSA==
X-Received: by 2002:a05:622a:2d1:b0:474:e213:7482 with SMTP id d75a77b69052e-47aec49d152mr115859471cf.11.1745404938830;
        Wed, 23 Apr 2025 03:42:18 -0700 (PDT)
Received: from [192.168.65.183] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f625577f3esm7330749a12.21.2025.04.23.03.42.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Apr 2025 03:42:17 -0700 (PDT)
Message-ID: <3735f288-5ba2-4582-afbe-8b3f5d0f280c@oss.qualcomm.com>
Date: Wed, 23 Apr 2025 12:42:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V3 1/9] scsi: ufs: qcom: add a new phy calibrate API call
To: Nitin Rawat <quic_nitirawa@quicinc.com>, vkoul@kernel.org,
        kishon@kernel.org, manivannan.sadhasivam@linaro.org,
        James.Bottomley@HansenPartnership.com, martin.petersen@oracle.com,
        bvanassche@acm.org, bjorande@quicinc.com, neil.armstrong@linaro.org
Cc: quic_rdwivedi@quicinc.com, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org
References: <20250410090102.20781-1-quic_nitirawa@quicinc.com>
 <20250410090102.20781-2-quic_nitirawa@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250410090102.20781-2-quic_nitirawa@quicinc.com>
X-Proofpoint-ORIG-GUID: KfhhhBkirYP4uVFSOIw-DwSJC4CB6E4-
X-Authority-Analysis: v=2.4 cv=ftfcZE4f c=1 sm=1 tr=0 ts=6808c40c cx=c_pps a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=P7VlLZW0XDfqy93HOhEA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: KfhhhBkirYP4uVFSOIw-DwSJC4CB6E4-
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDIzMDA3MyBTYWx0ZWRfX0gIGXCwoWxQ8 AXhcTdtLj/ql07qS7pUU6E2Mm2uQ+Pg9n83wa3VzljuXHjGisgX3IF7iFfWuEmRcDCuvvJxLrqW a+4G5aV2GvvTr1jD6p7M52oTfPOm/7AbE5LFTzhcsAj4Pv6Spbpo+w4Cupy8FSWTcPrib8sQ9So
 8ZAhPGkFIE6lapu0aspl948FbZZ5EqYUFGNyZ1VCG0GhNSOqOVvQGRYadwmSfyjbYKds9UofTYz FHNTFja5s5p+61YrK6NFRnyGpOWwjriP700PLaEjJhdXgy9xYIxhcZQbOkDHwIxzUNqiA+zoBzq hf2m8ZtioDCHcsjJCX4WHhdHmBrxpxBytyhQbLVi2SqE5R/I2C9olwsVUUg4CTJXzV4/YfaxPeM
 gYFojx4ikpf4IcO+Ev/VFn3qKdyhYGGdjbzcreK0hVjjOTlPt5XapyyekW8QyV/mOeBTijb6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-23_07,2025-04-22_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 mlxscore=0
 suspectscore=0 mlxlogscore=999 lowpriorityscore=0 phishscore=0
 malwarescore=0 impostorscore=0 adultscore=0 spamscore=0 clxscore=1015
 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504230073
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250423_034222_512526_5B94E01E 
X-CRM114-Status: GOOD (  15.82  )
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

On 4/10/25 11:00 AM, Nitin Rawat wrote:
> Introduce a new phy calibrate API call in the UFS Qualcomm driver to
> separate phy calibration from phy power-on. This change is a precursor
> to the next patchset in this series, which requires these two operations
> to be distinct.
> 
> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
> ---
>  drivers/ufs/host/ufs-qcom.c | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/ufs/host/ufs-qcom.c b/drivers/ufs/host/ufs-qcom.c
> index 1b37449fbffc..4998656e9267 100644
> --- a/drivers/ufs/host/ufs-qcom.c
> +++ b/drivers/ufs/host/ufs-qcom.c
> @@ -473,6 +473,12 @@ static int ufs_qcom_power_up_sequence(struct ufs_hba *hba)
>  		goto out_disable_phy;
>  	}
>  
> +	ret = phy_calibrate(phy);
> +	if (ret) {
> +		dev_err(hba->dev, "%s: Failed to calibrate PHY %d\n",

Please add a colon, so that it becomes "..PHY: %d\n"

> +			__func__, ret);
Avoid __func__, this print is fine without it

Shouldn't we fail the power-on if this can't succeed?

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
