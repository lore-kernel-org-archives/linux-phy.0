Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A082CCD18E
	for <linux-phy@archiver.kernel.org>; Wed, 15 Oct 2025 01:42:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sg1Asvy6iCLAZMsXFjyY03mccUQz7Ithzv1BN4DQ1Bk=; b=OHJA0/70QIgR9M
	AZxbQ235bJwENxBGE0lRzyb9gohposF9CVrQhgXJTNX979WherCDha4F8K/Gf/CyEY16O1TBFN1Vd
	bnpUZzrCk9LTTLDzPC35x9hFJ5Vm6aDZCVTsnte+yeuIWIxTSpoCJmRk6mSxxW9e17ZPRpr/7j2gE
	1owJcT0dqnsFfmlBe8Fo+6673Qss+AEBAZQhU1kfIf0zr53s0G69879rFfzaBB9S7WYJlgq53jWeX
	ZaF/2MGyxafT9lO2TZyNPDGc8S9Q2hzAjLTOY2XMBFa5g4Fz2Hs2fN2f+g7WWUM5/qtHbDmJqwQ//
	GuQ7GH438Tc6cGOAS1Wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8qX5-00000000Anc-2CKv;
	Wed, 15 Oct 2025 01:42:27 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8qX2-00000000AnE-1IPA
	for linux-phy@lists.infradead.org;
	Wed, 15 Oct 2025 01:42:25 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59EKR4F8014411
	for <linux-phy@lists.infradead.org>; Wed, 15 Oct 2025 01:42:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=4yzH2jg9a45gSQQ9qcgiuKVk
	rAKqNZa+ZRDXMqcKqyI=; b=WtLmbErP+4GMZ33mTJ3TZMt+QbvIVHuos0pSv5X8
	PRkumE2ooiycyK7rHqwY5bkqWO7j9s1JNoOEwYqvgo1y4Bg7rK6AkbKiedQN18Mn
	1bE7V2hjrvPNdA12y8kx28h812Lakjc3AYgHT23TufZ1olW0msZFQ9zqgYMHqJlB
	oR94AW+nAuZrBiHsjonUgzBtBpi+cMzxiXIyZNy2qJ3h+9C49dgP7aUW80mYJQ/d
	PSRpfx7/u3TY0LOtjbWwsdhdRLtO7bCQXXDfJJpiCGXB6SqdDi0biieCC07wzG88
	AABhx4SXozewgdk8U9Gj1k9HxC7U0U7RbMSuDyej3KCi0g==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49s6mwmxar-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 15 Oct 2025 01:42:22 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-27c62320f16so118413165ad.1
        for <linux-phy@lists.infradead.org>; Tue, 14 Oct 2025 18:42:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760492542; x=1761097342;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4yzH2jg9a45gSQQ9qcgiuKVkrAKqNZa+ZRDXMqcKqyI=;
        b=WsbZjzvIQy7hjFOHsS1rkM0v8V2uu7afD8YkqC0h/KacKFw7wh9rTSy3KKgOMP+4z+
         uPbIWaGKBIdujvIwpX38Hgxjdahna41CgYWL4AUs3SwWVt9LeWuss08E/BnbCgHqaXpK
         1xSaKT7jLjlAMdnjLfX5EVGztUMCM1CTiqZP4HOLPTz/s1VISKmgVX1nK9lgKMwxI/m0
         ApVOkQ3gBuNxkNL3f32K4OUWoU6WZga2h1WT6nwFHD3pSAvDk4KXMrNxteQnoAVsXKYJ
         TcTHm1EfQleqPfOF/74fFCR9XuTIUjJL2TwQ1FtswE7lOtOi3qYYFZn/eLLwxZ4LDLNQ
         6+qA==
X-Forwarded-Encrypted: i=1; AJvYcCXvFsrOXdd7BYckkp/tFmUdA0xSrtq2Ej0upX94dEfy4kppWaWtsInLS48S8Wc+yEEBwDBR0BPrJxc=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzo3RJA7xnMg3cGzo6AyQ6ZD3HyBKWiBsqIumx5pOlxJA8N1itB
	YvtVH6JVHakvgJ6MYCeI8JhcJsRtcupzL22ZIcmXFAT5708UhL60w8v3BIzc/ZES6tceoOqDdHi
	89SzE4XOu/tbyo+lful7tWO0q62z/nRqkHw1z6uiLa/nYDjR3QXigTejk8zGwh5H/wjHm
