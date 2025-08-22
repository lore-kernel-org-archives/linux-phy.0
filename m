Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01003CA0EFA
	for <linux-phy@archiver.kernel.org>; Sat, 23 Aug 2025 06:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vDVGktvmYkGQQcty1zsgWIcHcGLVfb/meKNwCgkCNA4=; b=ylGRldWqGc+S1n
	a3eg9xY7ycURsPuSVJR2UGWBGSLxnoiJ36NSfk8rXfYSDOP2iqENkp9ySUFJML6Kkn9eO05Y1aIdB
	DhNv6/5ZCbVJf60c8/Ffs1CvJJ5QUogkvINZ5HdIh0hbIjVbq8RglhpUU0aBXIWFTgJz0bc30JnZr
	GmaZryv9ZzMnQoFdE1YyvEKAY4WLqjBXeGNEzkQ29gAkLmogk8RKEmMFWjxEZzbHiBSiWL+h8Ad5D
	QqaB1nG28++iwLKKVzxuLr3L5VFX96s8eIII3I5PwOuY+YwDXOj4R7aoEBXoXYkwHgIq4GC2fFThW
	tic3QYpTZCbuMzTjBPew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uphji-00000003w1V-1gpx;
	Sat, 23 Aug 2025 06:28:22 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upQ7c-00000002M5Y-2RFN
	for linux-phy@lists.infradead.org;
	Fri, 22 Aug 2025 11:39:53 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57M8UdCD001340
	for <linux-phy@lists.infradead.org>; Fri, 22 Aug 2025 11:39:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=mFLMQVHg9cUjUEhLaX2Ovvk3
	EYltYMYiOOM3208zwIA=; b=fefZzZ0srzoPiQhmmzfGpi1DyaX9SAVzKXnhgT/d
	bV65ZO1PHEya7vwAm9CF/psxiTiQfLRHpeGZl0SbBuTCQZWo35ysFq+IYBuojt38
	bUK0n8xt7tTXm8bOl4BAqTeDbq95f3URJiFP/2zR1GZDLhSGzjBWhZQYvw5zrkLp
	0iCtOmSnuRh+DMrOFpakiwuTX0QV0IEoDZx6VfW4mMf9dU+LFnxbJV0lgHwOn2hL
	Hok9bVosGimlmduYCY3RJcAlNCJp/ZgMQQmf8ojs+TZEI45VFLiNf8k+GgtUItDb
	V+Sl0jGBcZPaRB7r8TO+9w5QCaSdSxPj142NH7NkyAn8iA==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n52992nb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 22 Aug 2025 11:39:52 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-70d7c7e972eso47953826d6.3
        for <linux-phy@lists.infradead.org>; Fri, 22 Aug 2025 04:39:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755862791; x=1756467591;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mFLMQVHg9cUjUEhLaX2Ovvk3EYltYMYiOOM3208zwIA=;
        b=GFQqBT8ZCFesUrOPuu/yFtWx4sqcMI9RQxQdDXrfXLzIQbmpDBr9uYEtNDG46bRnth
         PS7ZcrFVgQvHQ/KnoPRTfGVPrwKkbFst3JA+8dpTSNVAAn+R8YsinlWd12OsrPe4t5OG
         rfUH+rrpTjVB/mh9SxnvvEeWfAMzL/X3Ua7eZS2agMXMTjY0i5GO9D3ZNwN5YCeLdQu0
         n0qjuKTliX3S0k/BtYF4HjM+SENvbdxfAt0JBFrhl8i8ej7D18xhyXOT1b8fi8xakYUB
         uA1/Qjef8jD97KdnZJz0A0eC1kow9pE9n1pFEeAdL7krOCc6VxYej1t44nkGoubelp4v
         fJWQ==
