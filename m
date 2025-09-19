Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52A77CAC592
	for <linux-phy@archiver.kernel.org>; Fri, 19 Sep 2025 18:49:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2YwAEjg42BNOfuPKlR+5vN5dls9s4xrIVHL7G+IsZzE=; b=qko8wEYBHimAmY
	xn6YfBuht+TXL4MjP6fXY9j0dA/DnSxttEaGI+EYeLPgVr8Ux+xo7lyHaoRGKIxu44oxRQe4/0d4P
	/rmELclTQ6OC1mZAM0bZwZSfbMazYj7s9G4Huo4pt0+BN1Pnxv7zr+Ng2Y+J0tRvHO7mth+WNj5Lg
	hszqlR5lg287sc9W8ZMlZytnTTxjtrwpQuFYqiZ2w35m+cwDiGrZnrPRa7zSY/Hw2yytAX22papD3
	H16dgootAZeFqBvErGypnujgtcsaPDzn+GQQUNNGPv+JuZyPXCDWKwY9wzQEaMAhx+JGFB4hvmty5
	4XL8AfKz/aZTFAFIThOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzgAN-00000003oE3-0LjD;
	Fri, 19 Sep 2025 18:49:07 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzgAL-00000003oDh-1Iy6
	for linux-phy@lists.infradead.org;
	Fri, 19 Sep 2025 18:49:06 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58JDWGoQ030553
	for <linux-phy@lists.infradead.org>; Fri, 19 Sep 2025 18:49:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=1xZa8NKZpDGoqnGXensXWLoa
	+hUVxbdOY1y1b66zJ+E=; b=Ocbb0xK4Ljujs9Rpfrf+140ehslrxIZaeV5ZsHXA
	sdEMwZoFTfb1Ql+BuaLOuDI/yc//8QfcddWVzrrz6XZzs5l52mLhX6M6HOZMh/dl
	/AoK4LDROWC8q2OdtxEBsFupe2CEPy+PAG6UOj3XCgBK3t8TlA4VIxHHIe4xuPbK
	wyy/EkBWHD1qo++duSE1fcHFjLQHzgsV9sQYLrzRdsnq4W7R+rnHpU9/2mg1muZT
	TzuoUhs8Xc6phG3Ve2179+Kh+lSmOFF2hLYBUmnUEtTIWt3KAygpVBwq43chfh3Y
	XsIAAwZTWzD5NTg8AKs/WIDXuyPAiS9QOzRg2awX+Eg6iA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49916x2cdr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 19 Sep 2025 18:49:04 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b7a2999d38so42918591cf.3
        for <linux-phy@lists.infradead.org>; Fri, 19 Sep 2025 11:49:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758307743; x=1758912543;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1xZa8NKZpDGoqnGXensXWLoa+hUVxbdOY1y1b66zJ+E=;
        b=F4/O+4oL85Q13QFB62ciPVgR7EUyM/PUQrjGgBt0eH/VhmPniDSMnTyd8OZmrhLcg4
         fKaCGJWEIX4NZSdh20c2yeWyTa/7mLBj0ig4nN/JkaFS/pHbb/D/oekaSgkeregd+Hh9
         P2DApTHRH7Gt2dRmozjQrn2CyvrqPjdQeirZ0yXrTik25yevGUxKIiEjjiLmQBbK+lm+
         qsgYXJdrHb8S4DXDXWZ6AGk90PDO4zM9NzCPL6myXzjYvw/sBKKgcyzBJ3MJSrAebHiP
         wow1/R+e92yL+kW6QS/LOyDW3a/ApLE8iRqjnonIXnhmlU+HaTeNJ00yG00WokIkHfqw
         R8Ww==
X-Forwarded-Encrypted: i=1; AJvYcCXAXNI3adIixbLVMr3Ia7F4XSiN9TRhbDr9onqiNh526mrSQyg4KQo0EB5Z0l/BtSaSPoNPzY6xND0=@lists.infradead.org
X-Gm-Message-State: AOJu0YyglWCtvcK1vTgan6oJ7/aA7sh8L4VhrTTr3+m7c5CtNMmLZ+KI
	QAiK+Mz/0byP19w0ulukYCYpxD/dR5Y2+bTh6ebinqdTLQXHQyC4bvGkTmwOlLWgXhb5b1hvrcN
	dlKj/HAW0hLAvrtxngchRfcdlOlTG0IR6kRUTjouvrfwIO+L5FOahw+1oXcIhzWyYuDPD
