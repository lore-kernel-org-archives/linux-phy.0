Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E94DCD8CB9
	for <linux-phy@archiver.kernel.org>; Wed, 10 Jun 2026 11:16:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=c2+pqQLgVWDceYDdlsWU063mxeLjZjO5RJOqOLY7wBs=; b=kpNrpHczCqqDXw
	6VzzmuJzrS0VO984AAbB92hBncxYalenQB5d+QGK8u5vH5+Ws7Agjlq+X5Neg1K3ELxIUDL6HPD4K
	FQhTBu7XbOKjL/yQEP6BEU3M9Dya1p/Irpb4cqgn4gDHGEneTJvBQ45rLR/upKHV4WvVYECJGnbLX
	m8YiGM/Fzpdctfh2mh56is3OeYedkGOqjG6bXIUB7swW+h0O4Vk0OPptuvxZ3mc7aacDonQ/L6he2
	NZSmnK8ElZ9NJgufhjSPq5CVxLqiKIx5KblOEKwT7TKo7jJUYYOG5pIs8oZpeV6sY19MYKcV+1q5S
	+iY3xGx/20UjGk+v6EDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXGv6-00000007VVi-11Q1;
	Wed, 10 Jun 2026 11:16:28 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXGv3-00000007VU0-1AFg
	for linux-phy@lists.infradead.org;
	Wed, 10 Jun 2026 11:16:26 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65A8womC735557
	for <linux-phy@lists.infradead.org>; Wed, 10 Jun 2026 11:16:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=UKEhKACBQ+XYELhW5r0yrk
	+kReOQiMsbSr6+zXFb6DA=; b=Gdl+QQckbvPoEslLSIkqylF0roChBdwwyquc0s
	BWjb8uEfCjagg+xvYyh5w2ikjY0+Uy5kLDLPKy7USqDxcwJUEGM9vF9f4FmSaFib
	rdxb/lVhBv4Y0P6BnonE4s7Cazybfy3lazWA243Cr9Y8T/j6jswSQ8Bl/0b/SlDN
	ohjn1MlXilfTi/8Qgg87lSkYpOKg5xlCDxwIzDvFoXN8K5LYVtgKTALvBA51OJQn
	IfjRRsAE+rc2M8+2D3V8qKMnmGeDsImE+UumtdHbNHSe7No3haOA9611sWLR9KWX
	DYg3aYeY5ea+GVzO+OKKjo83MY8yJwu+wmFfCFT5ysR8EmfA==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4eq4w1rhs0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 10 Jun 2026 11:16:24 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-c85dc345ac8so3341483a12.1
        for <linux-phy@lists.infradead.org>; Wed, 10 Jun 2026 04:16:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781090184; x=1781694984; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=UKEhKACBQ+XYELhW5r0yrk+kReOQiMsbSr6+zXFb6DA=;
        b=S6lecul3lm+X1rIpyk24s2sbHPYS16MIc8/3F5ZYkeCZEF5tadrmEv0yRHaXcBk25T
         uVtVjG3sizvvmGcGw82WgfW+/UJczRzQBunzulJt9FiPJcT+f8kZK0Fvvoc6+GgCzTKw
         GCYd2qGo2YnCnxUDEH9RVk2HfB9UuR1P1orp9BpJ8QyueLg3n9Uvd59S6i1c7+NcZkQw
         P530zXd5HHUezLL9yqKUuuwMpuxjGrO1GrAjcFf5lX9Yyc0lvfb1DMlCeGRBwkow52c/
         7BcwTt3lKEWn95cTuBZn9QOSrDrSe1Sgs7+XgVww5E9IgGPKyPvwX6y14Y1QYssCKSX0
         PBmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781090184; x=1781694984;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UKEhKACBQ+XYELhW5r0yrk+kReOQiMsbSr6+zXFb6DA=;
        b=ToqJ9l4UPFE+i/z0JuJuJHHdmK9ypjB7J7MfULJKQJ+lW9eHYzHX8C1j3Hhhk9ooi4
         RqnkMnfAzRwBF8i/4aS3FM3zWfIEA/xbovgLFmpxmgfbe2v3ju4MJDIzG4eSWTi3iQBA
         aefUKIp6NEnbV5+TrbCzy8F1Dihf0FWZ44KtGrIDzUz9qMJGkU5DpicaKA7wDGUTE7V2
         e5TpE5JgTC9gj12zyE06Q/0tCoCrS0spjxVLxEXSvv4+y+YbBJ86t3v3yOjsf3ovOhTV
         ioVPinlxcUJCLKv234mYV4jxv3ZOGlMPOihX3AfNC3C+WAzY1skZ3w/lOlSDKqQkqkDF
         c4iA==
