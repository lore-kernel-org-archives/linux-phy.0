Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E46ACCF9E0
	for <linux-phy@archiver.kernel.org>; Tue, 28 Oct 2025 21:10:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gq74SrZKA+W72lv85HLlRhBZgkyCuN3kwqyNtaHumus=; b=OUgdhEKTm5BX/h
	uQz8Jbqx3UV/qKZZHzTMSUFXcuSfll5SWgIDBDjMzHirV76IyrBWOBwiTy4Wks8CC/UO3Mbf5BSlE
	Hk18ZLy+LJzn+vDg5lzTy9jZ0ccHTE/R1HipqTwc4FiQz7qZl91TLAzygr9QRb7jkDZEfyKEvU4XQ
	R5/oxZ5gDz59Zt9j4JKaEFegDT3Lq75J2LY78vTUme+/ypNos7ghd17dRCwre80Xrb2mEYRWYkRNc
	CtDIFBcr5lPqg94S9iszOxKd1j+Xp22R3xRP3TvFI7tpyY2w8P6HgAQH3VNruKnI39kSgWi8qmMmR
	H0UVZbpeaDrMC63eI5DQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDqxj-0000000GfcR-3hnw;
	Tue, 28 Oct 2025 21:10:39 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDqxh-0000000Gfbt-2GJb
	for linux-phy@lists.infradead.org;
	Tue, 28 Oct 2025 21:10:38 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59SJlMNB2539303
	for <linux-phy@lists.infradead.org>; Tue, 28 Oct 2025 21:10:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Mqr6jI8kEn36wwEAP0spn6W0+YbPiO/jF1iak5N/mWc=; b=d1YOl+J8vzWcYr6h
	0ZvgeWSN8INT/4QS9WRMOceyOz5L+QrE9RJ73/vXnHn3DPt7mmhImS8D3uNdSzZU
	iqQw/UgznYLn7Pa0RRYAAjNGZ/52WkyrexkJUkjg4ydw2JEG2YxAbqZBS/N7bSdH
	xv6rcRXXn7HxZNTTZR6IwVxFuk1AhWAEoJq1DmIfzQHmhgijdh0gzGF8S/If5b5d
	3vgHLiemWTUDQjZnh1BpbMuW2VEb7s6giEeBcQknO1ZrJQFuDviU69rSRYKh/gof
	rIIGIjZSRTZWkcQVNgpOKi6Ulm0SpiNfk9BUcn8xFRR/eAZ6/EexyIXBjHOojJH9
	5Pc08g==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a34a1g662-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 28 Oct 2025 21:10:36 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4e8bb155690so85890501cf.0
        for <linux-phy@lists.infradead.org>; Tue, 28 Oct 2025 14:10:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761685836; x=1762290636; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Mqr6jI8kEn36wwEAP0spn6W0+YbPiO/jF1iak5N/mWc=;
        b=VObh/QUz74zNXrr1yHi7C7/1g5/4XOJZrjX6Uqk5N0ZbWPycdaPageMDEjKL/10TE5
         JKSIb1greYZIxCqY7TzX5GH1QdvqH1PUfL5sLjbsMx4xedSjeIuBtxdNF/EymnuUU+nX
         VEgrWinTDiEu3CPKGmd28hIPYD62gayjAQGDcD1WxkvGyXwMIsn6i5i6p7pBqa3oO4ec
         +k2UKbSwZV95HogntcUBW6zmnJL62UlQrfptjG+BJQgsy0rtLewoMShjEUYJ0gGtSIOQ
         NXofjmwQQ3u8GQuKgJoFjRnXQ2pSnItCtQEd4E0EBLQtOqBEz4Dr0R8M4UgTJFyDfVv7
         S/2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761685836; x=1762290636;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Mqr6jI8kEn36wwEAP0spn6W0+YbPiO/jF1iak5N/mWc=;
        b=wnnVGsDFEof+cMValzYVtH5gmCRGhri5meNeMHrr3ShykG7VS4Qm+T2FFMB+QcvhDC
         fLLVnwrHmDF6DE8TItouhLqJO/6878ge01WBRjIHGN9czE9jA4Nbs7m7GIcr2oCNFquF
         1mklR13/iolWtgPgc1qKwBzqcP/wa+Yd5JQWZh1mOAToqyZoeqflKJn43NgOhunxgVKp
         ZrrKVaqZTRiiBxgZNqR0+wQYJnc4GX6w1JTMixrR/V82I1cNz7Gg3GHGtZHB1bKshNwc
         oK+lhwv/SRmVQOVN3+VqMPuVLTNJQNE7cCn/wiTl60VyeE719e9VuCwI2MpGY2Yi1+DD
         ADEQ==
