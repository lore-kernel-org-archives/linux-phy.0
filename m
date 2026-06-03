Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C995CD6E55
	for <linux-phy@archiver.kernel.org>; Wed,  3 Jun 2026 12:40:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mYcrPyzf6PLBY1lnLwZCg2x1+8Bd4yfEF1UM9m4IjS0=; b=3Gn81g35wYK2m1
	OjirSMZTcqwp0eLwv8rRWXMRqyGBCe7ywIhuhECXPodwbIeHGA+Ws+CuzG8B0ZyxvcLNe1MBna/0V
	xiCeZLy868rSTc29a9ivCM5zKBzd1f9pAw7zT7EinAC6Lchv5NlbzwWsAb6cFuvKchPyqjfRf0ppu
	/znxFrEJh8c2CJYB8CeVg7vdYoDITnE2N+h1u385gVosj2wKBhnVaXfu8ajDpdVfdmoD5PgX1xdJG
	eaj4AKPlDGjAnYoPKMSab4rYYeGJ0ucmWJqGIEV3lVhfXfLG+FK862W0VMg57HoTAy1KC9cFIDhTh
	Kvm2Xhvb58ekk4j4g1tA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUktT-0000000F5QC-0a77;
	Wed, 03 Jun 2026 12:40:23 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUktQ-0000000F5Pn-2sLV
	for linux-phy@lists.infradead.org;
	Wed, 03 Jun 2026 12:40:21 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6536RJvd380245
	for <linux-phy@lists.infradead.org>; Wed, 3 Jun 2026 12:40:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=qkFx9tbUxp1w+RmhJqtjjpX/
	0wc2j7aCCAIDgm73PdU=; b=YpMls+1xXmsWASzVOnwTaqExZvCILBcKM31RlFe6
	zmbEgi/Mldf1iuPrXJy+kW5tYZOvXttzv2MrlP66DHOsRAMngxJwYn3vwZ79K9Lk
	Wh8LAwwPhVaH8ykGFaMu2OG5U1h7a2AI+skcqiJcdlj1GmsGAxvFIx2pkQfMy4Jp
	cNGHgvvTpvrpz2/MWh106M9K8UHz7J8r2/meESi2i8QsfSUK3r7NmzDTknElSl/K
	lwS0BVDcQvP5pLOBp1xHrc7lHsYmO3gnUN9dh46e4FN5fIKRmEY+nr30vexIV+wZ
	Wv7DxcmEPJvddi4Jmaq4aV/sQ4flkCUyil8oxyfctSs+xQ==
