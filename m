Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 555D4C79F9F
	for <linux-phy@archiver.kernel.org>; Thu, 10 Sep 2026 06:46:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uGOeKHMluBL9gROrChed7pZapio4LBGervwVRLY8gDk=; b=J1vTemXnfbPdvQ
	ZR3+IVH47pMk9MRnouIU3OZj1nM2I7G6Yu1xOx8ByWBTcA+YcWOKAkpP8Kg8vh+D6cBKzTveBcfkG
	y4GtS3ok0v+v22IQfCipKSo3TajtlFGuFXfMQzafY8af5JYOYflsjpRcUpxXBRME2mvureZWV6KOp
	l8QzcuhwGN9hBOw27Y76V3H87WHhUibjrrBrezVX3343pC4lMPqDG+O56eTjMu1pk9TUUbN0Ppt2E
	xEP38foICwRZ/GzdrIgeoWv0rjfukKPM22JFvteF2gozE/FsAHTJjgUrXs8fGv3+zFWgKhlxSQVwk
	fW5rXp6mMWhprTja3SRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4YYi-0000000DZ3U-0642;
	Thu, 10 Sep 2026 06:46:56 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4YYf-0000000DZ39-2uUo
	for linux-phy@lists.infradead.org;
	Thu, 10 Sep 2026 06:46:54 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68A5HMCD320802
	for <linux-phy@lists.infradead.org>; Thu, 10 Sep 2026 06:46:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=OtlYq/p9g/l09HGFRWH07O7/
	FCUFDmortwofpkkwn8g=; b=EHPun7OgTpKkjm7XCc9fqZFI35/d1VhTL/UrZABy
	J//NaE2LfK9ir7wtviM2sbxE2Sj3QmSdrk818QhCtXB+omj4aFUtqMr1yDdAeNMU
	17zHwRGR4WG3HLl3etSi4FioXZKF0XM6PKkrbMz2n1zfiTEYB7gtL4UCpQl8VprA
	lghXZuLkYCnAiPHSzutXEcgc1QXEcNre5MW8bdQpWYqjATYiePvFIu5cxnWPdnXO
	GAZzSQYLt/jDnOccVQjHLWlzDh18s+cTf3Vb/zxGE0oqJvZzuImA29HSunv4diTR
	uidPFnY+lbaLhOggssE0qz3kyU9N8yYJ1U10um3XPhrLHA==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gkcyg2fks-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 10 Sep 2026 06:46:52 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-c89704da8c7so8847561a12.0
        for <linux-phy@lists.infradead.org>; Wed, 09 Sep 2026 23:46:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789022812; x=1789627612; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=OtlYq/p9g/l09HGFRWH07O7/FCUFDmortwofpkkwn8g=;
        b=IXzO0T34lEKNpj/exBk3QbIB+2l9q+wLS0j3wmmOr5K/k9zn0Q4iAF0kMtY92Y83En
         b/jZ8z2OQltYDmIXJlcOqjX2NOgPgXAHk8rvEOgejIDrs0Z0Gqv6Ni1cseT8O2ycc3eE
         zJuZ/IDUExY5rpQ6oh7Cf4/nNlIjwnmegWDcrBxLT1jpbHNeM1pJ+FbaWJmjjiq+gOH5
         JR2ZKfk5zy7sGSWadz8KM6tQmrLWdPQwgRf8EI1y5VSaqA6QVm6Axy7IsDProIm3EmE7
         GLS7S4hz1OTwU+v1P0tG3xVZIAdA52y64GEstNn73H5jjxhaVjJnLlhh92KDdKnt9RaU
         O4PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789022812; x=1789627612;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=OtlYq/p9g/l09HGFRWH07O7/FCUFDmortwofpkkwn8g=;
        b=S6fvkhHME8hfqq8lO7tNiM3wQ6/x2UeZjNroXFWwBsuMgcGOgmqnwC+h56y/A3ISJG
         pZyd0ca7mncvxcOqL/bna0pxB0hWjwt/2siMQVfpsvOLTePK1rvossx3wtjIQ4iM1p/R
         9Jm3QE6DTNZAjYZBpiqyBm1332rZaTH1fybsmMhCN4ke2g4BmXpOyh2ItiOy17oClDOU
         MW1FcmJ2hbm3fkP4sCsTBFeWE6vcRoiswQMWpXwjuMnZfHqcM/U5NSkZbuwdxGb3qWT3
         nB1j0CtrdZvOCP1P2jwSl9yeQ56T/e1CgMVDVTTTXb2p35I1eeA0q/61zWl+7vC+wXRX
         wVyw==
X-Forwarded-Encrypted: i=1; AKwUvBymNyk6p5fHcXaeid/plLzs/0uW5lJX0JJM1xmLRMjSPEatrpcc2o6623kC18FxmupGHAdcLYlPznY=@lists.infradead.org
X-Gm-Message-State: AFuF++n52xH1+GDMPbOaheMjl74uN2Tj9scKqhVUKNI4zeOKFxWYXFC7
	XM2OWyXwo0D36BwJljtdPAwirbxiMhFavcIGSMjQxrK4iv3tjG8JeDzNtBtEtXnPK6Xe3UKMsjG
	fxVtqJH8YsmkDvQz9b1wvbUF6bQGck8lK2c3fR3UvBoZJAZlGKZUoIrMIpTNKkkkxA8BB