X-Forwarded-Encrypted: i=1; AJvYcCViQPLwFdLzkTbwijI16ts/O7HcLseOTKmC2j5rqeV2vIuTur8vjxKK/4ul5e4atQSjrk+IvHpmGrE=@lists.infradead.org
X-Gm-Message-State: AOJu0YyZnJ2UJd0FYJYkiWpuTufkGaI7zfywgIj/+PS5VXPYHhYQf+vr
	x/NFPKdSCmD8MMGNbtYGJ4NSZmf2+0pnj+MVcL1yLFvi3EVPcrYa7BJO9ii0A7BRttvThgjSfi1
	FR14ckM9SEDTWOlCZxGX2zIx6EbTB3V1UllMQHspk+ojAVtJ+5+8txKkFW94g27k+mczI
X-Gm-Gg: ASbGncsHO/Xozl1M3/M4qmVBZH93QKNOmYPw/oocb2V6XcK61DmldrXjSVD9rsBrSjP
	m8lIQcVgboyGlTwA+KP2AWcu6ot2i9YclnaDPhaMiNZjNXyB4DHkHbwa0gXCnUzBzotdWf3Xhfx
	IIur9pttdpRHo/H8YnFl1V0z+BQVsOAz55/n1Ejl1E6sI/ZNCKk2Q/pqUiDhPvGzpblCMZ0PY/7
	jqjO9Q8pgT7cvQkGOwcARbidZlJs1A28nc2SqzS7aKfZZY1K+b71v2PpTjJXavRxbqT/R5CCZG4
	idYsk+AV5RE0uQJFRKbqMiPhFc/gPjrmIkHZ7mvfuIHvMIlrBUOAIBdmbAQ6d7FBFoIQZROZoAp
	/8pNjJr0Sgjs3wUtI0KWZpfkBTv4iG6mvfy7BvPydRHzfDp4NyYeS
X-Received: by 2002:a05:6214:d43:b0:70d:82f7:180e with SMTP id 6a1803df08f44-70d971ed40bmr37216986d6.50.1755862790485;
        Fri, 22 Aug 2025 04:39:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHkbMfEBfr5OYFm9+slBBWnRivUg5jHHYuYw9w+zfkzG2JGT2dc4mFkYoJUMqOd72SEqiVvCw==
X-Received: by 2002:a05:6214:d43:b0:70d:82f7:180e with SMTP id 6a1803df08f44-70d971ed40bmr37216476d6.50.1755862789959;
        Fri, 22 Aug 2025 04:39:49 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3363b33a986sm4244671fa.48.2025.08.22.04.39.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Aug 2025 04:39:49 -0700 (PDT)
Date: Fri, 22 Aug 2025 14:39:47 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH RFC 1/3] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy:
 Document default phy mode
Message-ID: <kxevo35c7tsbjeu4b7ep3f4eld5t4ohy35x4igaki6n7uvteev@ifotwczstsn3>
References: <20250821-topic-x1e80100-hdmi-v1-0-f14ad9430e88@linaro.org>
 <20250821-topic-x1e80100-hdmi-v1-1-f14ad9430e88@linaro.org>
 <yc7ceoq3bn3lkxdwkrk64ecubej64vblpwlwzyj5cuep2wmjui@nln2t2yicu7o>
 <018751b8-8b9c-4966-94e2-f3ec8625f87d@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <018751b8-8b9c-4966-94e2-f3ec8625f87d@linaro.org>
X-Proofpoint-GUID: JgUI_ch6TeVEnmcDP_4w4sEIJP4x6ybU
X-Proofpoint-ORIG-GUID: JgUI_ch6TeVEnmcDP_4w4sEIJP4x6ybU
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfX11N69UErF3Bm
 lFX8/pZGR8PImmlnR5Xs9W622umUS6ZEauea5GjS9lCwHwau6gA9gsei/lGKy/WbZ8VXrkNm3ra
 HAUU0/1rx2jBQim9YNRPQIAhAfrPb7TGodKHD3Ugzkx913mugmu3RsTi3M8putWptE1DiLkPY38
 KTiD2ULQfg6C+XA+zHdiBQv5U/Sc4hscQHUh23/4Bt6Oc4auFDAHEp+e9lBDdqWOlOyjJasTu8d
 VW1XPg5pFN4/UhMbPmLldZBmTnn5B6N+f4eCTXUZI7gzQ3zSrfj5ShQ++ZEEdBMW24TbMaSdLK1
 qACF4jIjC2Tj7JbiMytKVAOqU9oRFSRH9Oq1Y3DC0zI3LNHi26kOEMpVn6NqH9Scq/z/HdY/yKu
 1n/tB72Eox/g6NEqyQ/AO3/0fnWYUg==
