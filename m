Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23C85CA1010
	for <linux-phy@archiver.kernel.org>; Fri,  5 Sep 2025 17:46:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u0ivlXXe8lGsasQx6MpewmFE28LoNAy2xfS52HGmE8k=; b=ZFls+KjR7u0DSy
	WUf/rGPnvRLKkwuoGBuoLp4EBvyawKc1z5Dk8WZe9q0ZEpnxNDcNIfXqtxHWNvqRZVx8AgI52OB2T
	+k7pCmbvKaRam0BlfMquZxbYrLf7lGAqtqdLWkDLLqvgHJRi15KQmq8ethg2xN1WhR4JKG0+Ocib0
	18MiNm1vdV5tnS3cwnb+8zaygk2lWag8ZG7sgYyy7WDrMNlsW6m4PHh9dXOyZdpZXFWykl84kp2XI
	n6BlsrvY9bRsN90BlMGtvbmEDr5CAtwDZ6m2cO86Y4iGCHcWffP3nRKwZlPszB0hEBP2syZFNgoq7
	xbP4au8DKqWBaR/LwCLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuaWN-00000003ZP1-3DCu;
	Fri, 05 Sep 2025 17:46:47 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuWlz-0000000250b-1eZb
	for linux-phy@lists.infradead.org;
	Fri, 05 Sep 2025 13:46:40 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5857Ogae007610
	for <linux-phy@lists.infradead.org>; Fri, 5 Sep 2025 13:46:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=3wQB5Afi4Fdw9xsNR7jXT3pZ
	/Wg7hEvuCNLqqtAm4js=; b=SXENI+dQMtOeTueVqf9WdnSGWzjCsGQStpytdnB0
	o6mCnrhrDPwXbi9h6jPFz7jdYvOxVwWwqFSF3oG24Ib1mopaFzQh4YUa602ji4v6
	/ooWz3aZKls8RQU4n0kdEBhe3P4b9esSoI922Aq0TWRNWtGO6TUfekljdNGjR3v2
	4dpXsBG5c3Lnv70p/HJc0ckXedvoKbxV5oyI4KOhwjdHssqFOqrDE3I5BUvkaxDR
	UniKF3u3/oMoJqUXz/MEsEytmtkxYdzwrFUmJ/2JQNsQ3qvtXOupnRND++iPrGR5
	VffTqF8UYS7N8sx7ZaAreNaKMrrjWcwUXeklaeV4NMWniQ==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ura9365d-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 05 Sep 2025 13:46:38 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-7222232859fso37646986d6.0
        for <linux-phy@lists.infradead.org>; Fri, 05 Sep 2025 06:46:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757079997; x=1757684797;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3wQB5Afi4Fdw9xsNR7jXT3pZ/Wg7hEvuCNLqqtAm4js=;
        b=xF8gRNK0mrfNPZjGM5ULHDHE1WCrUFG3eccKQhNm0Ab8noGJG8dFp/bashEcH/53Fk
         Suv/Ytdzkd+G76Stdy8hkTFq8xLYeEUkM4MY0U/6Ek5ljSRWabHABqfeG7xlE4wRKdjM
         aThWBZN1QyOU9aqWWqTGrUMOR3SuWW+WA3hTtFlwUgodYAhExWcTb4yEqe4MHb9Fea+s
         puWyrLOf3LNV7aFuARIn38COuUR7PXRe4P9h3UyOX76wis3/EYkJGUusymMbAMzNozcB
         FiZHx51tkUHBBhdRsplU5nCRM/h+9ZJSJSxCQY2GsfHEoTQsB3WvMzEtmxrBhdhXbkTT
         L6Xw==
X-Forwarded-Encrypted: i=1; AJvYcCWzsvtadhhTsm1wq3HpO7oTrIosWomYvWmDXcq9sksq/vlk0ncdV7h+kVP9g1GCg7pJhMBkeo5xLdY=@lists.infradead.org
X-Gm-Message-State: AOJu0YwwU8PsV6oPZbxMDm3xICur2T6Ce3PsR6XedzepjvSKnOw/fgU9
	PEUIeRCx9VNI10zsJDM1RSRmcs5zJ4iJjKCOzUSC8qmJIMWf0ymROTcwBXXW8NQ0Kr+jkTLhUdy
	oIDyGgIlU4rPz+afwvupnLTBF9K4r2rEOnwi37K1/B5v+cYScBL0T0PtOPmi+9OSJCEua
