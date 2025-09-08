Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7CCCCA1016
	for <linux-phy@archiver.kernel.org>; Mon,  8 Sep 2025 17:11:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bYs4MAmRRSKjwMTlHN/ESQEzx7wf0KIZUSBd0+MpRvE=; b=GN3KAuIylXTLUC
	11Q3YgpO3WQ/wrds8gV/u/kSP6iEJFwQWrrx0gx1A0x6hwMoTkVgpf6wuIMHQN7NGgU4bvC+f4Z7l
	9/CJIlSKTjIQ9kxllRS8NocD7JUHTFaHTi6rHGCzp8YHGwDWiy2sUD54Ro5GgbGl+giQ/WqaqFvyJ
	0ktHg97xeuSE6MJMtSu3YCuSg/IEiv1pNRnN2KwV9vXZQJElaoKOoItZV150GNf2FYqCPJ97vcJd4
	dyXNZ6v5DHFtljb998GCiu3fiA5niUrComkVOPkMq8wFWeGM5WNijUm+EdQNm6mOf2IbXg3tGRw9l
	dpIf/55vCYOVSJj5FZ1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvfP0-000000015Ur-07tK;
	Mon, 08 Sep 2025 17:11:38 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvcBU-0000000HSYN-3ug7
	for linux-phy@lists.infradead.org;
	Mon, 08 Sep 2025 13:45:30 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58893D5F009176
	for <linux-phy@lists.infradead.org>; Mon, 8 Sep 2025 13:45:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=esqnV4GgtEbrquLS/zK5rW3W
	tt7Z1gs3taNjcse55BA=; b=ZAYTtaB9Y7SMyW3MEsYa9Jw4FcBylLtuUJgggnT1
	ggSBjKQSPM0bXafiZrmUzWnhTeDn/elXOFafxMai3AEAY/kDCKHX+MBKB8G3DTBX
	6L3JeQM9UJFDd8i9sHQc5H5BnSv/a35X3UP8bEwN63u8E9Ci+V12IaNx3mmrhCNv
	cM0IA7wrC+tWa/DrMDlLdScyBmtmsSlRQjLjNSMjc1GCmXrwxmM7uKbXVkuoVEbE
	CxU30u7LffSpJh+V7iKVEVU0tZWX79nGews7Bfu4qQnMA04l4zl+P3SfICmk14uE
	hv0GFp4UNlNkeuLjD5Ui40WyB+CPsZn+nTG1unjwpxj0jA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490bws4vh2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 08 Sep 2025 13:45:28 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b47b4d296eso113285741cf.1
        for <linux-phy@lists.infradead.org>; Mon, 08 Sep 2025 06:45:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757339127; x=1757943927;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=esqnV4GgtEbrquLS/zK5rW3Wtt7Z1gs3taNjcse55BA=;
        b=Gn129YfBfqQacf4cOQkhBnugookoov0o147XWVOFxcwl2P09HJq+2wEmQXylDUY2EQ
         BgIffynHb4cFq9DHaz+l8+fzsJdYSPq5LA8wLl/AyyH9apSomy1ZYrggVmOREj9DOuRv
         A5CuMNfeZeC3woUPqeLAVTb3uzFZpUfJT7U+wTRcpS5Etu2vWIM/1+M4/7yBr4WHAWv2
         qXkKH73jsktAZNcchjLbrX+py0uQs7M3+eoBLXQyWVjdZJhzyjMbsdKk+boSP9dBg6Kl
         Y3PPBIRDK/Uh52q3wiebCKgAFumUqJZLixXSddPP8vseItkZEy5hTiUayYFlSr3stbug
         LQvg==
X-Forwarded-Encrypted: i=1; AJvYcCW8KmQOO4Rg/ffDgpUoX/u0SuTBCsTQH9Up32rGWNeoj3tawugjUVtU7EhPoMYLpE/g+uHkqkpBoDY=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy8NH3gAEYar8xTbRVZE8LPuCNzKUU9H7iCfvPl+Tl4KZupzXEW
	1gUOwyo2c5mT8thnh0X7njZTxLHDbrb6P9kIwrppLaKCaNua2qJxOAMaD6q6adTf2ZrQEqPu1/a
	OnZDjVT1+b1H2QL7i+rDVBNLRvK0kF3ovf6riNK/Mw4S6YcQtLna748olOReTrExiJ9v6
X-Gm-Gg: ASbGncs2PHDpv3C3JhFNMAicyZb1nHKLZ0siSIYEo80pRoErwywolxPRlROAIL/jQqw
	FuGoEHB7c17/RAJuCSgJMUzW8CmyqKS9tEYOVTNfrXQAm1XmugV8epnCzJL0A+54kaHvyuJ+gCe
	XW6Tzx4j1XntzW0Fpa27tKvdY0sVZ/mB0Inifb65Z41lij34RT3j7CV3G90W4OIi8yaZwxnhZVB
	U5RlFbCVyMn9jbnm1JnNe/nTDC2vP8XZyYhqNOoQicVdhdu/yLX2hDB0B+xKo6gfw4XIHTE27cV
	aRaaFbau/KpSFBx61F++o2/x11T1KzvdP9uEF4BN0PAa+JJiFBYdPOOVDKOVUcwM4Uwo/iIsw3d
	f90ZQlLz9TkW5GZJcKWGGD6buGUnVhHM2x7f3xXF3q3h9Vll6JquN
X-Received: by 2002:a05:622a:289:b0:4b5:e9bb:846e with SMTP id d75a77b69052e-4b5f83a51d3mr96781851cf.21.1757339127021;
        Mon, 08 Sep 2025 06:45:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH6pGd+MdXBZbW1TIlirM87MxAFCUjEO+5IJdJhKbmEgdqD6cBDX43lwroMqHuWkohubp2b/Q==
