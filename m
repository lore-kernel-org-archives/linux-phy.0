Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2245CCCD18E
	for <linux-phy@archiver.kernel.org>; Wed, 15 Oct 2025 01:50:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ujRSlURRnPUEP5FQwsBf0iweZNpkfY0onDG+ajZWsAQ=; b=Sf2RwmRsf4wmPC
	InDmmhMg320BNjbPRLgMlJTFWjTYOj8+89R15jCytACQ0dWc2croglyvCB+CDgXVM2xGMTWETIaH/
	WJRkJ20h6wD64Z01r6fSmUDbWiKxSKBcUfM/+EwSh2aktQabV4WxCk78wJAAUzyTK3ua25nsApwJ6
	t/uOv5LaQAvMe6GOKaz+3r/s5r7eR7R52HxBJBOj0mauu79gFNqUS1VXbJ9PbA2P9KSe2fI74ejEk
	wKiSrDDXJfhlUUwlrdW/g7gK7/A/v3dhVexufLfdh6OfG0nItNzyyMaX43uRXaWsgx9/m3lXxkABt
	hCc3ZRchGs38J73YVPww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8qf5-00000000Buf-3RR0;
	Wed, 15 Oct 2025 01:50:43 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8qf3-00000000Btn-2q7A
	for linux-phy@lists.infradead.org;
	Wed, 15 Oct 2025 01:50:42 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59EKRH9U014706
	for <linux-phy@lists.infradead.org>; Wed, 15 Oct 2025 01:50:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=UMEzdqx389JwWZAC4l4+WiOd
	cOP/xrB76GzYftznSis=; b=i2E5z5A1AJr+3WMXNSpHS5OQmEQ5TI8D3PaJb/aP
	VEJ3AWrvK6LmI7BmQzaTUQsU0TxenSwIb0iJN9Dfme8KZ2rfl+eKHG5JcF5abg9g
	5BN45OESyyfyeSaXKdeq7+aZcYfRjE31nh9lIuFWoAIbfvDF/09IfwAMJ75c/qON
	0fPJ80iUNH2ESJeEEo1UMEZkz9VX//KwjqGK8HxArEFmGWqxH7v0oeLsigrFWA7n
	TQyTlZWLcvjf/l9+ZIcgh7V4NacRhYN8NkxsLlJVFUTCKI6J0Nj5QAUB1W0NDhQa
	xhEAZVfwgkPVJxFceitZGFAR5DQiKeoXCn1cgP6lcQDJVg==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49s6mwmxwg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 15 Oct 2025 01:50:41 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-33428befd39so22991851a91.0
        for <linux-phy@lists.infradead.org>; Tue, 14 Oct 2025 18:50:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760493040; x=1761097840;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UMEzdqx389JwWZAC4l4+WiOdcOP/xrB76GzYftznSis=;
        b=kVNOexMsgbZBU8j6WUxt/MiCQJBfIzQYk3UgnokmvUrw41gdks5ijQWxEMcS2QC31p
         i69YonofXEsdUzLd+5mxS6p13zRgs23DanuhkuIoREdqBTz7HXlQdPe3lt5FiCimaaGI
         qsFOMiauUDn/RVzFCf17i6GYHWfk4JQTwRCD2XLl/N6N0z+HqT5FK3qUvra9wdY6hoP/
         DrbkZ3gtmIt1eJIF+McLksAF97h4r/plby4Q7cP8P41+GCOuQgTUlqe+BswvHwSoDZ/1
         b66ZjwbFxFGKqoNu4yZEUB2hWPmMXzsLp2cSTq6fzJoudpDmPh3KCnDfIc8DvVaNqiPh
         IPTw==
X-Forwarded-Encrypted: i=1; AJvYcCXtNLJQIH0d+9Qu0xDU/vs37jS4AK6uRArRqafvJbtX7EkvqAvJSEyUGTeX8u0A/2URJKKGAgrMgxM=@lists.infradead.org
X-Gm-Message-State: AOJu0YwQhT5B03Ie38Ay0K9z8jdpKG+H1a8etlT2RzLNGTy7CZI19KWo
	3yYp3Wf1S5rQkSieV7NBzBUs7hZ3otETXfZMcU0Qcm/QByw0Y0KN5ImSB3AMvsPorwMTRwwSA/K
	sWyio714x1+7s/RYI8n8i09Hgt3KNndmU35FN2OYl78kTJEmSnIaZPRLOvDoE15BsDbco
X-Gm-Gg: ASbGncv0dr9v2LiPctED8ciQ5NX8ag35D4dW6e8vpuYOpL9v089JIbgvN62PMkrWmgy
	YrI+vWeqr+BnVZrlatiKqaqaDn21C9aZSkAAX48gJEb1j3H2BSa7D1qHKxjchq8wsJYsVsvWKbR
	ZZqzmxq1Pwdh03UpLo7kJG8Qw7cRjgE9BJcONiSaSWVIZiKKvA0BBn4P3GVe573nMce5iiowOnF
	w3Lzgr2ryj+cObUi1wEQUjBrZzeSZbdAhtg4gCY1yj+g6h39CbeS1bVumhXkd39KD2U/wifJPG1
	vBp1xAhRTomswotfMp0qaDxWe6rzVKjlGqtJ8fCq5oE9xrL69xrfQySiJCaUKKJn3ix4yzhK3ra
	ToABQJdBBLsg=
