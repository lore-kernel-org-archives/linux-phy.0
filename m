Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A34C1CAC582
	for <linux-phy@archiver.kernel.org>; Fri, 12 Sep 2025 10:20:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ihrcUzHe/WkWkavFKmwQT0LidczCGTKvte2ovKVAOaA=; b=1cuSGb0wT89Hpr
	mpycBsP5r+GWJjbyRBxoKFXD6k7hET4x4VmGv5Qm0i1Vs5vjTfpzc4QIQ6DlqTx41RXECkZ8pYAY9
	s9EEatpGOJKa852UvoSVtFdxCwgLCNyn9HiP3RV1A40twM26r1q7jc0dyRKYfjypqewGU1ryX3/8E
	WbEBZ+jRUCY7iZpGVUVmIGIxZgdGvgxwFAhyJ/HAXlH1FPi/YseVzaXyyyVd6WSRCNA9ZQFFULip8
	UfffuoVVjfAyG61ZnnsTJKtReovZEAbDZReq3DG9rEyfcOxcVzy0AY64XODTyBUCaOFwnzwzoGwui
	DS9riIgonepAkriMpvVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ux0tP-00000008YAW-1gsr;
	Fri, 12 Sep 2025 10:20:35 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ux0tN-00000008Y9s-40wh
	for linux-phy@lists.infradead.org;
	Fri, 12 Sep 2025 10:20:35 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58C9fapQ013235
	for <linux-phy@lists.infradead.org>; Fri, 12 Sep 2025 10:20:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=2+yk/HK2uTnuVPRZXu78qeeV
	MxzPMF0ZBseadsxMnhI=; b=baq9JZNnbBmtFqW2UCkb8P6sbj8TO0pqY2b/7FaO
	ywtAcEEjCW0fP1NFmwJ2ZmyuM3qyL1s7Q5y1aW6oXXCven99Q9ZZBRVAqyRVkP8T
	tibnnQQDd95xH4Xsk0216wOSu2WzFbmu/25Eo9VM8WPN6bDJpYr8n6jNCi3hpOZu
	NT5IQ6UZn4hvzXoVJCDKzS0+etyoDyg2umSy5EBclcVvaq0iHHvB2EZwangsKRUf
	PHoQbZlk4F18xguE7gjsWM/w6x7HzwRRnQA01k6p1Ywzp2c1vbE3K5meUlQNsmDA
	PTjj9Zy9TGop9cvAn5o9VWYukgf7X7bcJU9cMIsb7vv4pg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490dqgawt1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 12 Sep 2025 10:20:33 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b5e178be7eso51079241cf.1
        for <linux-phy@lists.infradead.org>; Fri, 12 Sep 2025 03:20:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757672432; x=1758277232;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2+yk/HK2uTnuVPRZXu78qeeVMxzPMF0ZBseadsxMnhI=;
        b=oidJGEHIHxyPDApIfYO+NPGl/c0p8kDLrLBa2qDIejyXS2K+qcnzMTkVf5Yk07iqyH
         6n5+av0urXmU0YhtE2lN27FZVIZufOvrgPJNWM1a1BjrSHxSMnvde0jmwV5BQoEUf87x
         YDoqnUv4aoq5RnDYvpZ/8Ucw+YXmvIk4fvhnxe2opk/tzt0DYUxZdcpVMSmv5R5R6KQ+
         o4kA7PpH6Yx/exaR+1WnE2oTZWdfFvrGwvFbweUUxixZ+aeuufF4vx/YV06r6anJL1cj
         1mC0GP09LeLbsCVU3BQmQzxwLgoxbQPsICF154U2PX1EWNo2ucrLOmjZ4+P8RAuEJMZ/
         NmJA==
X-Forwarded-Encrypted: i=1; AJvYcCU8wyNpMqsaIM89WiBT+liL7qsvrz2kh8czGw3mMVcNj4qNsYNgngcLv961Rb/jEtRzwpfi0/I7kTA=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywsl06VoWqQtpjUQDWiJOycglOLX4dslqyPGIat/d3Hdj65TDkD
	jq/0uzFrRtYx6yMWzrliGaVywlfq3C/yyhLcS8+W9LqeK6F3VGa4FrVKZbxitYr80lFQnySgdj9
	yrgL86MCIPHn5LszwDyJO1buHkfzIIpXZDemLhHW9pFEJhO6ZoS9aM8ctURCunFQfPYKq
