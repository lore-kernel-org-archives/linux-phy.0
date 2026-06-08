Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6025DCD8C92
	for <linux-phy@archiver.kernel.org>; Mon,  8 Jun 2026 08:48:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qvrb/DpWMCw1prCjnDWLlrcakzf3URZ2MPzXKbCZW8M=; b=o9kRKt3EcO0Ijo
	Or3EBvIKC4qYTA3L0KU3OIZIFxDV6ZF6u7rZ6UGBZEM32dH0Yh9qdRbgN0XhupJgLeq9n7LtLp6sb
	ERe2uvkQIfCF2k0Px3e4x5gpd4V72lk5Q20nT8aYcfQwmVTSaU6zS/wtblmoTUqT2XRaiHmOIE+TO
	TpTELWGxyPeWH2BxcUm2dU5diIEZazvJkUXWeBPjnU0S6nUgMhIffds73xpVqFYGQhrdLWo/tyw6k
	Ta1C0mCkGjNoC384a8HD4mJ9yTIfUKOBk7Ekzfn8iPY2zWTZ0ayyT3Rf2EpF6qZCVHP5BVxmmtEuS
	0wzZ01+yjvoc0XuIfy5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWVen-000000036vZ-0DIC;
	Mon, 08 Jun 2026 08:48:29 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWVej-000000036un-18cv
	for linux-phy@lists.infradead.org;
	Mon, 08 Jun 2026 08:48:26 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6586PjEh2733091
	for <linux-phy@lists.infradead.org>; Mon, 8 Jun 2026 08:48:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=2aTHTubIziKVG4zlKxyz0c
	AXqTiwuCicZ1yd32rnqXk=; b=aideAHVEgxtRLrcoemMiLwDOXftCri25RqAneU
	cXk9HkPN8NW+I+qqha55fmAv4ebCTJk/Uqk9udgFdQYUYsodKnGfuFCxLUCJp9v4
	tIZG8yb+TnJYuYSMBktwyLXzuiSp/gi2+BbtynZFr+IjG6wWCl0Rd/5wMq2uv8lf
	snvrbkFbg+i3mpQU0oPMDoZORf+17i+3ZT4QnHHmj6CgRR3ySpGnq9OlodjObvct
	nj9Jweo/h0FyqFF5vepo0wLzaNiFEFH05NbYzZNFTiu7ngvgKF5YjMJX+mWqjONS
	gj5K79eWV96wcNhhm3iYbHtXXu5JKBhDY8SVfstAR23vjiQQ==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4emavf70w9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 08 Jun 2026 08:48:23 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-36d98b828c8so5138098a91.2
        for <linux-phy@lists.infradead.org>; Mon, 08 Jun 2026 01:48:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1780908503; x=1781513303; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=2aTHTubIziKVG4zlKxyz0cAXqTiwuCicZ1yd32rnqXk=;
        b=XI862rAZPgsf+YuWlRRdjNyDHjC81OEj4jOkaBhIvvyUBSHJ/FHoaNyUgmtXDLgIOV
         bMQSIrV70djicjf4pVU0HTrPktdo1Wa+zue90Gv4MMwGCzm90gkD/nG3RnbWpICfb2p0
         yhF8mkb2d8SU9wPEBMdmEw7Eg7jumxwu4bHJ947tcMFxa1Qy1+Ycu0J4O7hkaIjgETjC
         0/pH0drQmWfvFlFXRxhwopJ0KxTtG/MFrzsRtcOcr3bPjTUxKo2b4lzdHr7s9PlJURcb
         F/BHDNVDjtlfrZ7XnXD5ePNcAGZmeDM95tMHRRAAQfFpQXwTQvSZyc5zU4a5k90o1iNr
         MCyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780908503; x=1781513303;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2aTHTubIziKVG4zlKxyz0cAXqTiwuCicZ1yd32rnqXk=;
        b=IzN60TPbpqvzDqb9lYliBGmsJjrIELxCsFL8ffhATLDfmdEF9aU68tNBa5hgJs7rA7
         ERa5zc5+kHgC2bi8gLcQ9qk57ncSGADunV8yxdLq1Hdto4eDwl9bacZue0cO2Gm16qy5
         WBE7S+pYWiMs3y5O0vMoT89ZKoXmvt9OdUz7ji/kakuY7c/NB1FPwqqH280uM1H7fesi
         zJVQssxfWF1eRbqivNVmYSMNLNV3QKbD6Jv6nBkTVT8d1BvXyYJRfwHj4/CVTJqTBAM4
         E/jX39ZDGFqoI1rRrkN/QdgE9L1YBVntKZddq+ha1C41jCOvu9KFJqCLO3YOvl5cjg6m
         nhpg==
