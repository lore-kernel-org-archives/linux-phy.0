Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E5E1CA0EE4
	for <linux-phy@archiver.kernel.org>; Sat, 23 Aug 2025 08:20:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zse2tsbkQay3k9F0uhPmGOb3/jX9tLL6vjzBGSWJmLo=; b=K7bBEcY86wPjJN
	d0BDFg1YRhQrkTHDQLb6LFXrurypR26ZbX+jiZ6rSx1yI88Hi9ueYcFDzV7P6FwsIhM9ufS/qEShZ
	ITtt/mPYJicXZfTQkv3kxZTEVgJi6OCiC6S2htGECWVy/RKHfV3jS43Y10Hs80yoIgeUY8x+Bh+2b
	9ImMrfCHF7uHarpbuBpAINiZNdR2Wc/1a4nS2XLprc/vSZv1hQ63ew24Abq4M0pjxyZ2T8m5UD4Kj
	oMmzLLxkrFz3TeQsxgDoFSlj/GAIwzZBuforTg1gkNGiA/jFScjexWSxdkDJfhZfwQskvzSWHfRPD
	J+bUxwCUrq7wd2j2+0Tw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upjUS-00000004Mep-02uP;
	Sat, 23 Aug 2025 08:20:44 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upWMy-00000003Izp-1ixF
	for linux-phy@lists.infradead.org;
	Fri, 22 Aug 2025 18:20:09 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57MHVHIg021302
	for <linux-phy@lists.infradead.org>; Fri, 22 Aug 2025 18:20:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=NxtKtumnK8P7jbCRmulzU2bs
	GNNl6vGrxyGS2XDmajI=; b=IpuGHeU4jrXI4gbTONzrAZjNBA3CK7V8iBxkC60B
	sj5U69qXm/weLcj1eell4vGtNtYrJ/EY1pqfDac2TlDKpUBlsZSEUFqMThAFz3dI
	PB7nAi+FUyA7uegSWpZ03reG70vEsYs+DmT+jHmDdqIm/vb70nQeG04RjGcbldUp
	KDVoeVy7/lUgc1zAd+udtwxFTvlbJLTsJG5nPGBWN36FOH7ln6o7k0coLlCqgf9q
	IgaPem2IJFvGh8FZADYK6QmqEDp1jAn66IT2uIEw0s8Zv7whlF62C9JKbk90oYCr
	ziV1i+Q3PLdv0hbvAZE2tDiMWSsWQ4/RlFd36Do2GuNbYg==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48pw13g4sn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 22 Aug 2025 18:20:07 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-70d9a65c327so10903216d6.2
        for <linux-phy@lists.infradead.org>; Fri, 22 Aug 2025 11:20:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755886806; x=1756491606;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NxtKtumnK8P7jbCRmulzU2bsGNNl6vGrxyGS2XDmajI=;
        b=v4qPZ3GfPZDbf3hzWxW1p5GJR2V2vtuH9BCAcawK+MmLckn0KRaQmC/5Uc27cxbk24
         L7V2aFdwCvir9x0Q6WxEjdYk5hA4sQPYnSlhk5MQp3bNTbkvIF61Nl8nq0tzYv9EZ8cR
         eiuogpQegyJc7/tGXCPkJCrvQe4tjovOsVjhe+xteyjGewqrnjwNAmpKoA0vWB1/xquj
         yti3jC5nWLdmKXHje2sfZsMbCMgermXiY5w3KBIkSyfA1nsMop5qS8YMr3LT0swpoSym
         skxy81ZrQPAZtmX5GGw+p4hMpBOvNY7XWAkjm/ggVl8Q3ijoCkzFt96PLq6qYv5vO4YY
         AhmA==
X-Forwarded-Encrypted: i=1; AJvYcCWBG1AIBpmHQ6Jr9FPdMcwvQnisL27t2rdGPOSpolgksl3TZ7MnOf6Yw91+/tp42RXZsPGjwiyIB0c=@lists.infradead.org
X-Gm-Message-State: AOJu0YyWuUaemedB4PQTXB7Rkm00jZwt45qADIVs8Smz4OL+fZYn7UgT
	a4qBtwA1+NuO6ckiYMEmubWfPDybhkZjn/xWRG8gKfHfFT3pUhoAIK+yXnGb4AjcK2NCWdZzwNa
	1htppYvdNzwp93IWm5QJcew0tI/RjJtNJQvD5r2DtO8xjcev3KNPuWlyDsNvgmC47vPoh
X-Gm-Gg: ASbGncu69dR5L5Q6neky2Q1PupVRworKGgmaX0MRFYdS+HMWFAmsnDsljlH6qFbnm2q
	6qHLEFbZNunWST42UM82N/QLzoYW9EQ/gf0v/Yeuj7a1do8DcZrUVTNcobO0teWpEpvNG3oCoHD
	Yxy0y1Pu7HHE7bvVujgTe9vy84R32wDDY25R40doHMqdBN13tus5wZsKKkNirGEHg+VtIQzGUX0
	ktg0xjjX+MU4xNXSrcWNI+UaVdiRHhKjxO0S+9/HCPQI7nAA+f4MHDzoHcR6UxGASLEBfRP8bej
	Ym2QZl2s++mJtjongv60c1DAVpdNkKIU3nlBUnWC+g1MsDuf41l1li8nscJUpfWEk8L4Ct41zl/
	gZhbLyEMc0NRV9jjNWlOxmKcsQbs+q6FbF/jkE3sjbA/UMjY57fgm