X-Gm-Gg: ASbGncuceTe0kqIYG0YQRK6nw01A7NB4Ti+sfH+0FD3ra8H4Wg6Zs9zGQ6Rp37UvwI2
	/ZsrBCHVGVTmwy1MYsFksjk+siV+Gru2sqGgNqocDdG3zDcE9ezrwqVyVBoctir6odQVpiksqKx
	WsXRRMPdHXleIOBZfS2mqo5Pz/Sw2OoUj5Dt8t+sUaPJO+qfeIjSY5qvi60R121rBT+PHbLHGcu
	Q3sALQvz6aeNAW+4bz+rgCm2D4hNAp15gTRmDwsmZt6HU/T0GwE0JU6MLPZYXludxP3f2pj5yN4
	z52AUVzDSain4qzAOsktbE+wozVW62VWY0o45zaGD39jmj87mODqjyqyccu0aRVDRUFcbJbyF2D
	kLrDmbBaCLiycDPQZ3ws8UYZvH61AwBzhtz57jU6PEEPwHBvu2IJz
X-Received: by 2002:a05:6214:3308:b0:726:32d9:db64 with SMTP id 6a1803df08f44-72632d9e19cmr98143276d6.59.1757079997447;
        Fri, 05 Sep 2025 06:46:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGyLPSqn/5cyLU/ufeZ0J1VNb94Xf/Kcme1ni+D63yeD+5Me3DlASVIJOBnDX/9AWOyyQgd0Q==
X-Received: by 2002:a05:6214:3308:b0:726:32d9:db64 with SMTP id 6a1803df08f44-72632d9e19cmr98142896d6.59.1757079996852;
        Fri, 05 Sep 2025 06:46:36 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5608ad52b4dsm1763359e87.152.2025.09.05.06.46.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Sep 2025 06:46:36 -0700 (PDT)
Date: Fri, 5 Sep 2025 16:46:34 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Faisal Hassan <faisal.hassan@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Krishna Kurapati <quic_kriskura@quicinc.com>,
        Johan Hovold <johan+linaro@kernel.org>,
        Chenyuan Yang <chenyuan0y@gmail.com>,
        Varadarajan Narayanan <quic_varada@quicinc.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: qcom-qmp-usb: Set regulator load before enabling
Message-ID: <vda7dcqqfudhoiwbe45irfab62vbn45crfsc7smenskebuteon@rcutjxrfbwrm>
References: <20250905101243.14815-1-faisal.hassan@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250905101243.14815-1-faisal.hassan@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: 1sbtdQEF4QzZYLkpvaNjnEEzoUa1q_wy
X-Proofpoint-GUID: 1sbtdQEF4QzZYLkpvaNjnEEzoUa1q_wy
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAyMCBTYWx0ZWRfXxEj18kUbg/d6
 uSNz2J2aqye+2JSFSbYw/P4nkD1h1kRSxIdFvy8eET1rrcW9ZC5GMOeMQNVT2jiTBaApFJ5DJP8
 evjP47DmcX+MMPGXjOZJbQwV2tRdZkiRsZQXSLYnEcnx2OaeZ7sTmmbsLDfhr6Xbmekro78Tpk2
 O/PHiBYK4Ds1gS7I+FpM3sQcr1MGe9oR2WvTzRIorh4fnNkRGlF1i3RfhleRmIzMIWra34hwUyv
 41TuRE7kkrcp9LIXnXKFwlmgDhLGLIMkdLU6vnyxNl4i6Tz9PDvaHe6Zx9hMQd3Gcna8k4kaaZE
 CGTvNwmL/PeiTFSXKhmGQAM0DaNHc2018adnt6uM251ygWqeedUT7SURf2Ii5OOhF+iMrzNgemj
 TWFEWKeL
X-Authority-Analysis: v=2.4 cv=VNndn8PX c=1 sm=1 tr=0 ts=68bae9be cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=wC53ndoxZnronpF1UXEA:9 a=CjuIK1q_8ugA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-05_04,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 impostorscore=0 malwarescore=0 bulkscore=0
 clxscore=1015 adultscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300020
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250905_064639_549044_FF03DB2D 
X-CRM114-Status: GOOD (  14.19  )
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

On Fri, Sep 05, 2025 at 03:42:43PM +0530, Faisal Hassan wrote:
> Set the regulator load before enabling the regulators to ensure stable
> operation and proper power management on platforms where regulators are
> shared between the QMP USB PHY and other IP blocks.
> 
> Introduce a regulator data structure with explicit enable load values and
> use the regulator framework's `init_load_uA` field along with
> `devm_regulator_bulk_get_const()` to ensure that `regulator_set_load()` is
> applied automatically before the first enable, providing consistent power
> management behavior across platforms.
> 
> Signed-off-by: Faisal Hassan <faisal.hassan@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 27 ++++++-------------------
>  1 file changed, 6 insertions(+), 21 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