X-Forwarded-Encrypted: i=1; AFNElJ92Lpmx3Jl0jWIzzIS4wVOBxMuf/Kk9RCWVLZevVfgnlPuDc/VIl2C5CXtscW+BfEWFHdbUGOxiaWw=@lists.infradead.org
X-Gm-Message-State: AOJu0YwbC9f11XGKshTDWBgiSZVxla8mq2esAUsM+KSwVn4xg2YjR1tv
	RiV771nE4FkgS/HniWKH3zRvjIvJr9CuhrNqKoc6VTTAXHJRH7K6DAzwD1tqQvFBBgvdJHoiMtg
	v6Q5w3rHJSoiNFGm5oqfvYqci9JN82PFv5KoSIC0tBM5OnxzjW8pHUCxgDXig4GB0GDYI
X-Gm-Gg: Acq92OE8CnHQj1zrZ3lU+L6alBz09MmCpTa61n7OZ99amW6c5RmAPWE7UbJ1dlIs+xv
	ry8XyifJ7283zfr9D8fW85ZNxPlw9lj9f32GhoJj/QQ+qcbDcLJiX1so4i7hVWUjzwDxW7JCTQL
	5L6bTqjznxHBsCT2CR2F6zzXWr3Y7frLzZmLkxwaNXbnpjhFzlxEVmg31KbSDIW7vhT/mGPdcAY
	7TENHvO8rFVE6uv3tVCqH6FHPtHYoDZUpyE3L6HvowMqPEurdV7gDFkNC5B8iPT5lFbL/WBwJFP
	vwV9JmCYdXzhhUQotR+ilK1ZdqEdR8POQVzCU1R4irooihOJoBBfbdNnTtHKx7T7jIbmyuYjd/A
	BGXARa+KDz9/NtwJw4RZO0yLlHEuCMx8KW6OFK5+cASd+h3MuHJTWeV9MBOialchFYC8=
X-Received: by 2002:a17:90b:1d89:b0:368:ea0c:1b75 with SMTP id 98e67ed59e1d1-370ee82fe25mr15451772a91.6.1780908502804;
        Mon, 08 Jun 2026 01:48:22 -0700 (PDT)
X-Received: by 2002:a17:90b:1d89:b0:368:ea0c:1b75 with SMTP id 98e67ed59e1d1-370ee82fe25mr15451729a91.6.1780908502386;
        Mon, 08 Jun 2026 01:48:22 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-36f712de91asm15070198a91.16.2026.06.08.01.48.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Jun 2026 01:48:21 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Subject: [PATCH v3 0/3] PCI: qcom: Add support for Eliza
Date: Mon, 08 Jun 2026 14:18:12 +0530
Message-Id: <20260608-eliza-v3-0-9bdeb7434b28@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAMyBJmoC/22NzQ6CMBAGX4X0bAltKT+efA/jobSr1ADVFhqV8
 O62YPTiZZNJvpmdkQOrwaF9MiMLXjtthgBslyDZiuECWKvAiGa0yHJaYuj0S2DgjHAuoKooQWF
 7s3DWj7VzPG3spuYKcoxyXLTajcY+10eexN3W5JR8mp7gDNelVE3IsqpWB+Ncep9EJ03fp+Ggm
 Pb0JxfZV6ZBLpo8l7WkTHH4Iy/L8gYx+WBt8AAAAA==
