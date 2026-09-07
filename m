Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D979C79F9E
	for <linux-phy@archiver.kernel.org>; Mon,  7 Sep 2026 02:26:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EXs0LGiuVw/AMEHPKs3MAgEfV4B5vKi5/C6AeFtz1/I=; b=fJHRYrvsN39N6d
	4dGeyVCbZWAsJ8vZMIZCO6P5TCF+N0v8nsDRfW/yRzWZUtZJg8FsICSCCm1SBFNOvTSUqvpRBchTt
	nFWlmwdCKdTXBEsTDk319hNO9JKzPM8Zdm/UWY5Qrff0sGFFyIj6HqSQsUasFgDMZEkjkvxornL/b
	M2el0tOSPDGOIcd4fObC8N0J8i/x2sVhMYGJvr0F9an0F55ZG2A35LSA1WW7k/zDD+JvHnJ/llL8F
	s4T7k9f1o/O44tlzJNvbR/Fb9tQPBBIUOLgMGRfAIAD8ufbIoyzQPNghUUxHHGcd3I36SQ2p2jLJH
	SUdcLeasXYxEAnt9On+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3P3q-00000005i7L-11rn;
	Mon, 07 Sep 2026 02:26:18 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3P3n-00000005i6r-2KU6
	for linux-phy@lists.infradead.org;
	Mon, 07 Sep 2026 02:26:16 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6872NuC52211762
	for <linux-phy@lists.infradead.org>; Mon, 7 Sep 2026 02:26:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=n0jUTNNzExuLuTq0dCzLcka2
	2DJ7rjiceOe/URuM9WY=; b=YcdFf4wHGK9LHBWgjYX3BMyydcOUxhu32MqWOv22
	iOKFSgTSTQCWH3YTlOduJREptzNaFQAO6+x7KF16tVBEFORC7+qU9X5DLtbTqjW3
	bJ3XeqHrYqBOSs+qj2tQr3/n5BwhRAPZCYMgXpYw/2MPPgxVoIAxdjWwpeq5aOls
	+Dym7x9+W1ndeo7PN41gqnjR8QESG5pgrO7CBuFHbwvriTdbJdfZ5skC62F3yfuq
	1tjJHPXnqN/zUCGFLmTpPUnujJCUSkqn88ZLzgJRgD07AnJLhtsXUvDXYj+qVVBJ
	097VYMPrgBX2aMBCkOi6QGhX8CWc2nOcdZ+aLQeZT9Ovsw==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ggbuemq1y-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 07 Sep 2026 02:26:12 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-cc1c18c775eso4289748a12.0
        for <linux-phy@lists.infradead.org>; Sun, 06 Sep 2026 19:26:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788747971; x=1789352771; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=n0jUTNNzExuLuTq0dCzLcka22DJ7rjiceOe/URuM9WY=;
        b=FWsur05FVvB/3yyYM9kiUiB9qNEca8yRnF7iISRWtKj4ZFwAcFmU+XVcof7JaWck/M
         U9V2jY5NnePCSwpApVKIOs4Y7o9yQtaQieKiNFY923OX8Hv9xw1zPuZRkIWN4ROVEuMi
         INKAHtEWkFQP4lxY0Utg2uJRRm6Z8p1x1Zeo+E+/3vZ3gv2uMlxGKttmUojHcuAjYIDk
         vgdXpRf7zEMsl0o6W8rVLdPcBs6WFWGT7n7bzCQxxyJxcfxL0+3CzkOnzA/pYFqJIqwX
         D4Q7967BTfYEhfC4CFGtv348rtX4xLjxZ1Rh2x1cwXrrJIbY4G1T3f2yj5XUY++Y9P5G
         /tcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788747971; x=1789352771;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=n0jUTNNzExuLuTq0dCzLcka22DJ7rjiceOe/URuM9WY=;
        b=hrEeL8vZ4KvPK3Rf7kXeSnzV7CJB5v+hLdWGdmxFRTWNLaimfbrl4hLcdtIC6GGs3a
         agjac99yf1CJ5FxCKXV5rEgpHPt2RSV6djkoUWy7fe0EWahQynnM3n/dEBM6Ar2NzWTT
         HzpwPcdyVFk5K7PQiOQIjo8MQmnkN4uFvDBB4SQPZBlpht24ZCUgETXPLW0qEKkvgsu8
         LAiFY7sZwSZiC624cH3A1+cdZjX/6WBPbiE+TOSk0vkPS1HuU2VDVzIWlNVvGx7D/ghG
         46kSDqQyDtuDfmE+LtYFvnqMIt/plMeH44ATzxst/AmK4TVfqdqDEl0XcfDijAowgGgd
         nVew==
