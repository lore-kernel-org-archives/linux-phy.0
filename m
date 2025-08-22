Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47F96CA0EFA
	for <linux-phy@archiver.kernel.org>; Sat, 23 Aug 2025 06:28:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3vctUT1d4FyMSXTK9XZfUzmId+eHD/LcYhMyCtRrOdg=; b=YcSMLp01t98mpP
	lufS6+DDntMT5yxShWM1Fv9XUHVTTrtVLV6FeRDGbkHBG4syHK0Z6PMYyP8iPYImNOqH4nmqL2liB
	7hUc1h3hSVuX9Z0Z+ctSBD/h8lHrpMJN0PxPPV9hfX4LMTXcEFiKpFM3lmVaR9jRIS3OcDp7sbyXi
	IkTMpPcfUJyALCdJkIsBzpizluMH2wE5+4iHXsAicDCHAr2XuaYrau1iBMjiYAdo8p+Gxa06arPM8
	WhpX8bZWeIfb58UDlZRnuS0P589kplNnYI4fi2/lMfPRdT1tqK4j6DPR4jhjvTAlZTf6SE8uz0SaF
	OSpnT/RU3t+OR6mzjcyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uphjw-00000003wBo-06NN;
	Sat, 23 Aug 2025 06:28:36 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upQOg-00000002PNT-2ZGW
	for linux-phy@lists.infradead.org;
	Fri, 22 Aug 2025 11:57:31 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57M8UH2b021758
	for <linux-phy@lists.infradead.org>; Fri, 22 Aug 2025 11:57:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=IteKC1aYtouJKzTP53k7aPmd
	vVmyIyP/U396Y+IO0Mc=; b=Gn1DLx/gnD1F2d5PojLp0fimH7NVCdpKR4v7+ODa
	e/r30sdNxOJQwpJCxPkDh2IyQ6X9eL32z53S74zncE9skzscDQ5F+8FgeUc3e3tk
	m4OGIQLN9GalUPhFRWNBr1IloJiWy4V2qARkq/LVImFej1PK/rhgduge19TUaPeE
	wWLvhhnHLOp0nPZ6qbToctNqcK5t0yOe8WDRVKTzH1RVNmvKDOpgT7va5rPY5pTu
	X3sl6TBV0+KoO5bmw+MRfUmY8yh5rOJLW5KGpO2gF1B4p2LaevwfiFOEv4KzRm4A
	r7hgoZNZcnRimtBIAPMd6DssapM6G24pLI9BspffA8ewPA==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n52a946v-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 22 Aug 2025 11:57:30 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-70d9a65c386so11800266d6.1
        for <linux-phy@lists.infradead.org>; Fri, 22 Aug 2025 04:57:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755863848; x=1756468648;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IteKC1aYtouJKzTP53k7aPmdvVmyIyP/U396Y+IO0Mc=;
        b=YqPVM1mTl2znoPZpoyEiBakBcltOzJ2ghS6pNOictXgnKNL5ULubvnjBz94aTTkGOh
         AlGbAVF3jWDrDR8qlAabkoTgMUfDEhQQgCqZc+uQrw2Eygans54wWmmQIwoDKMbH/6Pi
         1gxB1pxkJipNQjTW8YW4S6YAgvr6/MCehQD8GLuTA3mj1bpP4B37eOkVMDb2307oc/ZO
         +41E2zcyEnloBnVfkhkFDXS6lQXdrhDPYxJlwBNJsRw14XyjOXaU2MmqBb4KVCpPuhzD
         IUK40ThBRxVfDObAoVoDItyhaVu2o7kPxSd/DegYZm7gE1qXU9QYA0jAzqDYdTkR2dc1
         t9oA==
X-Forwarded-Encrypted: i=1; AJvYcCWt8bJ0kyMb53jbwR/f6tRAeIt12vEkS/0AMRt5sLBWGEpGRyBQ7ml96CXYTAwGcVuwspn2SwqFDZc=@lists.infradead.org
X-Gm-Message-State: AOJu0YyYZf0CQ4S9MKXlqnlq5M0rGn7PQFgU7qcD3xjcjmQCR350ccb7
	oYakHK7izce8iirVZfHlQRkREKy3pGDd65q30mobr51GPyTRLqSOrS4cJBVeG+nBjThZ6EvNMM3
	mKNqKafPOjU9oXVJF0bjQxXqET4EiVYTHJXbvAm5ze1+e+BmC3dxbPox69Na4Z4NtiF9z
X-Gm-Gg: ASbGncs4bP2mqF0KGS6fDitwVr28lh04BDyO5oIwSU8+ZQ+z93QR2KU+TlB7UJHRadt
	uQm5igE3JUyjAkeCB80K3r7ChaL4V8hmwrPbqmiNfwnkcCA+0ji+ssGss/2JVS8mzbCDd93nrjK
	TjADOK3RQb03t4tFfUZ/pSMuNPwUF6yxhFd5C+blTL+2rVdSEb168qwHveOsrFp4Dvr96PWY5Sv
	q/Uey9MCn0wJT72QNedWwIQk/mUkj1YW0zENF+qaVg0rJRPBnQe82KkmNBDyOfedo08OhE3T6Y0
	adhstlMuBqfpdZ5jddkF9NZ/+E96Sbn3EnahQbDcVlMFrdmmBmP0gVHmuGdx0aXWhTHvBfxh4LU
	vjUjWc//MJFXZ3L9mUZG2uji8biDXldaIYZm7bdGKXB2wxgstn31L
