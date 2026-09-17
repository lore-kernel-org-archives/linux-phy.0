Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63C99C982D6
	for <linux-phy@archiver.kernel.org>; Thu, 17 Sep 2026 15:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F507ldw9kwZtpi9PxkhJygEennu5Td+TQABNEuKvFn8=; b=bbBoM+29kXFN8v
	Fpm1zigh9DQHTiXWH+yvCIPZwoSWGvzUr//N7yWll1iMHkyNPHUnnohnG22WMn89LvLW014pgbN49
	DroJCZS/5jO6g8LgU0XsbY6gUij5nk9CQz09cjbyRllGW4Ga/B72jeWjRNLpqPODa8S7voNnEdBT7
	Hu9WjwTjz8/WN3NVjKx1amD2N4E7yYn0YUES66fSp8LQ/a2fLNGdEL8lgSeDKiYIhcBl8meaCg12S
	Ufdv7gCsFNQ5/wORc8eSFxR6y9GA5f0KH35gc4dLxOPTgq//Qc7GxHdn4P6lYEUm0AhDl4nc+JiXD
	bFmFmz8cBEvTNAKmxEbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7EFU-0000000BjK2-009x;
	Thu, 17 Sep 2026 15:42:08 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7EFQ-0000000BjIB-3pFW
	for linux-phy@lists.infradead.org;
	Thu, 17 Sep 2026 15:42:06 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68HDk5Lk1955208
	for <linux-phy@lists.infradead.org>; Thu, 17 Sep 2026 15:42:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=ufweLYnTw4iMO7Tb62UAUdjv
	/zgqwscOalR3tmAiN7Q=; b=pX3BBD2bOtop6r9tZsVPcYwOh7p5C5nPCFFAn287
	W0/Vfg09Z6xlmNMqDqm9O40jGb/SjJCs5nQZJ5WQm3TQussHr3x9zRBqL9RYTdBN
	wLyvqtDpc9E4WRyd4QPwPGrmwuuqUR+T6RT/O7Z409/hZIpAzDudBin3N1Lx6n+Q
	dbXyGmxDnevZenM/nB/WOe9mT9dldsS1DprDx1Y9C8NZCIlERqUOU6wqnMxF0+B+
	w5HnwGwhLR6p1eZ9VS+IVhVY1Ll+v2GxMCce64r4E3fJTxchjIY9DZ8ZwY0KuYzg
	T5qLnCt8qgVEhS73lPdq0RtuUGhtBzu3FQARJtcEbhOPmw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4grgu5gseg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 17 Sep 2026 15:42:04 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-936e393061dso155302585a.2
        for <linux-phy@lists.infradead.org>; Thu, 17 Sep 2026 08:42:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789659723; x=1790264523; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=ufweLYnTw4iMO7Tb62UAUdjv/zgqwscOalR3tmAiN7Q=;
        b=fnv6Zu+UmDR8VwbMv9eqj0Pb4O7wXCzmRfpvRz5VMTJ0QCZYszKEHLAGndBk/TyRN9
         DBCqPLYcXUXjBCwcn3gL9BYG/mG9VFS9PomO80VUA/R+U2RPDmg9aq+VXAr+p4x+9izj
         JF59dBH1sHuCwz8x+AWo0d/8Ooo8RaFoIEHtQ+Wx6qJFikBJ3CYZJDwcShVV7Qnu7qZz
         johxuGh6GrIDTXgxXUcngPxiTMS5NxjNGXFgi0VgUINPdQo13A97QMMqt266JjWn8BzJ
         rNG0B55sWMdSTh8GXLFo+PRButrC5Y5t2ryJSK9ZxxUWB8g59RxBjQrJnRYD8640n+XL
         +q9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789659723; x=1790264523;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=ufweLYnTw4iMO7Tb62UAUdjv/zgqwscOalR3tmAiN7Q=;
        b=YDtgbrVGpx1q6lpuvvlTlBbTYzMDLfHtr1K9/zzorXIu7YE5OJrLL9nwf2Q0quWN22
         1UjcrS0KpA3IddMkOjhoJ1JI2JFfObRCKExSbpAa0PvA4ecCghIQaZkQefc4oWoz8tYX
         kC2OGePzv5B7nLj3n/JslHQ4Aaea4tUdcPhlXQmLUKTsPYooM1Lm1gzXfBY0P+5mWfG+
         cne8QhBh8Flb55Qd0Bx6NkxTONj5CNehL7yB0grL1rZOASKj7WHTrujPxofJ3s5WLy2T
         FKZqE/OEBUgT3IhdHskQpIJYYQcok5BoGLeioalsL+5HGy5mItSj6ti1uMEkq+U5J+qi
         nZ1g==
X-Forwarded-Encrypted: i=1; AKwUvBxpiD7QneKZbEMjjUEKutIjHLM7mj1CO6BGx5k8qQny9VoUjvYa6Z+UHqMTlpGKeMufistuLnEYclE=@lists.infradead.org
X-Gm-Message-State: AFuF++m5my8/s0QkcixayTUhHkSO7iI/aWld3sWchmiFOisaFz1reK2G
	FDFQhUCs8Nb7JOwQAmidO83BRO1KRjENKD1HwQTB+UWS2jZIX9WPi24m1vWVduldRSGSjA7ZJn/
	f9lbhxlYRhgYa2hXkL6lmgbZzsdP4u7uu56p9dcc7z5wIQBBwG92TcrwS5DOmE4qnkWVU