X-Gm-Gg: ASbGncum7UWj+/XSCmvjkrpPyAGJc1oi1UdsEnPqW5z6X0P1aU/qCTO2hoAPj9dSrgb
	Gg91B0CnSzfOiVXHdbAO8pXOdgz3AWmYqoTJt9tDQnlKWnfUh/+47LScRkhyNE3/I/bY1l+UkjE
	z0na7cbdr2hgB2cIqtM1BWuG/N8vpMcOoUiVaqsJ+A6YlW5/fsbf3BKM6sYN0Qxb8uIvZVC5qLM
	igdVaW3N7Nb3dm6AsHZjR05x3BXLat8cQ10irUO0g7yRaAgq5jubNXz/GC7ERgb02m+nyeedsiT
	GassThTpSZtgHENzAhUBOs4+oOOg64OjTfzcD6uKScMLpkHzx6hBbanO5mtLpBikHz+JkWcJCQr
	NAQBvT4qnpp5h/jcOIfXOOGnD4on5TMV2ZRKItsIKUE4BIYo5uD2m
X-Received: by 2002:a05:622a:551a:b0:4b5:dd8c:1d3 with SMTP id d75a77b69052e-4c073d929f7mr60166581cf.77.1758307743327;
        Fri, 19 Sep 2025 11:49:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFd704pWx6mR4liYWHfvStigqH2zSqR9FouEegfxS0MAneRfE6nX5yLKo0d8lSjuQhI5Fty2w==
X-Received: by 2002:a05:622a:551a:b0:4b5:dd8c:1d3 with SMTP id d75a77b69052e-4c073d929f7mr60166031cf.77.1758307742681;
        Fri, 19 Sep 2025 11:49:02 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-578a9e1d901sm1499917e87.135.2025.09.19.11.49.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 11:49:01 -0700 (PDT)
Date: Fri, 19 Sep 2025 21:48:59 +0300
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
Subject: Re: [PATCH v5 07/14] phy: qcom: qmp-usbc: Move USB-only init to
 usb_power_on
Message-ID: <zjegjucwluzzh2x56mn7dpk4ocmbdrhyvubkxprpiuko5cifvv@ygvbal3vpssv>
References: <20250919-add-displayport-support-for-qcs615-platform-v5-0-eae6681f4002@oss.qualcomm.com>
 <20250919-add-displayport-support-for-qcs615-platform-v5-7-eae6681f4002@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250919-add-displayport-support-for-qcs615-platform-v5-7-eae6681f4002@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE5MDA0OCBTYWx0ZWRfXxJ2f2rs2qUiJ
 oXDCIBd94uxBgZP9ysnLa4K0B6dJZGBkhuZlV643jcPaeWSaZJ/zHZSkB8+8UxYTcUHEJu3TREc
 limlnFvyL7MhmOiKMtITngZjSdSkf8vZ4Dn+Jiopp/HO5b413jT0lEMT6cYzbX7BYD1W1dWtSGG
 jZ68cw/FsUJ2JoTy4nXE97ij/pTglO0QsY5sHqlKqTwYhJMak1zFs8RO0x3gMK/hGwVegor3+UB
 jdA9TrSvzKMoAgkdghoKAdMHG9dIVxiFLrV3nVHU0N8POznKssnKE5IwYq+vT7qw1UjYtJUjsNN
 aaMgR9TNhtan1L35x+jOhHoot/hSeaAvoLbgIvpM0Os18kDHiSHOyQMIWHtgRWpCilOyn/CAgU9
 Wgn4aFic
X-Proofpoint-GUID: ZukFhSJLlzxsoIEzRoF1kSLwkK0-kWva
X-Authority-Analysis: v=2.4 cv=LcM86ifi c=1 sm=1 tr=0 ts=68cda5a0 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=0ERirU_vq5G6WO8xEvsA:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-ORIG-GUID: ZukFhSJLlzxsoIEzRoF1kSLwkK0-kWva
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-19_02,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 phishscore=0 spamscore=0 impostorscore=0
 suspectscore=0 adultscore=0 bulkscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509190048
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250919_114905_353505_7AE13BFD 
X-CRM114-Status: GOOD (  13.94  )
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

On Fri, Sep 19, 2025 at 10:24:24PM +0800, Xiangxu Yin wrote:
> Move USB-only register setup from com_init to qmp_usbc_usb_power_on,
> so it runs only for USB mode.


Please rewrite the commit message to start from the problem description.

With that fixed:

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


> 
> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 22 ++++++++++------------
>  1 file changed, 10 insertions(+), 12 deletions(-)
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
