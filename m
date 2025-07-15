Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A135C83F21
	for <linux-phy@archiver.kernel.org>; Tue, 15 Jul 2025 12:55:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j2uewTkYWy4qs6Hgur6wPv7w6KWzM0Kq8oOl2WaoLb8=; b=Dp3kChfoqdsWJP
	Pi/xZSBfPq1rkr0uutSghehoqNrxOQQBM7PDwuS0AUaBOpHjFWbUhkg5wn/g/hB2rbgBarAYpLKWO
	R6NBIQV3HmGK0YmmYf+xTzw13J52LCQwtScYFCn1kD+x29eazXH99xoX23eRRHdEZfggG8gPmlJm8
	tAfkMmez9WSHPrzzXad5T96/9lNxlJSGE5Z2MlGukjp01kfHkzi00MnM0BhP7YgtHQG1EheQHV7he
	IUyUD1PmEW7ayIMGeqSSF6958L18cOoGK8DbvVOC278uQ2kyRexfNnd1MvqcN6xWeV/K7SqLvOqZh
	w2j/+QrcVVQ1h45PGrUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubfBW-0000000589h-1DkT;
	Tue, 15 Jul 2025 12:55:02 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubeRB-000000051uS-3iVd
	for linux-phy@lists.infradead.org;
	Tue, 15 Jul 2025 12:07:11 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56F5iBGT028585
	for <linux-phy@lists.infradead.org>; Tue, 15 Jul 2025 12:07:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=whgpErroktFXqC6PFq2WcPTx
	Y5NFQM6yRWXrcNe/B5E=; b=oQoi5OSEalOMhOlaVsCQwivDCxIQJkwdw2Gjk36d
	KOoK/PSWH19kWIRgR6wfPCM2d0JymbeYro1VX9x92LvyDpRE3DF1SmtAmAceD+Oi
	zu2OG52GP8B7uh7a7ZCc/ZSEfQPSO18KyCErrQsMv1y/LlXTzYrBp3oFbKt9bclj
	3sdLK0ezqdYtrn1iKYc5rjpr4JzHTvfWeO/5QLqKEJdOKScjpyheIyNgkzOf6sON
	Uuoc4w8OYOGRkDBTcmmTFjb9LXp2TPxZY0wPwtkN4U5VuS2dKdgBjYbhTOuBUaHc
	mn+ycF5PDfrV9hDh5sdBx6QVpeOzJdMVKLJvsMIMSlJVyw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47w5dq2xte-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 15 Jul 2025 12:07:08 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7e2c8137662so359582385a.2
        for <linux-phy@lists.infradead.org>; Tue, 15 Jul 2025 05:07:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752581159; x=1753185959;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=whgpErroktFXqC6PFq2WcPTxY5NFQM6yRWXrcNe/B5E=;
        b=hyT4zHPGEHv2JRgfabwLmIV8sFvptGWBpAwVvhSKT6QDMPisxHW/gJQ0q8ep1ShVAH
         RSjtJK+rCkz3xjRzWpqIU+7n/Yx2yCj2K/kNg2HqQbzqVUyDmrlwOhmpC/BGkyUqEI7T
         fZOdfVfeRPJeCv0/yidSYETnPcLTeKUB9rTTzvSmxx6FgLok9mA02zyljsFdO5mxwc41
         kotvvSxYsuCIitAjoDWgbgLTG8EVRIMqOkETXlLLhEa4OpBp5e465tfCi0ND7uKdYjn9
         UINJx45XQ8Cr/KqTTqaAfrzJ70jayWZJ7z+2dQVPQ+E3GqVs7vzTycDcCbrwcfuOp+H6
         KIVw==
X-Forwarded-Encrypted: i=1; AJvYcCVTIvB0al70eXHHz79mhmJNW0/e55hde//rHj1G6hnNKp5TqricOuOrq7g+lqlpEQaa+lu0karYjQU=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy+5kE0wokpSMSENgX8Fwu2Nhxovu/N5qHUuA9xeFAncjOjuXgd
	RUs8fwWrdcQwHoAL/KoK53ABYumJA2uI1m9+sfPYNnAv8UkjUcMZxdXdY5t8vcxpf44p9erVECo
	XmvlPFrMdn9mnNBD/8x6ecse0B7rfBv1jr4jznatX4Rpb8GbLxH9Qq0VDIuRygY9YErxJ