X-Gm-Gg: AYBFou1RAox+we9a8hu8cc9YFxsCM5oS7MsGaFnP1xkjFWF0MxTiyuXs8h8+NoKjoEL
	NFc3FRJf1Xz6jg2rgeIO6j37fct6EWXQc6gjkGJUSPGQh9+7EjYhaX6f96+6Cthlqv6Ead3Vf4U
	SBnRaDqJ88ZKwV8pDfu/uFxtAH7uwn9Da8ZJwtlQJuoMmgERCMaOS9fkaJqwQSmQSu4d845RpdA
	9zb7bb0KlJrr+UsmKaGLSMhg2IbZlWrbptyd8W9ZQH01OIjsz2p8JalVrkWobF97E8F3MYX1pjZ
	89k+8CnVb2gyNw7fzkqUV1a0j17pxlA4nP2MeQd83bANFl3V88QbU1UrvfVbK7VE4V3CrPmodgh
	YmTsqBrrWp2BhjAtBH/she+TKE0cFlVtqMmEr9gtR88k=
X-Received: by 2002:a05:6a20:914a:b0:3d3:aec2:4dcd with SMTP id adf61e73a8af0-3dacbf56563mr8135491637.25.1789022811496;
        Wed, 09 Sep 2026 23:46:51 -0700 (PDT)
X-Received: by 2002:a05:6a20:914a:b0:3d3:aec2:4dcd with SMTP id adf61e73a8af0-3dacbf56563mr8135436637.25.1789022811020;
        Wed, 09 Sep 2026 23:46:51 -0700 (PDT)
Received: from QCOM-aGQu4IUr3Y (i-global052.qualcomm.com. [199.106.103.52])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3339af25062sm77169144eec.16.2026.09.09.23.46.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Sep 2026 23:46:50 -0700 (PDT)
Date: Thu, 10 Sep 2026 14:46:43 +0800
From: Shawn Guo <shengchao.guo@oss.qualcomm.com>
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Maxime Chevallier <maxime.chevallier@bootlin.com>,
        Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH v3 2/5] dt-bindings: pci: qcom: add Nord PCIe controller
 compatible
Message-ID: <aqJSU8y-ZAQjnRJf@QCOM-aGQu4IUr3Y>
References: <20260909-nord-v3-0-b0a82721c547@oss.qualcomm.com>
 <20260909-nord-v3-2-b0a82721c547@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260909-nord-v3-2-b0a82721c547@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=YZYodARf c=1 sm=1 tr=0 ts=6aa2525c cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=b9+bayejhc3NMeqCNyeLQQ==:17
 a=kj9zAlcOel0A:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=Y4sVft1UDeOkrP7wHAgA:9 a=CjuIK1q_8ugA:10
 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTEwMDA3MSBTYWx0ZWRfX8/Am/W407mG3
 kxYxIN8D4b2QqtjODYXgcQgLOd1GUqu/BGioo4khee4yhDPtAyVku4K7kCZ5HAmh3xOTaP9JDvk
 450f/ifRcWiGCf7NeZsWB7asKkCsIGc=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTEwMDA3MSBTYWx0ZWRfX2zGKTkZndWEH
 Q26D6IsMln8q0JuGprB/kzPJ/lLnxgGsW2/AhbzAA34zpvduu3iRqbs6FV2Nh+rLDSJ+zn4Po9k
 2iElJEiwy8VSq5P/th9tHMr3xM5XFD1s4JjzRGQwipX0gsZYs/ZuUihXm8W356rkuRfVTFaHpFo
 iUU8P/XiVKp0eRyduhhoBtPkeoGcBvEK+gkrRpHlQ9T4BEHDy8ddd4QL62SjN57zD5JRr+Q3D85
 Pz6+rQSnh+KdJhpZTofKUzcVhySpOuiHTH3V+3EVIHnUqowwXhMtq2XbsiuGauXPQS2jc6NoA4s
 kh/99lIdQtTSKAJ2UeVNbJ51bcuDmLWzkgLbV4ozPIc/ezGv3c2lcv9IO0B24gCu83f0ziKVDTG
 ndUH8jKClqZ3R7IvCGuehQO43ZyOF7gvB6l+OyLKOZQlkQoBIoG+m02QDY48dQQHOQTVWJP2/yR
 pF6BtMvv+qr6gWGOoaQ==
X-Proofpoint-GUID: xkPRPBIB5QBYHx13esgj2lXjcZ1Kphyv
X-Proofpoint-ORIG-GUID: xkPRPBIB5QBYHx13esgj2lXjcZ1Kphyv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-10_02,2026-09-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 lowpriorityscore=0 impostorscore=0 adultscore=0
 bulkscore=0 phishscore=0 spamscore=0 clxscore=1015 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609100071
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260909_234653_849017_D67D303F 
X-CRM114-Status: GOOD (  10.52  )
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

On Wed, Sep 09, 2026 at 05:18:17PM +0530, Krishna Chaitanya Chundru wrote:
> Add the qcom,nord-pcie compatible string to the Qualcomm PCIe
> controller binding.
> 
> The Nord PCIe controller is compatible with the SA8775P PCIe
> controller implementation and reuses the same binding definition.
> 
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>

Reviewed-by: Shawn Guo <shengchao.guo@oss.qualcomm.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