X-Received: by 2002:a17:90b:3911:b0:32e:7512:b680 with SMTP id 98e67ed59e1d1-33b51106b22mr34953995a91.1.1760493040369;
        Tue, 14 Oct 2025 18:50:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHnWtUi1/KGA/NsDwkjYP6WaNDZmXwB3TkYReHzrYgQhIYsKu3zKwyltFcVs6Z4M1leDOIagg==
X-Received: by 2002:a17:90b:3911:b0:32e:7512:b680 with SMTP id 98e67ed59e1d1-33b51106b22mr34953966a91.1.1760493039927;
        Tue, 14 Oct 2025 18:50:39 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33b9787a0d1sm317573a91.19.2025.10.14.18.50.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Oct 2025 18:50:39 -0700 (PDT)
Date: Tue, 14 Oct 2025 18:50:37 -0700
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Abel Vesa <abel.vesa@linaro.org>, Wenbin Yao <wenbin.yao@oss.qualcomm.com>,
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
Message-ID: <aO797ZyWIrm0jx2y@hu-qianyu-lv.qualcomm.com>
References: <20250903-glymur_pcie5-v4-0-c187c2d9d3bd@oss.qualcomm.com>
 <20250903-glymur_pcie5-v4-2-c187c2d9d3bd@oss.qualcomm.com>
 <w2r4yh2mgdjytteawyyh6h3kyxy36bnbfbfw4wir7jju7grldx@rypy6qjjy3a3>
 <7dadc4bb-43a1-4d53-bd6a-68ff76f06555@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7dadc4bb-43a1-4d53-bd6a-68ff76f06555@kernel.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDEzMDA4MyBTYWx0ZWRfX25TiyXZIA1oB
 R8P2vGCTJH3wEhgnvyd+vyvCfbxBtwxCdH+Tw93Hs+tX/V5v/DM4YSwyHB0+Rw6jYc41+WrCXxr
 M2pxkWaOErpCrjIJFXTA+xUwSCY9PztgwBmJj1e170L1gLC8G8oQ1pJNoeo085246OmL/UreLTr
 yrdr9FE4dK1TNaOOOnEKf4faCg7/p07LOxcTTD3En9O1fUPdNblc1NVFnV1bTiEpWtE68OCkDEt
 i6ZPaUg/0JvNpOwvHu95iLfUH+rwuKXk6jGT/h/0UiEkinsjbcMzvMKvmSeK/7TQJHUkTMPm0RQ
 cUCNwbaf9VmKScRZBIMBAnyJX3XKbtObiC7dPc5VCLgtwloSpprQgq/JayE3rowpIkPHhg6uuA7
 +IypE2FRlm4rKGrdWoHUnXMqL4vUCQ==
X-Authority-Analysis: v=2.4 cv=Fr4IPmrq c=1 sm=1 tr=0 ts=68eefdf1 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=kj9zAlcOel0A:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=gEfo2CItAAAA:8 a=DgPuKSVeHQMGQ7iqIbYA:9
 a=CjuIK1q_8ugA:10 a=uKXjsCUrEbL0IQVhDsJ9:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-GUID: pqqTYNYoF0wdDsfFb0XUjaha6J_UPvzY
X-Proofpoint-ORIG-GUID: pqqTYNYoF0wdDsfFb0XUjaha6J_UPvzY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-15_01,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 spamscore=0 phishscore=0 malwarescore=0
 adultscore=0 lowpriorityscore=0 bulkscore=0 suspectscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510130083
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251014_185041_719253_6AD49751 
X-CRM114-Status: GOOD (  17.48  )
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

On Sun, Oct 12, 2025 at 05:01:45AM +0200, Krzysztof Kozlowski wrote:
> On 11/10/2025 14:15, Abel Vesa wrote:
> >>  
> >>  properties:
> >>    compatible:
> >> -    const: qcom,pcie-x1e80100
> >> +    oneOf:
> >> +      - const: qcom,pcie-x1e80100
> >> +      - items:
> >> +          - enum:
> >> +              - qcom,glymur-pcie
> >> +          - const: qcom,pcie-x1e80100
> >>  
> > 
> > The cnoc_sf_axi clock is not found on Glymur, at least according to this:
> > 
> > https://lore.kernel.org/all/20250925-v3_glymur_introduction-v1-19-24b601bbecc0@oss.qualcomm.com/
> > 
> > And dtbs_check reports the following:
> > 
> > arch/arm64/boot/dts/qcom/glymur-crd.dtb: pci@1b40000 (qcom,glymur-pcie): clock-names: ['aux', 'cfg', 'bus_master', 'bus_slave', 'slave_q2a', 'noc_aggr'] is too short
> >         from schema $id: http://devicetree.org/schemas/pci/qcom,pcie-x1e80100.yaml#
> > 
> > One more thing:
> > 
> > arch/arm64/boot/dts/qcom/glymur-crd.dtb: pci@1b40000 (qcom,glymur-pcie): max-link-speed: 5 is not one of [1, 2, 3, 4]
> >         from schema $id: http://devicetree.org/schemas/pci/qcom,pcie-x1e80100.yaml#
> > 
> 
> So that's another Glymur patch which wasn't ever tested?

I tested all of these patch and also did dtb checks. That's how I found
cnoc_sf_axi clock is not required. There was a discussion about whether we
need to limit max speed to 16 GT and I limited it. I may forget to do dtb
checks again after changing it to 32 GT. Let me push another patch to fix
this.

- Qiang Yu
> 
> Best regards,
> Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
