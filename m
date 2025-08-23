Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA464CA0EED
	for <linux-phy@archiver.kernel.org>; Sat, 23 Aug 2025 14:02:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DKluyEkyh7ubm5zXXqTflA6bQoJ1VwlGhprLq825cvU=; b=CkJ5lRPJf4LehC
	ZLS1qnO0vRXZGl8d7SKA5iPqI0vikZI7yzNxENPgl5HDgn3H5S6OVdeaqgj3RlSAKRsr4W73lnXX8
	0f1iNiuKhnovVtz7mZbCNhx6du3IhzDzg/BSpm3FvG5EZN37cO4V5+8rLA8NvBKQizPtG94/pcdWt
	MA0j4yC7z2l9jKAJ/7MgciG9HQrJRHeoG7n7TVeDRFzTeGkYLQQ2yvMa7kx8eZBLapfsz5DUEjhUp
	yBzmNcBdtA4uVmTpzQaD+xapKHwXf5vg+D4Cm7p4H7IthcquUxpF0LW9tW6DTujQumYLKUMkgDyYr
	TXM4jTB1Enh8ZjMKZSOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upopY-00000004pFA-1ztl;
	Sat, 23 Aug 2025 14:02:52 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upopW-00000004pEn-0mJ8
	for linux-phy@lists.infradead.org;
	Sat, 23 Aug 2025 14:02:51 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57NBg5EW023633
	for <linux-phy@lists.infradead.org>; Sat, 23 Aug 2025 14:02:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	OCRZx1xTVWUQojCBm1JLKKB98oSSv8fRJ7NiR1/l7Lk=; b=O96QFiqat4QPLZSu
	dkNSWguMMiiqftIPsCe3tf9OQ5Fcqx+mTZ5lIAK1fZCvoJflVvNw/gbBQAjgsWp/
	ZfVT4TmpFrQ0kFdXBitBFe4GRiOyH9+SFwWRg8vwyZQB8+Qsfaa8aZYsmomeVixJ
	0XxH/oCxSGcxsSpWq7j6QcqwwSXfV7lGTOqYXA7qSdF4aJEcyv/qQzedfNEMPfCm
	0oQB2F6243uzOBVgh8y69Gt+aVnqrR3h/CtHet6G/bBJtevEVd7pV8dwYhWKi/yi
	oemlcab/BaYyArA6SKTG+LWz+8RLAOOKoEHayTPypdXgiUwHKGxfHsDGfEI9p/Hj
	wxO+zA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48q6thruny-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 23 Aug 2025 14:02:48 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4b109ae72caso69143151cf.1
        for <linux-phy@lists.infradead.org>; Sat, 23 Aug 2025 07:02:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755957767; x=1756562567;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OCRZx1xTVWUQojCBm1JLKKB98oSSv8fRJ7NiR1/l7Lk=;
        b=vOc9suq15w16TN9fMmQ7zFbxX/tM0l96YXU482Ikflwmo1+kIVA9KQ4UxMevpqpaXZ
         1O+YHVP3hXU9Pwj5IPJYNNcc9/KD0D3F1P9Qm53RvD9Axop2uTIFmruRgGYxOzx3I9RU
         SJn5lzdHe8CeGyQDAl+8d/YRR8CqGPvVgI2Ddlq9IawWZtNbabEF8gkeBexLk0Y5UQjD
         psSMyL732IToDGpAcFFA6wMQrNMSXfL6m5QWc/vIUxjywMohq0xIlOhn0ZWdps2LExNO
         rnRRkb2qU4Y0VIlbSuzf1ptZh421yuKz+YR7X5dZsOt4yBpgXYbMwi0X/u0Ezj+YmVjn
         w38w==
X-Forwarded-Encrypted: i=1; AJvYcCUWGN+dxKlirNNRXDKjH+mFLQW0NDHyb60W54nQGbTt8EtlhBrPN6WmUjLaTHw5vMm8FllquIH6JBs=@lists.infradead.org
X-Gm-Message-State: AOJu0YzBHQFCgEO+DmRRAIwZt/Cdd1s+z7hxINp1nMTorJaC3YwjLCfh
	CCoRQldggn611mBjLlGg/xLLLK/lQC3rU6GoEbLeBGVf9hl/N8EVMKilk8ZPYPsqweTZ7i8Wnwl
	MWTXw4h/Cj98Pps4iX3+ceraaQ8yROucApPZs0UKmarTziB9Da1LSuZUSa4Z4+UrtAaEX
X-Gm-Gg: ASbGncsA7g1Zib3yNOxBLFJh9Ca1FDTonK5ltAuS1sp85dIuTphwOiLJBFh9bhLAqkR
	TkGL6O1ToFF/+sZpKqlmGBUUadUPUpscNxsa+f27YmN+5LFKgkM46Copr84WlhrFYT1mQnEbZQI
	Zi+mCNXnGFjVvj4JcoQX4YWQTE9sYZ7BgxTpkadiNgV4cY9fj33AGYLe8EM2GDO/kKqiWCgezXX
	tDLmhmCLzGku+ZnGBizhgHI2U1vfyBgtmI6LmKHOsIJ45TIcD1TVGKGJWY9hPKOP9Z6NXDa61Qh
	/L+hvi3X6ytD+o+7zm4TwCBUsGWI1wpcnEnN6TAN7s0Ywzm10jQI0o5ftgUwskGl685zrCJut6F
	C/H2BHVx4Ma7kihuoCsvotkrE5tZiInSlE+ZN+rGRtPnRNUQsmzkU
