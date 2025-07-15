Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6A98C83F22
	for <linux-phy@archiver.kernel.org>; Tue, 15 Jul 2025 12:45:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FGIqbzL7d9tK4o+mf9A8rc8ATdsN0OXq8TAzIbTUNbw=; b=tap0g15akfrnJG
	L0Wt4eQE/9Ww+3hNauZkbWknn2/yR+wuNE0lyUPM1hbD9yUYv+ByaKwMLg6Hx9gZHviEn1TNt76i6
	isbGOrYtm+N5qllTWucLPsyn9FdhsJszWD4aI1ubh1r2MSD2LNaclaclA4paK5yaxI18juavh2KeX
	W4tgs77SOOBB/u6Td4VfcX0FDvvd1+TJDAgPNIGpb+irJh2JU06IYsTEpHS4o6hJfAhTYSJQheFHf
	ORzMBAFYuLQn4HPBJwv46kQP+EMm8F/4FgnmOXn98wVHOXFtg8kXh4vZ2EQnrOMjsgdbtxhqqF5JA
	d9FL6MwfkMoHNGQT774Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubf1w-000000056lS-20BZ;
	Tue, 15 Jul 2025 12:45:08 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubeOJ-000000051U6-0pZK
	for linux-phy@lists.infradead.org;
	Tue, 15 Jul 2025 12:04:12 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56F5cN1q011111
	for <linux-phy@lists.infradead.org>; Tue, 15 Jul 2025 12:04:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=uewLyWaWo+XEtP3pU1ovudoo
	X8FXuLSHNKA5wv9Jbhg=; b=dGtPvDSXLEiPdl3CHjLxdrhQbN0NwOq3l+YIPu4X
	hVkm5cNDxft1J4ab42X7iJgqqENQGeXEmEU36rxBCi6BDwLZa78Ii6TK61uWkNEL
	H9DGn7x5fOduOzuOz6Z+S7RbZg9o6LQUuDw4Ls0rRfeHx5bQtUWxnbt379YRfbHq
	1sTTyY7oPBz+I0nqX0ojmZx6Hu2sZ0QI4RiOHoUEHheUKrl//Rs/4oBAGA9QeeUf
	OYwVj54GmbV91u36r1i83vQGmmXpHhYf9guevfNPIWlzlr2Y0RBbxKAzx1cu8Wwq
	shVqwzuDNxs4w5lBq68BQGmYGhYB86tQV8LAGtiCgIoNXg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47w5dyjx37-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 15 Jul 2025 12:04:10 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7e338e627f1so218400485a.0
        for <linux-phy@lists.infradead.org>; Tue, 15 Jul 2025 05:04:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752581049; x=1753185849;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uewLyWaWo+XEtP3pU1ovudooX8FXuLSHNKA5wv9Jbhg=;
        b=tkf3n8u2qrJMaxR1KEDVLI6rzgDvVZ9uofC5WZRHQugDejksZoSgaY3NOosyNdBLbW
         nZ8HCzUjVqvoeacYApy8gRYMPt8xD0qt1H6VBalQNVKDXkn+4MEp/G7qEdGKB379E42B
         8k6su6wgOH/VxIWRL21lUnSR/KBb8L6t+q0vY61lWQkcCw3xxGXnF97cDRE+pm/uzJCK
         aGNu1sWoi01lmzzlbWygixSBTrpCs4jrIBb9ZIFgA74w48ETePAe6OO8fD2cq6FKKNFg
         p6+gQ8oI/BvKTBfomsdOJUB0FyiHjpgUfTB05F+Dj+LKyvghBwpQh75biXTSnaKFDYVQ
         6t1A==
X-Forwarded-Encrypted: i=1; AJvYcCUYRHrdst8AmHio22HEmU/47xFqXoAottqFEtbtHNfBR8SY98aTKcKMbuRnJwCw5MZSqbkP+Fr+woU=@lists.infradead.org
X-Gm-Message-State: AOJu0YzS47zs8ThHUgVXeosbYBZuJwBpD2fwUcnZN6yP0UQeV1Fh9fOk
	zUV+ERSEEjORIABhHRqwpcAEZyncLxcHdnQ8B9BZVj4XsUJGSyzaZ5xHtO7Rey8giJADqn/dxiV
	8e8yANotM8BkLZYmJQCxxTIoEx+GTteDN2vJkUX+8tF+9w5WXkuZ+w2ywSf7fUWg9ki7j
X-Gm-Gg: ASbGncsF3P+P6GWY+2Jle4eA7E3jHsn+GET+QHidL/SLfv4vj4RTvItNlqmN4Fj3kbl
	SV1y6aKBbHiK2Os9H960Y8yZavfRjvLhOnt/bMivhS7t/XG2lyrH8N9dKRQAStTfpQH57d57OzN
	C/SeAlPZ4QRyhSQDMghMwkL9akBWNfQVZ6ZQAgA4WMM46gByr2TTrQTATkMFkGouxZpRIswv1ze
	Emfnqgjl8kvDOp1n1N2LKMkpXW2polrRJSIP0KgoA+kL+Gzmi3B9mHu+/sto9nimEDlZ/7sAfd+
	UrAbZUg7XQcClpfsPIj4uECpDMO/kjPD0l7xTV/mv4IUikFMmr+rZhGqq5DHSXDAf3pa72IWSmo
	lgf6vl6uirmdj4zwpt4W/Q9CyZ5yAjkK+SdmZTsD+EJWRsxwN6uVA
