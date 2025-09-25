Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B1BFCAC5A5
	for <linux-phy@archiver.kernel.org>; Thu, 25 Sep 2025 01:33:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e549uc0Za/IrXjLG5ESGqr9UMLGo+jM667ZhmxL69Bc=; b=A/RnxJ+Uq0+sgG
	V7Nmm9DRr/Q+nDKQ1cAnilGv69dym2NCwdMQ2CjGGJ8mPk95dgUeofzXQQ1oWcr239itKfNgJV9Xk
	fMaBp/saJ+KzHn0g59srsdTkbcjjvJhFwJ/VlpJpvc0HmzP3+GT+omd5bUtFnbzHV+3GuhAMSHY1C
	f/i6CtQYAuK/Uj0eONH82RO4dhe/dQ70ycCWuVOg/SpNfHfjjEFQ5b9ePzXoWB2+CIzBbUjsmInCJ
	vBp5K31XxXxSolzug8rBJz6OQcAg1vdrR9DbaN192A9iaQnPex2MVVy/Z+rcZh6yBks2N+dlkEWIK
	Rfu6f7mEndH7kQeAlKOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1arP-00000005CEB-0qHo;
	Thu, 25 Sep 2025 01:33:27 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1arN-00000005CDq-0oX0
	for linux-phy@lists.infradead.org;
	Thu, 25 Sep 2025 01:33:26 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P02kFJ018785
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 01:33:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=MAYOf+6wYe+77ArDzx9rSs0N
	PotguJku+fDW8OMKmmk=; b=aSAtxuGLrpxX4/FkwXLjKtpeP6nxmRmZjYqlLCEQ
	DEWF2ykZsnrp3lqedxOXHet9wjFmLvQsNsyHtctKafMTDlab7bTd47JFlZ2IKnFZ
	4sjaU9AjuxLFtylpwKhUFskjzR57jyJC+3vc6exiUhNua6D/6YfFLxhTIF3jb450
	zY0SX2MDFlSrXYVJq+hqnfHctr7wpk46b27P6qVkHqejZDorOoaXaJnZaV+lhUIp
	a871jpI1IpoNXW9LVF1GlKGn8Umtr3gSJiG+MAmg2rOjeLHW1XA7KPwAtgZciEWE
	Foc+gef2tYqIgGHrFGaMhsVich91UyfDByKbjUSdZul1LA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49b3kka9e4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 01:33:24 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b7ad72bc9fso9626711cf.0
        for <linux-phy@lists.infradead.org>; Wed, 24 Sep 2025 18:33:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758764003; x=1759368803;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MAYOf+6wYe+77ArDzx9rSs0NPotguJku+fDW8OMKmmk=;
        b=dgmLfMD/tYqgew9FOXk9fN9F986boT5A5teD/MLDs8h+H45NJ/rDWJ2W4a9QcnQWDI
         Rdyy0Dd++sWjkjZhf0F18B7FTYJieGZlcUzolznFVDisRtvRCS4aI9cnl9Tvt3eQqa8Z
         k5XLSoIkC7rgi1qXYtKnFtxgmSVssh4MV5a9dX4sMnN60ZNEeFfSG4LURp0+HjNUIR6U
         CBe2EKHCtzeaWWlMwfRB/N27pGfWvZPcexI3N5FLYvXiFVSMqZag9BZFnR/wOHYBBDcb
         D6J+mzEG7ZjT4A83YpSxAn0czqyXOVsrdFHHn8WiotddXcqGtJEDdUrhRonbA3Kll/SY
         0yUg==
X-Forwarded-Encrypted: i=1; AJvYcCUPnEetIOnEmljWYMQD+Pl+0rclsjH7j0pnC57uhALF8taxYLZngMC4bFPk1OQNKoFRXgRxkVWKTYg=@lists.infradead.org
X-Gm-Message-State: AOJu0YyHXWZH0uFtpwq4dCfC/2KWoVaQoZZkR/XCBQvEuw85BninpBo4
	wisAgFu5BHjKpHhbx6n6UwPfdLSo+FyegoKSNaI4y/M9wR2rkclVpcwJn/bdaVYtuH9vgTh1psh
	Yq41+70lIWZcWwLxxXZUkefed6P70hbIo2uUhewYbojGuTK3pVB34eTASySKDJ1bO3KkVv0m6lb
	ob