X-Change-ID: 20260427-eliza-e53155ae8821
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1780908496; l=1742;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=cdsPMqfeWD35Ac1rhIkKLbMsGtZjV2Cq7h7n1rY1KCQ=;
 b=ecrik45mYwX77ErSUKzG8xA3oHBydDoNjh+Dyt1/LxNH8+i5JjlSkyEgZfViU7d5S6sgMQMf6
 Ju9syZl1cUwCc4e1Wh/vrygWyWiYrecOUYAYVTouvVPE0NX9TjeN5J9
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Authority-Analysis: v=2.4 cv=I4JVgtgg c=1 sm=1 tr=0 ts=6a2681d7 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=bC-a23v3AAAA:8 a=EUspDBNiAAAA:8 a=RZHP3SvTWnTKgiXxB68A:9 a=QEXdDO2ut3YA:10
 a=uKXjsCUrEbL0IQVhDsJ9:22 a=FO4_E8m0qiDe52t0p3_H:22
X-Proofpoint-ORIG-GUID: 9Pb_ItWVYs4gvDuCcnVOsZSSoiGg45Wb
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjA4MDA4MCBTYWx0ZWRfX7B3rG1AnXpxi
 fMatU9VKufw3hbBWuz7xTlxB513ceJWstlU1ufeV5JtsGxF/6ndW3G3tHQ3L6ewXKqiAgNvvdwb
 4GtIKt/z8p8klxauc9GH2EMh3DF4/4hrGRB7w4fwcT32URs9vrcPI6iKJr4wRAR+FE2TckAc4lT
 voagPREcm3q9pDojCZ22ehz3gYfDQDSWXPOOLxndv93+3l+13jzXadn1V+aNluDyS1YTsQbWIhj
 igJ4aIoI6QT4pQrMt8xP9/w/n7neIXM1PFKHHsn07wdsbksVRSlpS8AA9ycyX5Vlhv6h9/dNRFl
 PaSpPWGwPx+hfS7hEhktiLmwFMivNYgyz1dV4SL6Fka3rrbualUagI0kMeMXCiI29YGy7l6zL1W
 mNA0SVj3Wbgd4DxBGlXd2SoHPriKvbD9wlGC6ELP7KzkIMXIAzfh8dt1TRJNertDkvvkf22ZgQD
 uPupXVkFZIf2Vb23Taw==
X-Proofpoint-GUID: 9Pb_ItWVYs4gvDuCcnVOsZSSoiGg45Wb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-08_02,2026-06-05_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 impostorscore=0 malwarescore=0 priorityscore=1501
 bulkscore=0 phishscore=0 lowpriorityscore=0 clxscore=1015 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605210000 definitions=main-2606080080
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260608_014825_469936_B288C6CE 
X-CRM114-Status: GOOD (  12.75  )
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

This series adds PCIe support for the Qualcomm Eliza SoC. Eliza includes
two PCIe root complex controllers capable of 8GT/s x1 and 8GT/s x2.

The QMP PCIe PHY support adds a new Gen3x1 PHY configuration with
Eliza-specific initialization tables, and reuses the existing SM8550
Gen3x2 configuration for the x2 PHY instance.

The series consists of:
- dt-bindings for the Eliza PCIe QMP PHY
- dt-bindings schema for the Eliza PCIe controller
- QMP PCIe PHY initialization tables and configuration for Eliza

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
Changes in v3:
- Add allOf constraints for eliza (Krzysztof)
- Link to v2: https://patch.msgid.link/20260601-eliza-v2-0-6b44c9c23d5e@oss.qualcomm.com

Changes in v2:
- Remove the driver patch and instead use compatible of sm8550 just like
  kaanapali (Krzysztof)
- Move all the phy settings to lowercase (Dimitry).
- Link to v1: https://patch.msgid.link/20260521-eliza-v1-0-97cdbe88389d@oss.qualcomm.com

---
Krishna Chaitanya Chundru (3):
      dt-bindings: phy: sc8280xp-qmp-pcie: Document Eliza PCIe phy
      dt-bindings: PCI: qcom,pcie-sm8550: Add Eliza compatible
      phy: qcom: qmp-pcie: Add QMP PCIe PHY support for Eliza

 .../devicetree/bindings/pci/qcom,pcie-sm8550.yaml  |  50 ++++++++
 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   |   6 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 139 +++++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6.h    |   1 +
 4 files changed, 196 insertions(+)
---
base-commit: 254f49634ee16a731174d2ae34bc50bd5f45e731
change-id: 20260427-eliza-e53155ae8821

Best regards,
--  
Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
