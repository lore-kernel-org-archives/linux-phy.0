Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12D9E606A32C
	for <linux-phy@archiver.kernel.org>; Fri,  6 Nov 2026 06:50:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Y5r+poCZ;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=V4ytrOeb;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=f59Zc8+B
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=BL4CduPSkTNSLHjdNJHtpcXExXiZ7NMZAqzmZEllikM=; b=Y5r+poCZyc1+oSMitDGvtARNDO
	ALKN2b4HWOqWJx6psgXeXeF4J4hvbDbcIntWVQttnE3BDWEV6xbVsj1xhMFW/a1GxSDVBA/88qzaJ
	WAc7uKjUqJCdNXCQxxipdfs5GO0B30+UiFATHajRmbt4NMhJzuzxfJO71WWqEGktKpqjPsMJAx3LT
	sphZtHY94qEv0lkXXl7rrc70r7qU/oXOi75jIxZWatU+YNS74wA1Lutx8TaxMWlLNVpej8i4r+HNi
	ZZ+HpCcmwv4/WOjvQKPf+XAvahkYUr3rteGKd+0VIuGJhPZ+DCOUVXR35hiRIYaBhOVJPCQmPc2pT
	nc0u8GsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPDmr-0000000BNXq-2mNE;
	Fri, 06 Nov 2026 06:50:57 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPDmp-0000000BNXW-0Ggc
	for linux-phy@lists.infradead.org;
	Fri, 06 Nov 2026 06:50:56 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6A641LQ72473916
	for <linux-phy@lists.infradead.org>; Fri, 6 Nov 2026 06:50:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=dNeDKXrKYOKFzYRUv5DD5X
	m3IPsUxN2lQ1AkRqcvQfA=; b=V4ytrOeb6YHVjP1HumxXidFfUIeGfE+OIm9Y6u
	TDu/ELw4bEdSUPC0zoRlrdFH3yCthsnya7YKz+IwVceKKb5ZOACJzfvl8qvsNjwu
	MJRLnU6eMjpHrUhPYpFukAF/AlVC7BHrtqALHujOcfkTxOtfWIFGLt7JJriFC61Q
	bmRgUo0pLGXnDvPlMOa1fkmS0p0mWk0TrWAwq8s8g5vdFK+5WRhPe3ivC/oun+h7
	w8HrEvdt0s9bzxr/WJR9LcCf5KkLFdQVW+wXoGvHfx39bFK1+/9LVGmMmANawKAV
	10AftugoP4P9P1gY1W76ePgM+4s3gePs0RI+yx4UIdCzK0Mw==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hs3pa1eqy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 06 Nov 2026 06:50:53 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-3b08aee6b3eso365838a91.3
        for <linux-phy@lists.infradead.org>; Thu, 05 Nov 2026 22:50:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793947852; x=1794552652; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=dNeDKXrKYOKFzYRUv5DD5Xm3IPsUxN2lQ1AkRqcvQfA=;
        b=f59Zc8+BBG76UxG43grZm7mgtiwFoJgS+1MULfH2dQeRssurTV+WUc0iTfFC7BH8AP
         wkFq5QAZvNt3wQKBZ6ryqb8dpCrDgjsycb6MqQjQKBR8r7F2yN2eH5l/iouukgYH3BsF
         uSxJxK4dWDJBOuVzDjPOS0xVJORdq9rs5hpaouswvPEjp5nZmXWG6Hd9bwAOtnsUb0wZ
         1rsXFOFeUtYh3RrRC/Z6xXJdEZ5tRL1zH7WedABeBWugFkPqR/bWDAknppQZYRvulMlI
         ecrL4Fyfl8xIvN3cvacQUe3PvjIpUpHloM5VpKh/aZgYJZwmxXfs8irp5QbzFcARpMhJ
         aWLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793947852; x=1794552652;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=dNeDKXrKYOKFzYRUv5DD5Xm3IPsUxN2lQ1AkRqcvQfA=;
        b=ZlpJoxW0szqXKE6R1oYhLewxE/oYG+JP/sdvegFUi5nfLEJ2V+r5rRaRaZplE8Yuay
         Q/trOKwKgbqgZfyBHwPZKkCP+K4SWxBZqEJHTy6JaQnUOei9F43OkcXA1MKwV9LC3vpp
         AyoUw8tSynA2LsVaYPZA7nknVmPkocKYPVKj+p6J7DOLESmzwcQ6CxS1SfDJuoHSqHb/
         6S2ukLQAZoUywykpksLFV/4wA+HRxKj1uqG+jxoOD1MeVpfaISMmecvdaX2qC38hyRwg
         0TXJznxAJog5HNIIAEjKGeAERrGoGXGWMG1kkUZubl9TZuVj7wBx/6fR+wQn3H6CVHlG
         iYPQ==