X-Received: by 2002:a05:622a:1a29:b0:4b2:8ac5:2581 with SMTP id d75a77b69052e-4b2aab767cbmr78243491cf.72.1755957767214;
        Sat, 23 Aug 2025 07:02:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEuxkgrNE8H6oitbqT5fcV9B40V5lDNZqFSqo148MvQDpZXw6ohwF9nhCLlg15uxNzY4nVbeg==
X-Received: by 2002:a05:622a:1a29:b0:4b2:8ac5:2581 with SMTP id d75a77b69052e-4b2aab767cbmr78242621cf.72.1755957766556;
        Sat, 23 Aug 2025 07:02:46 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55f35bffae3sm532128e87.31.2025.08.23.07.02.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 23 Aug 2025 07:02:45 -0700 (PDT)
Date: Sat, 23 Aug 2025 17:02:43 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Xilin Wu <sophon@radxa.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH RFC 1/3] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy:
 Document default phy mode
Message-ID: <k736p6h6dzy5ywepcgcr64llusqkrrsknf5h4o2e6zcpcyqpz5@7k7kmhumzcw5>
References: <20250821-topic-x1e80100-hdmi-v1-0-f14ad9430e88@linaro.org>
 <20250821-topic-x1e80100-hdmi-v1-1-f14ad9430e88@linaro.org>
 <yc7ceoq3bn3lkxdwkrk64ecubej64vblpwlwzyj5cuep2wmjui@nln2t2yicu7o>
 <018751b8-8b9c-4966-94e2-f3ec8625f87d@linaro.org>
 <8A7C126C22789C9B+f30def47-302a-45ee-8f76-64ef277f773f@radxa.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8A7C126C22789C9B+f30def47-302a-45ee-8f76-64ef277f773f@radxa.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIzMDA0MyBTYWx0ZWRfX/zZpYV3LREV0
 514sIo/IyOrp/xCL9IlSbYmRMG+vAuk8WYkH07lTRFZd9jhgiS2+E8Hk8jJAr0pFfv+XE8mPLPa
 Q9ueSX4Aht/CfyJ4bMXvraeIG8cfvTh1FsG4BFdLh2c3uPftVAwIXLOUoLggQNIwkyL6jPeu63Z
 q5WgdrIiMgf1DkadWuhTgIVxbHylphcFgycbGtRvroCGykpcJ+1LjNl3svS7b0oWPwbuO30lQHG
 S2l2+cCDLbZTaOjbLmmb+6DeVCo/2IxXEymK3/n8Audb/DK083OZbyjqrkYHyOzgRQbKQD+r2Fd
 QRJcV7iDollhdfIAeszrywQ2vHSCvwOsm0TPJhfP7/CuSQETd0BiQmcEZnZHMeWcd8XlCEH/91D
 BXBUqdy0
X-Proofpoint-ORIG-GUID: vgxiSe3zke8CHT3Hb5_p3QSME9ATntQH
X-Proofpoint-GUID: vgxiSe3zke8CHT3Hb5_p3QSME9ATntQH
X-Authority-Analysis: v=2.4 cv=W544VQWk c=1 sm=1 tr=0 ts=68a9ca08 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=2OwXVqhp2XgA:10 a=ksxQWNrZAAAA:8 a=NEAV23lmAAAA:8 a=VwQbUJbxAAAA:8
 a=KKAkSRfTAAAA:8 a=ygyPkNainPlaNWTsy8gA:9 a=3ZKOabzyN94A:10 a=wPNLvfGTeEIA:10
 a=a_PwQJl-kcHnX1M80qC6:22 a=l7WU34MJF0Z5EO9KEJC3:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-23_01,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 clxscore=1015 suspectscore=0 phishscore=0
 bulkscore=0 impostorscore=0 adultscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508230043
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250823_070250_233199_2ABE2371 
X-CRM114-Status: GOOD (  43.27  )
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

On Sat, Aug 23, 2025 at 02:22:56PM +0800, Xilin Wu wrote:
> On 2025/8/22 19:02:21, Neil Armstrong wrote:
> > On 22/08/2025 12:57, Dmitry Baryshkov wrote:
> > > On Thu, Aug 21, 2025 at 03:53:26PM +0200, Neil Armstrong wrote:
> > > > The QMP USB3/DP Combo PHY hosts an USB3 phy and a DP PHY on top
> > > > of a combo glue to route either lanes to the 4 shared physical lane=
s.
> > > > =

