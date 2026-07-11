Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C3FCC43458
	for <linux-phy@archiver.kernel.org>; Sat, 11 Jul 2026 17:51:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n2bXy6oKhn5ntR3zrXzlnc0rwhMPhSUE6VJdPS6hrSI=; b=3As9kbcNqcxW1N
	30/+MaCbV/eBT1nHvZWI4BOjoyz715gzPshqA0HpzuqEftbISnzSnHx4uN9L58e+/GPH2MkTnY0AV
	v2DBTaQb/GtRt1/80j4O0HxxRw7KJ7UkBm/UHGpvb6rVBezIRWxc8aD1+znkvQruhhqCEwoLU06Ly
	sUDtIsNyEMEPKicjatd9Yuk73E1BMlDzPSuwDhUaLkyio4jdJzL6cKYclh44QgE92i7IwUr0iV6j9
	2DANkLXlsSWRoIBfm/ucLn7E+EMduDEhINZvcJmEsuunnJknJWeHFe1G52jJivnCHbNAVH2wprwNN
	3OdkJz5zw9Tc0z2JUjeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wibrm-00000006jpe-1Gwt;
	Sat, 11 Jul 2026 17:51:54 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wibrj-00000006joy-1EnS
	for linux-phy@lists.infradead.org;
	Sat, 11 Jul 2026 17:51:52 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66BHnAY3098153
	for <linux-phy@lists.infradead.org>; Sat, 11 Jul 2026 17:51:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=O92GE7cXDqJy6Gvk0FuHsmfU
	ufq3xepTjiD2tsLB/7o=; b=mjL3IZxVOwZ3DAPb3n0hmtb8FNIVgZhKJbDxT3+Y
	It1SREmU63RCsbfsBXOTD92vt6Z2EnaetW1NqvkuZVYkSSf+XU1XmH/l6TN6tme/
	V0qQUp835YEDe94+z3Y/bxgwc3l2Ey5aV6fMoIGGA4GPxZz+lyQiop7vGCC2A/Cu
	bcB2hxBld9oOaZr5fnrlSTKLiP0vpepVvv6jNRenBesm3wvb2wOjBayPlIzq9nrv
	nWdx8fAzYCw9kOjsxDZO10pyfV5m1LgIMO7Q8k05QP58xE4APRnGKPtTLlSgn+Q2
	tBzyFOMqu6RHPERBLoFuWNoLYHWlunDBhcYTRYvPba3I8Q==