X-Forwarded-Encrypted: i=1; AFNElJ/0KuormjxB18pwwVOnvt3BSWbPSiPLSPF3liDgg2gx0PlYTv1hDdSugPC6qe0xGfKgbvsauiQSAMk=@lists.infradead.org
X-Gm-Message-State: AOJu0YydN/msZIp7bXonjSdt+F+HR2UYageWD4GcW6Q90UFeoV6q7Iye
	8x2oWcI7htzOCSCF9QjnVKJ1wnhAZ9VJFDTgaUZQEH6G+ad0hVPIngKrCjgkR3bNqFx+u/25QN1
	C083V9+mF82o7UmlHX1VcTBt4511R0Iet4LAYJVIn1q9pRMTbJNjirO+uhteP8tmaXr/g
X-Gm-Gg: Acq92OGvjvl2S0bewewfhhhvfenA38ZttaftDwmvbkDVqk4vjqcp64cGj6tbhbtcHx5
	nW23K+jCdlxzUjU2KsP94DuM6ZhBXq+2kO1Fuekl0dAMb8NYjA1ahvFns2jD9vI3Jyl94xacO7V
	mTIJ6NNpz8rjPErn0iReaSxI65ReA64OyN3ofHADIvBytp2za7IP7xjVU30ohL+sTBO4yzMpBBK
	DgyItofrfIV08UDSv4NuCbPvkRnAfjkupm/n+kX56bP+jjjf2oiKYlc1iblRbeAu8xI8Kz1fqsF
	KzK3+gs9a06RkRkxmrzd+v6WTzuxJqVWuxpGSN64KmJTz/wnfd+aYFPLU4RZ0OtLUhTMNN3OptB
	3Ub2Hhk6PohB3bvQQD0cgjgqswqSKSqfsGjD76GkVvGMHlUSfy035RjUkA/w3K9k0nHA2a698RC
	KacSUjrykjl039iV7UiMDNpxotaKEgrmaQhAIc7m2HPV39jxGQcEr1MQwBmr5ZFg==
X-Received: by 2002:a05:6a21:6007:b0:3b3:1b38:d9c3 with SMTP id adf61e73a8af0-3b4ccd1f39emr29940023637.4.1781090183650;
        Wed, 10 Jun 2026 04:16:23 -0700 (PDT)
X-Received: by 2002:a05:6a21:6007:b0:3b3:1b38:d9c3 with SMTP id adf61e73a8af0-3b4ccd1f39emr29939985637.4.1781090183250;
        Wed, 10 Jun 2026 04:16:23 -0700 (PDT)
Received: from hu-varada-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c85df03498csm23896099a12.1.2026.06.10.04.16.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jun 2026 04:16:22 -0700 (PDT)
From: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
Subject: [PATCH v3 0/2] Enable the QMP PCIe PHY present in Qualcomm ipq5210
 SoC
Date: Wed, 10 Jun 2026 16:46:07 +0530
Message-Id: <20260610-pcie-phy-v3-0-334011b378d6@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAHdHKWoC/2WPy26DMBBFfwV5XUdjD/jBKv9RZWEGu4zUBLAJa
 hTx7yVkU6mbkc7o6j6eosTMsYi2eoocVy483nbAj0rQEG5fUXK/s9CgDRjwciKOchoe0vtEyas
 AOvVil085Jv45rD4vb85xvu+Oy/spulCipPF65aWtgrMWbY0NpaCwTp56IuNNFxAc2Mb3UFOyW
 vxt0lZHj0bVkokkT3OjFUgIHWDCgNFhuyrxih+4LGN+HMNWfeT/37BqCdJhRw6i9SmY81jKab6
 H71fN037EZdu2XycCpfMmAQAA
