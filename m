Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AAFCFCAC587
	for <linux-phy@archiver.kernel.org>; Fri, 12 Sep 2025 01:23:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MB9B/V+py++rURGMcI+/+8MNdQORfvpt3aN6bP3SDqg=; b=Mrf04xmR3UoYs+
	7AMZdDvOcAgjmxEpf0O9npfxiB12IS4VpioS1gKoJfb9PpM90yaP8i9x5yieZ6crgAIaGt0z2WX+Z
	GbA7pDn8NtKkXCfdte7IRHgBFz+EFpfKt2kYKOlFwK3QJroYalQKWT0qCjJMjsQxskEbhK/M4+83+
	PzAJBLnqrs00O1Kxv9IU440HN1fGUktLfqTnHI5Ez/1fnx736CKK7yV4GIFbo6p7pSHkC5HgGiL2G
	3gSqCI0I5taRSvqT1BMFRGs4eZpyAbQjEqKh29wS2tI94b+aEAReyXX0UNubJQvveC4eAEPCRVQWH
	6OEnE1jqhqA6YsKVZQ1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwsVu-00000006I60-0SmC;
	Fri, 12 Sep 2025 01:23:46 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwsVr-00000006I4D-1oKq
	for linux-phy@lists.infradead.org;
	Fri, 12 Sep 2025 01:23:44 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58BJWXjd003255
	for <linux-phy@lists.infradead.org>; Fri, 12 Sep 2025 01:23:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=phbp1n99fIqtgMb8Vmy4j4H4
	6BAYfSIrlAEx8Qjq1Sk=; b=d3TxWoP2/LYVaA4Gx0sEwXAL/6dei5QGC1WRhyK7
	E//AnrvxWvAc+hQu5facbEQscD/S7ydLzj/Rk9Uh+fYDyI9jFBus/XEanDKY+Z/b
	E1LJhhr+497Y7asGnsVon0KnMM38vzia5xzqr9FfKbqbSfhB4WLIAZ2phAzrYpc7
	TPVGxbmdsGqWRCw9DftynMpaCrhenT0wUVWNsRT+J8y9gWyH79rigQSv8Lsh+FeB
	T5eCNjBspj43EO2dXA0AalhdF+J3l0GO+Lem+SkDp8yAjnTgU3AySS5k96gdtV5x
	NldL1vfUDh1ND6jl8QcfTkbZBKA3fBrc6xb7n9WzGdfFqA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490db8sup6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 12 Sep 2025 01:23:40 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b6090aeaacso38739831cf.3
        for <linux-phy@lists.infradead.org>; Thu, 11 Sep 2025 18:23:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757640220; x=1758245020;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=phbp1n99fIqtgMb8Vmy4j4H46BAYfSIrlAEx8Qjq1Sk=;
        b=GkF1xSfPPsenUGjakbZrF2A4ey4/09gOAbRfw0rHg6yqv26THjacWRwqTrDgFYa5jo
         y71IafelpyxDJC6oW4NTvidXeAK1GivVTZBQfC8MVbnIuTALEXRD7UuFo17JARHEVJNG
         0ZwNvnQ46j7d1fIVtj9xJ0chbcoU+sxYRV4ny8Q3hpOr77hmEjb5K5qp/+sjmlsrs6Jk
         wnGcdayYG47OTax3J7Il3idlrzE+Hm1EjY3JHMU+2y/USloK6lePbPota/Q7iHsj5Zjl
         Vetmmb99N7E0daDuKyWRn3MGaKuieoMeP2CSPRwUu3yr8oaQaTqfLRB06L5ZL/WukC6j
         1VRg==
X-Forwarded-Encrypted: i=1; AJvYcCU0V5fT0C+KfuB4ikiVn6y/jl7FMtpb4ba2KzqjEuaC2rzfezpGnhLWdMmzTcPyIKaqv2gEaTGmHDw=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyg3NZ8zOysg7lISygwYvRcouLaWdNoDvA08WdEJfkDTkniAmdL
	ZWudgivzad4nosEYrS2/KfvZPXOJTr1wEgei29gEXhJFtsQox39gOfCNliTTAFE9XX60a1EwflK
	MRqaN4gslaCLNPV1fJIDDnIaUYFb7LgSUE/4q/Kijsl59rMpwoNOpl7c5zLu8Fcg3b4Y5
