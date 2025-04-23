Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD4C6C369D8
	for <linux-phy@archiver.kernel.org>; Wed, 23 Apr 2025 13:05:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cgsE8uKi7kTJO675AqBuL8F4xJ8hYduWu8Ppq/cZDVU=; b=toNy6LpGyGtlzm
	5RuGDtxkAPzLn8SLlYVRG7vL5sHJijVTjHWF/eDP/gOVhVHt6/HFQch96F/ov+Px0U8xTnNr48Oxw
	d6Huz35Ci3PZQFNLGgCwbNSJ3lfYFz/muX4yS4Jmt0rNwL7QynPrK1jpZ1HAxR2AJE6MwvFhi7YRm
	s4lIVtPNq7EJq6gbdQMhLng3c9CTPfZ03DaZlBDUvcqLbu7Y9VnCZrF4Wx9N9n+oeTLh8GBX8NoPK
	xBhuyavihXlxjIf0mOhdMVYm7e3cg2jdW9G01jl6uoQ+lTcxGtP46HWG0u35L/ANTKMKQSpD7VHYv
	N1PAM7ZsbpAojgcbjSCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7ZnM-0000000AXXr-47R2;
	Wed, 23 Apr 2025 13:05:44 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7YIS-0000000AM34-2R9a
	for linux-phy@lists.infradead.org;
	Wed, 23 Apr 2025 11:29:45 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53NAlWlG014042
	for <linux-phy@lists.infradead.org>; Wed, 23 Apr 2025 11:29:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	aiLYMeII1DzKYJXChQAXWDo4SsnOHw7fzuxji7XmLYs=; b=mwRh8Og5wI59bfsL
	gzcq8bksEhmk+alL70SE5tmEiJhgWm7v3YoUgydWlPoy9QAdCYsgkNOyGJtbXtv/
	Bg5QhlVnctg/enbmUjwnHTC4cksMLN/VapnjkbNxEJpxn/xLYAtT9oBDXOfa/c/M
	rb4CBs96lm1bd6OhuVU3oV0E/HHaEcyQeLApr1o+z5kg9tbcw2PLUbhaOc1zCA3a
	NWRlTw3JoQAuSYjJf+Pk3PD96mtt8NsP08IOsOUgp3GyOnvC7O1QBJslOhpB7Vq/
	znAYxLHsTLMXGr1NzCuKPtesTkkG2HU4EWkUxHdBqTgucees4a/htP/It0+i3UN4
	o7vDRA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh39x76-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 23 Apr 2025 11:29:43 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-47ae9ed8511so8044861cf.3
        for <linux-phy@lists.infradead.org>; Wed, 23 Apr 2025 04:29:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745407782; x=1746012582;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aiLYMeII1DzKYJXChQAXWDo4SsnOHw7fzuxji7XmLYs=;
        b=viu11Vww5tot9zXl6iq1XUmZA323e9vMLydsV+oh39jdxXpj8DRW3Qaj8ZLIvfdO5t
         xfQFkBRQAz4kf7m0+VN1aSqT8jJqbAcrj66mUcvHSrWsbtRu1/mYiR2F6A3QOPC/hJ1G
         URa9+fAUNDcpxcUGiPqBJdLCmtNFDjedRTFHBYO+h6mQ8qvIIGvh4P95kVBFAzFpmCrr
         Vf4v79w8Z7lVj1agI26Vn307XFUzSVlCc7h9XhMSS6rLrgUJyRh4i5TjBY/Sz5NvTKF9
         NqdY9CIm1DnEWWWfSgD4VvIDclum3+np33vZ8njIaK++/pOCkxTBEiQ6u0QtDA9UaAzf
         vsoA==
X-Forwarded-Encrypted: i=1; AJvYcCUM5QC+cwWpp9Buv/feoFEWAPVp3tcLPlqbf92G+iU6rD96Gzen37/+0lTuTk3+JpVROXus6Lh8Mn4=@lists.infradead.org
X-Gm-Message-State: AOJu0YyTSIWWexmVZoi7vLMZASStqLlXj53m+IxiEvNmWp4v8/KRr8zh
	NlILANUvNvDGl69AOEptS7Ml3JX2zUyx8N9u8vn9OFl/ttp+3CfNCBrKA8ddyyGiRpsuzQXyGQP
	rhLaeyuYxjssMJue/o5QLnOp0CmC6YPsqkpmwiHtmc31UfhERDdt0FfuAvddYV9/2
X-Gm-Gg: ASbGnctDLm/Im1YXRiSJRDI3nkjwA77Fh/zLXy50dUrMt5s9KepyvxqujY36sqhLtB6
	9Yj8cVfGATUJMFlhWzHWA8SLsobUEvnsR60frb7hlwmz1fXnxGvRkaUMX770FFvsV2bxAd3p5dI
	1F8pF4/1PfSoddUPTUe1LzIAQVRqrOCvvzmAAAEtN2+ShmeEHk17ZgFaaJTcRXOKtI4YMHgzvS8
	og4WGoMXGFmU2IRhrzyzRujArh8QQNCfQ79kOZQaVUBWtjMrgo8JgYApMYKE4c8YeSlt2vxzVkF
	wSaKujxZrehkmrse5+LTZ5pzzmEQXUCqi9/emY8VxPKwxbzp0hsEpK1gQokQrVgVxAU=
