Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1AE41C3ABC9
	for <linux-phy@archiver.kernel.org>; Sun, 18 May 2025 22:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7frcMAfHRLbNQEMHGQrf/C1dgi5dIgUf1jQgdH+mt4Y=; b=PaxN8wc3YMkOfH
	mwDf/beYsUKngYTcaJXU6ffwg3vaHjI9UWEzayjxAJ3eyQ7Ko6i+siNYYeNiic+fC2ZWajkTES2Kt
	bCA98lNn0wH0D5dGhmvkDgPAbE+HKfqcyUkjocZTx8qOOXgkCwnfrxc2lMrY1N3i6P9khwe/Dt4VN
	jdMam5/xcYxAqAJqn4tFcOnXHDWR5s/f3S0gepttrItuKaR0iyf5IfRcvP25yQddLBeyQL0evi1BT
	F/b4PW/GuPAV2n61crIPJhloMuDaPICHX086sRj30wmI3KMFZoM4IqPC0IY4qdT4Y/5MC+yNAnk9t
	kt1fTwz+ZyqKoJY235wA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGmnc-00000007f1d-3BQt;
	Sun, 18 May 2025 22:48:04 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGmnY-00000007f0U-42my
	for linux-phy@lists.infradead.org;
	Sun, 18 May 2025 22:48:02 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54IMLtcM022938
	for <linux-phy@lists.infradead.org>; Sun, 18 May 2025 22:47:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Vc3WSizhU9aSF7EbNasyVlOQ
	hot/U+WGrlUH3vMwD9s=; b=Ykbak0r1yjLI/irIIR2MXUgQ7UAgqZAIlyjljHMv
	DTJwaJYjWkYdB7Y0Ptpd4FG9fEtoG4qIHJLeY4ocNKLIhUlp+WJn/uoQ/nR0oVyv
	eUUmzod8lsQJtCmFii8kuBELuLbXGkml2qFI2tZMD7ki+9COdu/OxJWYxUtGE6LM
	YtdanqKqidGaE/sgLYNMHzCxdpSpFS0rqXGgyqyaO6h0RIyfu9RfWZrVkVt1Kw76
	ElqDII9P/ASiQa+J0pEaZW6Rr5egWUeq4d/q2LpBD+/nzB47UqkKV1OiD0eKMtcw
	UQmQGH7txNO+57mLJhM2zHIh8/DT/LzHSRvAYulx05IBVw==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46pjmeth27-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sun, 18 May 2025 22:47:58 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6f8b14d49a4so31546466d6.2
        for <linux-phy@lists.infradead.org>; Sun, 18 May 2025 15:47:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747608478; x=1748213278;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Vc3WSizhU9aSF7EbNasyVlOQhot/U+WGrlUH3vMwD9s=;
        b=wt3q/jvOtaztDuogTlrWNqghnAyGzubke/3ue6UoAB8G1qqcMgoXLqlkM87KtVN1rd
         Swov+badSskSJAFIKZT2YvmP1cUfaYgzEnAsGUhhab//dxSQKp+qejs3RCae9z4Bs+Ax
         1x2Rxl9HUE7zVVMGLgbVBmqjlo5jxGx9hpij1jZva/JHH/lRvlCCnsAB90JNHSE+lRjM
         6rJLEHJogxlV47IrbcCvwRAohJsZXKAPv5KAOzFIYXdiJzhRd0uHRp2XMOGHlZZB6ELM
         bbjbr3v2PzgVX7f0zjUe/Sh4jz8Uwpa0UvYRilW23jlubB2FL2y2NK88jxJjlFHrafrX
         7M4w==
X-Forwarded-Encrypted: i=1; AJvYcCWIL44EMiH7h4Dj2PXol10r7Au+/C9zHCPNTknBB+Ve/fY/Fuqgq7a8oMUyWkDUeK+2O/NRS4T96F8=@lists.infradead.org
X-Gm-Message-State: AOJu0YxfYCRB2fow6f1ZnnsYC+ShkKufkwAwKxq03CltAqQ0fdTdE7kB
	yxMWQPe7A0MCK6AwD9Q4/JEJakatt3I2Y4x8ieYJP4cXtDP2ejAqglY1ezsT7SWpJajh0WL78WB
	BZWMMhTWnSnkanUo1lobjyulIP5L2f8FfliW97sxNAHZuRIXnWbo4xfkCJNPYzFA+FthO
