Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37CEDD3C526
	for <linux-phy@archiver.kernel.org>; Wed, 10 Dec 2025 04:05:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z1O8w7daaP9W27U0KWy/wHfgKLmahQ0G/gVvnfhbaCw=; b=jEOyfwGP8n+hqT
	DpPVblYUUggkglyXtQy5Pb8vr4VUIU62oFrYt7xYlvjQ9QY6+YIO4AzHH6xIqIOgWRAvI1BoGu2sR
	Q2lJyfuFJTqQKE6dOguxPM/dP/Th62WdapykrYnPsruDYcQ5aa871VxhyJ5KPetdNmF9Sn4asSy96
	fi/pYnioPG88sXr6v+HTDTxOY0HlxSs99NS/6viXq5QAIHM4Cwino8UJo6MUFsT9AgRT7q2f+k38z
	4qEym42EIHA17syVLS+26Bb89LsDQG8mVei5TnoJ/v9mQZ1G+2ap6/+mkhc+zbdFgqUEE3sbUSnyh
	6A2xkPTQO/SO5bI26+Pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTBS2-0000000F594-3FNH;
	Wed, 10 Dec 2025 04:05:18 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTBRz-0000000F58X-3tAD
	for linux-phy@lists.infradead.org;
	Wed, 10 Dec 2025 04:05:17 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BA3MKvG1987679
	for <linux-phy@lists.infradead.org>; Wed, 10 Dec 2025 04:05:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=jMXe+9WvRnEW6OAXDTrVPKJc
	7LR+z18srNy4uA6ZXFc=; b=j4ITfTdx88KNCAGeFhQ4Wg7lKpFJr22RaUG9jGvB
	sN8wsJqyf5Wf8vrD8dm8dztlCnbx4zeRL9CUPeyqaoTrG26KM3GIClDuS1pHKd8n
	YIATBpDq8ajf7O/v+Wt7Hkw/zJ+ZinkAegp6PjGRUOx/wKwDQPnDu0vykOG2cp6U
	vFnZUtvGbvoM2/d+CS+t5ZxqaD3vU+zot9xNcCLbkh0RS27lXa+gddBS0AlQ5Bh0
	JBMfH19M2Q9bjObabB9q1+pXzbmMuKubC/+9+wX73rJlasKoqojsFJASNaXd919Z
	DY6J4A2SIwYkuAEuQpBtYJvpTg9yA8WSWvPWAIMTsswN3A==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4axvn4h2h9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 10 Dec 2025 04:05:13 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4edb6a94873so110792281cf.0
        for <linux-phy@lists.infradead.org>; Tue, 09 Dec 2025 20:05:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765339513; x=1765944313; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=jMXe+9WvRnEW6OAXDTrVPKJc7LR+z18srNy4uA6ZXFc=;
        b=D2GXXlFsYe6kTchbAk2ed1vg0+cXHqYazTxT9B4zcga/nITpI/JWaFZ6eJRf6IFlvg
         V106tWdlV9aUakRf/LtXO5Ej1pCKJjAvFU35N93f4qakO5o54KzNQq3YDnpxUIui61k3
         h5vL+6d2ch7WX7t3nqHKOIjfhyAKTWKIz9Y5xFf2EY1EV2fZMEDgcxR2sYpJRkJ4gLn6
         x3gkbupJ2E2bHAtawnlPoIPuC0+mtnhwke1SafsNRXOk7JOOFSOuBdTzGW1KZA3BdtUh
         j9TwEHZVBo6t0AUhoxOA7kJU6zvQovoxIv8fKqGXuZz0/M5ijGMH2iDp+uUDG7HTrOmS
         st3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765339513; x=1765944313;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jMXe+9WvRnEW6OAXDTrVPKJc7LR+z18srNy4uA6ZXFc=;
        b=oHPafeFwl2W+PCNpu1yz7ZQIbEtNaIsOwBN5VBmkNDrbUAtACrWacL04F8Ei8cFU67
         WbJkaZbxGz/ueVZQQfBdSiZK1i5AgrM3CiJZogakBqoN4OxDC2c1HIHxAhez7UxGUQCq
         1xdGkg70Tw4x/Ht0ayrNOSkLEvN6xhfiu8T//zZPlFvKdIUZf/vRuNcVwAmyMQ/oV8y4
         UAZTSp8t7favGFP710gg+vGoqCYe++ZTgX1HAgwC4E9CZAvwe3DTvtspa02piN9wIgQe
         GKUzYlkRn9ZswuS5/7MY9XNJaFIDRUwi0KGP+luHCLtEbol8X3wWd+qyZX+cX+VYX9bg
         JUqQ==
