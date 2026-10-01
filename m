Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 03EA9CA5FC4
	for <linux-phy@archiver.kernel.org>; Thu,  1 Oct 2026 01:32:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ee/J6H9zgQuG1lmVFIIFy9PCOhZI4OYDVP15LVmF+Z4=; b=Wk93KATalFWFZS
	fLxqzlVRjbiCyR/4RGX5YCb+M8jDiYpnOcKfnT/VeLM39HHo69VRWShvrnSUJSI98RRaxtsGv6noR
	Vhzpqwx5d8voMz2Ud4OBuZN/wBOinmqjD1GKLGwqsea9yvEPFKcF28GBEuU1raDFAD/ssPmJzIBI6
	OtgI7e/YBQIqfVYsj1qff8VuNP77csGP0DdI9PhYgCsM6+07AMvnxOjVErECZ1QdFhHZdNnMX2ZPP
	Xg5G11Lwejap1nwVn1LtZJ148yJDPBoOhFXRiuLkUJ+kCiNUaf3prV+KFi75cFCJ9Mwr4XhHXU3zD
	HYfYD+ZN7sZed8WM5tsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xC5eY-00000007Zi8-35RQ;
	Thu, 01 Oct 2026 01:32:06 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xC5eV-00000007Zhg-12Xr
	for linux-phy@lists.infradead.org;
	Thu, 01 Oct 2026 01:32:06 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6910jh6Y2098510
	for <linux-phy@lists.infradead.org>; Thu, 1 Oct 2026 01:32:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Z5DJXNvk5Weolt4AKmsTjVt+UqV6Bq165jLKrQEAxU8=; b=owdQbXbIojqiN6Bd
	GqRk5nxGe4xu0O0WW0RTB6q7qQyjtMtpMp3tS7DbtCoTmDdzqr0tLJtd2L2tyuxm
	/jqvQYuY3NoIp1xM6eaMf2iJH/9+0z+K/oNxNHhdTy9Pfbka/W7R+s4RHaq6zQvY
	H6m0H8tGamYM+KcQKQS95KHz2VCPStw3md+0pmQyIBP/l1Sq6OobK13Oje8wZqi+
	M7ceAOcd4sRM4h75XDaG8wB+xbHUL53PBP4Rpj4U6l0BWaRWao8pUHFlzvPx+k41
	UluZOkVvhRSnCNzYLQAsbqr1NShvfg9IlJ9EGBsVICrBI/0d37JLuA3HlYwoquHs
	beVyaw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h136tjvce-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 01 Oct 2026 01:32:02 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-93bfb2da664so1608689985a.1
        for <linux-phy@lists.infradead.org>; Wed, 30 Sep 2026 18:32:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1790818321; x=1791423121; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :content-type:mime-version:references:message-id:subject:cc:to:from
         :date:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=Z5DJXNvk5Weolt4AKmsTjVt+UqV6Bq165jLKrQEAxU8=;
        b=A5uzpClhUNlVbb9a34lTzArk0bMRSm2K6V38NVmmWQ4k7VLnn4y+mN1vt6WOc2hlg4
         AadoYW1EzWhDQzHzX+bS9ddvVnKgmJo2ZznIpxcHgDNvti1rn8MJEpzkkEO+zR5W7QrY
         bGAOnCqZtZvCFdbG3ymsHFsXDHAuiJ2d12RUJeWzgn2oQ0F1gnFMRbsmEi/cj38Ekk09
         OVJgyFcdx21VcjhyyeoyzBFGjnh0AASkDu+q3P7ugwktYC45z9o1kLmDhIb/rh7PRBXu
         I6rXMFo2c6YNZTWqvYXeYizBts0zK39JHmjq52eMeIhBMPJM9gRqR3UqBEberE094Gdn
         4NSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790818322; x=1791423122;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :content-type:mime-version:references:message-id:subject:cc:to:from
         :date:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=Z5DJXNvk5Weolt4AKmsTjVt+UqV6Bq165jLKrQEAxU8=;
        b=PikodnjaOBPXSSPwktdyg7KfUZ+SXz2/JKSJK1Q9UY/OHFAlvv491+BmEniv/keCH2
         vCTL5nDzABSqNrjlLRdlV2mMDziW3IjEiFyeszbL+uX/FRv9NvzaKJ4O3iY2S1GKC7o+
         JMa+ZyXZkhEgc8iu80a4U40bPAHYV2CIi5riTxM7kCd5EfL17Yn57pQ/IcaqwxRzR8JK
         o3N8AsoWDUPlIE82KoLneNg3+HenlSeM76NIpp+Z71vXNJjHOp6ZB03a+Za/aV3S1GuX
         MJmncPQRrL4oaTdm7gGA9k8B7gPqjV78P9uZgljgsxM3rWGdI1GH+4Omc7sdJ15SVCnY
         qTjQ==