> > > > The routing of the lanes can be:
> > > > - 2 DP + 2 USB3
> > > > - 4 DP
> > > > - 2 USB3
> > > > =

> > > > And the layout of the lanes can be swpped depending of an
> > > > eventual USB-C connector orientation.
> > > > =

> > > > Nevertheless those QMP Comby PHY can be statically used to
> > > > drive a DisplayPort connector, DP->HDMI bridge, USB3 A Connector...
> > > > =

> > > > But if a 4lanes DP->HDMI bridge is directly connected to the
> > > > QMP Comby PHY lanes, in the default routing 2 or the 4 lanes would
> > > > probbaly be USB3, making the DP->HDMI bridge non functional.
> > > > =

> > > > Add a property to hint in which layout mode the QMP Comby PHY
> > > > should be as startup.
> > > > =

> > > > Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> > > > ---
> > > > =A0 .../bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml=A0=A0=A0=A0=
=A0=A0=A0=A0 |
> > > > 13 ++ +++++++++++
> > > > =A0 1 file changed, 13 insertions(+)
> > > > =

> > > > diff --git
> > > > a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-
> > > > usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/
> > > > qcom,sc8280xp-qmp-usb43dp-phy.yaml
> > > > index c8bc512df08b5694c8599f475de78679a4438449..129475a1d9527733e43=
ded5a38aad766f9810fe7
> > > > 100644
> > > > --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-
> > > > usb43dp-phy.yaml
> > > > +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-
> > > > usb43dp-phy.yaml
> > > > @@ -76,6 +76,19 @@ properties:
> > > > =A0=A0=A0 mode-switch: true
> > > > =A0=A0=A0 orientation-switch: true
> > > > +=A0 qcom,combo-initial-mode:
> > > > +=A0=A0=A0 description:
> > > > +=A0=A0=A0=A0=A0 Describe the initial mode of the Combo PHY configu=
ration.
> > > > +=A0=A0=A0=A0=A0 The Combo PHY is a wrapper on top of a DP PHY and =
an USB3 PHY,
> > > > +=A0=A0=A0=A0=A0 sharing the same SuperSpeed lanes with either Disp=
layPort over
> > > > +=A0=A0=A0=A0=A0 the 4 lanes (dp), USB3 on a pair of lanes (usb3) o=
r both
> > > > +=A0=A0=A0=A0=A0 technologies in a 2+2 configuration (usb3+dp) as d=
efault.
> > > =

> > > SPecifying this as an initial mode means that it can be switched late=
r.
> > > Should we generalize this and desribe it as bus-type (from
> > > video-interfaces.yaml) and allow it to be present only if there is no
> > > mode-switch property?
> > =

> > I was not sure about that, and yes we should do that instead but I'm not
> > sure about how.
> > =

> > bus-type sounds great, but the numbering doesn't match so I was thinking
> > instead
> > something like phy-type with a string or use the numbers from include/
> > dt-bindings/phy/phy.h
> > =

> > The thing is, do we want to keep the dual dp+usb3 as static ? I think
> > it's very possible
> > a board would connect the combo phy to an USB3 A connector and a 2lanes
> > DisplayPort connector.
> =

> Yes, our board (Radxa Dragon Q6A) is using such design, but with usb3 and=
 dp
> lanes swapped. [1] I think this patch series could be extended to handle
> such configuration.
> =

> Currently I just change the default orientation to reverse in
> qmp_combo_probe. [2] It works flawlessly. But of course, it's not an
> upstreamable solution :)

I thought about using data-lanes in the QMP PHY, but then I realised
that there is no way to use that property to correctly describe all
these variants. So, I think it should be the bus-type of some kind.

> =

> FWIW, Rockchip usbdp phy binding [3] has a property called
> `rockchip,dp-lane-mux` to support such configuration.
> =

> [1] https://dl.radxa.com/q6a/hw/RADXA%20Dragon%20Q6A%20V1.20%20Schematic%=
2020250621.pdf
> =

> [2] https://github.com/strongtz/linux-next/commit/928cd166ce81aca7f8e051c=
72eccbd84ad896d98
> =

> [3] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/t=
ree/Documentation/devicetree/bindings/phy/phy-rockchip-usbdp.yaml#n53
> =

> > =

> > Neil
> > =

> > > =

> > > =

> > > > +=A0=A0=A0 default: usb3+dp
> > > > +=A0=A0=A0 enum:
> > > > +=A0=A0=A0=A0=A0 - usb3+dp
> > > > +=A0=A0=A0=A0=A0 - usb3
> > > > +=A0=A0=A0=A0=A0 - dp
> > > > +
> > > > =A0=A0=A0 ports:
> > > > =A0=A0=A0=A0=A0 $ref: /schemas/graph.yaml#/properties/ports
> > > > =A0=A0=A0=A0=A0 properties:
> > > > =

> > > > -- =

> > > > 2.34.1
> > > > =

> > > =

> > =

> =

> =

> -- =

> Best regards,
> Xilin Wu <sophon@radxa.com>

-- =

With best wishes
Dmitry

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