X-Forwarded-Encrypted: i=1; AJvYcCW+ioNgTb1i29xy/dcbmRpQ+nP5y95ZNECQutK5HoLCbrFWznGXcveF1gABFjZpthp0E+pCJmTeUQg=@lists.infradead.org
X-Gm-Message-State: AOJu0YzFtdqLvVJSQs+/qa5mpqqi3QTTPb46r/3tOBJawchBBbNPcRof
	B1I/qg13SAkce+4bihu2PD6qn6c6HoSGR+YhSlunVveIONroFETIKVcpQIXvQZOpodXvy5zN6M/
	zPuuW/b83AOEZTf4wX0v4kEZuNrYIJT3d3CUQmsKtIJKkfy2faQEIbnjDN3cYiWzMFQ7A
X-Gm-Gg: ASbGncuxx4Q/ENeBMInBWBi4a/TUJOj66rHpI+Zy93YE22KQqR536ei/KXSmjKqW7D/
	hgsusMZpbgP5wUjOK/E2tGXirLRjkwb+Q3GfTnrOrQc402fJPNLZ27v4KriSeSfb4TZ8ftqRhoS
	cz2MJ/vGb+Hembb9fjli679uHjJ7R7rNbrjC3liSUyGUsgb67b4tQokNU3ntunGBNIJKvTRGUVE
	Zxialsd0fxmf/HrLXK7YbkQnVa4HJzT8/PDb86mdXfGPHGSNz24Hfi94CjnFl7Snhy0Cn+5hfbw
	tZRUwvC1dZt214U90sW9Mt4ZuneicchzgG528aIraPtPGW7dq1XV+KAUzyjFVyDPPJFGcucLCib
	kGvU3TeH0JpXbEVl9W7csTqsnl+R4x+fAe2DuDvCjgxXUG3QRSdWzPjUoCwrnjgG9oy13MLMOS+
	NLCZTvtGs4Dy2+
X-Received: by 2002:a05:622a:a13:b0:4e5:8352:9db2 with SMTP id d75a77b69052e-4ed15c53a38mr9670951cf.74.1761685835457;
        Tue, 28 Oct 2025 14:10:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF4tjibJm7dG8AJyDHRzmtH6DpuGiCZjw97dxYBt3mz9bXp88WMGifM0FnhLxqp+1uYKy6www==
X-Received: by 2002:a05:622a:a13:b0:4e5:8352:9db2 with SMTP id d75a77b69052e-4ed15c53a38mr9670501cf.74.1761685834897;
        Tue, 28 Oct 2025 14:10:34 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59301f5d9fbsm3281999e87.56.2025.10.28.14.10.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Oct 2025 14:10:33 -0700 (PDT)
Date: Tue, 28 Oct 2025 23:10:31 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Cc: Abel Vesa <abel.vesa@linaro.org>, krzk+dt@kernel.org, conor+dt@kernel.org,
        konrad.dybcio@oss.qualcomm.com, kishon@kernel.org, vkoul@kernel.org,
        gregkh@linuxfoundation.org, robh@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 07/10] phy: qualcomm: qmp-combo: Update QMP PHY with
 Glymur settings
