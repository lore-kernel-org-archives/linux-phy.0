Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0E492CD343F
	for <linux-phy@archiver.kernel.org>; Fri, 15 May 2026 10:50:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3ld2RXc2AyRTmxQs2VL6G78vaPseGGG2FD9xsLh7V80=; b=RfqwsaD3Hp06KU
	0ECm5EB+j+ffVDFRltsjz+N4av+afYVW/DpXxPX4NV+zIOT8BZwFOh9Hmj6MFUpWwYR4aHkkLcREi
	1xX7MZrUXiYzNZVDf2G8swHYJMLa8ebv5qdBiGjP6d6PsS8Dobr6ZQQeT0ZYjDhHQ/BNXtfgW6qQQ
	kmGX2O5RuA44yZ1Jon61vzimdioiQqqstpMa2Qo+KL2c3JLzR8tIKdNS51ngCWuOEFz0+Si+qLc36
	AsqVbR6rulcuDQGnsFNX/PzBkdG1MUxL3xPdZptThohbduJ6x887NIC3TcYj5kVy/xSAjzjGySKtV
	n3MSJZYrzcj1ZxVcD1oA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNq7p-0000000864K-3PIf;
	Fri, 15 May 2026 10:50:37 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNq7m-0000000863K-3nZ6
	for linux-phy@lists.infradead.org;
	Fri, 15 May 2026 10:50:36 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64F513ai4008506
	for <linux-phy@lists.infradead.org>; Fri, 15 May 2026 10:50:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=MMeHdJGAoPxBJnSt0nIPV+8E
	rlI4Sfx8ecRBUEHWylI=; b=SPyz0r+nW3IiKDnpPdTPa4bXtTwetQg1r3hIQNGG
	Ayi0oryNOL35dgw+QU9YvoOA8tDGQ1k5QaTWpej2Bj2+foN3zpxsa4OJFoqHM7HY
	OMouaIglQKjbGLFjhFhV8+G3zRCvOwLdD5aVpGU+CmhizdFZ9naqG2XaO7lJSM/q
	Q1CA5Hdxl1igVo+sc28F9rFVK4imWsUT/bvq3hky07ooy3xiHgS9VfgF8Jqm+q3m
	jg29RNplMCo5TmC4AAM8brCQ43M2GyrEusprV/kPp0XQkOt1YsfqMhB+xJoLMuLG
	daQ1dgDz74wZH+qE5P/6sO5Kl4Wh03m0UeVKD6s/WHMQDQ==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e5m1stx3k-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 15 May 2026 10:50:33 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-365faf6006dso10513642a91.1
        for <linux-phy@lists.infradead.org>; Fri, 15 May 2026 03:50:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1778842233; x=1779447033; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=MMeHdJGAoPxBJnSt0nIPV+8ErlI4Sfx8ecRBUEHWylI=;
        b=Zbsjum1fO6IFAnK8ZrS5Po5CLd9nCJgXlSWLcHMJoUPXfAXGt6UfOV7WNFLKnuENYC
         AQoS37pqmfHF3A6OXftJJ88rdvdMh4m2qaNVkHHDxk0bqLRvREvqf/xKAY8YLYRwtWTv
         5wzKp12V2l52XptJi67wFCJlw5x7DixFFVqTxW2QePJzmoKGE2D4Flm85Ra6CjmBXx5X
         ec7oOf7PTdB+ZD2v+D88iXmUvaTxJRloYoc4pAoq8W/jY9FpmN9G7w9hy/lY+XKgsu+D
         JD/52/aGll9+C7tBNPBmMlwUdRc0iIQdSiqn3WX4F5R35FYRfe0jDBcKkZXVd+yddkh3
         d/fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778842233; x=1779447033;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MMeHdJGAoPxBJnSt0nIPV+8ErlI4Sfx8ecRBUEHWylI=;
        b=Inx6Ua6Nyj67HSpfcnMbJ2NA3Amv6SYYSOMMuU3R797NfLNWfL806VGpZxXdomM1Qk
         RzbWoyYZnVaGXUJMQoeJ4u2muZmkm6zPnpPV/yNAiV38/yll2K6m8J7mgzuAAFltA30M
         UThb4Xkr4N8IVBhhmpNw2Z0FVD+J6VpCwXpqWmPvnedhQhpU0lCLZ3q/FcXx01Cs/BBZ
         Bguf6EsOMP2lwNwK/9LlYLeF2N3EwKk7x3c02huEcfbKUDrrRidJBvNgtYybZl3pbqNG
         3PKwu39PcPD4RMT/Sk3L2cDrbvO5xxoE9TxXp9ZdV+JJgHbSD9MxASOgMBoQ9C8b++RV
         SsoA==