X-Gm-Gg: ASbGncu7JCnM+JYvEvZoULr0z6wAEdYex0m8Pxgv8+vAJSGp8PbLC4C6UHUQe05Zt/A
	TJ4YYWhJPVfn0lql0qNfeCNJNcd4E9Zf/xVRIftiwxJRJ/7pWGH8lZ+t1CCcFFFWqro8AIX1rgb
	mC4a21qwj/fNNKizTd+AYELPECbnpeMn+gn2YJxf7xbG9TNL3kcv4qISPl7nRARXhUK0uFeb5lo
	bTkfNEELT6aOVppuEznH/mwkHclD9+EkqE64klZLe+3HJiT+WHroTRMwJDqZiQJtBshuslfOv00
	2itybEbrC1M2aTzz7+6VKrmbbjYE9pulyw2KyfJGSaLnGIta2EmakkihFAfTPzQg7szQrukx0Fo
	3x3WRU8b3U10=
X-Received: by 2002:a17:903:37c7:b0:269:8edf:67f8 with SMTP id d9443c01a7336-290272ff5b0mr330503165ad.52.1760492541780;
        Tue, 14 Oct 2025 18:42:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFd26Ya7KeB0vsQUfEI+ISuhvFzMq20QrNpYS1F5gorwosC6uljCBBbCbaNjNXiab7DgFLXww==
X-Received: by 2002:a17:903:37c7:b0:269:8edf:67f8 with SMTP id d9443c01a7336-290272ff5b0mr330502815ad.52.1760492541311;
        Tue, 14 Oct 2025 18:42:21 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29034de54d2sm177801145ad.12.2025.10.14.18.42.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Oct 2025 18:42:20 -0700 (PDT)
Date: Tue, 14 Oct 2025 18:42:18 -0700
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Wenbin Yao <wenbin.yao@oss.qualcomm.com>, Vinod Koul <vkoul@kernel.org>,
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
Message-ID: <aO77+ngliPXjYhKe@hu-qianyu-lv.qualcomm.com>
References: <20250903-glymur_pcie5-v4-0-c187c2d9d3bd@oss.qualcomm.com>
 <20250903-glymur_pcie5-v4-2-c187c2d9d3bd@oss.qualcomm.com>
 <w2r4yh2mgdjytteawyyh6h3kyxy36bnbfbfw4wir7jju7grldx@rypy6qjjy3a3>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <w2r4yh2mgdjytteawyyh6h3kyxy36bnbfbfw4wir7jju7grldx@rypy6qjjy3a3>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDEzMDA4MyBTYWx0ZWRfXw/O/rEX8N/jv
 16wPuM0fw7sxUobETSSwJkHhnuMlGSpRgekK+pNZvd4uKcDhX3BWmtFOzSPLDgtSgWYG7rba1he
 /yVHtOhdhI9jK61HoMSP0hPijDA3+OleA1WAUG5eVSnR5bp/peOCXJ6q+1oHSpUy85MM0fp5gIt
 Nij6T1thqJO6x888ExvUteuO1l+luYsMNjgoboBNld+UdBlI0NSZzfphFTkYAbea15W7j3bfDPt
 UL+cTq3AKWpyuBw7gdzKFrU560VpdE6e6sohsKp24SYJJg8tBCCyvw6Crqf1ae+N5EVXf4K+s5H
 GQPnT5b5r3w7O9sFNxryTIBhcISHv0aKk0VAzp1yWIbj+Uzt7oE+Fegy4WiaoqUncCOVOb3y+3n
 W3vLmXz8cxKb+VlpDcuWRZPMmD6q0w==