Message-ID: <7pc3m2pzp3hzogg5ygorsmv2dy5vw2xiebppcbx7tzp4jnhuom@epgtkjpniyrs>
References: <20251006222002.2182777-1-wesley.cheng@oss.qualcomm.com>
 <20251006222002.2182777-8-wesley.cheng@oss.qualcomm.com>
 <zaotrz6upmpwv2w65633rlflubmykzn5dqiydl66y7rdalld4l@bo4oto5iynor>
 <9d3dd1cf-4969-3dcb-18dc-59cfb68033f7@oss.qualcomm.com>
 <39732bf6-dd6f-b808-7c10-b3faa4d46489@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <39732bf6-dd6f-b808-7c10-b3faa4d46489@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=Nu/cssdJ c=1 sm=1 tr=0 ts=6901314c cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=_2V7C_1fM0J6bjkbbwIA:9 a=3ZKOabzyN94A:10 a=wPNLvfGTeEIA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-GUID: Cf8NztRISmnjx-CjpFBj9jD48JZ0-jc4
X-Proofpoint-ORIG-GUID: Cf8NztRISmnjx-CjpFBj9jD48JZ0-jc4
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI4MDE3OCBTYWx0ZWRfX/ISyI3RjIgfA
 zFSgmRxJICBxdWpsN+iB9lvRG/WEYvQC8kJYutp8eY3Uw9mwP9twSQrKd3YaoyaOWmyiSoncX7m
 rjccQntGw9P/MzgxshogVmDF0bfGZnq4hrzeRlZypp708qytaQ6VGA/1N3z8ph9MBt/VR2EPsQq
 aARtF2nBXKBd50T4wlgMNejr952xzGWpjcz1CnmgnNoDFvX4NNSw9CbPfwHLKJg2uxTSXgZ1sL+
 qCVDiOxLs8fU7q7vRfiJZzhpoL/3MVQtGUioUi5RRAr4dqkv1r0WkeHrI3jbQYbNjupjIDzwFQc
 YYVEFTJHZyM9sk/mMrux83qu8h37rVJOHbkWgA/Ky/mUSdOANT0tHa5ccd+rC/SQw1bOlEzV9D/
 8MlY8Yk3EQN/6bwlT9aSabr0zkQRsA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-28_08,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 adultscore=0 suspectscore=0 clxscore=1015
 lowpriorityscore=0 phishscore=0 impostorscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510280178
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251028_141037_698500_D21C4686 
X-CRM114-Status: GOOD (  39.60  )
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

On Fri, Oct 24, 2025 at 05:41:18PM -0700, Wesley Cheng wrote:
> =

> =

> On 10/24/2025 5:02 PM, Wesley Cheng wrote:
> > =

> > =

> > On 10/24/2025 3:04 AM, Abel Vesa wrote:
> > > On 25-10-06 15:19:59, Wesley Cheng wrote:
> > > > For SuperSpeed USB to work properly, there is a set of HW settings =
that
> > > > need to be programmed into the USB blocks within the QMP PHY.=A0
> > > > Ensure that
> > > > these settings follow the latest settings mentioned in the HW
> > > > programming
> > > > guide.=A0 The QMP USB PHY on Glymur is a USB43 based PHY that will
> > > > have some
> > > > new ways to define certain registers, such as the replacement of TX=
A/RXA
> > > > and TXB/RXB register sets.=A0 This was replaced with the LALB
> > > > register set.
> > > > =

> > > > There are also some PHY init updates to modify the PCS MISC
> > > > register space.
> > > > Without these, the QMP PHY PLL locking fails.
> > > > =

> > > > Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> > > > Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> > > > ---
> > > > =A0 drivers/phy/qualcomm/phy-qcom-qmp-combo.c=A0=A0=A0=A0 | 314 +++=
+++++-
> > > > =A0 .../phy/qualcomm/phy-qcom-qmp-pcs-aon-v8.h=A0=A0=A0 |=A0 17 +
> > > > =A0 .../phy/qualcomm/phy-qcom-qmp-pcs-misc-v8.h=A0=A0 |=A0 12 +
> > > > =A0 .../qualcomm/phy-qcom-qmp-qserdes-lalb-v8.h=A0=A0 | 639 +++++++=
+++++++++++
> > > > =A0 .../phy/qualcomm/phy-qcom-qmp-usb43-pcs-v8.h=A0 |=A0 33 +
> > > > =A0 .../phy-qcom-qmp-usb43-qserdes-com-v8.h=A0=A0=A0=A0=A0=A0 | 224=
 ++++++
