Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F42FCA1016
	for <linux-phy@archiver.kernel.org>; Mon,  8 Sep 2025 17:08:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9Drpa/zfuUIJhcuZpHJuxidMDElRtd9kFWincQTCVXw=; b=ZqyM9v0BMRoVHM
	WPSHYeIr6E3q1yDs6PFJPNP4LBLqrB1ZMZZCeKh0yKNhQk/HO1UTN/J3dNf0NqfRDmCN2yfKIqchd
	+24Lz4qWLMdR2+pTc/+z7q6+eRv2xtOFSLU8ULalfQ0HKddQGtsNRrYYflEpoq7P+4xUjeQXXZEBM
	caBkAH+H8pga44/6pgQRJpKVOCPrueJAV6VUJIJRDtF4hVhlylMM5DjNv/x3sojyRLdwiTJoTHY2a
	RXaanihDSEMdMyUrpvKQMUUPYfqs2nVJ4q/ALeXgk0VXSAJ4r4pqW1Csua06DQEppNUg6jebFj86h
	zg44U1jhUiL9GlXh1UtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvfM5-000000011Oq-3hls;
	Mon, 08 Sep 2025 17:08:37 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvbI3-0000000H7xc-1Wgw
	for linux-phy@lists.infradead.org;
	Mon, 08 Sep 2025 12:48:12 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5889bTdN012376
	for <linux-phy@lists.infradead.org>; Mon, 8 Sep 2025 12:48:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	kGOV2gIZ8/LZzeSdtfajpCAt/ShEWupLlnbeU/zE74Q=; b=nILe2uh629sd5hrh
	pJzmI2VhURz2gYm3SUJNLN4v/eoBUpsWxGui22awgo/dUeJb4syD9DE8ffPE1BMG
	/gyAfaZKgSfrUYJVDznyjROnpkhmcfi9Vb7kbmnx+y7vZBzEOQZxMMepPXJmIK4s
	/1+SxV2SEfYJPjR4YYq+mobf+dUFV9ITb0cLerN+9UP1tU1sENqE+kOiGkNg4sE5
	592CNMjM8hQsKMBGMiBVAbUnxIV+UQm0kvg5MIG33wvMmdKgn29LvOVzJkjm9Lza
	/9YEkIDHiLkHt3RcyB8nKxE8HA4WR9J3L1ZYssq4pm2m1n6GbObqB3CpuoOJ2IeP
	Ig8+4w==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490cj0mk4w-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 08 Sep 2025 12:48:10 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-729751964dcso86890716d6.3
        for <linux-phy@lists.infradead.org>; Mon, 08 Sep 2025 05:48:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757335689; x=1757940489;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kGOV2gIZ8/LZzeSdtfajpCAt/ShEWupLlnbeU/zE74Q=;
        b=IngIpGGJjJGynH7B5AkJv8FhuSQR9um6Z+EgM5nkmCmKnQCw8YisQilHErazG8FZHV
         zVu2cuGhVIy+krO8rDpvNlLFGa8dW3gXU2QtDEexAGCDNP6CK8XUWO9izHVWTmWz7rBs
         8X/InT1gnVqrLpfxevxMIPM7Uznv7sFSMCu9nGAj32ex4XiZ5OtjqwfYFdNPzP+JsMKI
         DqzFcorLqMZvc1uQBAKcLgqCRK8lnQvH0dWRFd76wYrIBFv3oWdaDsyMBye/YXB+2AJU
         qb3oHuwrl0QnunHe2cAMKQMm4f9E6XrBTBCawTEIrizqWDzQ8M7iIyVTo57aR+2X8kiN
         Xrzw==
X-Forwarded-Encrypted: i=1; AJvYcCW2oi9pbd0j/jY1RM9vtfxSxfXo5d85uIVOvCVypughZynriAyTnvVcViVhqtLCWFSMq/nkqw280LY=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyf7Z15vPoMqviu2fF2QmVfSwNcWGKAYjz7GR3edrn1nj+m3OzZ
	tNWmqpHfqc54x+h20XxZ/8hOa/J77G4UycE2IhsIhki0aoQcJaLGdE1rgK9wXeXZmRMpsuuDV5A
	RDqJXIZ9Jiuqz10Ly+NrNhU2gGEcr0WjtCYxqYhALO6mhpD0y8OYcYfnxO2SP4FK7or8O