X-Forwarded-Encrypted: i=1; AL+hErHZ7sP/GwDU8yOfJkizFb2NVJOZpYYRp5ib9fuUxmustUs6i5Vmg+KU3DtI1Jbj+QsR5Cc49I9pEDU=@lists.infradead.org
X-Gm-Message-State: APuU4Z8+bcnNROQM6SCsWNX2aM4nfUcyPZLwCN+eWUjJbyLKqYUwTX7p
	akCOQFxt+rDG1hNOD3JMwfyMHxCQNbm9oA317zSMewHYB4TDxL17nB3n8T+tiv4ysmd09sLb4vZ
	lPwFmEE9EfvaSjq1vk+ho1EnmVZFIh4Q/0AWryohGSP2dMybY+Yo1Duy4GnTLE4joa78a
X-Gm-Gg: AYBFou3kVYcpd4iYYxQA905Vs+yA7PUG4DcY2hVPR3CZL3x69Xfm4gCQHmYwwgi4VZ1
	9uv+oZ982v/7hS6rxxUr/drOTk6ddsnFEXQ8yGpvkRWSgtfm2CTv1Laaj52CwOX1oNyf8FVRJkF
	Iu4efjqViUSVAzsCn005s5ZDYA4NrvazxFCrmSwwW/mNO6pt/i0tBrO41g1RQj0/z0LXnyjI13U
	bmxXyu6m1Bw/VBLa+MR4HAHPqNnfehzSMglv+GHni7P4+60E2f54dpVN1Un6JVsyptt+3gN5cEE
	95Tw2On4iQq5QMBI5F5i8zSrfERXJ4AZF6TSsDVniEYsOHMYmeg332x2NZRYi23qhWsx1BLW0lD
	LxV8s+uPiqrxdlOUO/EXcESXcl+iF8yTqNu7qMp5Cmszrnvjs0MSu7uxU7tT6bQNPK5r1QwNghM
	iR8CuG
X-Received: by 2002:a17:90b:5585:b0:3ac:7749:2f0 with SMTP id 98e67ed59e1d1-3b0db70764fmr1557100a91.44.1793947851847;
        Thu, 05 Nov 2026 22:50:51 -0800 (PST)
X-Received: by 2002:a17:90b:5585:b0:3ac:7749:2f0 with SMTP id 98e67ed59e1d1-3b0db70764fmr1557068a91.44.1793947851343;
        Thu, 05 Nov 2026 22:50:51 -0800 (PST)
Received: from hu-nihalkum-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3b0b313c0dcsm6597274a91.1.2026.11.05.22.50.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Nov 2026 22:50:51 -0800 (PST)
From: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
Subject: [PATCH v4 0/6] Add CAMSS support for Qualcomm Hawi and Maili
Date: Fri, 06 Nov 2026 12:20:41 +0530
Message-Id: <20261106-hawi-maili-camss-v4-0-d528c7a797b4@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAMF47WoC/32S0W7bMAxFfyXw81xQpCRKfdp/DHsQRWox0Cxrn
 GYbiv776BYYlqwbDBug4Xsu75Wfp9VOi63T/e55OtllWZfjVx/ih93U9+3rF5sX9XlCwAwVad6
 378t8aMvDMvd2WNdZkvZIDcAUJ5d9O9lYfrwiP332eb+s5+Pp56vDJWxv/wO7hBnmLiIRLVG08
 fG4rnePT+2hHw+HO39MG/OCvzkBwnscdM7olRBRW6n9Hxz6g0PwDoecUzmi9Fa6DXyH8/IW+mS
 PT17f+S35JG21eftoOd/vinDgigEE3zpq5773Zu937luGtcIyajKsIQyoIsZW02iJcqduVPlaJ
 RS5aYYeOQ0CSgLROmeOwWAESQ5JqcC1qlGBlEbXJIRDBvsFRBBaLBKbluxdlizXKl/Dxpa9pNQ
 tj+2ksfMIboQpUjC1CC1eq1QHqG7K2FGhFL9HYLWiCCNLzbl5sJtcSVmyr6GRuteVCuUGmmAIs
 joGSEGGlr86lADcGyUCEN+vmFtT0CE11RYThDFyvlY5yLz0nIjRmoQqTE1rxtqt11C5JkmJ200
 uL0gtE1Zt0s3dHF+pRMUiAytYYC/55pQZ0LNKrX4s3re0bTWUWFrFQZQ4BS5KN6oYCTiWEkcNy
 grI7pa9gx5qHY1jFu4ck/+CL78AdGl6lMkDAAA=
