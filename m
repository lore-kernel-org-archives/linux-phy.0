Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A3BEC44515
	for <linux-phy@archiver.kernel.org>; Mon, 20 Jul 2026 03:29:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=63uRD6yYs3DAovodYLzrHA3q90tSJJ5ULjopH5PJIZY=; b=GOGCKXY7yDnrlT
	J8pwsb5Ny6SzuqQcHE1rpCPrA5bPb6rwkftgIMpKF7IQEpnE3djzN1rNwhHHqTy7UwDvdMB/EEwQl
	clijyhWrtU5REzS3D/4V3QM3yZ1qg3jToO81QwQWA2xJU3Ga+AW/1ASB0HxFxdbxnHLtEDz2wg/nz
	+maY9Sb4t2ND7X79e1MUaZ6ru7Xd5Lqu3kCyBJROzc1J5HFoQi88MUGMcU+dFtu43bLGOIdYJfiad
	TDbEjr9BPNhXaS7HfCe8bThD2/VuzFq8THNK88KTCrdOS1Vn302wrYR/jhN8TwynxAqc/XANmsG5X
	hEtfpHkr5rxqiiOZtr9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlegu-00000005lX8-1A4s;
	Mon, 20 Jul 2026 03:29:16 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlegr-00000005lWj-1VIm
	for linux-phy@lists.infradead.org;
	Mon, 20 Jul 2026 03:29:14 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66JNs8ZX939047
	for <linux-phy@lists.infradead.org>; Mon, 20 Jul 2026 03:29:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=CelsAHVswbC6UmMeQa+l59jm
	5QZEZYb2NREk7oPpktk=; b=SIOmjqu1P22s1WEJ3nDXYl/sDHRmQQbPUHPAxAXH
	FzZ40wFLionA3p/Zd9hnAKnRwMgi+79M2l2PuBkiMXf2BoureaBRrMQhsBWQzD6p
	Su5rFlb8qgVXWsHc9TrUTaH77/3wPlod+0mCgWy3csqDo56/FLDh10Xei5Cg2tVl
	DR1M7HhhPoXI5kIriRxdhAK1xwSWeuihWhEg9e+BoAdaEUwQzSZBsrQd6xRkPwlw
	hK92OIuysPxm6aLf1lIpqJGeyU4O4PxwM2dCOdpo5C5e0Ka4nppMpT9cHqjtC3Ha
	XzBNHDjAcYe4yMeqiaSbLW6PD7g2om6+v+Xlsyq3lt//sw==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fg2c6c5tg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 20 Jul 2026 03:29:12 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-8485d853b08so9730345b3a.1
        for <linux-phy@lists.infradead.org>; Sun, 19 Jul 2026 20:29:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784518151; x=1785122951; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=CelsAHVswbC6UmMeQa+l59jm5QZEZYb2NREk7oPpktk=;
        b=Sb68gzNwP8IYFg0TWm+7ddalt0x8PduY3GSAnhVNbKR3w6r0jc8ETCEhSv94Ev20rq
         5n7KtkMSdrnjO80OpssMIGlLZzg9OAdUjUZ3zVGfID2RgpH5G1vBYhUC6t+kRLi5CxKx
         TSMqVMD1gDxy0PPJS5vC7F8BT1nd4LdXoGtMhR2Gifrvf80JuNSgcnSFTDbiHybEnG80
         jE63G/j/TbN66KCOIo7MWkOpz1PaDK1a9hS3NVaV+4cHTYEtdJ/ct6ZRsyFmV4MeeXcz
         FhZAGYF8zr6ryXYJsXwFdUrkd/4di9zDBrYPS0K8TJYn3NM0DXDSWQcRdAB3oFyt/m4Q
         a+AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784518151; x=1785122951;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=CelsAHVswbC6UmMeQa+l59jm5QZEZYb2NREk7oPpktk=;
        b=dJajJluJKNwHBsGIaZMtkH6pjE6WSd3Yy9EGgEHzhySqsSdzvm4O7+OGl3Tzmrjzw2
         ImngUY/w7TNb/Gx253rInbhW2hSMYuXVMYT+Q5aSzw+16Nvy5DKs+hGbX8dD8ZqASftW
         K6Oj6a4e1dAHdt3QbqKWKc5rbGdcaVjZasZthYI42Weg/95FmYg62lACujCMFPG5CB/R
         9R4wjS+0+ByuV6z0si3CPHqUMCSz422bar8quZpOwIqxAmcTURyKmR5CnZPTsbaN4j8z
         PU0vsWWVBG5uqAg1m1+t1ftp9ICnOJ5WrJl3lcBnFOHUsAYMiozQlYyCzO3V6LVXmIqo
         PCbA==