X-Gm-Gg: ASbGncsm6Uo+AayINRgZFZlhy5RgN0GJhZhEn/P7n6xxv5Z9qPo+R0frHXdOTLe9Mi6
	GYXvSeKdeuSlWcgxqVXoVxKKd0aT4yzgxrVl2e5q1xYcWzfoiI7Q1mh3f0ouDhGnTCdLdo0Rz59
	VZ0H77k+qvckOqGUPsLkDBbds+O18FZB0d8ITfWHl/RxYaeChgHBlIeUj9ss93FcOJsISo2nzlB
	vlMYXGwVYJPuN+ewCprdORI8BD//A+A/4Eyk4NV0putoHU1bc/iwIHl2U1wyeQtOQR0Q+K5Uzn6
	nicpj/OEtmtRvPNJmMDrMdKOBM7qzdHdXZhnUtmWvQ3aUhu3+MDX82MHiZFocHpbpZQzk+7MABY
	iPTxuO+6c/q465D1oDgBHE5eA+TenufnTJnVh37XGIktCwvmQ4+N5
X-Received: by 2002:ad4:5965:0:b0:72c:3873:2e43 with SMTP id 6a1803df08f44-739322fe85dmr103272016d6.25.1757335688927;
        Mon, 08 Sep 2025 05:48:08 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGg9PYvI2ZzljUif+Cb6iwuKs++XEvfJYXlwnEIgsLnk5PM2U1MDib/KVyVesyQhvdkI0ZL4g==
X-Received: by 2002:ad4:5965:0:b0:72c:3873:2e43 with SMTP id 6a1803df08f44-739322fe85dmr103270296d6.25.1757335686430;
        Mon, 08 Sep 2025 05:48:06 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5608ace9c65sm3569403e87.85.2025.09.08.05.48.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Sep 2025 05:48:05 -0700 (PDT)
Date: Mon, 8 Sep 2025 15:48:03 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Jens Glathe <jens.glathe@oldschoolsolutions.biz>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH RFC 3/3] arm64: dts: qcom: x1e78100-lenovo-thinkpad-t14s:
 add HDMI nodes
Message-ID: <2iazalkbsl2vrukgzt7ba7jd5hhok76f7j5tlfbe6d4c2ezxks@25sol47tyt72>
References: <20250821-topic-x1e80100-hdmi-v1-0-f14ad9430e88@linaro.org>
 <20250821-topic-x1e80100-hdmi-v1-3-f14ad9430e88@linaro.org>
 <a38df652-54c0-4216-9aa5-c8d32599c8f7@oldschoolsolutions.biz>
 <c66fe361-74c9-4471-b371-353ca582bb3b@oss.qualcomm.com>
 <xzw26v6aqutgau3zwm3njblf2qw2em53n45ju2yhhfh7uhyxbz@6kqvink2chld>
 <365b984c-a5e0-4fa3-a011-b897107e2b92@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <365b984c-a5e0-4fa3-a011-b897107e2b92@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: Z61F-QLjQ77HJxp_HaXg60GdWlVgS1MO
X-Proofpoint-GUID: Z61F-QLjQ77HJxp_HaXg60GdWlVgS1MO
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAyNCBTYWx0ZWRfX2kegCvBKvQCD
 lznO3r3sQdaUAHQQ966my/fFuSvB5OZM1K7oBK+I6oEKJiRvuG79Gt0xxXvPX0Quoi1YCgYjBtm
 t+g2GBfD2MeZbgnk/lpjZZiKabMZ7saop7tMOj166CQD0gTBjWDQUcgw0Ikq2ol+MUgGe5DzcQZ
 4a7G7VjoI0JrO89k+s4SHCwz18loH6FEMmHDoiMyZOSYGZQXZ4GtpZHY+ohlPlT653NEpx2A4tQ
 mXzCGbTDv7G6NKBWWtwr/h9oDbEGoA/W3JFpgiByRuhTVzUC2JP4sRgu+uKVWpFt/sTPJ8KqeAE
 sLemGJ/3wXgzUss36TMZxlw62tqLCsi4R7tWgak7Yk5SMDlpHzM9CVPSApEI7IdD+IctSXEM6kA
 sDo//Ez8