X-Received: by 2002:a05:622a:289:b0:4b5:e9bb:846e with SMTP id d75a77b69052e-4b5f83a51d3mr96781021cf.21.1757339126299;
        Mon, 08 Sep 2025 06:45:26 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-337f5032aaesm32757861fa.37.2025.09.08.06.45.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Sep 2025 06:45:25 -0700 (PDT)
Date: Mon, 8 Sep 2025 16:45:23 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Maud Spierings <maud_spierings@hotmail.com>
Cc: neil.armstrong@linaro.org, Laurent.pinchart@ideasonboard.com,
        airlied@gmail.com, andersson@kernel.org, andrzej.hajda@intel.com,
        conor+dt@kernel.org, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, jernej.skrabec@gmail.com,
        jonas@kwiboo.se, kishon@kernel.org, konradybcio@kernel.org,
        krzk+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        maarten.lankhorst@linux.intel.com, mripard@kernel.org,
        rfoss@kernel.org, robh@kernel.org, simona@ffwll.ch,
        tzimmermann@suse.de, vkoul@kernel.org
Subject: Re: [PATCH v3 2/5] drm/bridge: simple: add Realtek RTD2171
 DP-to-HDMI bridge
Message-ID: <u3qwrzwcr4knq7ueinws3siz2frugbkj75r5zp6i7qmkhnyauf@lrmiqhtbgzfj>
References: <20250908-topic-x1e80100-hdmi-v3-2-c53b0f2bc2fb@linaro.org>
 <AM7P189MB100924E3244B953F0EA6D462E30CA@AM7P189MB1009.EURP189.PROD.OUTLOOK.COM>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AM7P189MB100924E3244B953F0EA6D462E30CA@AM7P189MB1009.EURP189.PROD.OUTLOOK.COM>
X-Proofpoint-ORIG-GUID: sCkW8Vp-eNBSjczTBX2VAMsJGCMvVzLw
X-Proofpoint-GUID: sCkW8Vp-eNBSjczTBX2VAMsJGCMvVzLw
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAxOCBTYWx0ZWRfX9VAPQZ5uwi/V
 LnqyX8/reoJxWKN1/MYRyUUm2FDuU0y5yPhzl2AOQVMQHL085nfyXvmTeiowma1USIlMbZEwz+q
 Ky25oikI4GeQTBiw8sJBI6vDthB+9CZhcIZBBxDXDehD4XQIUS9gWgcL6Rb5AlUY4RXOmcirIap
 EPpfyu/qBjMbpMGSZWUHQNaz+NpCfrM2OEo8Y/sP15qG7oGL1OsVE6NvkMItUIsIV6MFQzdfK4l
 EnA4caF3cl3igIlpbXkgM6Z4AQYcj5JIHMQLFyoujh5vdRUFgaZ0Z7MBaj7S4b7B7yokx9xxbPR
 6TAEuOgbROyj1lvsHrdoLyxUDq17n8jmHZa0HROS5i5Y82jtNtoKl08+NBqwmX/RPjTjIeH6abW
 u/0Lbzft
X-Authority-Analysis: v=2.4 cv=G4kcE8k5 c=1 sm=1 tr=0 ts=68beddf8 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=XwVbCjRl897ke_8r9AsA:9
 a=CjuIK1q_8ugA:10 a=dawVfQjAaf238kedN5IG:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-08_04,2025-09-08_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 bulkscore=0 suspectscore=0 clxscore=1015
 malwarescore=0 adultscore=0 impostorscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060018
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250908_064529_004022_3BEF0CDF 
X-CRM114-Status: GOOD (  25.63  )
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

On Mon, Sep 08, 2025 at 03:35:23PM +0200, Maud Spierings wrote:
> Hello Neil,
> 
> > Add support for the transparent Realtek RTD2171 DP-to-HDMI bridge.
> > 
> > Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> > Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> > ---
> >  drivers/gpu/drm/bridge/simple-bridge.c | 5 +++++
> >  1 file changed, 5 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/bridge/simple-bridge.c b/drivers/gpu/drm/bridge/simple-bridge.c
> > index 1f16d568bcc4e0fb56c763244389e6fecbcb2231..e4d0bc2200f8632bcc883102c89c270a17c68d0c 100644
> > --- a/drivers/gpu/drm/bridge/simple-bridge.c
> > +++ b/drivers/gpu/drm/bridge/simple-bridge.c
> > @@ -266,6 +266,11 @@ static const struct of_device_id simple_bridge_match[] = {
> >  		.data = &(const struct simple_bridge_info) {
> >  			.connector_type = DRM_MODE_CONNECTOR_HDMIA,
> >  		},
> > +	}, {
> > +		.compatible = "realtek,rtd2171",
> > +		.data = &(const struct simple_bridge_info) {
> > +			.connector_type = DRM_MODE_CONNECTOR_HDMIA,
> > +		},
> >  	}, {
> >  		.compatible = "ti,opa362",
> >  		.data = &(const struct simple_bridge_info) {
> > 
> > -- 
> > 2.34.1
> 
> I would like to ask again if it may not be a better idea to introduce a
> fallback compatible, once this patchseries lands I will be adding the

I'd say, that's not a good idea. We usually don't have fully datasheets
for those bridges, so we can't be sure that there are no strapping pins
/ other GPIO controls.

> parade,ps185hdm. I don't know how many other variants there are that are
> just simple dp->hdmi bridges that don't require anything other than the
> connector type set to HDMIA. The Thinkbook 16 and zenbook a14 both have HDMI
> connectors, likely with simple bridges too.
> 
> Kind regards,
> Maud

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