X-Forwarded-Encrypted: i=1; AKwUvBzniGxncbqK+xxd7L39ISbO4gQA3OOhcpYwXl+hYgW6RHdpgN2aWcdLNjwlE+ge0mlBEViN6s71nk4=@lists.infradead.org
X-Gm-Message-State: AFuF++mghzzHUD7JUJHRQzROptKS71plRuoZKdsnB7C2W0h9YwU5FCtu
	lwyId0UhpxYIYvmjUe5E2tFFvfB/vKr4xE48l2u0nlUXVsqc0kVWf2iDIztyPD9MSGfP/PMHbF3
	W1JmbkHCbVDByRFoO+I/MUOoJkSi/mSCKAKGzf9bMNFEJhUF+5j1VzuDo3wZYuAu0mtjY
X-Gm-Gg: AYBFou3iAcy0MPNXfjhHVPMJmBqQW60SvWlJN3+J0iko9BueeXpjT1Hfgx5r7xPXIhy
	2Ko3qsEltJDeQEiGGXTyvqAJDwnXC5yx4hwc0fxHkL5IS4jQFp9HfFiXyJaWOdSg6J6JOowUCm5
	PRu4JTUPFf2ZxQMUSfZkbNeebuQ3peto6zBV5pZYUw3IvBP/O8q/xhMgJNDUnU+vNrSXJ0p07BL
	xxT1UE1sXrhFl3S43KuxnnL1fAJ0HILLW1+AueHIHICTfoLX1vMiEvYZW8GthgjjeM1dfmXNyVE
	OPL8W87IW1MV5VnTeCo/kdV5+QRRVv2TQjZ/sBLTx1wD1Qi4C31fieB/y1YnJBK8DhsnRnGf/sy
	pLoivDSMMs7TXCBn7sro2G7OCtI4rzI+u32cOzgRFQDAOHsQ=
X-Received: by 2002:a17:90b:5745:b0:396:669c:b5f6 with SMTP id 98e67ed59e1d1-39b0803accdmr28515779a91.12.1788747971440;
        Sun, 06 Sep 2026 19:26:11 -0700 (PDT)
X-Received: by 2002:a17:90b:5745:b0:396:669c:b5f6 with SMTP id 98e67ed59e1d1-39b0803accdmr28515586a91.12.1788747969120;
        Sun, 06 Sep 2026 19:26:09 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-14324356931sm33810559c88.4.2026.09.06.19.26.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Sep 2026 19:26:08 -0700 (PDT)
Date: Sun, 6 Sep 2026 19:26:06 -0700
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Maxime Chevallier <maxime.chevallier@bootlin.com>,
        Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
Subject: Re: [PATCH v2 1/4] dt-bindings: phy: qcom: add Nord QMP PCIe PHY
 binding
Message-ID: <ap4gvmokukHV1RHT@hu-qianyu-lv.qualcomm.com>
References: <20260828-nord-v2-0-18bf59d19d6f@oss.qualcomm.com>
 <20260828-nord-v2-1-18bf59d19d6f@oss.qualcomm.com>
 <aabdae7c-5294-4789-b123-4fcff8a733e0@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aabdae7c-5294-4789-b123-4fcff8a733e0@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTA3MDAyMSBTYWx0ZWRfXyl1bFMqxjEp/
 Gh9xtDfPo+gB+mXcGNoQYRJskQg4q9uelhfwm932c/6GzI+tN++w9c4UilIiPu1iG0pMm0dRPex
 siMvT473obySCn1NoA++wlSda2f9H8KGcmMbgNzDyDIL8gV4xDbQx2dpzzhKsSnMQAxX7/ca2Op
 UZcZaqgtdGqToIaoi3VU6Z0Drfbx92fj0ADTQpK2ZYot5PTj7HBbUCV69n43pyOjT9vA6uZX8Qh
 Uul9unLOg0bD6tOYDnCYah8pDinEAzAolFACXwfcLp2bYwhPyOuIYAWA6nvPuie5ta+tzWO+Pxl
 6TBScip66FEOPTFsa4j3dmSLAUVjLLdVBoRd7qDZRJwjdtEoKoyiAWeAvwfEf5SWTajI2IQeLK/
 VdZ+c6PDeCG25wKKdidbjizDNxaqfxOl2zopqlmkvGWYWYZxR6lXIcNg7LVbQE+GzECjA19BAin
 PtncD24lRXurAxgyMYw==