X-Change-ID: 20260923-hawi-maili-camss-b5dc43a00ed2
To: Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Bryan O'Donoghue <bod@kernel.org>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
        Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Suresh Vankadara <svankada@qti.qualcomm.com>,
        Vikram Sharma <vikram.sharma@oss.qualcomm.com>,
        linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1793947844; l=6623;
 i=nihal.gupta@oss.qualcomm.com; s=20260608; h=from:subject:message-id;
 bh=NKAvzBeIOyHRorG+C7lkP9fG+SDdQ6NSAz4rK2NCADM=;
 b=YSAZ3W9/SQK/lgTTj9ckkXJKOKrXvh20hMJNPshTLin+U6VdO7q4NAhci8Tj8lb3s9b8QlECK
 vEc/Ab8xsS2Co+JCtGnkijBmJyDsReTN4+9D9jh/N0BWnmVb1Nal21/
X-Developer-Key: i=nihal.gupta@oss.qualcomm.com; a=ed25519;
 pk=DIbyFMNwqU/iMvU/0pCQp2wmRVgtHFBT3PcSu+A+Ncw=
X-Proofpoint-GUID: juyuUIjDYYu83Kv1kMhNsDbnOg0PSwKI
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTA2MDAyNyBTYWx0ZWRfX7HOdbCOvGpsK
 ZeL4GSgwT0TULhWn8Vqo7SGTZUBvGQyFh3RdNAfk2fvmiSmQcK8GnXstFeZkkB+IHT11LksmwHE
 vD69fL4nqwzxtq2tvUodqqIOYZ5AFSyiJkCYIlsYQ5ONYxAaKZ8ZnP/le6W5PXTY8jSkpeNnBEd
 fFbHTw/sPXBZtAZtkRUK7pvcSPnYp45BJ4cVyj0/oHG/YUhC9ykF8RuvFEjH+75SJpKEODBS6B2
 Nt/VrPMMZnG2TNWK9Pq/bCvCY1Ds4mAxm2w7PTfwpcA2u+ooU7LznTerSO2dZyKdWRfueiRSkzu
 ct+FmJyXgyr6WiyR1iyWV3YBUU9rMKL38wdJXXbKpvO0wBnZf15UMWfQ6dytVtUAAa/Ty0tFEGN
 eLAdzeZbFmoYrZb/ztzPjoRIq41AnJ0mvtf3EA/coWIWWK9eWwEl5HGxi1D3xXjVe3jHlI17krP
 biLf4ZI3psTPaxxSrsQ==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTA2MDAyNyBTYWx0ZWRfX8vmGmmhXaMwp
 wCEvMAJvzshZlCJ+32iKtqPxAgyzU45rr0gI5TGM84miN5P1NvYx8UWtMRPAnELpNKXe8P7vJP2
 V9izqWRwqwggR3mYyKtohrF1saLudzA=
