Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9F71CA0FFB
	for <linux-phy@archiver.kernel.org>; Wed, 27 Aug 2025 19:15:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tz+PLKdNaDaY3dFwMNV22sBouJGlBzeQxVHr6GbsOcM=; b=uAzxEEXTKG9Hzp
	eoHZbkQTmEWc009KDxSRIYXmLDvcost7wvBFn0Rgak1NGaG+64Vr7L9JCUveSe32Qr4uCCsOyGTKx
	/fWBzAZ0UCkoBUe7nJMz1z9vzFnTr4pcs0VVcND2EWGc4fopsR7GFjUjYxNlptV7TWlEllkGiUkJJ
	YEV/Lw2hhbnTY32prjGK7V8/R02c4nsGJOy6CKG8iFXttm7x6Np84daq6qAjR/WdfuB9U0DtVmC+i
	03Bjm8JUVhV4syrBHMVtcEhB0+olsPRloGUqnHPYNszPkYCBXX/JBEvRdL6iiThQ3oCvIHJWtKpwq
	V8etYAOmiUc3HWjAJDjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urLbv-0000000GZFO-1pgw;
	Wed, 27 Aug 2025 19:15:07 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urIl0-0000000G9I8-2XCW
	for linux-phy@lists.infradead.org;
	Wed, 27 Aug 2025 16:12:19 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57REuAY9000418
	for <linux-phy@lists.infradead.org>; Wed, 27 Aug 2025 16:12:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	UG7xbcS5Tii6txkMjvrtxmVb1b0CdEdYm68Ud4Hqmfw=; b=S2tooOSHVLC5jxH+
	5USDj1+Mi/aN5PSszo1VkCxJsEZp/x2NNSseIlr8mFtMLZt2Z9bTIhx43UIJwMI8
	XuSGehcUGTpAOnkZNGFpS7iyGXS8sDO0lS/DWDLX0Tn0fCOhNEzdbeFX/lvP0vh6
	aRnaZg1Rrbby+gHpjcSypvx1yjLPXcrNCOOGhalKV+MKRAsoSICM4WC9Ka5aiWZS
	ElUMcr2afmOO+pnp4wlqhwDeVQrUke27BL9fjUqiWiPlNML/Oda7a91QpfD1twCt
	Atn0miSKh6FSqzz832FzCbmbnd1CyqRCosKWTC4SYhjU98z8E7SSeezbCp/lvdub
	ZGo2Yg==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48t47b88bn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 27 Aug 2025 16:12:17 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-70d7c7e972eso1664526d6.3
        for <linux-phy@lists.infradead.org>; Wed, 27 Aug 2025 09:12:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756311137; x=1756915937;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UG7xbcS5Tii6txkMjvrtxmVb1b0CdEdYm68Ud4Hqmfw=;
        b=Nloc2GE0oo/1T6FBVg7g+tl4db2FQnYhcn+wOYRstjAgfn3ikF79jBMRIjUWcN/m2m
         acq5qLOjhiki4Q5f1Te8wYeq40LgUTVx5EAO/r55jhudeUMKhsM/7IYUNFzLn93nK9aK
         VulEoR1LkfgaKiltAmor52k9kTK4+7ymbvTE5hn+RuQsjW5NjvIw1GIrAOhMItZgnzpE
         fzESsNygEhhwiUOwC6oqDO6EtNE+RgHWt8rkxETDnebV790BDeBwDTE7Ygzbpo71Gh+1
         O9/xgBtZtB3eIntt7J44SXAv+J4IZGOiKJe+BOQQ+7UfUuNYg5OsD39vzIdelna+TjxK
         HLCA==
X-Forwarded-Encrypted: i=1; AJvYcCUeI9uJv2QAQb5W0XG0NtTv0lv8CeslE4zLfrbgNwJsbV7Oamn0DPtuioWTjwXY4KKVKTqPfZ/xyxc=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywxd9k9JJb6HvSGK84a96shE/D6Mc6hMSvC13SezEkADCGpCqp1
	EvDM/7H8boXXr/6D/IvSfWx1o2Ju40RWCebMYw7lJ3izbsu0h8xwQSpb7PsDnyBowgfrACZJBTJ
	bh9eLHom36PM/FBI4FwWiGW0V12KUxBJLPmIlBO3rzrYhCaxDS5jrZLgbJuh8WcAtknF0
X-Gm-Gg: ASbGncv2vKLeUNQpsuBL+KzHqIEhtHjJel1o0Dho97Lt/EydrQrbFiDumQAOtZmb8+v
	gvLKvwFu/CEFhXU9uFLrXm9kqK2NZXtGRQhlpG7t1EyxKhfaHqY13nS647dZkKqXPKTetevrgVB
	nsMfho6oV42p9SfPuO56+fZYLw4zowzh3ZWaO28yhWdVfkMs162d+YgONXakZGFtxeAVoP2MnVT
	/Ij9sDHMhb2ilJli4xALbrZ4Srrri8tm7OX9Dm1WmCNKvWRgxKj6W677ki4mU9tCf8H6lVamADj
	bXrH94+OH4eFdnD7LTVFqIq0TMTeFZH2JnnVRYMNMAfkNyFB85Byo3b9O4vdvpBmsOz0Ff9mQLf
	Azsl+4UMp2mT882nSjxB3HS30EbCOi/O7knPmKl9lt1f08bO3qSS+
X-Received: by 2002:a05:6214:20e6:b0:70b:acef:3c85 with SMTP id 6a1803df08f44-70d970976d8mr247393316d6.4.1756311136363;
        Wed, 27 Aug 2025 09:12:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGtHCsOyM9I3rbi3EujqFjTjTxiDfCaPiXddil+SIYuI0DqIfUpa9RqPP6k9YnaNKG73ul6bw==
