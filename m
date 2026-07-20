Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01B54C44515
	for <linux-phy@archiver.kernel.org>; Mon, 20 Jul 2026 14:31:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0eLC7A3Js8ps8foQ/BEb6su9CynDkfaJDa8jQFswbTs=; b=rOzv42WdIITbnk
	h050D+rJulQ4YWu/NpExK/H5GEHjKiKrHP8r87fQae9XyRQmuqtpINvBT8TPCDkEyMDekkWA5/Gl8
	AkD/V1PJmdLQleGCMo3qMRvnEaKDb33kPPjlMEyw96Mlyovvmy2uQxIQ7AaFN9DRyfsrxa+tvIt4q
	5OG73APKiJbNDq8Y1hf/YMIEvxIUlkvdEnEkmTvjds6vGdXqvgIYr3AF+lwpEqYUjDtYG0Ie3mP+2
	NIxOVOXKjeC9o5vV2jtZ9tQMYf/uBMjzaDcuCULEFwYaLOA7OELDudmC+BoXCogB2GsnqCdqU8gvj
	tiqfIz+gdvVjSo/XXmOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlp2D-00000006yms-2zNv;
	Mon, 20 Jul 2026 14:31:57 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlp2A-00000006ykW-2cxj
	for linux-phy@lists.infradead.org;
	Mon, 20 Jul 2026 14:31:56 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66KDqw5D2852834
	for <linux-phy@lists.infradead.org>; Mon, 20 Jul 2026 14:31:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	XVVBJ31A6FbKsFlgxmXSOPAtuGA8TxPtOacCBKqwyhM=; b=V6pIIHGM0seBO1ic
	X+CnzBsSRPjH6xnkOdQ8UYvGh7BixZbGKrh6OlPhq6FqhL+vnOb1c2lcrUgDPS9w
	zwatz+mM7TqLOSkr0toRwd2gav64hHxjynCDuNuDYBCFRk90zp18qayTF/rYCaG9
	QbvQ8dcxtE14Hvtupigb90qF3O0+405yVAxoATSzvs4cUFol3N2SP4d6yQeHo0bI
	mEHk3fRH1vi7V3at+4H1UrTu10l5wZU1VCmiSHY8vJI6gGGCpnKWP3Wg03QW0d5v
	ZcDfOMlkGj5ioqm0BuTU/Zy4VA7zMZ6jqj1vsn9doC5yLBiE45u5DgP0Qj4Iyacd
	/5Bgbg==