X-Authority-Analysis: v=2.4 cv=SPkblOvH c=1 sm=1 tr=0 ts=68a85708 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=KKAkSRfTAAAA:8 a=shYPb7jLr3MzxgU6IIEA:9 a=CjuIK1q_8ugA:10
 a=iYH6xdkBrDN1Jqds4HTS:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-22_04,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 bulkscore=0 spamscore=0 phishscore=0
 impostorscore=0 adultscore=0 malwarescore=0 lowpriorityscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250822_043952_623346_724A3F2A 
X-CRM114-Status: GOOD (  36.05  )
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

On Fri, Aug 22, 2025 at 01:02:21PM +0200, Neil Armstrong wrote:
> On 22/08/2025 12:57, Dmitry Baryshkov wrote:
> > On Thu, Aug 21, 2025 at 03:53:26PM +0200, Neil Armstrong wrote:
> > > The QMP USB3/DP Combo PHY hosts an USB3 phy and a DP PHY on top
> > > of a combo glue to route either lanes to the 4 shared physical lanes.
> > > 
> > > The routing of the lanes can be:
> > > - 2 DP + 2 USB3
> > > - 4 DP
> > > - 2 USB3
> > > 
> > > And the layout of the lanes can be swpped depending of an
> > > eventual USB-C connector orientation.
> > > 
> > > Nevertheless those QMP Comby PHY can be statically used to
> > > drive a DisplayPort connector, DP->HDMI bridge, USB3 A Connector...
> > > 
> > > But if a 4lanes DP->HDMI bridge is directly connected to the
> > > QMP Comby PHY lanes, in the default routing 2 or the 4 lanes would
> > > probbaly be USB3, making the DP->HDMI bridge non functional.
> > > 
> > > Add a property to hint in which layout mode the QMP Comby PHY
> > > should be as startup.
> > > 
> > > Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> > > ---
> > >   .../bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml         | 13 +++++++++++++
> > >   1 file changed, 13 insertions(+)
> > > 
> > > diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> > > index c8bc512df08b5694c8599f475de78679a4438449..129475a1d9527733e43ded5a38aad766f9810fe7 100644
> > > --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> > > +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> > > @@ -76,6 +76,19 @@ properties:
> > >     mode-switch: true
> > >     orientation-switch: true
> > > +  qcom,combo-initial-mode:
> > > +    description:
> > > +      Describe the initial mode of the Combo PHY configuration.
> > > +      The Combo PHY is a wrapper on top of a DP PHY and an USB3 PHY,
> > > +      sharing the same SuperSpeed lanes with either DisplayPort over
> > > +      the 4 lanes (dp), USB3 on a pair of lanes (usb3) or both
> > > +      technologies in a 2+2 configuration (usb3+dp) as default.
> > 
> > SPecifying this as an initial mode means that it can be switched later.
> > Should we generalize this and desribe it as bus-type (from
> > video-interfaces.yaml) and allow it to be present only if there is no
> > mode-switch property?
> 
> I was not sure about that, and yes we should do that instead but I'm not
> sure about how.
> 
> bus-type sounds great, but the numbering doesn't match so I was thinking instead
> something like phy-type with a string or use the numbers from include/dt-bindings/phy/phy.h

Well... we can add more entries there and map them in the driver.

> 
> The thing is, do we want to keep the dual dp+usb3 as static ? I think it's very possible
> a board would connect the combo phy to an USB3 A connector and a 2lanes DisplayPort connector.

I'm not sure I follow the question. Could you please explain what you've
meant here?


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
