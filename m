Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4CF2CA101F
	for <linux-phy@archiver.kernel.org>; Fri, 12 Sep 2025 11:50:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kxfqu1289l2KZTWwHAfyZ6DEWA9S0ku7urLFk/nC4eM=; b=JW1I8LrVZOc7Jt
	B+6uYzczyL9Bnc4gQCj5vyz1FzQUe6x9UrXNXnMkyggqlTWcvZogD93yZeyxPMSFom+jcsVQcZGnq
	5mXPqtGpMVrphPHoNltv3i0yR0FCA1AyC91rl3JdOFDigLkb/SmbdOk6S4GHS0wxcBZ7mXuQdrByC
	MWuqxL5Im+v3B2PPJd58S3GDINPx3I9E+/RuPdONohFDEUSXhWnY0oz0G/UtedARsbWepHKDuv1TN
	mf+v6UcJ4dDkLzttqiu+vhO5MYhuegB2YSME1qliYznbVmBveHLwHKiXzG+c6COmSuG8xoxQXz2km
	ZPLIh78T5KNp6YiLJLoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ux2I0-00000008z95-2uxW;
	Fri, 12 Sep 2025 11:50:04 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ux2Hx-00000008z7Z-4168
	for linux-phy@lists.infradead.org;
	Fri, 12 Sep 2025 11:50:03 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58C9fDoE018538
	for <linux-phy@lists.infradead.org>; Fri, 12 Sep 2025 11:50:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	YzF2SVlfGn1ORuyJ7oHhWEvFtpmrZnuITZV7ypXxf3c=; b=P23j4hUnFVWwLMnE
	F6LQig/a0wxm5UQUp6+G2DMXP9+ABR6T/n+Vrkeyh7Gij5PeMMKBvcx6GqOfsAOq
	RYbkeeSi3QkVqV/wERaGFMo4O5LNwhCqJRp06Hka6FzLMCwTYGeNUczVcetKbIaq
	wsyqNdMz/SfG++cNyEF0jGuoKumN+3/tKNpvVrQVZTVCKDSO5XPqeWDesXYXMzxr
	KFK524t9rz3YoMeCM3MdmwdpgYwzdzFNckeEBUaYUDPvCC018hCc/OTh2udHLqH5
	OrxfprTgNkVlRxle6E87JTcncVrGwf9w3pYId9ESgnvabCpdkcB6cGjvqKUHqJxj
	zp8ZEQ==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490e8akh7r-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 12 Sep 2025 11:50:01 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-25bcad10907so3913995ad.1
        for <linux-phy@lists.infradead.org>; Fri, 12 Sep 2025 04:50:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757677801; x=1758282601;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=YzF2SVlfGn1ORuyJ7oHhWEvFtpmrZnuITZV7ypXxf3c=;
        b=pmUjD9gKEy4iOua6L4wEqgSISXzm8ffb8bV6LiEmQmZ/CfdlEkthFD9aZR/ue2dsHv
         9pu+pxsOX5te5VfmzH7TEpe+9YPll93Do11JrwnSjCZAWxt2jY9biDRT4XOk3aQ9BBdf
         B2QeinXcJqVnDSTHRnhN4t7yezUDhCeLNWEBYD8r0hnZcUSf/f6/8eYWaKZm3tbZOy83
         NuRP7IHZWw0YJNc9Am2NKlKh4q/ZDJfVIpL9N7gdAb0kfYtn74PAjaOPq4z3IIL/XqLz
         JMvnBx+7+Pufusuo7/LxLtTzYfzq5oh1rRoV6W+Qh03zCb7QzTBY9B++Us6HOceWdBmf
         Cxcw==
X-Forwarded-Encrypted: i=1; AJvYcCXi3SVtkz3cJCkfJ5re/64eYcPl+YBiMwTOLI1SPxLsybUCITDATA7djnPWv2S7s27EqRnXt8L3UgA=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx3PZXQN2dCrowoWbDqAAzlaImJelfKf94hiacPaHAoaliZxJzx
	v00J5ZIWfa3y60bVGhAu4807RsusaFc9hsahCExkJktEfbshRmB+RFew6gtBxurOZUbzXmAF3xW
	hl6+9XL3kyY2LodPu+vleY9SB4vdkcCmZoxn1piiRodQo5H6+k9SjdBSPagTQzkGKRqRc
X-Gm-Gg: ASbGncv8/cqrtiV1X9VVU+PaSxQsevBkAzSPit6V9Ef7qwEbps90yVd3iBoKks++UHy
	bgf3acmNuxVZEYmBjmk6Y9W48uqd/rlhpSB/n0xHxdTec5CGLM9fsP3wqzsixomd4NcnJES6tCF
	hI5l9H6gELW03R5kLORnsXJeVr18v7uNdoklnj29h67OJiWv6Mw8L/wP7/+8CWdVgojFc3TfsC8
	rUx4q8JQpqhtJsVu7JSCeo7JjTAcvNP07kUK4mRGiMbnj0UM0nflUiYNI/mimjYtkLLmPvevQek
	zS2PwUy1dkExjszY0PTerJRSoZpGpwheVjxHarIZ7y8AY0vZeyCvxX5JCdHGkUyho3MgdZufHE1
	ai1Vu1PUtKwnUt3aAJm5dxhGY/OKwUA==
