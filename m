Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90E6FCAC59A
	for <linux-phy@archiver.kernel.org>; Fri, 19 Sep 2025 18:42:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l1VRwy7pRaFbmnebx1jVe7kN4xPJ7tC8TsWjEwTdeIo=; b=epAAtUs8rAF1iY
	SaeXoViYPzt0GuXTGG1io+90qFRpJn9YYjTu1QwIRSBXTUsPRYmbKHtPV8zAiivLT4ZS2fLBuPtMV
	fzeYUaki4xaju7Jy4k+9f8xYXbFhtFi7I6v0o5bo2Q7JGHzKauH1SiAuAm/vW5kVjcbTeNqehig6x
	RBRLqEeFocyR7W7CFaOIZTgs8EEDMaQd6F00s+mF2IRVWdB+1GCHz52BCyqYDSjtOaks8/DjRYvFr
	IG+Y7Hg6IJWRygR5chFJAVAgjSmS7fpkwT9i2dY+BXPMgkUBRsI6c1cwSVl06ojMBAJoTKC2f0/OE
	FBVhqCREJjqMkeayHz9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzg3i-00000003nfH-0zPh;
	Fri, 19 Sep 2025 18:42:14 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzg3f-00000003ndI-1fWm
	for linux-phy@lists.infradead.org;
	Fri, 19 Sep 2025 18:42:12 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58JDkRsT009015
	for <linux-phy@lists.infradead.org>; Fri, 19 Sep 2025 18:42:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=X04daQs0/GOlbdwQIFR5tVab
	ojXc3GMFHaojbKi4+xU=; b=IKcLA+o5Fpr3sQxqhBg9BBKCSXhcI66u0QHDblww
	a+94BmfJz9SvdIE00ph9sTH6gB5RjBEHumfnAPQfjnQHKlmxq5XnTZsAvQOLGVjs
	6KBsDKSjbJpsFjMjLaw/qiKR/DKQIjNX2XmEigi+wF/xqCh763yw+ytvN/rpQyMo
	Z9YN7w6zNmA39B5GrPo/AUyDOxhYcmdiYMKKdN3ckv9x4p4cKu+tczpJ2xGtucx5
	TFhUZXhx5bKK6w8Ofij7/saDweOwwBCjTkF/eyG+j60rtjbp5Pl3hhdpAt+B+HZ+
	MNB3onauJNaNTUEe2JylgaaXyfpyFpQZn2xlveCVZKrt/Q==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 498q9dbyr2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 19 Sep 2025 18:42:10 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8063443ef8cso760543185a.1
        for <linux-phy@lists.infradead.org>; Fri, 19 Sep 2025 11:42:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758307330; x=1758912130;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=X04daQs0/GOlbdwQIFR5tVabojXc3GMFHaojbKi4+xU=;
        b=Iwth82Ttkvm0TvSFkurRGWxAW7uqjRtq+XlKrcZtKLvJb0rD8lGwEFxIyWsI49L+ht
         RFXzSIwCRO5oLN0lArx+oG3wCrnmtOPSXEKGNXbOS1brcmi/i4sJEpWSVAkiZjKeCqdJ
         ECDs24n/giUgCWrhaRzquWmhGBRj2IEkdQD3LJ01WYR7i4Fg42vBHs64H2izJYczGqjc
         Dj9u/yCUf4gizk8cN1xkC4B/oxkCfnB+kL/xIwOKBrtbene/jUUqLN12eN+mxvj3oHU7
         eomxbLboZa1d3DoTES2nQPgq4RSOCEpYmNCjxSPnaga0yoTCsv6BV3eMMkSXqdi5Tdgp
         4/KA==
X-Forwarded-Encrypted: i=1; AJvYcCXf9CUexeF/YMvK0DLiCRUKzjkJPMoFpYs4v1kqnH+0XKGKGMkvQJAPha0fgCfKVTovhmHesoOfME0=@lists.infradead.org
X-Gm-Message-State: AOJu0YyEKrHUyqzwlJ9C6qleQF26t7gyLJeine2RSCOXQB9nsu1a9rQz
	BckESV/cl2pUxgUUptjiynMApGUljAWXAT4KlE1EjLWK2Yau211gT5+0Esjn9NiTTQQO0/mcP6m
	5++4ruHAmh87l+BKXmKi/lLNT8wlnInNiwRMs1yAff5G0XSNT4fS/qTTgG183Y/GlDN4s