X-Proofpoint-ORIG-GUID: juyuUIjDYYu83Kv1kMhNsDbnOg0PSwKI
X-Authority-Analysis: v=2.4 cv=CaKdd7rl c=1 sm=1 tr=0 ts=6aed78cd cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=vswd6c7O-hQB6D7BPuYA:9 a=QEXdDO2ut3YA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-06_01,2026-11-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 adultscore=0 malwarescore=0 spamscore=0
 bulkscore=0 clxscore=1015 suspectscore=0 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611060027
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261105_225055_249411_3F611012 
X-CRM114-Status: GOOD (  18.12  )
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hawi and Maili are recently announced Qualcomm Snapdragon SoCs [1].
This series adds Camera Subsystem (CAMSS) support for the Qualcomm
Hawi and Maili SoC's.

[1] https://www.qualcomm.com/smartphones/products/8-series/snapdragon-8-elite-gen-6-mobile-platform

Hawi's camera hardware topology:
- 6x CSIPHY (CSI Physical Layer)
- 3x TPG (Test Pattern Generator)
- 3x CSID (CSI Decoder)
- 2x CSID Lite
- 3x VFE (Video Front End), 5 RDI per VFE
- 2x VFE Lite, 4 RDI per VFE Lite

Maili shares the same IP as Hawi. The only difference is Hawi has 6 CSIPHY
while Maili has 5.

Used following tools for the sanity check of these changes.
- make -j32 W=1
- checkpatch.pl
- make DT_CHECKER_FLAGS=-m W=1 DT_SCHEMA_FILES=i2c/qcom,i2c-cci.yaml dt_binding_check
- make DT_CHECKER_FLAGS=-m DT_SCHEMA_FILES=media/qcom,hawi-camss.yaml dt_binding_check W=1
- make CHECK_DTBS=y W=1 dtbs

Dependencies
------------
[1] https://lore.kernel.org/all/20261102-kaanapali-camss-v24-0-d6b8f3f6f66f@oss.qualcomm.com/ -- Kaanapali CAMSS driver and bindings

Patch grouping
------------
I2C CCI bindings part for maintainer Loic/Robert/Andi (1):
[1] dt-bindings: i2c: qcom,i2c-cci: Add Hawi compatible

PHY driver part for maintainer Vinod Koul (2):
[2] dt-bindings: phy: qcom,x1e80100-csi2-phy: Add Hawi and Maili compatibles
[4] phy: qcom-mipi-csi2: Add Hawi support

CAMSS driver and DTS part for maintainer Bryan O'Donoghue (5):
[3] dt-bindings: media: Add CAMSS device for Hawi and Maili
[5] media: qcom: camss: csid: Scale the clocks with the CSI-2 link rate
[6] media: qcom: camss: Add support for Hawi

---
Changes in v4:
- Rebase on next-20261104
- Collected Krzysztof, Loic RB's tags
- Added Loic patch to Scale the CSID clocks with the CSI-2 link rate
- Use 8775p TPG resources instead of x1e resources
- Align tpgX and csiphy_rx clock names with the 8775p platform - Vladimir
- Remove redundant CSIPHY resource definitions by introducing
  compatible-specific code and keeping .csiphy_num instead in the
  resource list to denotes the CSIPHY number - Vladimir
- Example Address should match your first reg addr in Hawi bindings - Loic
- Link to v3: https://lore.kernel.org/r/20261030-hawi-maili-camss-v3-0-9742bca8cef2@oss.qualcomm.com

Changes in v3:
- Rebase on next-20261029
- Squash Hawi and Maili CAMSS binding as a whole - Krzysztof
- Add description for IFE and IFE_LITE IOMMU in CAMSS binding - bod
- Correct the lane count variable fallback path - Sashiko
- Add CAMSS top region to binding and DT - Loic
- Use split addr_update/reg_update in CSID and VFE 1190 - Loic/bod
- Add SOF and EOF enable bits with top level RDI status offset to
  allow their corresponding interrupts but not configured on - bod
- Move the common CPAS/GCC AHB and AXI clocks to the pm_clks array
  drop them from the VFE clock lists - Loic
- Use the GPIO function with bias disabled for CCI sleep states - Loic
- Collect RBs from Loic, Krzysztof and bod
- Link to v2: https://lore.kernel.org/r/20261013-hawi-maili-camss-v2-0-fc93222da89c@oss.qualcomm.com