X-Gm-Gg: AYBFou1CRCXtEiMr4CpsrY7s41MoELfbgGgahtC9+aBZWM/bPH0ILmgQ4i60uKac8Pw
	vb3Ed2ZA0My/6+A+4/VXv5oYxLVTQav51gvTbMhZ2CO0b24nAA/5kNvqaPVXbuBxA2pjVerSVC6
	Nse1bzxgj0R4WmVcdLKUS1zZyvq3n5kBfLIb+Stb4VHLXhqcTS94Zzq5g5pNj2MOmCW0Lq0n30P
	rtHPagXzp+SCZsmWSw1aREE5XMRfM7ADY8RWxtYEev4XAjx84DMHhxcOoTjDwUTps6LoUbw/sk5
	D6Zr1uL6ViLQlKueUGHYHEsFtILFtzfQFkwvQb1p/zz8kQHVRYDqFyMyObgvB61K2mcyTVHbgkY
	KAp4dTbmc7XXNWQ==
X-Received: by 2002:a05:620a:1a07:b0:93b:d7a0:d9e6 with SMTP id af79cd13be357-93bd7a0efd3mr127258685a.64.1789659723225;
        Thu, 17 Sep 2026 08:42:03 -0700 (PDT)
X-Received: by 2002:a05:620a:1a07:b0:93b:d7a0:d9e6 with SMTP id af79cd13be357-93bd7a0efd3mr127254585a.64.1789659722689;
        Thu, 17 Sep 2026 08:42:02 -0700 (PDT)
Received: from oss.qualcomm.com ([86.121.170.232])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4870bef7642sm14897857f8f.5.2026.09.17.08.42.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Sep 2026 08:42:01 -0700 (PDT)
Date: Thu, 17 Sep 2026 18:42:00 +0300
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH] phy: qualcomm: phy-qcom-eusb2-repeater: Fix SMB Power
 leakage issue
Message-ID: <p2ehge32cq7tsjx5yg5kpue7hwc4b22zv737wkxq6x6m6uesje@m3ltespnmzfd>
References: <20260917-smb-repeater-power-leakage-v1-1-6d7311c3c03e@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260917-smb-repeater-power-leakage-v1-1-6d7311c3c03e@oss.qualcomm.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTE3MDIyMiBTYWx0ZWRfX8v7jG75Iyl6V
 V7FYlSQlGU39CJW2G0BF3+1ocEcedRunGoHETOKurAzq8ysgm8rnAiSGNJzJt+74K6ryPp0kIux
 7TF6xCoplqsedWUwZJxODKZ0SnncgnA=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTE3MDIyMiBTYWx0ZWRfXxBNTOCbPoA7Q
 sBlEmpxfK7qh+tCZPGcrrGCLtFheFMaFf3zQMonSc5gsUdXY12KkfrXrD/33xaf7LtfjGo2GewT
 9Is1w28ba8dROrpjH7TG2aDPhxORoXoFmqQsLlbiTPInBqsKhC6FZA8FDaSbvxI5VScsqAaeRlV
 vKi26u+Ftct4yHc3D4PHi3O6JLnCEZiP/bF53nvy0bEm5hZu0RV6dPXxyPY0W9IqqDjkhExBdN5
 jzj4WGq+26vlzWHeb4AUdvIcmhQbMtmEs6mL9JdqJAJH05QGEGKpF7IF/mrzcME1VxIzZPGQYU5
 wUhJIbAj+8LyT4DOXr+vmKd8IFsFUVYgFy3a4lAYnJrJD4VgIZDKqLm/U8LRv9MQJK8gqduEq/L
 NUtBDHexvSYIwQPmaCHWX/XJROyw//fSl0rqmz8OHSruwcOw19jmgyecPUYB1JYmnOIsgNXLODq
 lKLOyTOO6B74WBpRUjQ==
X-Proofpoint-GUID: VFghxMfIM3_dPCNzLyyVKab8SW8fe8-2
X-Authority-Analysis: v=2.4 cv=GvbXaU1C c=1 sm=1 tr=0 ts=6aac0a4c cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=po8fGBi+ks8MzcVQGuqtFQ==:17
 a=kj9zAlcOel0A:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=-Z6o2aUFVE64cP8LY08A:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: VFghxMfIM3_dPCNzLyyVKab8SW8fe8-2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-17_03,2026-09-16_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 adultscore=0 spamscore=0 impostorscore=0
 bulkscore=0 clxscore=1015 suspectscore=0 lowpriorityscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609170222
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260917_084204_961285_C9B36B51 
X-CRM114-Status: GOOD (  10.09  )
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

On 26-09-17 15:10:09, Krishna Kurapati wrote:
> On Glymur, it is observed that although the exit call is done, there is a
> power leakage seen on SMB2370 charger (which embeds the eUSB2 module as
> well). As per recommendation of HW team, disable the repeater during the
> exit call to prevent this power leakage.
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