X-Forwarded-Encrypted: i=1; AKwUvBz8i+CsBaXmKgXu15Z/Wj/XtRXNLtBWDlEILX8KNAgcLov99vGzy645Tf0RT5x8uEtDolpvW5mRgRE=@lists.infradead.org
X-Gm-Message-State: AFuF++lpiW/vhog4klir/NjEKKhKyeMBl3UdRUv1PekrWr29i0GCGanT
	x4RBhW4l9dB6UWYn8gBCa/gwNbRfksi/NMyrzqfg0Hs23a0S5f0pwkmJuldAqcMt95dzgj+Gpag
	CRrnCy3Y52WJnB/VraUcHDkAuo4CvXZs6SepA0sSx265E3RozmlHXBdBmi/pwhihzKgON
X-Gm-Gg: AYBFou26Em2WdQdIUYMB/0UVj1ByP8grH1YkCRrkGP2NVCAVmrph/0PgG9D6ZMEtvmO
	7hD6cETrcB7uDZWfZHiioS0Vek58aeM7uVuo+Xg0AxXU9q2zgXWqlUKzZ8Q8V5Jp4Wk/EJfbJQY
	gNZ2NEnNYLc5CzFv4YoiKxg86mNxCf9nwFFDABDTojn9LZdbziXLsWLWDTdKVCg2ZC1YrEo54p4
	ud1icrAn6y6GoRl6GzcLes/9X3uS1elSPoRCbUAtf2LUyhtqkmyyHVqlS8h0RdJJOMJnOhNe/LJ
	aUbZR4zXuGhvrr1hUAtRB0ySdQs/dn9zu/slpW6BOLoHSpSSeASKsxEWJjX38SRuOZ9Nn3NDgrn
	IXdN+WDsAkVTf8Z54da8iOqm4Z6D5J7a5C4yo4ZcOHHRB4rj9BYkm7z/cI2byKFvz6IRy/GrRSm
	tx33jXwnJ2cJM8
X-Received: by 2002:a05:620a:4504:b0:93c:6b90:1d18 with SMTP id af79cd13be357-93ca97b9304mr576011885a.62.1790818321515;
        Wed, 30 Sep 2026 18:32:01 -0700 (PDT)
X-Received: by 2002:a05:620a:4504:b0:93c:6b90:1d18 with SMTP id af79cd13be357-93ca97b9304mr576009185a.62.1790818320992;
        Wed, 30 Sep 2026 18:32:00 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3a779076c17sm8919831fa.41.2026.09.30.18.31.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Sep 2026 18:31:59 -0700 (PDT)
Date: Thu, 1 Oct 2026 04:31:58 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Nabige Aala <nabige.aala@oss.qualcomm.com>
Cc: Shawn Guo <shengchao.guo@oss.qualcomm.com>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>
Subject: Re: [PATCH 03/17] dt-bindings: display/msm: Document Nord MDSS
Message-ID: <pco56quuwsogsi52cq25e7dumiwigqth3aays4snvwjbntonwn@hjjy6tyqinly>
References: <20260911-nord-drv-dt-v1-0-e25c073cf1b6@oss.qualcomm.com>
 <20260911-nord-drv-dt-v1-3-e25c073cf1b6@oss.qualcomm.com>
 <aqtECDwHPiUUZqTB@QCOM-aGQu4IUr3Y>
 <7d2611bb-532f-4553-9d16-66c4b9c495c9@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7d2611bb-532f-4553-9d16-66c4b9c495c9@oss.qualcomm.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDAxMDAwNSBTYWx0ZWRfXyclr0Z8olaB0
 2P6A8N4XI0FSe8innO4o3LOPYdtsP/UFfjb/kB6q3KbRQYtgOuoMwJSOckUI2fgxD19JxC31vlP
 B4oW3TDCgSxJ1StiZlk/RIeWKqG4i1g=
X-Authority-Analysis: v=2.4 cv=aPFlOr9m c=1 sm=1 tr=0 ts=6abdb812 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22 a=gEfo2CItAAAA:8
 a=EUspDBNiAAAA:8 a=ybxY3fLTiW4QoAl5E9EA:9 a=3ZKOabzyN94A:10 a=wPNLvfGTeEIA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-ORIG-GUID: cAOQYx5xUuwGjnC-IIi-N7XmdEsXgZJo
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDAxMDAwNSBTYWx0ZWRfX2+CSZzHIJiA3
 qarY6qyBE5gqKbVcoL0PfFKVpRFdJnDcopCRbp4cWBPsopi+KZs4gwOnolPNYQbs+OcyjlV0tdK
 RLXcxqa/Loa9TiI8IvwiTTvKI4pcnWBsEtzWc8yGmRDx2PuWZqwU2rHCFqbi3MvU8ASGZKaF4ny
 0QhnX0dmMqVM0QzKrmkzvswm8W/NppxhNYAeb/yLeZKwinQylltkRD5t1KHMlZq3YQOy0O9+DPA
 YAPduzcAJEZNC0//pqSgFdvWf9iEe3mMD7052E1LteUZbXTqLhzSVeTz+iRzDqJC8Dau+K9hXCm
 m/hNDE0VdvvrETIxtwSgXNNyNPJXpxwa8K7KDT7NZ8s9R2rkSszA6Mo89B9gEABC0VktAb03Tlk
 xsoxioTD8XgNsLpm87UV32QiDkm6SWcONW8iArkgAiOXVPaDq3+zmXVom0btro4k+v/GVEHJrB9
 bGMagZ0jXoqOt5YwJLQ==