> > > > =A0 drivers/phy/qualcomm/phy-qcom-qmp.h=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 |=A0=A0 2 +
> > > > =A0 7 files changed, 1240 insertions(+), 1 deletion(-)
> > > > =A0 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-aon-v8=
.h
> > > > =A0 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-misc-v=
8.h
> > > > =A0 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-la=
lb-v8.h
> > > > =A0 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-usb43-pcs-=
v8.h
> > > > =A0 create mode 100644
> > > > drivers/phy/qualcomm/phy-qcom-qmp-usb43-qserdes-com-v8.h
> > > > =

> > > > diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> > > > b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> > > > index 1caa1fb6a8c7..8216820e388f 100644
> > > > --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> > > > +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> > > =

> > > [...]
> > > =

> > > > +static const struct qmp_phy_cfg glymur_usb3dpphy_cfg =3D {
> > > > +=A0=A0=A0 .offsets=A0=A0=A0=A0=A0=A0=A0 =3D &qmp_combo_usb43dp_off=
sets_v8,
> > > > +
> > > > +=A0=A0=A0 .serdes_tbl=A0=A0=A0=A0=A0=A0=A0 =3D glymur_usb43dp_serd=
es_tbl,
> > > > +=A0=A0=A0 .serdes_tbl_num=A0=A0=A0=A0=A0=A0=A0 =3D ARRAY_SIZE(glym=
ur_usb43dp_serdes_tbl),
> > > > +=A0=A0=A0 .tx_tbl=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D glymur_usb4=
3dp_lalb_tbl,
> > > > +=A0=A0=A0 .tx_tbl_num=A0=A0=A0=A0=A0=A0=A0 =3D ARRAY_SIZE(glymur_u=
sb43dp_lalb_tbl),
> > > > +=A0=A0=A0 .pcs_tbl=A0=A0=A0=A0=A0=A0=A0 =3D glymur_usb43dp_pcs_tbl,
> > > > +=A0=A0=A0 .pcs_tbl_num=A0=A0=A0=A0=A0=A0=A0 =3D ARRAY_SIZE(glymur_=
usb43dp_pcs_tbl),
> > > > +=A0=A0=A0 .pcs_usb_tbl=A0=A0=A0=A0=A0=A0=A0 =3D glymur_usb43dp_pcs=
_usb_tbl,
> > > > +=A0=A0=A0 .pcs_usb_tbl_num=A0=A0=A0 =3D ARRAY_SIZE(glymur_usb43dp_=
pcs_usb_tbl),
> > > > +=A0=A0=A0 .pcs_misc_tbl=A0=A0=A0=A0=A0=A0=A0 =3D glymur_usb43dp_pc=
s_misc_tbl,
> > > > +=A0=A0=A0 .pcs_misc_tbl_num=A0=A0=A0 =3D ARRAY_SIZE(glymur_usb43dp=
_pcs_misc_tbl),
> > > > +
> > > > +=A0=A0=A0 .dp_serdes_tbl=A0=A0=A0=A0=A0=A0=A0 =3D qmp_v6_n4_dp_ser=
des_tbl,
> > > > +=A0=A0=A0 .dp_serdes_tbl_num=A0=A0=A0 =3D ARRAY_SIZE(qmp_v6_n4_dp_=
serdes_tbl),
> > > > +=A0=A0=A0 .dp_tx_tbl=A0=A0=A0=A0=A0=A0=A0 =3D qmp_v6_n4_dp_tx_tbl,
> > > > +=A0=A0=A0 .dp_tx_tbl_num=A0=A0=A0=A0=A0=A0=A0 =3D ARRAY_SIZE(qmp_v=
6_n4_dp_tx_tbl),
> > > > +
> > > > +=A0=A0=A0 .serdes_tbl_rbr=A0=A0=A0=A0=A0=A0=A0 =3D qmp_v6_n4_dp_se=
rdes_tbl_rbr,
> > > > +=A0=A0=A0 .serdes_tbl_rbr_num=A0=A0=A0 =3D ARRAY_SIZE(qmp_v6_n4_dp=
_serdes_tbl_rbr),
> > > > +=A0=A0=A0 .serdes_tbl_hbr=A0=A0=A0=A0=A0=A0=A0 =3D qmp_v6_n4_dp_se=
rdes_tbl_hbr,
> > > > +=A0=A0=A0 .serdes_tbl_hbr_num=A0=A0=A0 =3D ARRAY_SIZE(qmp_v6_n4_dp=
_serdes_tbl_hbr),
> > > > +=A0=A0=A0 .serdes_tbl_hbr2=A0=A0=A0 =3D qmp_v6_n4_dp_serdes_tbl_hb=
r2,
> > > > +=A0=A0=A0 .serdes_tbl_hbr2_num=A0=A0=A0 =3D ARRAY_SIZE(qmp_v6_n4_d=
p_serdes_tbl_hbr2),
> > > > +=A0=A0=A0 .serdes_tbl_hbr3=A0=A0=A0 =3D qmp_v6_n4_dp_serdes_tbl_hb=
r3,
> > > > +=A0=A0=A0 .serdes_tbl_hbr3_num=A0=A0=A0 =3D ARRAY_SIZE(qmp_v6_n4_d=
p_serdes_tbl_hbr3),
> > > > +
> > > > +=A0=A0=A0 .swing_hbr_rbr=A0=A0=A0=A0=A0=A0=A0 =3D &qmp_dp_v6_volta=
ge_swing_hbr_rbr,
> > > > +=A0=A0=A0 .pre_emphasis_hbr_rbr=A0=A0=A0 =3D &qmp_dp_v6_pre_emphas=
is_hbr_rbr,
> > > > +=A0=A0=A0 .swing_hbr3_hbr2=A0=A0=A0 =3D &qmp_dp_v5_voltage_swing_h=
br3_hbr2,
> > > > +=A0=A0=A0 .pre_emphasis_hbr3_hbr2=A0=A0=A0 =3D &qmp_dp_v5_pre_emph=
asis_hbr3_hbr2,
> > > > +
> > > > +=A0=A0=A0 .dp_aux_init=A0=A0=A0=A0=A0=A0=A0 =3D qmp_v4_dp_aux_init,
> > > > +=A0=A0=A0 .configure_dp_tx=A0=A0=A0 =3D qmp_v4_configure_dp_tx,
> > > > +=A0=A0=A0 .configure_dp_phy=A0=A0=A0 =3D qmp_v4_configure_dp_phy,
> > > > +=A0=A0=A0 .calibrate_dp_phy=A0=A0=A0 =3D qmp_v4_calibrate_dp_phy,
> > > =

> > > So I see you are adding the DP related config here as well, but it is
> > > definitely not compatible with v6 N4. I'm assyuming you picked v6 N4
> > > as a default
> > > just to allow the USB part work for now, right ?
> > > =

> > > I don't suppose we can drop the DP related config from this patch and
> > > still have the USB part working, right?
> > > =

> > > Otherwise, we need to mention the fact that even though the DP part
> > > is also being added, it is broken.
> > =

> > Hi Abel,
> > =

> > That is correct.=A0 Without these defined, the USB path won't work, and
> > we'll need to supplement this if we wanted to add DP support.=A0 Hence,
> > why I didn't add any mention of DP altmode in the commit text.=A0 I can
> > clarify that we added DP placeholders if that makes it more clear in the
> > commit text.
> > =

> =

> Hi Abel,
> =

> I take that back...I went back and reviewed the QMP combo driver again, a=
nd
> gave it a try w/o any of the DP init tables.  SS USB is working fine.  I
> will update the patch to remove the DP entries.  Thanks for catching this.

Please provide a proper programming for DP part instead. I don't see a
reason to provide only partial support for the device.

-- =

With best wishes
Dmitry

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
