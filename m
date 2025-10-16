Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 54617CCD183
	for <linux-phy@archiver.kernel.org>; Thu, 16 Oct 2025 07:24:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V2c0PijABUFx3w7BZhKMab6Xv4knc1a28wThQIjhV9s=; b=SiRNNVKolA/Ew+
	nIYSeV1WI0sVv3I9ZFNhWY/l7RGfDbT4Z2NsRld6ef3gliL6ywRqI+3MtZEs1vEeDWqNvUsH0Py0s
	giiXbdbo3zlDy/0CN+Ryx7gFzFow3icvitoYFlcADYVnFeIiyELpR0f5nFGDMSyZ8pf3L4TOwYsd1
	mQ8stwRPLmlH5A/0UDy1xmJUqw4FVelw08urRojJj16ZBXXIw6D5L/WTTPRUKh/k87pLMzKypvumE
	Qrwk9As4l6JPWC7WMSW5PpMHFXFDo1zWygTku+44BRJNpFpJpa7LAsgs3S7M7fAhCAwMhYJsDT52G
	LZ/USfYKkYBI/QaE+1Sw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9ILC-00000003kTC-3xPi;
	Thu, 16 Oct 2025 07:24:02 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9IL7-00000003kSd-1dEH
	for linux-phy@lists.infradead.org;
	Thu, 16 Oct 2025 07:24:01 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59G6VpHt003418
	for <linux-phy@lists.infradead.org>; Thu, 16 Oct 2025 07:23:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=HNGoDb+vaeJYhaVScXJVKuKu
	/Vv4DWy6iQO7I53RXv0=; b=lcehCPxdI3Y3P4qM+yY4UhPyGsxAao5Pp/qdcZiG
	OsMZzCfojghPy6kLmWAQuHukdmPKI5dtOZlrv9CZmxrYxZw3ADW99vJTtiqw7uce
	1W44E0QRpEFdP8Xt7Ni1hOZTPYs+S9bKymX1SOX8a53k2jHcTGXeFn1dCi9FprYG
	5PQ+D5Vpx+HOi4rGzhpdM8oY8w7+dIcLYDyv1McaTcRTL8QuOthKT0qUn2BD7onW
	r2z4no7LHMbWIvn6qzyAiEJjYnv6jEHkWsXoxwOoXwPdhlRP8AXRe5Dmy2mx6dKM
	FhCpW+uv2KioBWzyoLNYccyX7+jb30gQRDNOIx3WR+3p0A==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49sua8p0yq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 16 Oct 2025 07:23:55 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b5529da7771so292426a12.0
        for <linux-phy@lists.infradead.org>; Thu, 16 Oct 2025 00:23:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760599435; x=1761204235;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HNGoDb+vaeJYhaVScXJVKuKu/Vv4DWy6iQO7I53RXv0=;
        b=la/WN66ZxRKD9oqE3d5J3s1FgGnJLk7kiHJjbd/aj5axI640ZtcpESH0yuRxAOzBaC
         zh2JmzGw1MLNS/TuMWHONYkgX2t3HP5weJOF7CKigg1V5/Cr8cpzh+2kJvdDYI5arQTV
         TINg4/aJLtL8iUIlB5qcDJqItHLeBLMaP63sjpriyihhmPOPsOxSarLhDkvd5Z+6ckmj
         oHNZ13EnyGTNIYlYLb5xYdfHL5BoDghVBAvk+DR+MfcKJ4lnCbZynWIDe97e8Pc9IAH5
         tw1V4Zo7oJRu1gNQA0mXn8p/34pA9l3FFTQpk7T8czUVB2JJk5BK1VbsO94CixINbJ9V
         x2dQ==
X-Forwarded-Encrypted: i=1; AJvYcCUAt78B8KShSDtxFtPs0cjo0R6r4/qWosTqufD5Z1fzHNVj1HpX40b9e+4aMlp+/cbVbhDoY/DBEVM=@lists.infradead.org
X-Gm-Message-State: AOJu0YyOnP9mD4YLgFhG38CVOF/5RESuq0EVrEzFn6652/ApgXRK9Sqf
	YcbrH1brsszZ+ggtECeAhGFcOY6JTutpnonn5HUPvaTtuUGsig0SYWRvu63tTFLY50WK945Zm7o
	L8hFSJ6Lu0M4ViI6cefm7XJYgyQqQxTGUJ1E0/jE4DKKgivJBn7VLkz2Rr2FbJYfFLOqa