X-Forwarded-Encrypted: i=1; AJvYcCVTRO+nFHA9PMTmjHwFTpun1wdB0AkbP1mEhqqWwCykDBnc+9hDscLdcuWQbahKBwwcwAkjYWcuL0Q=@lists.infradead.org
X-Gm-Message-State: AOJu0YyUpsrqP9rcndS6pCP64de97prIZhPEPHs42RZjcJ1Qx+xQvsmv
	rDbhoQEmt+E+GF17A7IKsI3MJ6XFcqu1o6NRkEuc0PNRP/91AMGF+gI15PybCPYmWsv40gGb4+8
	zlhW7avxauFvE6V0kBnSVPp9H1odjg3AabKFkkMC4EXKoY8zdP4AGzslNBkJ/Ioaxt1TC
X-Gm-Gg: ASbGnctx7zSal38/Q/QKkuuw5Akl+SS1jEVeDxIcURqkPkYFZ+E4i8jh472az+RQqgl
	RsBYpO5L5mzcN9VyChQbd7Bl/K+4SjbXWLKZ9kELpV8tXwh3ofdZAJSm3PtjIkCzxB7MDmuz1HP
	a9tU3ZjGCXgD6APl/N2YlTlAe/yIGwNAo+y1V+jBktOpUPgs8hU9vFa2aGxnbP4TwHaBYH2ZgJJ
	U4NEs+elSSA1z91FmRRRqg7TW/6BrAjLSKWdW4oi19inTRGfBAl/1ckNqIJMMzbbeUBgapBkF9m
	DxMeaSrcADESf0fCFgyoMxcF9r4hHvS4sJo4lAQr7ZLFrFbDyRcvr5In0yFCe889uR82lH1BEcm
	XPHZ2W3cEyfgri+cjmbTZMs8ze0vmu4R+K7wmThIvVgQnbcg25b2eh+ZARI7ayNQyn4odB3pcLG
	bOyKN2qBDm6nPgDXMSPrMxrfU=
X-Received: by 2002:ac8:6903:0:b0:4ed:b448:b19f with SMTP id d75a77b69052e-4f1b1a99b2bmr15628851cf.51.1765339513014;
        Tue, 09 Dec 2025 20:05:13 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGURYeDIes9ouTLCB4hZposKZkETPB32W9fRqpclujgON8/agDaN9BintIrj5+IQ0zaMkUomw==
X-Received: by 2002:ac8:6903:0:b0:4ed:b448:b19f with SMTP id d75a77b69052e-4f1b1a99b2bmr15628571cf.51.1765339512620;
        Tue, 09 Dec 2025 20:05:12 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-598ea05b34csm1365961e87.101.2025.12.09.20.05.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Dec 2025 20:05:11 -0800 (PST)
Date: Wed, 10 Dec 2025 06:05:10 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Cc: krzk+dt@kernel.org, abel.vesa@linaro.org, conor+dt@kernel.org,
        vkoul@kernel.org, robh@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v8 8/9] phy: qualcomm: qmp-combo: Update QMP PHY with
 Glymur settings