Received: from mail-ua1-f71.google.com (mail-ua1-f71.google.com [209.85.222.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fhhgys4fk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 20 Jul 2026 14:31:53 +0000 (GMT)
Received: by mail-ua1-f71.google.com with SMTP id a1e0cc1a2514c-96966afe3d1so9686462241.1
        for <linux-phy@lists.infradead.org>; Mon, 20 Jul 2026 07:31:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784557913; x=1785162713; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :content-type:mime-version:references:message-id:subject:cc:to:from
         :date:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=XVVBJ31A6FbKsFlgxmXSOPAtuGA8TxPtOacCBKqwyhM=;
        b=JUvITvhe7aL/PjPrS5A9ZNse5wEaMwnaOokTZSM8Dr/V8qIjTYPg+cuBRotaL8ESe3
         3aP6f0251XnaB1w9j/xNWIrDo0Id0Tc/vwfXU5+neAbmkmHQ4NlgNHESTlO3VQ+mg/vd
         dBDEPxOxWayVC8B3tlhw2jz360OldbwCr4c5Beh5qsZYUOgN7VzppdjMGLaeehFoKQyZ
         pW2cNRmGP6qg/S5OVe/Z+k6OaQkBmXsXPaJEJA7TfmCm4IJVDqIFG3Wx8WR6zO7k0E3c
         B4bXusJMHUA2g4ydAxY6a10JOMRK6ZHmYsnuyi4hMu2SunhKE5C0AoxkE4q+ObwPw7ZF
         7YzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784557913; x=1785162713;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :content-type:mime-version:references:message-id:subject:cc:to:from
         :date:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=XVVBJ31A6FbKsFlgxmXSOPAtuGA8TxPtOacCBKqwyhM=;
        b=KU3eUNlRgY6ON3T/74BglrGwMm8byB1hLDxuk74GPz5sMcvUmP4LK84tRe/xeRZysD
         CNOOMFxBf3giIJZxqyMJRfKputbIjeHnGr0qbhWrOXefvTiWBrhTeXXhieCnHtHIQ+SR
         0VavzoCwUVzlUgOxEhvPr2OodGbZK3NwQWk8/1Qrf+8OMFHq3b0CLzTaIScloRpQj3Pn
         vIdGBCeDL8iJlqKMW7bn7luWO7x8eCPQhzIbRJHrXcPKuwD9kQhlzMyVIpv2ZjOrZfOY
         afDXIl1egNZ8jFd/ZnOqIfyJzQjPvbBHKs7DEA5rpw8IOaaJVF6qg8qlL+m4JZIj2hJJ
         gu0g==
X-Forwarded-Encrypted: i=1; AHgh+Ro08I19Gv+ogrMnOEa18PAnH7eFTmPQJ7HqsKTmhlgGIuOvrBUL5ih41S5cyvXIowpfMnp9K54ej8w=@lists.infradead.org
X-Gm-Message-State: AOJu0YyYirWL88N2QMGEFAw6Oj/N7MrScKet08Xb7FVfJwI0f0fwIfZa
	7/NCR5csR3xS5xqvuQEbyN8Yze2bBz+rWmM2ZkIwX+90naD0yVuemIFZOMVmYKpWEq2Ccuw4POv
	Z11uYXpEhl2LOmxctLTjvXiICheC5E6NxxL6roDA2hhy49K5N0HlMznYu+mhl9/7A/QtT
X-Gm-Gg: AfdE7cn/l+1y1P/pu7DX+De1dMGNdCXEpWhDlhUr/sUsDLzQrBBH5Um/PxCaBCYVONa
	BGTGvJkWTqCtsXFW4u1te11jphCS039MNVNoj2nBIMmfHyQhG2wxozB6b4hw5oP8ZUmMztfTxxn
	bPV+H3k0In1znb0pCTjq7kvDWAZHNfrNM6EEsUNfHRbJp7is0GayPCIrDP6eA9fdMOaTGhRtrNt
	66oQ0vAPRZunPI6xFOFHqiEU+YoweLbUyviHtX/Ccc5IM24kUELe90plnvrgGU33ObO+3qB6ARP
	fIcHRV3VO7CmsJNkgI1nKdl0aNJGgYWMNXBg53cNqRhlP3DaH/WITPRKQPNnvlp3ceCQNvMNi7u
	+qHF78o5qA7Pvrv6ym/VsXVij1GTDSHN7bya4u4YqdP0A/vD9itorqUu4meYPMOD9oM9DCR0Yux
	ar/N5THRjyDrc6HA==
X-Received: by 2002:a05:6102:3e12:b0:744:cb59:d6e4 with SMTP id ada2fe7eead31-7475373fae7mr4340467137.22.1784557912694;
        Mon, 20 Jul 2026 07:31:52 -0700 (PDT)
X-Received: by 2002:a05:6102:3e12:b0:744:cb59:d6e4 with SMTP id ada2fe7eead31-7475373fae7mr4340446137.22.1784557912168;
        Mon, 20 Jul 2026 07:31:52 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b291e297ecsm2333411e87.82.2026.07.20.07.31.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jul 2026 07:31:50 -0700 (PDT)
Date: Mon, 20 Jul 2026 17:31:49 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>, Algea Cao <algea.cao@rock-chips.com>,
        Dmitry Baryshkov <lumag@kernel.org>, kernel@collabora.com,
        linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
        Thomas =?iso-8859-1?Q?Niederpr=FCm?= <dubito@online.de>,
        Simon Wright <simon@symple.nz>
Subject: Re: [PATCH v4 8/8] phy: rockchip: samsung-hdptx: Consistently use
 bitfield macros
Message-ID: <al4xVeMXTmjQeMlp@umbar.lan>
References: <20260612-hdptx-clk-fixes-v4-0-ce5e1d456cda@collabora.com>
 <20260612-hdptx-clk-fixes-v4-8-ce5e1d456cda@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260612-hdptx-clk-fixes-v4-8-ce5e1d456cda@collabora.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzIwMDE2MiBTYWx0ZWRfX3qT/1JLM4whr
 GXvTI/R9dXPjME0IcitaspzbaxRdCiHZQNucdJ5vaxfa3buQ1Ht4iW3Bg6WCSPohP4X4TQoIjWq
 rsPT21i8Peh9vQnKyYcr6XzEadsphJE=
X-Authority-Analysis: v=2.4 cv=LK9WhpW9 c=1 sm=1 tr=0 ts=6a5e3159 cx=c_pps
 a=KB4UBwrhAZV1kjiGHFQexw==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=QX4gbG5DAAAA:8
 a=EUspDBNiAAAA:8 a=I81vlq0Cx9dIN7l1fGsA:9 a=3ZKOabzyN94A:10 a=wPNLvfGTeEIA:10
 a=o1xkdb1NAhiiM49bd1HK:22 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-ORIG-GUID: xwKu9lVxfXdUTtOELJTUuIZ-8V2aepVP
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzIwMDE2MiBTYWx0ZWRfXyjwlbsplJDUX
 d1HIshJ6e/0pAg+zriocQnjy/TKjJ+fFlz/Tbh0uTlxGqnlwezRi2jkPClzUiacJtBNIUPr91kq
 fLBZs/9uh9/NPQNVpk+wKFQDY2FMYqCCoFm8pHT5g8yRJH/U0Lyv1fDxvWSKt8rQziKl2vEPSKH
 cIPkvZ1aeh/VCyGTvUb3/ra4ihyob4zT9Z7x0E1/kqAbyvFBF0PI8JqHppzryu1HEYZ4J4iiToE
 Ved7TQNQc2ygRhC+3hVvfWCpJa7F4WN0mdHuLaAdRTPW1UmVouNvgC6EgowRc/FyV6WsAjXyGrW
 GJUc9D497EK/YEjCkBvXeu83SgrNSKjl6Kh8sj4nPeNiltr+4h4LYfcB5wriIED6LskRL0RyrII
 zIL4dJU/s/CuX7L4TNUJA2zKQNQUQVFcibpWJJ5JogN+9TbYa/nFK6yRCYZW4mm/nVtNdvZThp2
 rxnrWvSyhQuDKD6eZvw==
X-Proofpoint-GUID: xwKu9lVxfXdUTtOELJTUuIZ-8V2aepVP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-20_03,2026-07-20_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 phishscore=0 clxscore=1015 malwarescore=0
 suspectscore=0 impostorscore=0 lowpriorityscore=0 spamscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607200162
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260720_073154_792427_A964EE68 
X-CRM114-Status: GOOD (  12.97  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Fri, Jun 12, 2026 at 02:45:27AM +0300, Cristian Ciocaltea wrote:
> Make the code more robust and improve readability by using the available
> bitfield macros (e.g. FIELD_PREP, FIELD_GET) whenever possible, instead
> of open coding the related bit operations.
> =

> Tested-by: Thomas Niederpr=FCm <dubito@online.de>
> Tested-by: Simon Wright <simon@symple.nz>
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 30 +++++++++++++++--=
------
>  1 file changed, 20 insertions(+), 10 deletions(-)
> =


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- =

With best wishes
Dmitry

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