X-Received: by 2002:a05:620a:440a:b0:7e3:35dd:4829 with SMTP id af79cd13be357-7e335dd4ee6mr517582785a.46.1752581049145;
        Tue, 15 Jul 2025 05:04:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGG+QA3kcqdK27HrgZ41em40tegk2sEjV/HwigntzMPoVZCR1JNaYYEpmMQ+MrBS7T3eBGxTw==
X-Received: by 2002:a05:620a:440a:b0:7e3:35dd:4829 with SMTP id af79cd13be357-7e335dd4ee6mr517577685a.46.1752581048678;
        Tue, 15 Jul 2025 05:04:08 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5593c7bbfcfsm2266306e87.40.2025.07.15.05.04.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Jul 2025 05:04:07 -0700 (PDT)
Date: Tue, 15 Jul 2025 15:04:06 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Chaoyi Chen <kernel@airkyi.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
        Andy Yan <andy.yan@rock-chips.com>,
        Yubing Zhang <yubing.zhang@rock-chips.com>,
        Frank Wang <frank.wang@rock-chips.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Amit Sunil Dhamne <amitsd@google.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Chaoyi Chen <chaoyi.chen@rock-chips.com>,
        Dragan Simic <dsimic@manjaro.org>, Johan Jonker <jbx6244@gmail.com>,
        Diederik de Haas <didi.debian@cknow.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH 1/5] dt-bindings: connector: Add displayport connector
 for hotplug notify
Message-ID: <r7b4y74lr5qwejkejquosaar75mthjvjfy4pp6bbl4pgte6cq4@n3gwjolsaw2j>
References: <20250715112456.101-1-kernel@airkyi.com>
 <20250715112456.101-2-kernel@airkyi.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250715112456.101-2-kernel@airkyi.com>
X-Proofpoint-ORIG-GUID: TNyDZeKgvvjf5QS6MpvE2M3WhYx17UYg
X-Authority-Analysis: v=2.4 cv=RtXFLDmK c=1 sm=1 tr=0 ts=687643ba cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=VwQbUJbxAAAA:8 a=20KFwNOVAAAA:8 a=s8YR1HE3AAAA:8
 a=w3lZJLl83XfeLKIF-PIA:9 a=CjuIK1q_8ugA:10 a=IoWCM6iH3mJn3m4BftBB:22
 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE1MDExMCBTYWx0ZWRfX25l39o1V1j3G
 QrQwlPqpVNxxLV3ZHGvNYFtTHMvp+vJHck1ixXqFI8r2ghaqmO4ZJpc9aSSQyNq6Jd/PoveX160
 w418wQ3fRk0+PYstXKs5FlCiFpV5f1U/nwVDekYJQ3l1vVfjV5Z5FBaBUon0pS0yQ0pLGVignlw
 o8xh6kEr3iD1PbrTZPCsldcWyXtZIhlpWFqZW1Hj1eKAfMIXE7SvsY2JsmAwSpu/RwLIP6BGOn8
 Hmd/6GCpmpwNqgF6+PMHRXw3nDpk8X1zJX4gf9JM17yPZlMt7f35d5/5fi4wZvIGU72a7vsUrI+
 WgGW7f8K3GVq++r5f01NSeaTvFXPPM7xtoj/UEONaMsODdKqqa2/KUeSgW5B7cMjveHxrbeinv7
 CwDMoBxWTqYXS7UE6BV0qdG2a6gywmR/vygl751zgKBVC9tysaVmAgymwhuPNZH+wip+mjhH
X-Proofpoint-GUID: TNyDZeKgvvjf5QS6MpvE2M3WhYx17UYg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-15_03,2025-07-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 mlxscore=0 bulkscore=0 suspectscore=0 lowpriorityscore=0
 impostorscore=0 malwarescore=0 clxscore=1015 mlxlogscore=984
 priorityscore=1501 phishscore=0 spamscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507150110
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250715_050411_263102_DF854C02 
X-CRM114-Status: GOOD (  15.61  )
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

On Tue, Jul 15, 2025 at 07:24:52PM +0800, Chaoyi Chen wrote:
> From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> 
> The USB Type-C DisplayPort alternate mode driver will find
> "displayport" property for DRM hotplug event notify[0].
> 
> [0]: https://lore.kernel.org/all/20210817215201.795062-9-hdegoede@redhat.com/
> 
> Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> ---
>  .../devicetree/bindings/connector/usb-connector.yaml          | 4 ++++
>  1 file changed, 4 insertions(+)
> 

Please see how it was done on other platforms. For example, qualcomm
(both tcpm and pmic-glink) use port / endpoint to link to the DP PHY /
DP controller.

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