Message-ID: <f4xxep32unq23mqmtdruj3lxp6t2qdemyilk73cjogj7tz2hmp@ypqdwda73oiq>
References: <20251209-linux-next-12825-v8-0-42133596bda0@oss.qualcomm.com>
 <20251209-linux-next-12825-v8-8-42133596bda0@oss.qualcomm.com>
 <4f3og44prqjjxsiy5lwnxam3ikqylvmk3m2ofsxoa5byczhs56@3uvxjtobddxf>
 <586da917-6ea6-4b99-8222-7c49a5452451@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <586da917-6ea6-4b99-8222-7c49a5452451@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjEwMDAzMiBTYWx0ZWRfX8VQM3IbGa/LV
 R5yQVLgTJWxzXSZtzaKICk70Yy7ZEpxKxK1S1RadDxQG+St495vS0AnauKwYtcLOh3Cc7x+ujSJ
 hJ6fcH1f+/MsVEbkfUWdB08GlwrDG2OuUuKErPeL8wZs2De54EOMv6EoKBsj0HmvrX1q2YwkUXq
 NGk3AQ73itmvm7ETavC25mSL+bKKDh32FFEQ+Z0dck4SCObUeVzCzUP0mXemdlCRtCSyHj+RE5n
 MVvkraepqPvJYOi+RhWbVO2UqihVnJv69HGrMaaL8rK+wajkambAXNM9DPom725fPL/SqImjcn9
 doKxpU/BubKCAd9JV6LcAV+0XS5Gh+InNebY0LC/LNKyPDPAdb4fxAX50sZ1Sp85Lje9ZNPLRWg
 PvHE59LWEyjkPsS1Y2Pp9LgkTbMKAA==
X-Proofpoint-GUID: _YZYAmEiGInJPoItDikNyIsSkcCAUqGK
X-Authority-Analysis: v=2.4 cv=EarFgfmC c=1 sm=1 tr=0 ts=6938f179 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=PBfNxXwbQfs_KfBYZo8A:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-ORIG-GUID: _YZYAmEiGInJPoItDikNyIsSkcCAUqGK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-09_05,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 suspectscore=0 phishscore=0 bulkscore=0 impostorscore=0
 adultscore=0 malwarescore=0 clxscore=1015 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512100032
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251209_200516_091002_86F6ADE7 
X-CRM114-Status: GOOD (  24.54  )
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

On Tue, Dec 09, 2025 at 03:44:23PM -0800, Wesley Cheng wrote:
> 
> 
> On 12/9/2025 3:19 PM, Dmitry Baryshkov wrote:
> > On Tue, Dec 09, 2025 at 03:09:44PM -0800, Wesley Cheng wrote:
> > > For SuperSpeed USB to work properly, there is a set of HW settings that
> > > need to be programmed into the USB blocks within the QMP PHY.  Ensure that
> > > these settings follow the latest settings mentioned in the HW programming
> > > guide.  The QMP USB PHY on Glymur is a USB43 based PHY that will have some
> > > new ways to define certain registers, such as the replacement of TXA/RXA
> > > and TXB/RXB register sets.  This was replaced with the LALB register set.
> > > 
> > > There are also some PHY init updates to modify the PCS MISC register space.
> > > Without these, the QMP PHY PLL locking fails.
> > > 
> > > Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> > > ---
> > >   drivers/phy/qualcomm/phy-qcom-qmp-combo.c          | 285 +++++++++
> > >   drivers/phy/qualcomm/phy-qcom-qmp-pcs-aon-v8.h     |  17 +
> > >   drivers/phy/qualcomm/phy-qcom-qmp-pcs-misc-v8.h    |  12 +
> > >   .../phy/qualcomm/phy-qcom-qmp-qserdes-lalb-v8.h    | 639 +++++++++++++++++++++
> > >   drivers/phy/qualcomm/phy-qcom-qmp-usb43-pcs-v8.h   |  33 ++
> > >   .../qualcomm/phy-qcom-qmp-usb43-qserdes-com-v8.h   | 224 ++++++++
> > >   drivers/phy/qualcomm/phy-qcom-qmp.h                |   2 +
> > >   7 files changed, 1212 insertions(+)
> > > 
> > 
> > Does this work without DP tables?
> > 
> 
> Hi Dmitry,
> 
> Yes, it works without DP settings.  I verified it on v7 before sending it
> upstream, which did not include the DP tables.  On this series, I verified
> that the QMP DP block is initialized properly on top of the existing support
> for USB3.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>



-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