X-Forwarded-Encrypted: i=1; AFNElJ9n9pTkrPmnHR7FkzShi/EPqHVDW40bG3gbrudp8/HbWPnXU1p2HSt8hAWFORvTqdDUabfpEKWeKCg=@lists.infradead.org
X-Gm-Message-State: AOJu0YwqqSkzlR2bOwTJGg5i7cqcnj/h6/fnncZv2L/O/Eum92kX/Ldk
	luxoGPVdsrP6FM1/JczwKVgKNiOx8VnssvbR1AKQ3r4JPVGLPM9QRGqyuLjk5lGglyNENdJ2DNL
	ks5Ho6+wtv0yFAfmC+zWF6kJacZZU79Qjo6afLDNViJarq8muXiH7MF/r5LALmuoGr6DW
X-Gm-Gg: Acq92OFjvUVYivalBoWeXxIP/FltCofTXiiudIyw5n4o3C/hWZmPPu3wYeqAPXySfZA
	GPdvrkloXvBCJKAc8YM5dIwDPRkIiPkCNEHgyFbpTIlxp5SK2V60HdR8Z7amnO1qPCFnKRudjKp
	7X+V91AxZei1L+kEypbw0e+NvKcq17IzDs+lQ8PBEDqRhhewq+j4oT9sbEWBpDRaX3qCclLlGCs
	ZjGGqsBEqS8HmGdRdR9poyDSZ1+DmTeV4mZKn9GKw3E5QKzo8ETWReqPatOLHtA37VLvH9I32PV
	b1KnKm5qaxzv6kQJpQ3K+gnPqAj6O4liT88q/KEsq04LQE6h40kATpFdDCoAGRl6xDqD1G0tP0v
	9Yh3aVDDolf1jAS8Rk68dNZTc+bhk1pjmtYZEC8cR4cq+gZXyOmJAqADIMthdHhI/Sj/2M6KbPX
	n53ey+btjn1MuPd2enkdEcnpGDPW2PfzKc3SQuBmLzviWhM2kGjkI=
X-Received: by 2002:a17:90b:48cd:b0:366:346a:6891 with SMTP id 98e67ed59e1d1-36951b82818mr3581240a91.16.1778842232691;
        Fri, 15 May 2026 03:50:32 -0700 (PDT)
X-Received: by 2002:a17:90b:48cd:b0:366:346a:6891 with SMTP id 98e67ed59e1d1-36951b82818mr3581228a91.16.1778842232204;
        Fri, 15 May 2026 03:50:32 -0700 (PDT)
Received: from hu-varada-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3695a0e93e0sm576682a91.10.2026.05.15.03.50.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 May 2026 03:50:31 -0700 (PDT)
Date: Fri, 15 May 2026 16:20:25 +0530
From: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: phy: qcom,ipq8074-qmp-pcie: Document
 the ipq5210 QMP PCIe PHY