X-Forwarded-Encrypted: i=1; AHgh+RrbSpmSW8rhiNOKyPjZPGt4XIOq1fEnIsG3FiL1763N3VqBVAX0ah9URNaCLp76jmMxt2txVMGL34M=@lists.infradead.org
X-Gm-Message-State: AOJu0YwBQox3Xj0znqvwYpljeS5knq+JdVds03NFIW7bG7VoC+grtQbH
	/S3c1x1dG8G97PGW9bEpj4L6tBEdO3aGbTTOyXtQLNFYgUidTbD6VXYmE40EvkFFIzoW/PIRB5+
	lyGd2FuAAls158RcdFlHH6NUxqVb6XSaYeARD4pzQRqOesd8lds1CXMPqG6B3xOwP8d2/
X-Gm-Gg: AfdE7cnFvQJVGlK+Lcgh+as6H2fZPooVHQmnKk9zIVuepiSp9RnrxHrEbBJ1NP3euow
	/bAKPVBnSEP5shaVpKdd/0yJOTdjHwZrTcFgRD8eLbcj91QmJEy2M+xefqqDNUjY2d/jQ1S5OD9
	/ZVo3AFnpdwqeBwvEXaQJJoOlWv5ArB3kKUOpvLgVNRQSyqEC5onWYoSQ2VWlOHtLCbkYGWgR4d
	4Isc8CktfeMTmf7363+LaIsHrQDoWdKVAaE1rxXPi/azPXuXzahEYModYRkyj9solZPyuy21+s6
	zKH2k79KXNxGDbfqsttsydI2AmWVVQB8n3PwC9JNhiINYNBGt7DsMnmhaE5TyAFOXelPGoWkDno
	Y5h3tvsl+EBj5TBXtGYs3DCRODEL1lAjJgIB3wEGAyzLaxzs=
X-Received: by 2002:a05:6300:95:b0:3b4:931c:3c7c with SMTP id adf61e73a8af0-3c3ad8ecd56mr13612465637.44.1784518151135;
        Sun, 19 Jul 2026 20:29:11 -0700 (PDT)
X-Received: by 2002:a05:6300:95:b0:3b4:931c:3c7c with SMTP id adf61e73a8af0-3c3ad8ecd56mr13612406637.44.1784518150606;
        Sun, 19 Jul 2026 20:29:10 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-31429f9d439sm36664456eec.5.2026.07.19.20.29.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Jul 2026 20:29:10 -0700 (PDT)
Date: Sun, 19 Jul 2026 20:29:08 -0700
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 0/3] Add QMP PCIe multiple link-mode PHY support
Message-ID: <al2WBAAHsnMX7mfy@hu-qianyu-lv.qualcomm.com>
References: <20260717-glymur_linkmode_0717-v5-0-4f9e87a61463@oss.qualcomm.com>
 <20260719-beautiful-pheasant-of-variation-61b8cd@quoll>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260719-beautiful-pheasant-of-variation-61b8cd@quoll>