X-Gm-Gg: ASbGncsH1uiD1qxvsxoGeoKZWmcNa2FkjAq8tnunclxsjov46vw6AxwIKlwYTi/fr/X
	kJTZUlRunmISWr2+GbIfVGrayum3NAIPvQDGQjHCltV5NJRlyQL1oM4fX0DSz28olbTr8AQhCr6
	O9k0bRRC6HB2snmiTyJhQJ6cOcfzV7YbJz1f5CpN8PeYPCFS3SnV4UxX/7NKfnqfEp5gIAHz9xK
	QZw89dtU5eA4LB8oG0k/KWwD7Lqynk7V+OudcKUuEzg7S/iHrmtPSc9I8PKdw21OtF5+njr3JfL
	PrGHqfhTpFf2jFZeV90dPpzlCLOKVM7Rwjke/Iiy4MVY9ROob0MaQ/uH4Qt3ckD33A6Cjv5yEDC
	tExd+NNZrpVPXPA4w1MCaNZksq+579sg6fsu8w9bBCxlYdGtvCAjc
X-Received: by 2002:a05:6214:1c0d:b0:779:5204:4916 with SMTP id 6a1803df08f44-7991578ca2dmr53799806d6.19.1758307329648;
        Fri, 19 Sep 2025 11:42:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG/Tk/CHfkwfvHsGusufr2dlS6ih3vdDiyM2Ldlo0VTKbs973sYQp68Zd+i6oMsC0C4qDrZ3Q==
X-Received: by 2002:a05:6214:1c0d:b0:779:5204:4916 with SMTP id 6a1803df08f44-7991578ca2dmr53799496d6.19.1758307329170;
        Fri, 19 Sep 2025 11:42:09 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-578f06bf6b0sm1360169e87.74.2025.09.19.11.42.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 11:42:08 -0700 (PDT)
Date: Fri, 19 Sep 2025 21:42:06 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Subject: Re: [PATCH v5 11/14] phy: qcom: qmp: Add DP v2 PHY register
 definitions
Message-ID: <bqgcuch65lczmc3asccgddt46h7ebcioyjs2pwsco6wivyjc6z@lehfge4cj3qk>
References: <20250919-add-displayport-support-for-qcs615-platform-v5-0-eae6681f4002@oss.qualcomm.com>
 <20250919-add-displayport-support-for-qcs615-platform-v5-11-eae6681f4002@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250919-add-displayport-support-for-qcs615-platform-v5-11-eae6681f4002@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=YsAPR5YX c=1 sm=1 tr=0 ts=68cda402 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=R7-NhU-lAAKmNGUam_4A:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: DHX1eXkBx4SHK0G87bikrAg63k24m934
X-Proofpoint-ORIG-GUID: DHX1eXkBx4SHK0G87bikrAg63k24m934
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE4MDE2MyBTYWx0ZWRfX8yLna4sMi2tm
 QiscvaV8dMxo1dbmc6+BmY7NtFq4BxacmS5IhV9fu1xbprW8HBtYO14FvFRERDbAL3ex9nyXfKd
 LCCqMihNhAAIEAk4E7Zjn7S634yFKESdu8gd6ALVh9G676FZyaZgb8pYsDz+XV6wEGm4B+o3iMT
 /UMPW8beYytvU7fdolPjGVj1J6ftaj9W/Uo8aYItF81lJThwP9H8bp8pDCKzqjWRMlJk3m2oTAZ
 IQTh7L7dwxSf4YfsdCc+K4pr0xRnB7VvTpz+v6IQ41uoj6FWygLhi9Rah8W5xjEhBNuoyQIomnD
 DWk42KgH9nzhRSTu8pqJOSElwYgcWX9MDk/S/6I61dGL4Fqjxm4CdlMM15MPu3fFW7gBXGHBZT2
 w0v+OQYW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-19_02,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 impostorscore=0 spamscore=0 clxscore=1015 phishscore=0
 bulkscore=0 suspectscore=0 adultscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509180163
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250919_114211_549837_7208D5CE 
X-CRM114-Status: GOOD (  13.17  )
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

On Fri, Sep 19, 2025 at 10:24:28PM +0800, Xiangxu Yin wrote:
> Add dedicated headers for DP v2 PHY, including QSERDES COM and TX/RX
> register definitions.
> 
> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-dp-phy-v2.h      |  21 ++++
>  drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v2.h | 106 +++++++++++++++++++++
>  .../phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v2.h    |  68 +++++++++++++
>  drivers/phy/qualcomm/phy-qcom-qmp.h                |   3 +
>  4 files changed, 198 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