X-Change-ID: 20260609-pcie-phy-99fcf91a02fd
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Proofpoint-ORIG-GUID: HdPmQVVAHm_ojwoF_qnL1AO-6Czjy2Hu
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjEwMDEwNyBTYWx0ZWRfX+zob+QNm+dmY
 1ntLauBHDljzA47UrCWouGUqfBfdylkQPyTY8zvu270yyHa8sVlaZeCnTS9yYoi01/p1pYSEqBi
 eDbUFuXUpOAuVDoV4YZvF5u2JZQWC2ViKjEPulcpjM26gKH/BRuAH5vWtZEJkfWnlxiQXGpDEBe
 Z4r5ZlPvlytfiAaUFY5bVXztSCXFMbMYu2t2n9fhVzyjI2opyLO+CPQ60DZ9y/bwh90Ugs3Chtp
 52NF9d41LXpH3lGA7+tofkROtJyTr4bLRTc82ZbvjakZ2V9wz53ZnzmP4ka1zfQxQC41Y/JiH1H
 +7G7YpAxBBu5QAL4+tjwXFeeZiz8AszGmLV42Y5qJcQoDFGWjCPa7ktpIWFa84wYfw5fm0oUqvk
 tW8HgjU3gy/UrBrM/3mur3Yqvr9OPl3b3c/JilMvXvpARXLsFKETxF7uXPJdiuA5FcWjS/4f7v1
 upJ5qYJpqXE57nm47LA==
X-Proofpoint-GUID: HdPmQVVAHm_ojwoF_qnL1AO-6Czjy2Hu
X-Authority-Analysis: v=2.4 cv=ZfEt8MVA c=1 sm=1 tr=0 ts=6a294788 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=tBHTsUc4uvt9YXz8l1EA:9 a=QEXdDO2ut3YA:10
 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-10_02,2026-06-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 clxscore=1015 spamscore=0 phishscore=0
 lowpriorityscore=0 priorityscore=1501 impostorscore=0 suspectscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2605210000
 definitions=main-2606100107
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260610_041625_325304_ABC9B641 
X-CRM114-Status: UNSURE (   9.70  )
X-CRM114-Notice: Please train this message.
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

Document the bindings and update the driver to support
the PCIe phy present in Qualcomm ipq5210 SoC.

v3: Fix commit message for the bindings patch
    Remove unused tables from the phy driver (ipq5210_gen3x1_pcie_ep_tx_tbl
    and ipq5210_gen3x1_pcie_ep_pcs_tbl)

v2: https://lore.kernel.org/r/20260609-pcie-phy-v2-0-83bc80e79fa6@oss.qualcomm.com
    Had incorrectly made both the phys as fallback. The single
    lane phy is standalone and double lane uses ipq9574 as
    fallback.

v1: https://lore.kernel.org/linux-arm-msm/20260514-pci-phy-v1-0-482429192746@oss.qualcomm.com/

Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
---
Varadarajan Narayanan (2):
      dt-bindings: phy: qcom,ipq8074-qmp-pcie: Document the ipq5210 QMP PCIe PHY
      phy: qcom-qmp-pcie: Add support for ipq5210 PCIe phys

 .../bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml    |   2 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 129 +++++++++++++++++++++
 2 files changed, 131 insertions(+)
---
base-commit: a87737435cfa134f9cdcc696ba3080759d04cf72
change-id: 20260609-pcie-phy-99fcf91a02fd
prerequisite-change-id: 20260514-icc-ipq5210-0ab03f3a3e83:v1
prerequisite-patch-id: 0b6145b6635b18fe79fbbff5815041b43778c5ed
prerequisite-patch-id: 924c6ff7baf4283ac7991ee94c803a00fc5cece4
prerequisite-patch-id: c2fe1800fe769dccd37f94c19860a07f979e3c4c

Best regards,
-- 
Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