X-Gm-Gg: ASbGncvrLdHF/lsR49P2Wrbzoz44TZondwXL3KzaGdso6eIChAl+5z/9yqABUmUD67N
	LQIBMDj1flLrD41eC3IEzu1NnSXfaQw7do99iN/XEJhRppl/rs+EUwG9HtbWVTeABLcmVLSPRX9
	hZheVvlHdnCm2HNjnzbrrCZJR4lWrJPJyc3xyj0zUEIyK0kgIF6il24u+SfiB91LRdjkYTu0ds0
	Gpr9NNwLJMHZbeWLcm2uMZ5qmSDMimMyz9zFFv0OI8NQlXDJ+Btd9aZQ0opHDiOhwNEPkA37nQF
	WcBoM3Q8VUEislgGgFcSPKbD3W8DjZhWUm78VUWiQnONgsrUPi0fc5sgouUzoamdrMQcGDNGigl
	jolY4uJxkQboTc4iLxr9cJH70ijtFf4LFj6pm72Nsh83AIA==
X-Received: by 2002:a05:6a20:9147:b0:334:8d0b:6640 with SMTP id adf61e73a8af0-3348d0b695bmr6237494637.8.1760599434708;
        Thu, 16 Oct 2025 00:23:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGwrFPYz5L+0gDGKdDM3zwqmU9HSI97jDmKx2e+L9OE61zcHAbhnCy3ioFU+PCD6S5glLBXkw==
X-Received: by 2002:a05:6a20:9147:b0:334:8d0b:6640 with SMTP id adf61e73a8af0-3348d0b695bmr6237464637.8.1760599434258;
        Thu, 16 Oct 2025 00:23:54 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7992bb116basm21248313b3a.30.2025.10.16.00.23.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Oct 2025 00:23:53 -0700 (PDT)
Date: Thu, 16 Oct 2025 00:23:51 -0700
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>,
        Wenbin Yao <wenbin.yao@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        konrad.dybcio@oss.qualcomm.com,
        Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
Subject: Re: [PATCH v4 2/4] dt-bindings: PCI: qcom: Document the Glymur PCIe
 Controller
Message-ID: <aPCdhz+kr/Hghol/@hu-qianyu-lv.qualcomm.com>
References: <20250903-glymur_pcie5-v4-0-c187c2d9d3bd@oss.qualcomm.com>
 <20250903-glymur_pcie5-v4-2-c187c2d9d3bd@oss.qualcomm.com>
 <w2r4yh2mgdjytteawyyh6h3kyxy36bnbfbfw4wir7jju7grldx@rypy6qjjy3a3>
 <7dadc4bb-43a1-4d53-bd6a-68ff76f06555@kernel.org>
 <aO797ZyWIrm0jx2y@hu-qianyu-lv.qualcomm.com>
 <w4kphey3icpiln2sd5ucmxgo7yp72twwtnloi5z7a3r3a63fri@fbebffeibb7p>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <w4kphey3icpiln2sd5ucmxgo7yp72twwtnloi5z7a3r3a63fri@fbebffeibb7p>