X-Received: by 2002:a05:6214:20e6:b0:70b:acef:3c85 with SMTP id 6a1803df08f44-70d970976d8mr247392546d6.4.1756311135723;
        Wed, 27 Aug 2025 09:12:15 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55f35ca7437sm2866204e87.146.2025.08.27.09.12.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Aug 2025 09:12:14 -0700 (PDT)
Date: Wed, 27 Aug 2025 19:12:11 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, fange.zhang@oss.qualcomm.com,
        yongxing.mou@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, quic_lliu6@quicinc.com
Subject: Re: [PATCH v3 09/14] phy: qcom: qmp-usbc: Add DP PHY ops for USB/DP
 switchable Type-C PHYs
Message-ID: <hy66bjkygfz2qdhatdyxpw2cktaeohguwdg3ydowubarqebfzr@2rjjxghmhdya>
References: <20250820-add-displayport-support-for-qcs615-platform-v3-0-a43bd25ec39c@oss.qualcomm.com>
 <20250820-add-displayport-support-for-qcs615-platform-v3-9-a43bd25ec39c@oss.qualcomm.com>
 <3pr7ninjxr4pgsz56dr6ojjmx27fzzszmtt6mx4r6qaqt25tnc@nrgx5qiqc7z4>
 <9bf7f51b-dcfb-4ff8-848e-dcf144936f2e@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9bf7f51b-dcfb-4ff8-848e-dcf144936f2e@oss.qualcomm.com>
X-Proofpoint-GUID: pFhr2HFag8YiwkqWX9aVpNMx0nwap495
X-Authority-Analysis: v=2.4 cv=CYoI5Krl c=1 sm=1 tr=0 ts=68af2e62 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=D5wNQ9JKZfep0icmKmAA:9 a=3ZKOabzyN94A:10
 a=wPNLvfGTeEIA:10 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-ORIG-GUID: pFhr2HFag8YiwkqWX9aVpNMx0nwap495
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODI3MDEyOCBTYWx0ZWRfX9ixrgyvWZLbr
 8Eik1Ssmqzowg/RgVF6VsME0st/PA6g0hFhmPmjZBAUvfE1zZNaTAAu3rxXYzSVfOF+YQkpTut7
 uS2Do7f5KTZxFvy0Ikg5uo9p8tvfyDvZUb8Ro5U2C3Ho1xMda/pImHkhif3+c/7pyvChnmQW/ru
 ziC8wmviNDynEnJ/P+XH9ArLhPCYsVYbyTQk/8tNVQleBeMtKS7HtaEx87i2gLwL8v7kAXMay7h
 xt1yA/bcPJAGjSjfQOiP6kbtr6cjC1OXIHgk43V8h0dxCdNhdsTbvADeSLli/XXVKPwZYaj1di3
 KI7DIiDujy/GRKDBUktamKGtod5z7/KzA02tPY+tz9OOWJ5Fx61SeNBAe/GDj8BFFO+85jtls0Q
 TEob5Z4z
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-27_04,2025-08-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 adultscore=0 clxscore=1015 phishscore=0
 priorityscore=1501 impostorscore=0 suspectscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508270128
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250827_091218_648011_B0F0DD08 
X-CRM114-Status: GOOD (  23.58  )
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

On Wed, Aug 27, 2025 at 08:17:39PM +0800, Xiangxu Yin wrote:
> =

> On 8/20/2025 7:45 PM, Dmitry Baryshkov wrote:
> > On Wed, Aug 20, 2025 at 05:34:51PM +0800, Xiangxu Yin wrote:
> >> Define qmp_usbc_dp_phy_ops struct to support DP mode on USB/DP
> >> switchable PHYs.
> >>
> >> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> >> ---
> >>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 163 ++++++++++++++++++++++=
+++++++++
> >>  1 file changed, 163 insertions(+)
> >>
> >> @@ -1095,6 +1248,16 @@ static const struct phy_ops qmp_usbc_usb_phy_op=
s =3D {
> >>  	.owner		=3D THIS_MODULE,
> >>  };
> >>  =

> >> +static const struct phy_ops qmp_usbc_dp_phy_ops =3D {
> > Please try restructuring your patches so that there are no unused
> > warnings in the middle of the series. You can split the next patch into
> > 'parse' and 'enable' parts, then squash this patch into the 'enable'
> > one.
> =

> =

> You mean it's better to define and register new functions in the same pat=
ch=A0
> =

> where they're first used, to avoid unused warnings?=A0And for things like=
 parse_dt and phy_ops,
> =

> it's fine to split them into separate patches if each part is used right =
away?

Yes.

> =

> =

> >
> >> +	.init		=3D qmp_usbc_dp_enable,
> >> +	.exit		=3D qmp_usbc_dp_disable,
> >> +	.configure	=3D qmp_usbc_dp_configure,
> >> +	.calibrate	=3D qmp_usbc_dp_calibrate,
> >> +	.power_on	=3D qmp_usbc_dp_power_on,
> >> +	.power_off	=3D qmp_usbc_dp_power_off,
> >> +	.owner		=3D THIS_MODULE,
> >> +};
> >> +
> >>  static void qmp_usbc_enable_autonomous_mode(struct qmp_usbc *qmp)
> >>  {
> >>  	const struct qmp_phy_cfg *cfg =3D qmp->cfg;
> >>
> >> -- =

> >> 2.34.1
> >>

-- =

With best wishes
Dmitry

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