X-Gm-Gg: ASbGnctGvZ89PtG3JyGCb9gMsdMrzlMkwdo0rvhNGGYLt5OYKbJMKbVL76W8fODY+a7
	k+H7oCe7OfPqtMAzCk/Yf279Yf+rnw4WMSG6ZglxdvrRTrcBFi0KqrLl31CqgcnZoXPKhX/1Onz
	3afj9N+Aus+ehEQQZHqvG1OWxKaw06+xXY85+mVHtrxqpmQ0CJpPQabwP+iafs52rOGMguqRB2d
	cJfCdBOQxdQ2uW38E2mdqSdCJGhAykM5LHuWAsFr92DipkA9tGvOWHOvSzLdR3O6sSRYUQr+KFs
	46/rsuO6OISyxgsVrbP9yJs7jHq4PWkiuQ3yW2wFvF99OwHYfMteSSLbGhjyF+2gc8Ev3XwIpTM
	sV6Nxd7QoEInv28eqSOmDGwLkpixZ5BVT99bMjW8ao0ONVoxGt+jV
X-Received: by 2002:a05:622a:d1:b0:4b4:9169:455e with SMTP id d75a77b69052e-4b77d05e8cbmr30994771cf.34.1757672431532;
        Fri, 12 Sep 2025 03:20:31 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF+kKC6NUmFZEfIjk6emSV08toNNjqRGF3CD3khX2vxvSwWG/Bv/20qxW9fKMHmTyb8jBpykg==
X-Received: by 2002:a05:622a:d1:b0:4b4:9169:455e with SMTP id d75a77b69052e-4b77d05e8cbmr30994371cf.34.1757672430879;
        Fri, 12 Sep 2025 03:20:30 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-56e5c3b5fadsm1073715e87.6.2025.09.12.03.20.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Sep 2025 03:20:30 -0700 (PDT)
Date: Fri, 12 Sep 2025 13:20:27 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
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
        li.liu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Subject: Re: [PATCH v4 09/13] phy: qcom: qmp-usbc: Add TCSR parsing and PHY
 mode setting
Message-ID: <x6p3hgatsauguzxryubkh54mue5adldkem2dh74ugf6jf3ige3@cb3mmigu6sjy>
References: <20250911-add-displayport-support-for-qcs615-platform-v4-0-2702bdda14ed@oss.qualcomm.com>
 <20250911-add-displayport-support-for-qcs615-platform-v4-9-2702bdda14ed@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250911-add-displayport-support-for-qcs615-platform-v4-9-2702bdda14ed@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: 5eGyS_Udsd6R2AF-e9AY8f3VGtrULsMc
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzNSBTYWx0ZWRfX1sKsBV4K2DBl
 JSO6tp9Q9V58vszhIqa0bVORdVsX3aij08A2ZCpF6PaueHS3jR4DptNppngOfOQOyEJPnilFqml
 l2mhAqA3CpYgQkzcbXdDhEtyY7lASjg2HzJvulH+c5zsSWoh4LDwsuSoVGgJVswxTaUvmxljSI/
 2ZHo6Czk2cXjTyejTkMLA4uQ/IXoycksWw6Q3k5tR3zxFbmsZmDqGmzAnqmIW6k1rF6U1Xq4egc
 EKSMOYtIu6dn9LEnPEwqQi0iCM9XJUyQiLEqGUEhPxrk5NpyiBQgRdLbEzSeyeDbSkqnYtYagr1
 HRAi1kU/NrarkeeLQUno9jIi9vsn4KaKclQhHwzHNcFGMkWem9Fkb5dnwLBot4aupz94c3bwuPl
 4Wu//MUL
X-Proofpoint-GUID: 5eGyS_Udsd6R2AF-e9AY8f3VGtrULsMc
X-Authority-Analysis: v=2.4 cv=N8UpF39B c=1 sm=1 tr=0 ts=68c3f3f1 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=lnF_te-ij5czt4pA2k8A:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-12_03,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 spamscore=0 malwarescore=0 clxscore=1015 bulkscore=0
 suspectscore=0 priorityscore=1501 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060035
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250912_032034_027323_7D4FFEFB 
X-CRM114-Status: GOOD (  12.64  )
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

On Thu, Sep 11, 2025 at 10:55:06PM +0800, Xiangxu Yin wrote:
> Parse TCSR registers to support DP mode signaling via dp_phy_mode_reg.
> Move USB PHY-only register configuration from com_init to
> qmp_usbc_usb_power_on.

Two sets of changes. Two commits.

> 
> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 47 ++++++++++++++++++++------------
>  1 file changed, 29 insertions(+), 18 deletions(-)
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