X-Authority-Analysis: v=2.4 cv=Fr4IPmrq c=1 sm=1 tr=0 ts=68eefbfe cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=kj9zAlcOel0A:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=gEfo2CItAAAA:8 a=COk6AnOGAAAA:8
 a=NBXR9N2l4VvmmIVneRwA:9 a=CjuIK1q_8ugA:10 a=324X-CrmTo6CU4MGRt3R:22
 a=sptkURWiP4Gy88Gu7hUp:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: wOMO9Q1DrXk_7XZc6a69ik0_wb5kNZQh
X-Proofpoint-ORIG-GUID: wOMO9Q1DrXk_7XZc6a69ik0_wb5kNZQh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-15_01,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 spamscore=0 phishscore=0 malwarescore=0
 adultscore=0 lowpriorityscore=0 bulkscore=0 suspectscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510130083
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251014_184224_350689_74778511 
X-CRM114-Status: GOOD (  24.74  )
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

On Sat, Oct 11, 2025 at 03:15:56PM +0300, Abel Vesa wrote:
> On 25-09-03 23:22:03, Wenbin Yao wrote:
> > From: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
> > 
> > On the Qualcomm Glymur platform the PCIe host is compatible with the DWC
> > controller present on the X1E80100 platform. So document the PCIe
> > controllers found on Glymur and use the X1E80100 compatible string as a
> > fallback in the schema.
> > 
> > Signed-off-by: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
> > Signed-off-by: Wenbin Yao <wenbin.yao@oss.qualcomm.com>
> > Acked-by: Rob Herring (Arm) <robh@kernel.org>
> > ---
> >  Documentation/devicetree/bindings/pci/qcom,pcie-x1e80100.yaml | 7 ++++++-
> >  1 file changed, 6 insertions(+), 1 deletion(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-x1e80100.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-x1e80100.yaml
> > index 257068a1826492a7071600d03ca0c99babb75bd9..8600f2c74cb81bcb924fa2035d992c3bd147db31 100644
> > --- a/Documentation/devicetree/bindings/pci/qcom,pcie-x1e80100.yaml
> > +++ b/Documentation/devicetree/bindings/pci/qcom,pcie-x1e80100.yaml
> > @@ -16,7 +16,12 @@ description:
> >  
> >  properties:
> >    compatible:
> > -    const: qcom,pcie-x1e80100
> > +    oneOf:
> > +      - const: qcom,pcie-x1e80100
> > +      - items:
> > +          - enum:
> > +              - qcom,glymur-pcie
> > +          - const: qcom,pcie-x1e80100
> >  
> 
> The cnoc_sf_axi clock is not found on Glymur, at least according to this:
> 
> https://lore.kernel.org/all/20250925-v3_glymur_introduction-v1-19-24b601bbecc0@oss.qualcomm.com/

There is another dtbinding patch to fix this issue

https://lore.kernel.org/all/20250919142325.1090059-1-pankaj.patil@oss.qualcomm.com/
> 
> And dtbs_check reports the following:
> 
> arch/arm64/boot/dts/qcom/glymur-crd.dtb: pci@1b40000 (qcom,glymur-pcie): clock-names: ['aux', 'cfg', 'bus_master', 'bus_slave', 'slave_q2a', 'noc_aggr'] is too short
>         from schema $id: http://devicetree.org/schemas/pci/qcom,pcie-x1e80100.yaml#
> 
> One more thing:
> 
> arch/arm64/boot/dts/qcom/glymur-crd.dtb: pci@1b40000 (qcom,glymur-pcie): max-link-speed: 5 is not one of [1, 2, 3, 4]
>         from schema $id: http://devicetree.org/schemas/pci/qcom,pcie-x1e80100.yaml#
> 
> max-link-speed = <5> isn't yet supported and of_pci_get_max_link_speed returns -EINVAL and sets pci->max_link_speed to that
> without checking the error.
> 
> So I guess fun stuff is happening based on that later on ...

My bad, but at least on QCOM platform, we will get max_link_speed from
config space if < 1.

if (pci->max_link_speed < 1) {
	pci->max_link_speed = FIELD_GET(PCI_EXP_LNKCAP_SLS, cap);
	return;
}

- Qiang Yu

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
