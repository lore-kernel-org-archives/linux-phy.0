Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B5DFCAC582
	for <linux-phy@archiver.kernel.org>; Fri, 12 Sep 2025 12:03:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4tkhwClPpKA9EdT8hXtoPM7KMRYdCjmy+YbYPQoW1+M=; b=scdJp8UsUdvqoQ
	lYoY5ZtM+zG5i3rRgjp+cBHBm9rDPeDm3vRM+6zOVGV/hqdH/+MVIZX4omnbdJuXaBlwDZEcmKirc
	weHmZFS1b1C1zAFPNUtnAA28fSvu/H7BMVFkgfI9qX+NI6ROD6mJiTdMlGhmhY/WW4nfRm06lWLOQ
	iTCkH7oehHw3FT8KiJqjMX/aNraooXdVeEOKoGcUXpkNwc47ZV+3Si5CMnR3MbOn4zo6HtyAarhWC
	P/Wbt4opqrBwGzqQs81WcyqbtgM3IWDpNSv2yHpVFsHg5kkkCsBvB7W3E6+RRHMCrD4+KOwauYIE9
	wn3dGksLsejfumHO9dFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ux2VB-000000094Nh-13B9;
	Fri, 12 Sep 2025 12:03:41 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ux2V9-000000094M6-1IdO
	for linux-phy@lists.infradead.org;
	Fri, 12 Sep 2025 12:03:40 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58C9fEWn018560
	for <linux-phy@lists.infradead.org>; Fri, 12 Sep 2025 12:03:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	OC306+JLRzCtQu+HZoUMCL3Oa/U1/T4cictyJ1c0fJU=; b=AlvPbLkwvvsKmqNm
	f6Y2S2TTjOVpZGfIGtO8m6/ajO2w8M79nskwbh+1y6U1BmaWpYPIhsEplNPCUy/m
	Y+qYCkgf/yRC0tNSp4uFEinRpX4c7Mna3R0cYelOJx16RnTOAUZV9++6zpfviV0H
	12NNz+qZqZJGrNUzKpdgttXqJIp1TOrxaPCINyMRcNZrLXLTogG2WYJNt1W1i93P
	iRQHAh25vUwksHjRX8E6DR42yQ+eROeGx9kNbYTua3AmD1S/pDcWJvSE7zxCaCSV
	ekNLDJ5cxAfNgmw4fCn9hGw9yVu60KbDODPCM/1VTOcTW5SkiKFs0qUoRDDzJRsJ
	+9D/5w==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490e8akjcs-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 12 Sep 2025 12:03:38 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-25171cba079so8215725ad.2
        for <linux-phy@lists.infradead.org>; Fri, 12 Sep 2025 05:03:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757678618; x=1758283418;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=OC306+JLRzCtQu+HZoUMCL3Oa/U1/T4cictyJ1c0fJU=;
        b=ek5A1mo9Ni0fY5oFsxrQG7c1GoKp6FWSEfhCXPGd5k50LoDpOH6QGHA152TqfzUE7R
         aYdacYfqCCARPE975fCJSrc0AYYqsaVCaZssXfj9hz+REmlUoUJE2tRsoZQh1WS57p4w
         8vL3DgtzbdPc1mQDDB77LEZwqZ4DZz0SlP9SwWksH1e6lRTp3IWGhP1iKr8jJbir/fOp
         ECyvxnl/GlBZbhvW6zzyLPix3Dojv6g60pmiB0iFyjV/gfztn9h79IJF6zEu3X9GDz6X
         tKzsiwfRzQiANHNrPeeGk9iW3EhJBCyc3Hw0J4Ozmc+UslsDhaUQ07h+TkAA/S1K4aGd
         8T9A==
X-Forwarded-Encrypted: i=1; AJvYcCXnm8VBubmbBZa55gyg56LIDHiK4rhdy7t82ebC+v2IvNc3Ul2LBasQhcp+/f1bjOVtFcIMQScg2oU=@lists.infradead.org
X-Gm-Message-State: AOJu0YwR6S0Eoc5FIB0lo/saa/2ouyCpoTDBcgD8mv+A6jdyBGsXt0Tt
	WhBNGVK208YflDQWg/9B6sFxxDs/D6nkFcbSWOvMi+eE5IoSgsgjFBX4mhWAR81szT06E9oKGKD
	akghF/phd9lpPAaGnlZd6oCCjHO8Hb2WPaBgv2e9nHWOvlYygkgFe0Abwh6b+/GplqTRa
X-Gm-Gg: ASbGncuLnahPgTPNl3JYyx4SWXnvyoMMmx6yxRLL+2Y/RcCseh0Oudv4L++Z3GVm+QX
	HHHb9C+is0sfl51Dp5RWLHKeqhNkXlocxMqvtSSCMJKFfyDVag5Ia6OEbXnAlXVC1MsUwMWcFmi
	LLqqWVqWSNDKTzb3dhR5faeo+PI/HqzWtWreb2DLiGetzakwB5uXKj/womn87qu99JcXj4XCaK9
	MO7/1EylJ8JP4sgyebWvzkAQoLyD7XlC4z+JJASaokDJGMZinqPexiX7XGst6zYxEQxYBnDQCOG
	U6sUPeRbqmTL0BulKs9ky6hdvONxBBvhqlWJ+L3BF8XmdoLWMmrgq3wHkK/rXE1a4JtRFiRDwku
	fm9Qfqat8NF/ZNPhybyQKNkGC5b2ExA==