X-Gm-Gg: ASbGnctH5s2rOw6c6WnLkoYayoPQsuVDlo2hPnih7hGSmaeTpkg8rtdyLs5/7+OTFC2
	fNm8o6oMchVwKlnayURd7f7WCc/B1ADBgXIBjQdIoSB2AmKkQzBh5nmGjr+472DfmE9FVOuRYYp
	XDDPLYWaqFkL0iQw8ss5cH4rOV0w50FM+LtL2hj/iGx5/raAbZKa5xBAaJ+BD7XVjptD/qVCLr5
	yJFICgyM6/PwQTH/0ZCMPfXJDHRHlW/b2db/U3lda6RQ3Ir/e4lBR5CHq6JVMmPuK1AUWnGcwpr
	KBGk1tT1zV2uFfsmjkeoTXTflsWBi2csih1cmOo62wtNabBA66nwlBHhVQFRIAcoiVM/x2e7+0e
	38ZJcJvHADbqO+fWdL/6eLYZ6zbCAuEBPOZCGAZdc6NcwhyTcIBh/
X-Received: by 2002:a05:620a:2617:b0:7db:52b9:2060 with SMTP id af79cd13be357-7de06bbb9acmr3084724985a.36.1752581158930;
        Tue, 15 Jul 2025 05:05:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHIm9VPHvsWFqJ0lg2fwfKKO9Xor4P4bNsy7V94yiewt2Z36zolTE2cwObNp3IrftJTJDg+rw==
X-Received: by 2002:a05:620a:2617:b0:7db:52b9:2060 with SMTP id af79cd13be357-7de06bbb9acmr3084715885a.36.1752581158361;
        Tue, 15 Jul 2025 05:05:58 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32fab8e4b7asm18929411fa.75.2025.07.15.05.05.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Jul 2025 05:05:57 -0700 (PDT)
Date: Tue, 15 Jul 2025 15:05:55 +0300
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
Subject: Re: [PATCH 3/5] phy: rockchip: phy-rockchip-typec: Add support for
 Type-C TCPM
Message-ID: <eqb5m22om6bx2ypjtnlwdjmgfyycpmgrlvro34xwlwjj4j2jeq@mrarg36wetp6>
References: <20250715112456.101-1-kernel@airkyi.com>
 <20250715112456.101-4-kernel@airkyi.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250715112456.101-4-kernel@airkyi.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE1MDExMSBTYWx0ZWRfX+083xlOjAptI
 UTV9139w5jc2/NEwYLSfUIJiGMFxKTtKavJlphAQIE1VCzb8Hv1x/9R2BCozgG3Uglp4x+7A26V
 0QVHEgSoYuf/XP/EyzLPl0UyakAGl7awSOiYOb2KpSR3fQzjoVWKAVBpNvbhMtLgKsUAwmJ+FIr
 6ITsaRr0pG/PE/FWbYRfxngOlt/LuOVLD/wNupC32hvheAb8MgUdB3xNsUEZaucmSwKD5rlx/c1
 AdDTTKYlhvggSeOlMyfmRPXNuOX8IBz889AQfvTvGfIi30QFnuC/lL7ng7rXV5sqsHS5AVZewWi
 /CaRfB9K7xT8moTYxcCWTJCNdLcxWoo3fPIlHfO/0YBNYxfQYGyPCk93CdqhLwTekZgK0oBDCUQ
 oVZQEXR20alp0yq8ppCftiG++nUaT2Xm5hbW6J0O5vpHLpi+7BwpY12yONdG/nwKeTDN0SyF
X-Proofpoint-ORIG-GUID: PgPx9KJp8VjWDTnmUU5rIxwb-OfdU_WJ
X-Proofpoint-GUID: PgPx9KJp8VjWDTnmUU5rIxwb-OfdU_WJ
X-Authority-Analysis: v=2.4 cv=MpZS63ae c=1 sm=1 tr=0 ts=6876446c cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=s8YR1HE3AAAA:8 a=8-VJQ8zMMZwrctniyC0A:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-15_03,2025-07-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 priorityscore=1501 malwarescore=0 spamscore=0
 impostorscore=0 mlxscore=0 clxscore=1015 adultscore=0 bulkscore=0
 lowpriorityscore=0 mlxlogscore=803 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507150111
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250715_050709_934669_630E5F0E 
X-CRM114-Status: GOOD (  16.42  )
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

On Tue, Jul 15, 2025 at 07:24:54PM +0800, Chaoyi Chen wrote:
> From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> 
> This patch add support for Type-C Port Controller Manager.
> The extcon device should still be supported.
> 
> Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> ---
>  drivers/phy/rockchip/phy-rockchip-typec.c | 335 ++++++++++++++++++++--
>  1 file changed, 319 insertions(+), 16 deletions(-)

Please keep TCPM implementation under drivers/usb/typec/tcpm/ . Create
an aux device and write an aux driver for the TCPM part.

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