Received: from mail-vk1-f200.google.com (mail-vk1-f200.google.com [209.85.221.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ejewhsgd1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 03 Jun 2026 12:40:20 +0000 (GMT)
Received: by mail-vk1-f200.google.com with SMTP id 71dfb90a1353d-5a1912d5c85so4829460e0c.0
        for <linux-phy@lists.infradead.org>; Wed, 03 Jun 2026 05:40:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1780490419; x=1781095219; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=qkFx9tbUxp1w+RmhJqtjjpX/0wc2j7aCCAIDgm73PdU=;
        b=kxx+JaSzRarTGM5DSKxFXezbL+XxqXSQneBUx1xGK3GzO+I0Hhsb4GEgNwGXcuIDgK
         L5ZPdzafRfcOIbYw9M74l13ECnfhom/dfH/oJIVTy79G639qtwVniHzWK3uKvhz/ikbw
         nF+wUfR+QdOzmZmzHJWcN8XBtoA6LJrDoTeTbkP2A5XNcdBEVJ3IK3Wzum16ZuvB59Cm
         aWBQoenjuTAbyvp2MX0PwtTxF2ur8IqZkhkps+g27gwd9kZ2lRHcfNPOw1wmmJdaGKyQ
         u4RbIKCLCBC6n9i/X3IPBXqw9G14nFbFA8tlyGLmRcsfMlE+W6QoUwt+GVqt6/2HZ/HI
         zkjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780490419; x=1781095219;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qkFx9tbUxp1w+RmhJqtjjpX/0wc2j7aCCAIDgm73PdU=;
        b=oMTypMJVJw91zxQCsPs4RxFNuj10UBczNZ7CYorrIUph70pWOKH/oT/uxYrotvZBUg
         WbSWR4RcCe9C/banrNodP9afIgA38Na6BzkwFguvSRaME5/9l/+4BGqJAd8Z97X/pzFj
         vyXmY6XcHmQ4GKeE91oohW4As20kQqWxfi6JidZyhIS/ca4SLfQmdA5Jf9rG0YQ8y3iy
         3A5UNYEfprspXY+04GEFaJ1rO7dwVg0oBPqu7KAO6tL+7k5PjVPklYqjotq29el6jdrK
         XFcmSa5cG+JP0wwWJIIlJveD8wTYRr3tFkSoynPJBCMm5wBmpJz1GOePsgOd2j917Ax+
         bVLw==
X-Forwarded-Encrypted: i=1; AFNElJ9FWe+BqDXnehAH4z3Dq+DART1UbHTg7C9EQ5LET8BXmQe94N/uDa6e8+vqGhhdKPodjCnqoTBYsqk=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxw2kW7EvAcK1BLn69DVQ7ytnikui3ckdG6WetRv6/S+thxBtyT
	aHOHemZFAOvacl+UhMGpM3t/4QKB0ux1EDiR4d31IarA+4E2yKj9/FviLTTUfniw71LtfW0G6bQ
	DBBVc/u1jD94KWFQau4AcjXQacCA6Rs8P6fJ4TeACziUYnN1ikoSnhMh+iBCJRuayBR1d
X-Gm-Gg: Acq92OFYjZmW1iGRkohJLfzVuoGvQdtkchWYGEDWSbeGAn9qxpkYfTwn2sKyfClRlKG
	YbFhTD4Al4zVl+wce8TobMjD69EZJVgjqwBPxm63WdZAI5naI3b1/8zJRDRdkHXzJiFphcO+2Mi
	//rhVO0iHGvGO71TCRXWAHvkcpHWnh4Wszx3c6EiYMKqc8xIWXS/aHwbmHpkFQ68zvNOqeyCVmF
	FGPLNVKO25mzfX8BFIpRL4XxLf2fkcEsEO/ft3937/qQhccI33SiS4UWVoAdmycvbok3CZ8zrF8
	q6OLVIkcpxwf8saG2sApHgQFg4bi7qZRosdCav0WMmCetZEEAmC+YV6z/FGSDGomfwzdSz/3SmZ
	4wKfOV6X7EEl+IFKIpkUgtgUCy8IQG+ptBIWl+dJJp1KPnpxOLFTNGGYxYD0LnLG14vE4+FGi+T
	faMm2ESGKpbZFFawNRr3AYiFBAk9HUSf68Vih3YW0jHKADGg==
X-Received: by 2002:a05:6123:110:b0:575:178f:62d2 with SMTP id 71dfb90a1353d-5a6e97b1706mr1765044e0c.14.1780490419121;
        Wed, 03 Jun 2026 05:40:19 -0700 (PDT)
X-Received: by 2002:a05:6123:110:b0:575:178f:62d2 with SMTP id 71dfb90a1353d-5a6e97b1706mr1765016e0c.14.1780490418569;
        Wed, 03 Jun 2026 05:40:18 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5aa7b97b9c4sm625939e87.48.2026.06.03.05.40.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Jun 2026 05:40:17 -0700 (PDT)
Date: Wed, 3 Jun 2026 15:40:15 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Bryan O'Donoghue <bod@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v8 2/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI DPHY driver
Message-ID: <v4vz7cistjb2iuzha4oykglar7duw4y2uuyhumzs33yvpwrxcu@i5tsg4uzpuwc>
References: <20260523-x1e-csi2-phy-v8-0-a85668459521@linaro.org>
 <20260523-x1e-csi2-phy-v8-2-a85668459521@linaro.org>
 <54904b61-222d-4600-ad4c-c03a9952d337@linaro.org>
 <be3e1abe-5148-4247-930b-2e23164eea73@linaro.org>
 <c6aetoiz3dcedlxwjmt5cqh2mngswtmanf6p4s2molemnviwdc@btotpaqwcsoy>
 <f6c91099-0002-4580-a5e8-5611b089024b@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f6c91099-0002-4580-a5e8-5611b089024b@linaro.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjAzMDEyMCBTYWx0ZWRfX9/T/SWbAM+nC
 /Hy59qwsOPlBZcHmLsbHXYBxjc1uvUCIcAZLRowzWI1E9InGUFzpBLy6Ly9Z2cDXFchIlhT1weC
 k7dATOEe2Ekq+igg6hwW9/INunvTpfheAVQGMEDQu7GR87qfXVoOU0VnEcpU1OUdhb+pDqwQEp2
 EptE9tsAaImaaSVybbaEo7+4CXsFsK93bq8XXbowhFM5tj5eDecjhxXG9+DX8SVhpwhLw0mwXuq
 So4WMHEPZt5GRftZWSP3o6zx35ab+ENCS+1VK7TvawG6Nly9WYvFw1qgzuyQg8OEIbhvLyHcz6D
 rcITQGIBFC4yITcaUOUwIUdk6PI/yDvffonxIDe80TNFPwwUoyYB5BKyXFsGsEgm//nxFPBJz+F
 F6MVYZgfNR+CctOeT1BKc8V0FMwHKoww/zWMpTHdewJ2q4E7ylpl8ecPFPmUJfsj9vujPWpFVgn
 0ZFmpOACC5upiZ8fPVA==
X-Authority-Analysis: v=2.4 cv=Zewt8MVA c=1 sm=1 tr=0 ts=6a2020b4 cx=c_pps
 a=wuOIiItHwq1biOnFUQQHKA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22 a=7klWIbz71j6PMBmcNRIA:9
 a=CjuIK1q_8ugA:10 a=ZXulRonScM0A:10 a=XD7yVLdPMpWraOa8Un9W:22
X-Proofpoint-GUID: LpxuEzXq6uRCgnvWc-PNfNv3ZgW88NnV
X-Proofpoint-ORIG-GUID: LpxuEzXq6uRCgnvWc-PNfNv3ZgW88NnV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-03_04,2026-05-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 spamscore=0 suspectscore=0 malwarescore=0
 phishscore=0 bulkscore=0 adultscore=0 priorityscore=1501 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605210000 definitions=main-2606030120
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260603_054020_749858_32334819 
X-CRM114-Status: GOOD (  17.12  )
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

On Wed, Jun 03, 2026 at 01:22:11PM +0100, Bryan O'Donoghue wrote:
> On 03/06/2026 13:10, Dmitry Baryshkov wrote:
> > > Documentation shows clock lane at lane 7.
> > > 
> > > Truthfully it makes no sense that the clock lane would genuinely be locked
> > > to lane 7 but the documentation does seem to suggest it.
> > > 
> > > Yes in fact I agree. clock-lanes can be reintroduced if someone can show
> > > hardware that supports/depends on it.
> > Konrad and I checked, Hamoa supports using other lanes as a clock lane.
> 
> Are you sure about that ?

Yes.

> 
> ipcat I thought designated lane 7 specifically as clk-lane i.e. named it
> CLK_LN of some description.

Split configurations explicitly use other lanes for clocks. E.g. check
the RB5 Navigation schematics, CAM0B connector.


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