Message-ID: <agb6cSAul9aLbnh9@hu-varada-blr.qualcomm.com>
References: <20260514-pci-phy-v1-0-482429192746@oss.qualcomm.com>
 <20260514-pci-phy-v1-1-482429192746@oss.qualcomm.com>
 <20260515-optimistic-hedgehog-of-penetration-b34227@quoll>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260515-optimistic-hedgehog-of-penetration-b34227@quoll>
X-Proofpoint-ORIG-GUID: pkscN4ArzL4ix_mXeeZWhRr-8dbc2wfX
X-Proofpoint-GUID: pkscN4ArzL4ix_mXeeZWhRr-8dbc2wfX
X-Authority-Analysis: v=2.4 cv=cZPiaHDM c=1 sm=1 tr=0 ts=6a06fa79 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=kj9zAlcOel0A:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=CmgulrJ2bCN2atHQ318A:9 a=CjuIK1q_8ugA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTE1MDEwOSBTYWx0ZWRfX7TmY8i4+FlYl
 0Qg6SuaJOCIErzSdJlq0PI/x/1VpbNCHd+Rc8AZImsvj2ca1PFl0sqMBNRyIx1BwD6YsKRmu7LH
 wM6e9ztQ4uwAdX46kykIQFyW+8H33i9EcULGFpQ8EigErE54prqPC7vuLAi1mVfKC95srEcfKJ/
 kSdtu/bWFeTjbpCV8jex5MsdPVGVmNjAX3v7oo8dIW3Ff2p5Feau2kulih4JBwkqqpv3et0z2yX
 fjC2995t3zvGAtXT2n3EABgUpkkxQ/ON0DTOf+DUBt1AyehmcBexmKb3KeDoekCLPeVSYvH5rul
 Pf+N3wUWloa7X1fYxuOI+ISnj4L80P78+JeecDXBRpJpWjUe3Ap24+hu5+bIUsaSwoZ7oO+Jhgn
 TlMUSJmVgB9/qOg50EmpSCWuua9Nmy7Qao8n3by/ZQKqUaM/qIjncpCpH1GK32vVsVI3CayTv0t
 MEL4d5gh5jp8x+gcFiQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-15_02,2026-05-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 clxscore=1015 spamscore=0 priorityscore=1501
 adultscore=0 suspectscore=0 malwarescore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605150109
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260515_035035_119959_D06AE2E1 
X-CRM114-Status: GOOD (  19.42  )
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

On Fri, May 15, 2026 at 12:47:00PM +0200, Krzysztof Kozlowski wrote:
> On Thu, May 14, 2026 at 09:28:28AM +0530, Varadarajan Narayanan wrote:
> > Document the PCIe phy on the ipq5210 platform using the ipq9574 bindings
> > as a fallback, since the PCIe phy on the ipq5210 is similar to ipq9574.
> >
> > Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
> > ---
> >  Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml | 3 +++
> >  1 file changed, 3 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml
> > index f60804687412..1ac31439c20a 100644
> > --- a/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml
> > +++ b/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml
> > @@ -17,6 +17,7 @@ properties:
> >    compatible:
> >      oneOf:
> >        - enum:
> > +          - qcom,ipq5210-qmp-gen3x1-pcie-phy
>
> 5210-qmp-gen3x1 here
>
> >            - qcom,ipq6018-qmp-pcie-phy
> >            - qcom,ipq8074-qmp-gen3-pcie-phy
> >            - qcom,ipq8074-qmp-pcie-phy
> > @@ -24,10 +25,12 @@ properties:
> >            - qcom,ipq9574-qmp-gen3x2-pcie-phy
> >        - items:
> >            - enum:
> > +              - qcom,ipq5210-qmp-gen3x1-pcie-phy
>
> and here?
>
> >                - qcom,ipq5424-qmp-gen3x1-pcie-phy
> >            - const: qcom,ipq9574-qmp-gen3x1-pcie-phy
>
> So it is or it is not compatible with 9574?

Sorry. It is compatible with 9574. Will fix this and post a new version.

Thanks
Varada

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