X-Received: by 2002:a17:902:c406:b0:24c:b36d:637 with SMTP id d9443c01a7336-25d246da083mr18921395ad.1.1757677800641;
        Fri, 12 Sep 2025 04:50:00 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGWi4TjYFXB7GnUvOOedYDlXm03TtmgN9ypPJ2FZ+xs8IcitlyLZkYRTQqPLihrLpPvtOZrUQ==
X-Received: by 2002:a17:902:c406:b0:24c:b36d:637 with SMTP id d9443c01a7336-25d246da083mr18920925ad.1.1757677800095;
        Fri, 12 Sep 2025 04:50:00 -0700 (PDT)
Received: from [10.133.33.174] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-25c37294b5asm47417025ad.50.2025.09.12.04.49.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Sep 2025 04:49:59 -0700 (PDT)
Message-ID: <5d25d05e-d545-4b2f-98f5-40bfbcd24d7a@oss.qualcomm.com>
Date: Fri, 12 Sep 2025 19:49:52 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 06/13] phy: qcom: qmp-usbc: Move reset config into PHY
 cfg
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
 <20250911-add-displayport-support-for-qcs615-platform-v4-6-2702bdda14ed@oss.qualcomm.com>
 <ejwrkogssqdzxraacvxdbasxg2ud4t53rb6da2g4vdryyjuzoi@evdibveq7w46>
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <ejwrkogssqdzxraacvxdbasxg2ud4t53rb6da2g4vdryyjuzoi@evdibveq7w46>
X-Authority-Analysis: v=2.4 cv=H7Dbw/Yi c=1 sm=1 tr=0 ts=68c408e9 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=vDXniOzG41h6BQfMLKwA:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-GUID: FQS2Hg2tlmn2rIt_rKuDwdixIIMz0BTM
X-Proofpoint-ORIG-GUID: FQS2Hg2tlmn2rIt_rKuDwdixIIMz0BTM
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzOSBTYWx0ZWRfXyI4ksCp+WfRg
 Osv5Ka4auu+PfYAh1AtPpdRMQI3HcfA4ycY4kQdt44qevJ6D/0qkym+HgInMHnbH0cWrr936H39
 BP1OtbPf9eUxKI04huvB4LAXsJfqNO2QzPXo4A6QryVher5Rj860kTfrYfZFxn1XpU7a7AiFmVZ
 nbmrVSZFixXEgZq40jpJKXvQSrRDhvRnQXk8nARaBLh4ATIKGxd2MBfzIq7bTHMM6BwXMgyW+xq
 t4tovacyexj1vw16+QgqSnSqHZc8irZ6MsHk/Ctf9aoWAeIBKjKR3ibRE/55ug8KDz895wbaUxM
 Sok+GJhHiub5K++UkC3KNsmQ1zwA3+yvc41nk4ppY2on5RIAZxT/AVzhOLQ7wT2lrt8M4sd4+8y
 yaV5lv95
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-12_04,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 impostorscore=0 adultscore=0 phishscore=0
 clxscore=1015 suspectscore=0 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060039
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250912_045002_015473_CC7FBED8 
X-CRM114-Status: GOOD (  15.80  )
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


On 9/12/2025 5:56 PM, Dmitry Baryshkov wrote:
> On Thu, Sep 11, 2025 at 10:55:03PM +0800, Xiangxu Yin wrote:
>> Move reset configuration to be managed via qmp_phy_cfg instead of
>> hardcoded lists. This enables per-PHY customization and simplifies
>> initialization logic for USB-only and USB/DP switchable PHYs.
>>
>> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
>> ---
>>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 56 ++++++++++++++++++--------------
>>  1 file changed, 31 insertions(+), 25 deletions(-)
>>
>> @@ -1147,11 +1159,6 @@ static int qmp_usbc_parse_dt_legacy(struct qmp_usbc *qmp, struct device_node *np
>>  
>>  	qmp->num_clks = ret;
>>  
>> -	ret = qmp_usbc_reset_init(qmp, usb3phy_legacy_reset_l,
>> -				 ARRAY_SIZE(usb3phy_legacy_reset_l));
> You can not do this, it will break compatibility with the historical
> DTS. Legacy code should continue using the old list of resets.


Ok, then I'll update it, since qmp_usbc_parse_dt_legacy still uses the old
list, and qmp_usbc_parse_dt should use the one from cfg.


>> -	if (ret)
>> -		return ret;
>> -
>>  	return 0;
>>  }
>>  

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