X-Proofpoint-GUID: cAOQYx5xUuwGjnC-IIi-N7XmdEsXgZJo
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-01_01,2026-09-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 adultscore=0 phishscore=0 spamscore=0
 malwarescore=0 impostorscore=0 bulkscore=0 lowpriorityscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2610010005
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260930_183203_325097_2F246EDA 
X-CRM114-Status: GOOD (  27.47  )
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

On Thu, Sep 17, 2026 at 11:12:38AM +0530, Nabige Aala wrote:
> =

> On 9/17/2026 7:06 AM, Shawn Guo wrote:
> > On Fri, Sep 11, 2026 at 09:06:34PM +0530, Nabige Aala wrote:
> > > From: Mahadevan P <mahadevan.p@oss.qualcomm.com>
> > > =

> > > Add the binding for the display subsystem (MDSS) found on the Qualcomm
> > > Nord SoC. Nord is MDSS 12.1, DP-only (no DSI), with two independent DP
> > > controllers.
> > > =

> > > Signed-off-by: Mahadevan P <mahadevan.p@oss.qualcomm.com>
> > > Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
> > > ---
> > >   .../bindings/display/msm/qcom,nord-mdss.yaml       | 98 +++++++++++=
+++++++++++
> > >   1 file changed, 98 insertions(+)
> > > =

> > > diff --git a/Documentation/devicetree/bindings/display/msm/qcom,nord-=
mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,nord-mdss.ya=
ml
> > > new file mode 100644
> > > index 000000000000..0b0cacdca9db
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/display/msm/qcom,nord-mdss.ya=
ml
> > > @@ -0,0 +1,98 @@
> > > +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> > > +%YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/display/msm/qcom,nord-mdss.yaml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +title: Qualcomm Nord display subsystem (MDSS)
> > > +
> > > +maintainers:
> > > +  - Mahadevan P <mahadevan.p@oss.qualcomm.com>
> > > +
> > > +description:
> > > +  Nord display subsystem consists of MDSS (display controller), DPU =
1499A
> > > +  (display processing unit), and display interface controllers (DP o=
nly, no DSI).
> > > +  This is MDSS 12.1, DP-only, with 2 independent DP controllers.
> > > +
> > > +$ref: /schemas/display/msm/mdss-common.yaml#
> > > +
> > > +properties:
> > > +  compatible:
> > > +    const: qcom,nord-mdss
> > > +
> > > +  clocks:
> > > +    items:
> > > +      - description: Display AHB
> > > +      - description: Display hf AXI
> > > +      - description: Display core
> > > +
> > > +  clock-names:
> > > +    items:
> > > +      - const: iface
> > > +      - const: bus
> > > +      - const: core
> > > +
> > > +  iommus:
> > > +    maxItems: 1
> > The DTS in downstream repository doesn't seem to agree. There is two
> > items for iommus.
> =

> I checked the Nord IPCAT. the resulted SID is same for both the SID (i.e.=
=A0
> 0x03e0) in downstream repository.
> =

> I think we should update the downstream DT and use a single SID entry.
> =

> > > +
> > > +  interconnects:
> > > +    items:
> > > +      - description: Interconnect path from mdp0 port to the data bus
> > > +      - description: Interconnect path from CPU to the reg bus
> > > +
> > > +  interconnect-names:
> > > +    items:
> > > +      - const: mdp0-mem
> > > +      - const: cpu-cfg
> > > +
> > > +patternProperties:
> > > +  "^display-controller@[0-9a-f]+$":
> > > +    type: object
> > > +    additionalProperties: true
> > > +    properties:
> > > +      compatible:
> > > +        const: qcom,nord-dpu
> > > +
> > > +  "^displayport-controller@[0-9a-f]+$":
> > > +    type: object
> > > +    additionalProperties: true
> > > +    properties:
> > > +      compatible:
> > > +        const: qcom,nord-dp
> > > +
> > > +  "^phy@[0-9a-f]+$":
> > > +    type: object
> > > +    additionalProperties: true
> > > +    properties:
> > > +      compatible:
> > > +        const: qcom,nord-dp-phy
> > > +
> > > +required:
> > > +  - compatible
> > > +
> > > +unevaluatedProperties: false
> > > +
> > > +examples:
> > > +  - |
> > > +    #include <dt-bindings/clock/qcom,dispcc-nord.h>
> > Please run dt_binding_check against mainline kernel where the header is
> > actually qcom,nord-dispcc.h.
> =

> Ack, I will update according to mainline kernel.

Just drop the header from the bindings and use ephemeral clocks and
resets.


-- =

With best wishes
Dmitry

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