X-Proofpoint-GUID: 1BcyyF4CvVIDqj6RktVtuK1jxZoYxNPg
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzIwMDAzNSBTYWx0ZWRfXxLGHzsVpj/uI
 iyBYFLdhA/BMhLGrW/EgrzfWDpSdrU8O9cpOi+7Qn2H2SyxvYdEoq5dla9zDuKQgqweLx9rzjTp
 cT07U9FzJz59B7D1k3D+MMK4CcmMkPKQ9FjMmqDMYQaM3VoWo2MPKOPFZMfqR8qd6dAEIjqveCY
 eOFAmM5sMR34eNWwqU/LQiWxCbXtAvvLKwX1X9S/Y3b+nQVmXpSLXHzdTAg7YjePaH9KZOrowF4
 GOLlY1fj/fUWfAJPl+qR38WmI1Vqn8REA2D09g1ksbXiKEfOk/921krmageDtuAjF88RvFLLFeW
 IhHG8GwtbQb62VVwu9Bn5nuVwF4cpL7OfEN4SPD2JkL087j9ilfTB3XIVk+E+NnKBUIUJb1bAD7
 csxKxtDIVANOSwqOMMbi287D6V9U97jBRsdmh5z5flpN4UnWwT3FqqmWoyeBHZ2FifZchIFXnrC
 w1BaZIdHRf8XMVtg5nA==
X-Proofpoint-ORIG-GUID: 1BcyyF4CvVIDqj6RktVtuK1jxZoYxNPg
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzIwMDAzNSBTYWx0ZWRfX5tBhFkBsblx3
 0dDA1dE3RiDOI9LrXUViBFM2D06tmPxB2k3Mn+f1LTvQeCoR2fMyL5bZdDHPYlq1S92yV5orbjl
 AiCVn1ctmLcduZD9KYX08q+g/8wogP0=
X-Authority-Analysis: v=2.4 cv=CJQamxrD c=1 sm=1 tr=0 ts=6a5d9608 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=kj9zAlcOel0A:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=P_9lKjKDqroO28rNP9YA:9 a=CjuIK1q_8ugA:10
 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-19_08,2026-07-17_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 impostorscore=0 lowpriorityscore=0 malwarescore=0
 suspectscore=0 phishscore=0 priorityscore=1501 spamscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607200035
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260719_202913_536607_03D8D71E 
X-CRM114-Status: GOOD (  25.40  )
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

On Sun, Jul 19, 2026 at 08:43:43AM +0200, Krzysztof Kozlowski wrote:
> On Fri, Jul 17, 2026 at 02:58:32AM -0700, Qiang Yu wrote:
> > Hi all,
> > 
> > Some QMP PCIe PHY hardware blocks can be configured through a link-mode
> > register into different link topologies, such as a single wide link, or
> > multiple independent narrower links (e.g. x8 or x4+x4 mode on the Glymur
> > PCIe3 PHY).
> > 
> > Earlier revisions tried to extend the existing single-instance
> > phy-qcom-qmp-pcie.c driver to cover this hardware. That added a large
> > amount of conditional, multi-PHY logic to a driver whose data model
> > assumes one PHY per node.
> > 
> > This series adds a dedicated PHY provider driver,
> > phy-qcom-qmp-pcie-multiphy.c:
> > 
> > A single PHY provider node describes the shared hardware block. A new
> > "qcom,link-mode" property points at the TCSR syscon register that reports
> > the active topology; the driver reads it once at probe. #phy-cells = <1>
> > lets consumers pass a logical PHY index to obtain their sub-PHY. Match
> > data is indexed by link mode, and each link mode has its own array of
> > per-PHY config tables, so one shared provider exposes a different set of
> > logical PHYs depending on the active mode. The driver inherits the PHY
> > settings and link mode already programmed by UEFI, so only the no-CSR
> > reset is used, and no PHY setting tables or related structures are
> > defined. Each sub-PHY owns its register regions and power domain, so in a
> > bifurcated mode the links are brought up, and powered independently.
> > 
> > The driver is implemented and validated on Glymur, and is intended to
> > be extensible to other multi-mode QMP PCIe PHYs.
> > 
> > This series depends on a prerequisite patch by Krzysztof Kozlowski:
> > https://lore.kernel.org/r/20260420133616.88740-2-krzysztof.kozlowski@oss.qualcomm.com
> 
> There was a v2, still not applied I think:
> https://lore.kernel.org/all/20260609141608.354186-2-krzysztof.kozlowski@oss.qualcomm.com/

Okay, will update the link to point to v2.

- Qiang Yu

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