X-Received: by 2002:a05:622a:1189:b0:4b0:8e2e:fd9b with SMTP id d75a77b69052e-4b2aaa6e774mr45148421cf.28.1755886806068;
        Fri, 22 Aug 2025 11:20:06 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHoFNCLWAF2tAYF5UUONq++OfHCr9UeqtIPtGxLe6haKB6Cwu0mLgt3aWR5hszae30Z3Zz6DQ==
X-Received: by 2002:a05:622a:1189:b0:4b0:8e2e:fd9b with SMTP id d75a77b69052e-4b2aaa6e774mr45147641cf.28.1755886805361;
        Fri, 22 Aug 2025 11:20:05 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3365e2373acsm665231fa.18.2025.08.22.11.20.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Aug 2025 11:20:03 -0700 (PDT)
Date: Fri, 22 Aug 2025 21:20:01 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>
Cc: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
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
Subject: Re: [PATCH v3 02/14] dt-bindings: phy: Add QMP USB3+DP PHY for QCS615
Message-ID: <vbzqtpsjkxd5qhth4k2exo2dsnfmfn5km5i5z74wun7jc5j7nb@n7dqdw3t235v>
References: <20250820-add-displayport-support-for-qcs615-platform-v3-0-a43bd25ec39c@oss.qualcomm.com>
 <20250820-add-displayport-support-for-qcs615-platform-v3-2-a43bd25ec39c@oss.qualcomm.com>
 <20250822142230.GA3591699-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250822142230.GA3591699-robh@kernel.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIyMDE2MCBTYWx0ZWRfX1pq7BteIStFZ
 RG/bEtLeJwgjFvIPg/jqoBBHAqT5I/J11Rk2t/odwrzAPaJHXVsf0qd9yvIdMQTjY9V8LSqy/iT
 K84xPM8Wf8lPJ4++ad+uIIsZ+UFDtm9PY/YetCLTxJK9jk7YjiOadbLDiUdZyVGblEbjUBXQjF1
 mOvwfkJe7Azpk8Mz8fP1dcuHemtEMBt0dDRKDveypoHXsoA7AiIGcGYwUMhcYg8u3xN2xHtqn+C
 e8ugU+4Y7gGntr4ElKWueW1MwKpooQKVUayDXRT73MPTazAIRtv78lSQilf5Ux6m7K4iF6IsCe/
 NEaLnQ5RUq+GlKXmKTucvMYE5fWkabrvxXkNEObV/p5s2fUEwdCv2k4ykoHH9KJV+qsHCyNKFIe
 /xvDH1r+
X-Proofpoint-ORIG-GUID: bMNnUxzAeSafXQtlgJrd_gj6MjfYzyiX
X-Authority-Analysis: v=2.4 cv=F6NXdrhN c=1 sm=1 tr=0 ts=68a8b4d7 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=FkOoeBMDyMZldznMw-cA:9 a=CjuIK1q_8ugA:10
 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-GUID: bMNnUxzAeSafXQtlgJrd_gj6MjfYzyiX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-22_04,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 impostorscore=0 adultscore=0 phishscore=0
 bulkscore=0 malwarescore=0 clxscore=1015 spamscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508220160
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250822_112008_456360_A3ADAF62 
X-CRM114-Status: GOOD (  19.87  )
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

On Fri, Aug 22, 2025 at 09:22:30AM -0500, Rob Herring wrote:
> On Wed, Aug 20, 2025 at 05:34:44PM +0800, Xiangxu Yin wrote:
> > Add device tree binding documentation for the Qualcomm QMP USB3+DP PHY
> > on QCS615 Platform. This PHY supports both USB3 and DP functionality
> > over USB-C, with PHY mode switching capability. It does not support
> > combo mode.
> > 
> > Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> > ---
> >  .../bindings/phy/qcom,qcs615-qmp-usb3dp-phy.yaml   | 108 +++++++++++++++++++++
> >  1 file changed, 108 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/phy/qcom,qcs615-qmp-usb3dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qcs615-qmp-usb3dp-phy.yaml
> > new file mode 100644
> > index 0000000000000000000000000000000000000000..c2b1fbab2930f0653f4ddb95f7b54d8fe994f92d
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/phy/qcom,qcs615-qmp-usb3dp-phy.yaml

> > +
> > +  resets:
> > +    maxItems: 2
> > +
> > +  reset-names:
> > +    items:
> > +      - const: phy_phy
> 
> phy_phy?

Yes, see other Qualcomm USB PHYs. And unfortunately we can not use just
'phy' here. Once this lands I plan to push corresponding changes for
several other USBC PHYs (described in qcom,msm8998-qmp-usb3-phy.yaml)
and those will have both "phy" and "phy_phy" resets.

> 
> > +      - const: dp_phy
> > +

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