X-Gm-Gg: ASbGncsVEUJUPFz+p8556yh3j1KHGV2nr7+cdkL9T0bi/i3jUPZ+hkEg6SFGmbGSVhj
	tMU+ghHlRx623D9LT+48zY/BcOdeWIooZjLoEk7CLSzyMDbFmUFErUxqctOj92nbc6k08CIOf3+
	57jmSq8OXFLUW4DzO5GzpACLFFkT7ABqK6zXAZNEtpbUGgHzjq6qddmZVwhisSDcuAi9RbM8R1z
	QN5q1hHtfYNHQXiBF5QT26toMxlXqfJeLiRSkO+CAG9P7F5RU4gknJ9O/nEBoEtt4rKn44mQ3cP
	rTWd6ko4+zFUNgiVQHAs8z0D3AdDVhCoMyD1fVMb8UhUAg8bq1N+vNL7//qI5UQvnzFMhpY220R
	PqmH3tkR+skStV7PUKZCwzOI5mlT8D0O8WCex30TBFloNzqse6T4N
X-Received: by 2002:a05:622a:1249:b0:4b5:e72d:dbc5 with SMTP id d75a77b69052e-4b77d129e28mr16280001cf.48.1757640219972;
        Thu, 11 Sep 2025 18:23:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEAynI4bz/KxCp5t8jQU11GPgKeKhLD17wiB7Oe2sOXdsf6j6PRyZcg3pJ4ziMN/rj7L8iEeA==
X-Received: by 2002:a05:622a:1249:b0:4b5:e72d:dbc5 with SMTP id d75a77b69052e-4b77d129e28mr16279831cf.48.1757640219550;
        Thu, 11 Sep 2025 18:23:39 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-34f1a820665sm5335571fa.33.2025.09.11.18.23.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 18:23:37 -0700 (PDT)
Date: Fri, 12 Sep 2025 04:23:34 +0300
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
Subject: Re: [PATCH v4 03/13] phy: qcom: qmp-usbc: Add DP-related fields for
 USB/DP switchable PHY
Message-ID: <msoxnqzbmyxztzr4e4a44gf34i4alvnkzbq2hxwcymc2k6qdd4@5cij6oq4k6qh>
References: <20250911-add-displayport-support-for-qcs615-platform-v4-0-2702bdda14ed@oss.qualcomm.com>
 <20250911-add-displayport-support-for-qcs615-platform-v4-3-2702bdda14ed@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250911-add-displayport-support-for-qcs615-platform-v4-3-2702bdda14ed@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzMSBTYWx0ZWRfXwEYVHIL8kpd1
 1N5Ip2nEweCPkvldFXusHtyCJ3T2nSjB0xcV2qMadCHxis+v//etnFU0Q/GJ8fb1me0WSO9E5Hq
 O1EZaVhEKpVOB74faArBRBS8/FgFZMLLnamhbJvKy6OL24zxDdzk3ydbiHThUEX3GpAD4jsLH44
 j/4LYVpytqTEht5pDHfT/mOcfPzpjtpvFvbEhOiLoMVBAUBIrdkg7b4ZP8Fg5ktAUUjcgWk+5rE
 cl73xTCo588GlxZoTgt12gtR1/Abj+Zj5EI/5rd3l1G5uiLuDZbvzUQ7ROC0XX/jV3qJaC0VfVf
 NQw3cs+J0LPzAm6+/oZquuzVVuOqYA65hSOx5qPpgqCfM4PoKrNQ+aNL2DPG0iVm1nbGor4XFPB
 UtWqjfK+
X-Proofpoint-ORIG-GUID: lCoygUMIXVZvblLCtRTQcYpu5Mz4za_9
X-Proofpoint-GUID: lCoygUMIXVZvblLCtRTQcYpu5Mz4za_9
X-Authority-Analysis: v=2.4 cv=VIDdn8PX c=1 sm=1 tr=0 ts=68c3761c cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=vMfMRHGFLa_JFT07zEoA:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-11_04,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 spamscore=0 suspectscore=0 bulkscore=0
 phishscore=0 adultscore=0 clxscore=1015 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060031
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250911_182343_587001_66D1AF24 
X-CRM114-Status: GOOD (  14.91  )
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

On Thu, Sep 11, 2025 at 10:55:00PM +0800, Xiangxu Yin wrote:
> Extend qmp_usbc_offsets and qmp_phy_cfg with DP-specific fields,
> including register offsets, init tables, and callback hooks. Also
> update qmp_usbc struct to track DP-related resources and state.
> This enables support for USB/DP switchable Type-C PHYs that operate
> in either mode.
> 
> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 54 +++++++++++++++++++++++++++-----
>  1 file changed, 46 insertions(+), 8 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