Changes in v2:
- Not an RFC anymore
- Rebase on next-20261012 and drop the external CSI2 PHY series dependency. 
- Drop DTS patches; they will be posted separately with Maili DTS dependency.
- Collect Reviewed-by from Konrad, Abel, Bryan
- Split CSID and VFE 1190 into individual files rather than in separate
  combined Gen4 files - bod
- Remove reduandant is_lite condition in CAMSS CSID and VFE resources - bod
- Replace bias-pull-up and bias-pull-down with bias-disable for the
  SCL/SDA pins of CCI nodes in TLMM, as internal weak pull is inproper
  with existing board level pull up resistors - Loic
- Drop the unused reg_update_after_csid_config flag
- Add lane count fallback path for CSID RX configuration
- Add Hawi DPHY support by tuning register table, which prevents
  potential stream stalls and SMMU faults.
- Add a standalone Hawi CSI2 PHY compatible and make Maili fall back to it.
- Resolve conflicts introduced by Glymur in CSI2 PHY binding.
- Link to v1: https://lore.kernel.org/r/20260923-hawi-maili-camss-v1-0-cbbb42e534ef@oss.qualcomm.com

Signed-off-by: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>

---
Hangxiang Ma (4):
      dt-bindings: i2c: qcom,i2c-cci: Add Hawi compatible
      dt-bindings: media: Add CAMSS device for Hawi and Maili
      phy: qcom-mipi-csi2: Add Hawi support
      media: qcom: camss: Add support for Hawi

Loic Poulain (1):
      media: qcom: camss: csid: Scale the clocks with the CSI-2 link rate

Nihal Kumar Gupta (1):
      dt-bindings: phy: qcom,x1e80100-csi2-phy: Add Hawi and Maili compatibles

 .../devicetree/bindings/i2c/qcom,i2c-cci.yaml      |   2 +
 .../devicetree/bindings/media/qcom,hawi-camss.yaml | 317 ++++++++++++++++
 .../bindings/phy/qcom,x1e80100-csi2-phy.yaml       |   5 +
 drivers/media/platform/qcom/camss/Makefile         |   2 +
 .../media/platform/qcom/camss/camss-csid-1190.c    | 417 +++++++++++++++++++++
 drivers/media/platform/qcom/camss/camss-csid.c     | 208 ++++++++--
 drivers/media/platform/qcom/camss/camss-csid.h     |   1 +
 drivers/media/platform/qcom/camss/camss-vfe-1190.c | 217 +++++++++++
 drivers/media/platform/qcom/camss/camss-vfe.c      |   2 +
 drivers/media/platform/qcom/camss/camss-vfe.h      |   1 +
 drivers/media/platform/qcom/camss/camss.c          | 228 +++++++++++
 drivers/media/platform/qcom/camss/camss.h          |   1 +
 drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c | 136 +++++++
 drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c     |   1 +
 drivers/phy/qualcomm/phy-qcom-mipi-csi2.h          |   1 +
 15 files changed, 1500 insertions(+), 39 deletions(-)
---
base-commit: 8b7179210b22f8e48a82c5ceacb9d56a9c4cfec4
change-id: 20260923-hawi-maili-camss-b5dc43a00ed2
prerequisite-patch-id: 6108fea87bf95e2911f09bbe7e95fa536c3ce397
prerequisite-patch-id: b347ad60c475f3035b04ec76741e0f1b5f095580
prerequisite-patch-id: a38055fcd5b32fbf7f7f03301a48b4ad8601386b
prerequisite-patch-id: 5faef8cef855ce6fa00e2c7f10f125431ede40a4
prerequisite-patch-id: ddf0ddaef84c2d088d08f17de8d20f6b966ace37
prerequisite-patch-id: 5d7b6860d43c9215836a0d50fb27d2d003d0bfd8
prerequisite-patch-id: 610b107ca35300b00e8edae31dfb959a4501ff66
prerequisite-patch-id: 0bfebf965372eab19b73ad9629cec919795b557a
prerequisite-patch-id: d386de6329dabce0b0a459384d28bf290e170552
prerequisite-patch-id: 702e37b99095301ba1dfb2b48a92f33575178d32
prerequisite-patch-id: 443074884f91d7d027b0a603dc199fa746b7c745

Best regards,
-- 
Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