X-Received: by 2002:a17:903:1245:b0:248:dd61:46e8 with SMTP id d9443c01a7336-25d25a7294bmr16547765ad.5.1757678617840;
        Fri, 12 Sep 2025 05:03:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF0bcpdWZ5JtOcYfmEEQBTJNc9tzJlPspC8jR11YZhBs8DDVX3VE8+HBzzj6SRFPVGJrjwKeg==
X-Received: by 2002:a17:903:1245:b0:248:dd61:46e8 with SMTP id d9443c01a7336-25d25a7294bmr16547335ad.5.1757678617295;
        Fri, 12 Sep 2025 05:03:37 -0700 (PDT)
Received: from [10.133.33.174] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-25c3a84957bsm47241905ad.80.2025.09.12.05.03.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Sep 2025 05:03:36 -0700 (PDT)
Message-ID: <70e9d5a3-53b7-4e2a-9a2f-19e3be1e197d@oss.qualcomm.com>
Date: Fri, 12 Sep 2025 20:03:29 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 12/13] drm/msm/dp: move link-specific parsing from
 dp_panel to dp_link
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov
 <lumag@kernel.org>,
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
References: <20250911-add-displayport-support-for-qcs615-platform-v4-0-2702bdda14ed@oss.qualcomm.com>
 <20250911-add-displayport-support-for-qcs615-platform-v4-12-2702bdda14ed@oss.qualcomm.com>
 <4kajb4imv4mvpf4bdzoqfw7f4qoqxsu3ca4pbgsunhxnortfig@kmsqgsj547hi>
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <4kajb4imv4mvpf4bdzoqfw7f4qoqxsu3ca4pbgsunhxnortfig@kmsqgsj547hi>
X-Authority-Analysis: v=2.4 cv=H7Dbw/Yi c=1 sm=1 tr=0 ts=68c40c1a cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=3J_imRUleR0CZ10obY8A:9
 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-GUID: xtW11oHjh3QVTqEO5ga3w5AF3CMK-bKB
X-Proofpoint-ORIG-GUID: xtW11oHjh3QVTqEO5ga3w5AF3CMK-bKB
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzOSBTYWx0ZWRfX0gLRAnnQXf4q
 olUf7Sje5pt879VHZWO2hVa4SkElL97JpTAq7TD+m0h7TLY5aMYbd6MhHtQhF5DyAbMS7hQhIob
 Th2OTyNrin9bNrXzq57QA9XTJ4KD//baRX1O+J+1LT3O3KORWFnBEZo/prBma56tBgPMCT++KaN
 Hj+NQbS9ovZojxkkXygLEDVg1YBXv6GE5nmKApnsf1lYXyXzvjZH4D8jIDs5rnnCiKQCwGN1gM8
 6SIl5pjj7A9HmxoCWPtHoKn52AZG7K6SK92X8KKDd1cCVaFfwWAX53jb5Jg/V586jb+28CTzktY
 5+3QIDD7edSZB4dihLMIavCLkvqgvjHmb+pvSAT57T7zCDsMbAogrTEZ+G0xbP9gaG/NTcYNb1F
 CrKgrbc0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-12_04,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 impostorscore=0 adultscore=0 phishscore=0
 clxscore=1015 suspectscore=0 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060039
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250912_050339_359427_FDB3337B 
X-CRM114-Status: GOOD (  17.28  )
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


On 9/12/2025 6:39 PM, Dmitry Baryshkov wrote:
> On Thu, Sep 11, 2025 at 10:55:09PM +0800, Xiangxu Yin wrote:
>> Since max_dp_lanes and max_dp_link_rate are link-specific parameters, move
>> their parsing from dp_panel to dp_link for better separation of concerns.
>>
>> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> I thought that you've split all DP patches...
>
>> ---
>>  drivers/gpu/drm/msm/dp/dp_link.c  | 63 +++++++++++++++++++++++++++++++
>>  drivers/gpu/drm/msm/dp/dp_link.h  |  4 ++
>>  drivers/gpu/drm/msm/dp/dp_panel.c | 78 +++++----------------------------------
>>  drivers/gpu/drm/msm/dp/dp_panel.h |  3 --
>>  4 files changed, 76 insertions(+), 72 deletions(-)
>>
>> @@ -1225,9 +1283,14 @@ struct msm_dp_link *msm_dp_link_get(struct device *dev, struct drm_dp_aux *aux)
>>  		return ERR_PTR(-ENOMEM);
>>  
>>  	link->aux   = aux;
>> +	link->dev   = dev;
> It is only used during parsing of DT data. There is no need to store it
> inside the struct.
>
> With that fixed:
>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
>

Ack.


>>  
>>  	mutex_init(&link->psm_mutex);
>>  	msm_dp_link = &link->msm_dp_link;
>>  
>> +	ret = msm_dp_link_parse_dt(msm_dp_link);
>> +	if (ret)
>> +		return ERR_PTR(ret);
>> +
>>  	return msm_dp_link;
>>  }

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