X-Authority-Analysis: v=2.4 cv=QeFmvtbv c=1 sm=1 tr=0 ts=68bed08a cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=uA7_YokYup9Xwil_snIA:9 a=3ZKOabzyN94A:10
 a=wPNLvfGTeEIA:10 a=iYH6xdkBrDN1Jqds4HTS:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-08_04,2025-09-08_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 clxscore=1015 spamscore=0 impostorscore=0
 bulkscore=0 suspectscore=0 adultscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509060024
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250908_054811_522212_07CF30E0 
X-CRM114-Status: GOOD (  25.82  )
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

On Mon, Sep 08, 2025 at 01:40:06PM +0200, Konrad Dybcio wrote:
> On 9/8/25 11:39 AM, Dmitry Baryshkov wrote:
> > On Mon, Sep 08, 2025 at 09:16:29AM +0200, Konrad Dybcio wrote:
> >> On 9/6/25 10:41 AM, Jens Glathe wrote:
> >>> On 21.08.25 15:53, Neil Armstrong wrote:
> >>>> The Thinkpad T14s embeds a transparent 4lanes DP->HDMI transceiver
> >>>> connected to the third QMP Combo PHY 4 lanes.
> >>>>
> >>> [...]
> >>>> =A0 .../dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi=A0=A0=A0 | 44 ++=
++++++++++++++++++++
> >>>> =A0 1 file changed, 44 insertions(+)
> >>> [...]
> >>>> diff --git a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.=
dtsi b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
> >>>> index 4cf61c2a34e31233b1adc93332bcabef22de3f86..5b62b8c3123633360f24=
9e3ecdc8ea23f44e8e09 100644
> >>>> --- a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
> >>>> +++ b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
> >>> [...]
> >>>> +&mdss_dp2 {
> >>>> +=A0=A0=A0 status =3D "okay";
> >>>> +};
> >>>> +
> >>>> +&mdss_dp2_out {
> >>>> +=A0=A0=A0 data-lanes =3D <0 1 2 3>;
> >>>> +};
> >>>> +
> >>>
> >>> Hi Neil,
> >>>
> >>> shouldn't mdss_dp2_out also have the link-frequencies property?
> >>>
> >>> +=A0 =A0 link-frequencies =3D /bits/ 64 <1620000000 2700000000 540000=
0000 8100000000>;
> >>>
> >>> Or is it something the bridge already negotiates?
> >>
> >> No, it seems like our driver falls back to HBR2 (54xx) ever since the
> >> driver has been made aware of this property:
> >>
> >> commit 381518a1677c49742a85f51e8f0e89f4b9b7d297
> >> Author: Kuogee Hsieh <quic_khsieh@quicinc.com>
> >> Date:   Tue Dec 27 09:45:02 2022 -0800
> >>
> >>     drm/msm/dp: Add capability to parser and retrieve max DP link supp=
orted rate from link-frequencies property of dp_out endpoint
> >>
> >> Dmitry, is there any reason not to allow HBR3 by default? Is our dp
> >> controller/driver not smart enough not to advertise rates it can't
> >> support, during negotiation?
> > =

> > I don't remember the exact details. If I remmber correctly, there were
> > cases where using HBR3 resulted in a less stable signal than falling
> > back to HBR2.
> =

> A very early revision of that series has a commit message that reads:
> =

> """
> Since it is not every platform supports HBR3 link rate, this patch
> limit the DP link rate at max link rate if it is specified at DTS file.
> Otherwise, the max dp link rate will be limited at HBR2 as before.

Yep. And the platform here means the whole device, not just the SoC /
SKU.

> """
> =

> Konrad

-- =

With best wishes
Dmitry

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