X-Authority-Analysis: v=2.4 cv=P8AKQCAu c=1 sm=1 tr=0 ts=6a9e20c4 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=kj9zAlcOel0A:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8 a=MuNgaGKqo7zVGC3JrMAA:9 a=CjuIK1q_8ugA:10
 a=bFCP_H2QrGi7Okbo017w:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-GUID: zlO-wrT8Dq0gstlH8n5biyiyuXwkVGkk
X-Proofpoint-ORIG-GUID: zlO-wrT8Dq0gstlH8n5biyiyuXwkVGkk
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTA3MDAyMSBTYWx0ZWRfXz0RUZizFcfVB
 uGS7XWg5ix4TAHAEywyw6LedTg5Ayal4mbB57KOYshdZbNToPQ1zfEorwOxCwekD6PIgAmdw+Dh
 62QxqGcfVuCmXY8hcDxjb071EEK6g6Y=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-06_04,2026-09-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 impostorscore=0 bulkscore=0 clxscore=1015 adultscore=0
 spamscore=0 lowpriorityscore=0 suspectscore=0 priorityscore=1501
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2609070021
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260906_192615_628731_E146A72D 
X-CRM114-Status: GOOD (  24.87  )
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

On Mon, Aug 31, 2026 at 09:54:40AM +0200, Konrad Dybcio wrote:
> On 8/28/26 10:43 AM, Krishna Chaitanya Chundru wrote:
> > Document the PCIe PHY found on the Qualcomm Nord platform.
> > 
> > Nord has a Gen5-capable QMP PCIe PHY that can operate in multiple
> > lane configurations using four PHY segments (A/B/C/D). The active
> > topology is selected by firmware through a TCSR configuration
> > register and may be configured as x16, x8+x8, x8+x4+x4, or
> > x8+x4+x2+x2.
> > 
> > The binding describes the register regions, clocks, resets, power
> > domains, regulators, PHY provider interface, clock provider interface,
> > and the qcom,link-mode property used by the driver to discover the
> > active lane configuration programmed by firmware.
> > 
> > Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
> > ---
> >  .../phy/qcom,nord-qmp-gen5x16-pcie-phy.yaml        | 276 +++++++++++++++++++++
> >  1 file changed, 276 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/phy/qcom,nord-qmp-gen5x16-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,nord-qmp-gen5x16-pcie-phy.yaml
> > new file mode 100644
> > index 000000000000..37198f82c611
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/phy/qcom,nord-qmp-gen5x16-pcie-phy.yaml
> > @@ -0,0 +1,276 @@
> > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/phy/qcom,nord-qmp-gen5x16-pcie-phy.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Qualcomm Nord QMP Bifurcated PCIe PHY
> 
> Quadfurcated, perhaps? Is there a word in the spec that doesn't get too
> detailed about the number of effective slots that the PHY is divided into?
>

What about multiple link-mode PHY?

- Qiang Yu

> [...]
> 
> > +  vdda-phy-a-supply: true
> > +
> > +  vdda-phy-b-supply: true
> > +
> > +  vdda-phy-c-supply: true
> > +
> > +  vdda-phy-d-supply: true
> > +
> > +  vdda-pll-a-supply: true
> > +
> > +  vdda-pll-b-supply: true
> > +
> > +  vdda-pll-c-supply: true
> > +
> > +  vdda-pll-d-supply: true
> 
> I'm really surprised they aren't all connected to the same pair but oh well
> 
> Konrad
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