Received: from mail-vs1-f72.google.com (mail-vs1-f72.google.com [209.85.217.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fbf0gh88g-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 11 Jul 2026 17:51:48 +0000 (GMT)
Received: by mail-vs1-f72.google.com with SMTP id ada2fe7eead31-737435677d8so2000511137.3
        for <linux-phy@lists.infradead.org>; Sat, 11 Jul 2026 10:51:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783792308; x=1784397108; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=O92GE7cXDqJy6Gvk0FuHsmfUufq3xepTjiD2tsLB/7o=;
        b=ND/lBga1+G7L7cxWw7ryr9DcAmcdNHhnQHU6ujbPdo/uha1XSoG8r0SB+EwuD0U44g
         CbZ1GP9YHGN1JZbox9kXO0aOpfS3to3NmlFy/ho/Et71zV84b/3J4Ok2qjE55/ZtKpH0
         /QO4+YP/rsExXPAqklDVyvCgOcZ68V5PRDldlZAaBU+Oz47SbeRWbmRDwFWFGTyOoD5N
         67Dh0+VNaLbDTO/QmMXJFHAOstPNex8WxbyVDbse5aVxl86/HZHNLiGnBqtd1GsyuWBf
         +3qjua8lCRouc3ysAqDnWLPhaL/ZqVVI93gWWfSlRYtTWZo1fsp3Us1tb2iCYJwMNzOI
         7ypw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783792308; x=1784397108;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=O92GE7cXDqJy6Gvk0FuHsmfUufq3xepTjiD2tsLB/7o=;
        b=JMbibrA7oDWJ4zdVDpK6ytfivgsSCN677N+4gl7Nkja4ndULloPudxVP7HL7hrgWVH
         NHVNSTgcmzp8fADjwSDmC7+xy0M8eGSZKxrOAm9jxOUfkubDz/ZEvSEbwmOa9qlVplqU
         dZa1J6bx07MdwmcnqGYr1//X8nEcql3tU6dk4Bq0/LM+lnrE03RDhKK5Ozx5Ua18HqgJ
         4bEqRarZfVX7o0jJvAuhsEOl7YJ/aFW1jXO2WNY7mjSnPl4bn9pPYzwzOj2WlWb+mVtz
         ycapHgq3NBniONZ6XNVGs1XheVYG9ZS647nHVchrS8BURwcPRzK9BT4nngOiw/XKtMc4
         LTOQ==
X-Forwarded-Encrypted: i=1; AHgh+RrLmm3/0NuQG3ERksLBui3VS2oqDVR4SHoHQ7xsMyCrL+ZlokEJOsKuryOMjwoQbJv8cyKuILw9V6s=@lists.infradead.org
X-Gm-Message-State: AOJu0YxKb5HQn85F7OcYMDFIixuzM7x0Fff7DazEu5S80YLxJzikHFpF
	M7kPuvo+Ltg/mekkjdSgh4Vv++8AFh32BbaqLOdHKSjNIqjsrZNZFzPEvdwS5xTYihlGJ/DMrTr
	HbIP66hktnKY917ZZ0cSr6WtB9QxaM2Ubg0wLHTURsqdN/DALINtMi7Bk/BuQxjTzv1BQ
X-Gm-Gg: AfdE7clOmbene/cHDKoUaMBp/QdZzuSRKTLtytUY0ldXVA1Qzr6c8XmUP8SndusKNDr
	8aI7+AScu43FCx4B0x2fdF4RE6EL2DpyL00g67FvvG0wgPnv1jVX0yzfK9sZRJI5+mpJ0QbBG2H
	pDJgxAYkMw/wZqgXs/xZuc838f4HJlC0u+yl28TY6RqbyQbpSjhbOTDR2WY6ZJL1FaT5sDwJvpb
	ctdsif0I4rYAfjvMX6Py+z4wcYZe2XQ6ypSRf7OFq+HhFuHlKwkF+THUPB0AmH54F+9H/Njlx47
	v3rwPdFvfzOEaaIJoEalJcCIVOENLJbEAgbsR072z9GM5x/zrvU0S9RvdQ5sxDK/xtQnQZV5skZ
	z7lWO3LDWyMaLPeQ+jbsnKTYPfusM+2fSHfJk4K4/JVY8WCy3rrOXtS5LyEgy/7FV1PdIPLbZyu
	U7GQz6up/M6dFHqF5B64SDu0tO
X-Received: by 2002:a05:6102:508a:b0:737:bcfc:5fb6 with SMTP id ada2fe7eead31-74533b8430bmr2476143137.1.1783792307764;
        Sat, 11 Jul 2026 10:51:47 -0700 (PDT)
X-Received: by 2002:a05:6102:508a:b0:737:bcfc:5fb6 with SMTP id ada2fe7eead31-74533b8430bmr2476126137.1.1783792307346;
        Sat, 11 Jul 2026 10:51:47 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-39c84b13542sm15908361fa.11.2026.07.11.10.51.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Jul 2026 10:51:44 -0700 (PDT)
Date: Sat, 11 Jul 2026 20:51:41 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 3/4] phy: qcom-qusb2: Add support for Shikra
Message-ID: <3xakwbmomubsf4ofztpzc5ckf6ftj6f7rssq6k4cywzldith6q@xhhj2rla4jg2>
References: <20260711-shikra-usbphy-v5-v5-0-229ba3602737@oss.qualcomm.com>
 <20260711-shikra-usbphy-v5-v5-3-229ba3602737@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260711-shikra-usbphy-v5-v5-3-229ba3602737@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=Nq3htcdJ c=1 sm=1 tr=0 ts=6a5282b4 cx=c_pps
 a=DUEm7b3gzWu7BqY5nP7+9g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=EUspDBNiAAAA:8
 a=F9wK58hNblNa3jbkQ1AA:9 a=CjuIK1q_8ugA:10 a=-aSRE8QhW-JAV6biHavz:22
X-Proofpoint-ORIG-GUID: n6Dt3SLDDC50tOzM5PMmQUESqc6xOoTV
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzExMDE4MCBTYWx0ZWRfX1qIwD82vZzas
 0Xi2vHPTc2/FvcpQ1S4ViyU5XChMs7/Fyey1PazewLD/90nQZ069iawYQlq+8+ir+AkU/m1gury
 M3s+cxRHn61upyfMD5TiRp6yhedJczmrnqNrn99qp7qq9NpzDwONwVQV5ubHxznuuWlKJyAnRue
 r7l7rMOCRAnFz5m2IKKOKDJYelUHG5/gFcZgkhsULZEbCRyaqvUuDKVOm95MF6uS8sy5r9WE+eF
 y8w/Ea73rE6qqtNnOJtewO4uC0I6V+CFUZD8DFWQSoYCW9W87CpUaGR+X8TcCO9gU4swYkDBcPG
 icZ4VOlh4HlLJt3VvfC8ZNpQyeo2R5RZ4j2PQTRsgv2CoM7wXdoUQBl48MjQTVVg6HHvNFm8xiT
 5kk2WE00WeN0RH97rqeRDKa/r82S1LcMhqnHOkFYg7MsOv9KgQXer27IP4As2q2jXiKMas5oxrF
 JooYGzxraE4z5nRuf9A==
X-Proofpoint-GUID: n6Dt3SLDDC50tOzM5PMmQUESqc6xOoTV
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzExMDE4MCBTYWx0ZWRfX5GY7aSdtzmw2
 3BGQ9USdS54iPMiMVDwQm6UwoXLoTPU02WS/8LEOK5VnV1M0ASauBks7CUC7o57bKuphs0UUdA7
 +tqu0ToA2uiYxUGO2ZLb9qvxj2pjzSo=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-11_05,2026-07-10_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 bulkscore=0 adultscore=0 suspectscore=0 malwarescore=0
 phishscore=0 lowpriorityscore=0 spamscore=0 priorityscore=1501
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2607110180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260711_105151_364578_04BC8459 
X-CRM114-Status: GOOD (  12.51  )
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

On Sat, Jul 11, 2026 at 10:39:52PM +0530, Krishna Kurapati wrote:
> Add init sequence and phy configuration for Shikra. Since the init
> sequence is same as that of QCS615, reuse the existing init table in
> Shikra.
> 
> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qusb2.c | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