X-Gm-Gg: ASbGncuKrf5OcJTtRnLREzDHGmWzRo97nLzRCuYGxNmTyGTbYQR4fl8W7ekgUDDunhG
	43lBkpaKG/aTzxLN6Kg+IRAPaaIrM312w58N3/4t+Jl22ZSa/ow/8fqXIKB1Cty69UZF4AnMkeM
	bRykXXZnVl2uyhwkcv7xlTWoV9KKJe+bbHLzUHoZiqQnjOFBKLjbKOUDZUwGMfwuMytQiWOr6TI
	iL8Rmkdm/tCvC3+daQ8k7Nmmuaw1WqSJ2SdVVCBVjsfmwqg/QO5FUeerieTqRDjA9NptrQw4KpV
	1neYnQ7o01LCFPG/z9pQBuSZXkv5f1bdDQq0mDt14eehWRE7cwPnG6O83qPv8N2FEga85/eBDro
	=
X-Received: by 2002:a05:6214:2a83:b0:6e4:2f7f:d0bb with SMTP id 6a1803df08f44-6f8b0849362mr157924686d6.4.1747608477721;
        Sun, 18 May 2025 15:47:57 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE7tAYjxfd4r1T1qjru51NTM2HHKxx0e0C/hKdPW1JjgLuLcFbRWRts+BYv+uzd5ciQqDnOkg==
X-Received: by 2002:a05:6214:2a83:b0:6e4:2f7f:d0bb with SMTP id 6a1803df08f44-6f8b0849362mr157924366d6.4.1747608477350;
        Sun, 18 May 2025 15:47:57 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-328086220e4sm16437111fa.111.2025.05.18.15.47.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 May 2025 15:47:56 -0700 (PDT)
Date: Mon, 19 May 2025 01:47:53 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Nitin Rawat <quic_nitirawa@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, manivannan.sadhasivam@linaro.org,
        James.Bottomley@hansenpartnership.com, martin.petersen@oracle.com,
        bvanassche@acm.org, andersson@kernel.org, neil.armstrong@linaro.org,
        konrad.dybcio@oss.qualcomm.com, quic_rdwivedi@quicinc.com,
        quic_cang@quicinc.com, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org
Subject: Re: [PATCH V5 06/11] phy: qcom-qmp-ufs: Rename qmp_ufs_power_off
Message-ID: <hur4ttih7f44obug6e6p7x255yt2wrif6x6maikc3w7llm3ije@tzc3rqswzyrq>
References: <20250515162722.6933-1-quic_nitirawa@quicinc.com>
 <20250515162722.6933-7-quic_nitirawa@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250515162722.6933-7-quic_nitirawa@quicinc.com>
X-Authority-Analysis: v=2.4 cv=RoDFLDmK c=1 sm=1 tr=0 ts=682a639e cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=R_7yDYiI5xYpdCZW9wQA:9
 a=CjuIK1q_8ugA:10 a=iYH6xdkBrDN1Jqds4HTS:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: OxpDABe1z8ke1q9DZ2rEdU--SppWF4HK
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTE4MDIyNiBTYWx0ZWRfX4JdETRWhtxQa
 VjOebNx7Ts0vAaHUb05/Ruwb8QjesXEYJPwSZvWPhrmhfDWj4A0p/5/+qObUvObBxWzNsetRxk9
 35ZZ//Sfe8adVy7zXcgV4Z5AbhX5B5MGQDP6Tf52WExEBij5B8UhA6rcfUhxkDg7tnzAOBxL/K9
 VCAyLO399yvqRTZYbgMoy2alQEzJeWa3GxTgDojH+lqvU8LyEH+MJLwT8QmGVcusp/iCmL0tgYY
 6UbtBhPBly6xYI2QgJAU+YYxLPoNkeUW4tA9U5C8WwjxJd1FzL/C3xBG8yLp6V/zx8U45R71sTc
 AQpujdInXq0h0wmghYv0ooeY0F9OVCwzS6VGwr/ztq3f4ONCuKKQa9jU6xnhPQl1WrYzAjmxIi+
 XnIcE57dQ6lQJWL3Vhfp1HCbyJEobYw09EEUujDO6a2AaB1dSNlyL4S01XZMp82wcElVSTZ3
X-Proofpoint-GUID: OxpDABe1z8ke1q9DZ2rEdU--SppWF4HK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-18_11,2025-05-16_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 impostorscore=0 malwarescore=0 adultscore=0 lowpriorityscore=0
 clxscore=1015 bulkscore=0 priorityscore=1501 mlxscore=0 mlxlogscore=850
 phishscore=0 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505070000
 definitions=main-2505180226
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250518_154801_139457_089BEA81 
X-CRM114-Status: GOOD (  12.84  )
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

On Thu, May 15, 2025 at 09:57:17PM +0530, Nitin Rawat wrote:
> Rename qmp_ufs_disable to qmp_ufs_power_off to better represent its
> functionality. Additionally, inline qmp_ufs_exit into qmp_ufs_power_off
> function to preserve the functionality of .power_off.
> 
> There is no functional change.
> 
> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 19 +------------------
>  1 file changed, 1 insertion(+), 18 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