X-Gm-Gg: ASbGncsEfSUebRA+f0gpSJh7NFlU233B+IiejR6qI12IAm6QCroAkUVIdaalaRdx18L
	y1N5QAVtt8GPYiiAndRyFU7pVcq8SHSMW0UoWas7fPVKSGyMvzBVnGQ9kaAcVeTA6kDqY0pxdgW
	A+ngG+oGkrxt6FOfRBZV08a4fiGJA4thNlSQsGQG8nmqNYvTUW6vzakV6bWI3TNGxShiJG3AQun
	U/AmQ98j73+JfblBhiGtZWGoGSYaIrkYUdNyAywjih++S8WkQeNwA7Qv1ahZWIkjcJI1dfBmoE4
	jdvjEuAog21HT5DNrnB1h3hjiy0brSbshPLzC68Vt+AWrGESLtVKRZfukEEIXVQCiIlEzv76ijX
	d8VXdxNphAqw4S11mf+AszE/TrS2masrodbYYaaMQgD5vz55uhjGr
X-Received: by 2002:a05:622a:5a92:b0:4d9:6e55:5e3 with SMTP id d75a77b69052e-4da4c58ce0fmr26416391cf.54.1758764003202;
        Wed, 24 Sep 2025 18:33:23 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGs/buRc3wA7t9IKg8r3YHQpd1WKRsDmuKuJqSv26mWEzgo1bfg3M6RxBFT657MdZqpPgLz6g==
X-Received: by 2002:a05:622a:5a92:b0:4d9:6e55:5e3 with SMTP id d75a77b69052e-4da4c58ce0fmr26416231cf.54.1758764002749;
        Wed, 24 Sep 2025 18:33:22 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58316ff59basm199254e87.130.2025.09.24.18.33.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 18:33:20 -0700 (PDT)
Date: Thu, 25 Sep 2025 04:33:19 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, kishon@kernel.org,
        vkoul@kernel.org, gregkh@linuxfoundation.org, robh@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 10/10] phy: qualcomm: eusb2-repeater: Add SMB2370
 eUSB2 repeater support
Message-ID: <tij2dtgkb67f7b4nvyirnvocu6yqlityooatg3prxbqhfoagog@5r7izeeaid75>
References: <20250925005228.4035927-1-wesley.cheng@oss.qualcomm.com>
 <20250925005228.4035927-11-wesley.cheng@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250925005228.4035927-11-wesley.cheng@oss.qualcomm.com>
X-Proofpoint-GUID: MAnGSL04MznngHVtwE8k1Tkf7ZW7jM7b
X-Proofpoint-ORIG-GUID: MAnGSL04MznngHVtwE8k1Tkf7ZW7jM7b
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIyMDA4OSBTYWx0ZWRfX/wBfL9yxYDRc
 vy9JGLlg5dYJLC9d/ulp9wSOy2AolEmlJYAgaaRNIUZaUkAvRQqw4Kv9L5LoauiyYsltYdgoCXq
 eZaq7ACfRWzKnHOPsd2C5ONMtVUpSfIwPw1S9sOZzThst6CnDNmmXNzH06ssiVnAI339FCzougc
 twIMMcbJiKDrqre3XzNBxQivx16UOVTAcJQTzPOATwDjISyygKei0PYWsDhanDKaWnedmxkIrMu
 EUbX+2tU3jiajUXcObba2+k8YEA00leB1MIKJYKNycH9pif6EHxhIgdUcgFGs8nRWkqcS4p3xry
 iNE/Yq6jEz3o76ktgKmu9wO4LqXDS41j+fdQsHlF80Od++h+gEb6EhpS4jfL4V0d2XU9N5K4/Up
 +EWzR8/i
X-Authority-Analysis: v=2.4 cv=BabY0qt2 c=1 sm=1 tr=0 ts=68d49be4 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=E9wxpCBlzucncV4SwdQA:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 phishscore=0 bulkscore=0 priorityscore=1501
 adultscore=0 malwarescore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509220089
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250924_183325_352790_78D0F424 
X-CRM114-Status: GOOD (  15.04  )
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

On Wed, Sep 24, 2025 at 05:52:28PM -0700, Wesley Cheng wrote:
> Introduce support for the SMB2370 based eUSB2 repeater.  Configure the
> proper repeater tuning settings, as if this is not done correctly, it
> can lead to instability on the USB2 link, which leads to USB2
> enumeration failures, or random disconnects.
> 
> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