X-Received: by 2002:ad4:5aeb:0:b0:70b:43c2:3890 with SMTP id 6a1803df08f44-70d97208655mr31235736d6.49.1755863847789;
        Fri, 22 Aug 2025 04:57:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGCkU8ELIIGHVUoLs0oCCVGOKRw2eAWAdvzOHisLhC+LnbkmMk8bUy9Y1FCe4SEL5Mw4GbMdA==
X-Received: by 2002:ad4:5aeb:0:b0:70b:43c2:3890 with SMTP id 6a1803df08f44-70d97208655mr31235366d6.49.1755863846801;
        Fri, 22 Aug 2025 04:57:26 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55cef351806sm3447261e87.13.2025.08.22.04.57.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Aug 2025 04:57:25 -0700 (PDT)
Date: Fri, 22 Aug 2025 14:57:24 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Stephan Gerhold <stephan.gerhold@linaro.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Vinod Koul <vkoul@kernel.org>,
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
Message-ID: <26j2trl7lypmqzjnw6kwgqz32eqcags34qpgaua7zbwxd4lbgx@n54gemj42xbd>
References: <20250821-topic-x1e80100-hdmi-v1-0-f14ad9430e88@linaro.org>
 <20250821-topic-x1e80100-hdmi-v1-3-f14ad9430e88@linaro.org>
 <as7pbmhfgsg3ht3s5lu25pfjjamaxyonuohkuohono3kr2mxii@posspuko4vwa>
 <aKhYYjUuOQ7H1aPm@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aKhYYjUuOQ7H1aPm@linaro.org>
X-Authority-Analysis: v=2.4 cv=feD0C0QF c=1 sm=1 tr=0 ts=68a85b2a cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=KKAkSRfTAAAA:8 a=3azC0ehC7UzJKJg3NCUA:9 a=CjuIK1q_8ugA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: ks-_9gs5VgwQ7jHe9noUIL8oaZyHrfvn
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfX25YYCgu15bgQ
 CWLstnovxq3wa2oZqc8Ea/sKQxN/MOz5jxVSzro8veYhjJLOfwmmMGME/2iXjTcOmNltpCe2Kcz
 lT8bC/4Lz3XKYnGN3uNtj5Udz6eEkyhcMFXwv6/OetzZ+m3a4/01+TFR0RfBqR9Xby4lKrPaxu8
 11s+4hBzVi5OyYAi28HWKZpo/oRmcykZ/xf93Gpa1hfC8EfM1muD9DmZbjHJ/jb8AupH/1MuQRF
 UO+SBUkxLjkDK8VK6vxFKM0GjlDGccItAbusxg8dVL/Z07YoFUQRLrfnw1lanEBy3ZJmgmU6O9v
 t74Ik3jB1DIS9w7vrCg3cQ/KFQeL5Oi2Nu+AJT7PGgn78a/vADnLWeaX04Po/oqL40zmt3SRRUU
 K2jgwz8LSr0GTfCeINp9Tet+9UbE8w==
X-Proofpoint-GUID: ks-_9gs5VgwQ7jHe9noUIL8oaZyHrfvn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-22_04,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 adultscore=0 malwarescore=0 bulkscore=0
 lowpriorityscore=0 spamscore=0 impostorscore=0 suspectscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250822_045730_659687_C0A57BDE 
X-CRM114-Status: GOOD (  26.11  )
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

On Fri, Aug 22, 2025 at 01:45:38PM +0200, Stephan Gerhold wrote:
> On Fri, Aug 22, 2025 at 02:01:30PM +0300, Dmitry Baryshkov wrote:
> > On Thu, Aug 21, 2025 at 03:53:28PM +0200, Neil Armstrong wrote:
> > > The Thinkpad T14s embeds a transparent 4lanes DP->HDMI transceiver
> > > connected to the third QMP Combo PHY 4 lanes.
> > > 
> > > Add all the data routing, disable mode switching and specify the
> > > QMP Combo PHY should be in DP-Only mode to route the 4 lanes to
> > > the underlying DP phy.
> > > 
> > > Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> > > ---
> > >  .../dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi    | 44 ++++++++++++++++++++++
> > >  1 file changed, 44 insertions(+)
> > > 
> > > diff --git a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
> > > index 4cf61c2a34e31233b1adc93332bcabef22de3f86..5b62b8c3123633360f249e3ecdc8ea23f44e8e09 100644
> > > --- a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
> > > +++ b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
> > > @@ -62,6 +62,20 @@ switch-lid {
> > >  		};
> > >  	};
> > >  
> > > +
> > > +	hdmi-connector {
> > > +		compatible = "hdmi-connector";
> > > +		type = "a";
> > > +		pinctrl-0 = <&hdmi_hpd_default>;
> > > +		pinctrl-names = "default";
> > [...]
> > > +
> > > +		port {
> > > +			hdmi_con: endpoint {
> > > +				remote-endpoint = <&usb_1_ss2_qmpphy_out>;
> > 
> > Please describe the transparent bridge too. It can be covered by the
> > simple-bridge.yaml / simple-bridge.c
> > 
> 
> I think this isn't the case here(?), but how are we going to handle
> devices where we don't know which bridge chip is used? I've seen at
> least 3 or 4 different chips already across all X1E laptops and we don't
> have schematics for most of them.

Open the case, inspect the board, identify the chip. Everything is as
usual.

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