X-Received: by 2002:a05:620a:4543:b0:7c9:2465:8731 with SMTP id af79cd13be357-7c94d123bd5mr169985285a.0.1745407782431;
        Wed, 23 Apr 2025 04:29:42 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEgFbGmUp8j9I7o53Gg0IqLCwRf3sb8p8Am2LmvgQJTpn9FJCrHSFbcU5fZ7b4kD9OfN5zyGA==
X-Received: by 2002:a05:620a:4543:b0:7c9:2465:8731 with SMTP id af79cd13be357-7c94d123bd5mr169982485a.0.1745407782052;
        Wed, 23 Apr 2025 04:29:42 -0700 (PDT)
Received: from [192.168.65.183] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acb6ef48e5csm802900666b.148.2025.04.23.04.29.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Apr 2025 04:29:41 -0700 (PDT)
Message-ID: <052fe049-a17f-4fa7-80f3-a198de21b3c1@oss.qualcomm.com>
Date: Wed, 23 Apr 2025 13:29:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V3 6/9] phy: qcom-qmp-ufs: Refactor qmp_ufs_exit callback.
To: Nitin Rawat <quic_nitirawa@quicinc.com>, vkoul@kernel.org,
        kishon@kernel.org, manivannan.sadhasivam@linaro.org,
        James.Bottomley@HansenPartnership.com, martin.petersen@oracle.com,
        bvanassche@acm.org, bjorande@quicinc.com, neil.armstrong@linaro.org
Cc: quic_rdwivedi@quicinc.com, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org
References: <20250410090102.20781-1-quic_nitirawa@quicinc.com>
 <20250410090102.20781-7-quic_nitirawa@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250410090102.20781-7-quic_nitirawa@quicinc.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDIzMDA3OSBTYWx0ZWRfXyaVpm3jQ+VUK LAOkknOJbvrBUL6NUyJA2PUv66yfpW4Ux3UVUcPt+pURTYJm8YtRzQdNLPzO3ITUsGipJ3jv1ZM So/Vd0VXIiTSs/Okmk0b7dhaPys4zzkqqnvopCdiAjsJqgmIJccq32wgolbUy5EuPxlknEFaqYy
 9G4h0tgxEkXIGPxt5b+VX6x5fzeb99sbQ9sPe+ow7am5umF2WjFr2AiEGcrY3cN8tCMpi53lU2N j5ge72oWKsrD/9+WJfJzIMAexlxG2mFKJtUOv+GVVBfjLoz9I7wyPqM29zJ8mTW9z/HmMo9df5z IAkJZyVKvGA9GzAX2UHwVNW+m66ZDpJdH0HGY9CcjplHA5aQD9lLlKMxOhGSUG1Esjot2AjXxvx
 spmIGJx+sDnTFelIoQZJ1VJptpvTSuLPU0QVBHvMVdGoqNw3yxWhfeVJlDSYky1DskmZqgWQ
X-Authority-Analysis: v=2.4 cv=bs1MBFai c=1 sm=1 tr=0 ts=6808cf27 cx=c_pps a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=0G_SUc_-HujNE8ZPJPcA:9 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: vKV34Z4WZ6iLfyml-JLuF_waGdSoQ7QA
X-Proofpoint-GUID: vKV34Z4WZ6iLfyml-JLuF_waGdSoQ7QA
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.680,FMLib:17.12.80.40
 definitions=2025-04-23_07,2025-04-22_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0
 priorityscore=1501 suspectscore=0 mlxlogscore=999 mlxscore=0 phishscore=0
 lowpriorityscore=0 bulkscore=0 spamscore=0 impostorscore=0 malwarescore=0
 clxscore=1015 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504230079
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250423_042944_632271_65811E56 
X-CRM114-Status: GOOD (  11.12  )
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
> Rename qmp_ufs_disable to qmp_ufs_power_off and refactor
> the code to move all the power off sequence to qmp_ufs_power_off.
> 
> Co-developed-by: Ram Kumar Dwivedi <quic_rdwivedi@quicinc.com>
> Signed-off-by: Ram Kumar Dwivedi <quic_rdwivedi@quicinc.com>
> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
> ---

So this patch does quite a lot without explaining the context
that isn't visible in just the diff below

- .power_on is altered to no longer reset the PHY (but it only did so
   on docs with !no_pcs_sw_reset?)
- partially inlines com_exit (dropping the reset assert)
- removes .disable in favor of .power_off that we can't tell
  what it does just by looking at this patch in the middle of the
  series

Please improve the commit message and consider splitting this change
in two

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