X-Proofpoint-GUID: 2BPlgNpvISb-LM3IEQGLjZckPjIhyKA2
X-Authority-Analysis: v=2.4 cv=e5MLiKp/ c=1 sm=1 tr=0 ts=68f09d8b cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=kj9zAlcOel0A:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=gEfo2CItAAAA:8 a=AS9496Lnv1pbona6PS0A:9
 a=CjuIK1q_8ugA:10 a=bFCP_H2QrGi7Okbo017w:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE0MDEzNCBTYWx0ZWRfX5PNcptQxi/x7
 PjdgmYlaQ8K3crZWIfDX1ycCeczhs7uf6jeEAIXfIl4mIWBYQ3ECoaW5edssxbsHMYQLRzHL7LY
 uism80ZIr8UsFMgIP9M4/Bocc/HPMtX2uYUWboPh17T3fN1uWg6ELvAnM3DmnOLU1SdEJWwPGir
 A/ETS2wA4a4k1vmDVt60aS6Dvyb0mkUa4VhnT+cFqD+u6Qw6BU1towbFvQfVFhh7AUuo/VixQiz
 6sAEcL5ALPQ1tGMbs/KHCquyIda628HQUgEBOHPw8MFztgY8D1LW0tjjYMDk35GzBzyCum9hp77
 mhoKALGkfnwmct/RlIS5JbJjoxCHoYv/DKdAIejomGYTjYo64X7N5i663ld47gp5p8C0RxSQECk
 cWCdvxIq6dnuS3jEG2Zyo2efKTBTng==
X-Proofpoint-ORIG-GUID: 2BPlgNpvISb-LM3IEQGLjZckPjIhyKA2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-16_01,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 spamscore=0 adultscore=0 clxscore=1015
 priorityscore=1501 impostorscore=0 malwarescore=0 bulkscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510140134
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251016_002357_545982_8A4CEFDE 
X-CRM114-Status: GOOD (  22.60  )
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

On Wed, Oct 15, 2025 at 09:58:31AM +0300, Abel Vesa wrote:
> On 25-10-14 18:50:37, Qiang Yu wrote:
> > On Sun, Oct 12, 2025 at 05:01:45AM +0200, Krzysztof Kozlowski wrote:
> > > On 11/10/2025 14:15, Abel Vesa wrote:
> > > >>  
> > > >>  properties:
> > > >>    compatible:
> > > >> -    const: qcom,pcie-x1e80100
> > > >> +    oneOf:
> > > >> +      - const: qcom,pcie-x1e80100
> > > >> +      - items:
> > > >> +          - enum:
> > > >> +              - qcom,glymur-pcie
> > > >> +          - const: qcom,pcie-x1e80100
> > > >>  
> > > > 
> > > > The cnoc_sf_axi clock is not found on Glymur, at least according to this:
> > > > 
> > > > https://lore.kernel.org/all/20250925-v3_glymur_introduction-v1-19-24b601bbecc0@oss.qualcomm.com/
> > > > 
> > > > And dtbs_check reports the following:
> > > > 
> > > > arch/arm64/boot/dts/qcom/glymur-crd.dtb: pci@1b40000 (qcom,glymur-pcie): clock-names: ['aux', 'cfg', 'bus_master', 'bus_slave', 'slave_q2a', 'noc_aggr'] is too short
> > > >         from schema $id: http://devicetree.org/schemas/pci/qcom,pcie-x1e80100.yaml#
> > > > 
> > > > One more thing:
> > > > 
> > > > arch/arm64/boot/dts/qcom/glymur-crd.dtb: pci@1b40000 (qcom,glymur-pcie): max-link-speed: 5 is not one of [1, 2, 3, 4]
> > > >         from schema $id: http://devicetree.org/schemas/pci/qcom,pcie-x1e80100.yaml#
> > > > 
> > > 
> > > So that's another Glymur patch which wasn't ever tested?
> > 
> > I tested all of these patch and also did dtb checks. That's how I found
> > cnoc_sf_axi clock is not required. There was a discussion about whether we
> > need to limit max speed to 16 GT and I limited it. I may forget to do dtb
> > checks again after changing it to 32 GT. Let me push another patch to fix
> > this.
> 
> Still, you need to add glymur specific clocks entry then, to fix the schema
> w.r.t cnoc_sf_axi not being needed.
>

I think the clock-names too short (cnoc_sf_axi not needed) issue has been
fixed by below change.
https://lore.kernel.org/all/20250919142325.1090059-1-pankaj.patil@oss.qualcomm.com/

About the max-link-speed issue, we will remove max-link-speed = <5> in dts
as max-link-speed is used to limit speed but I'm not limiting it.

- Qiang Yu
> 
> Best regards,
> Abel

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
