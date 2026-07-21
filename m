Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B528C44529
	for <linux-phy@archiver.kernel.org>; Tue, 21 Jul 2026 07:35:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ewqzsjNrmEk2XBpWb9JnqiLxOwWzFSjwem0lBJpVsRU=; b=bz99pHELpzz0Dp
	xIWkeqIxg3N9jIqhlZmm9ehah+LH+GDyG31jwUXbtc1j8F+Qqigucr25UWZNPzIDs9tvZ4QO+LD3V
	7btLzN07wguKzbS1G3fRZoX1M/qfQIW0Z5Cuvs6axZs9eu7lqthfL55XKjoaqc2t3/MA8skAfN/Rr
	z22JjT4uyfycjP4c0ntg/t12s9w+N7cfl6Bcm9c0iRGmV5jZpu7DSBWHCFEmxlWxi8E0vPemihJVQ
	7jAk7tuzCBtBQ/WXsqpgg7SIArJ6KlWXfghAPr/eRpBHk/i+cVVY42PMt9vfDaec4EoT2Ypd/o/kD
	fLvbaf18jSYX64JGCI8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wm50w-00000008f8t-1Tex;
	Tue, 21 Jul 2026 07:35:42 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wm50t-00000008f82-2bdX
	for linux-phy@lists.infradead.org;
	Tue, 21 Jul 2026 07:35:41 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66L2T0Wd091331
	for <linux-phy@lists.infradead.org>; Tue, 21 Jul 2026 07:35:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=I3cDrkkw7WcdmObSATeGnB
	kWQN16Ucd5OI+62ZV7940=; b=HwBAwvPHytCK0xYmgt/tSXuVQV0lf1xJmOVdgF
	HvLRu+g6M0pmsFNRYb3wZv/dY3a3uojV9JJ3JHbIAKxzwMYPplGQPhiWDqprAn8s
	4I7PHalsERSqjjGfr5Uq7/iApHpYpYrPCJ4yI0q/Y9H43vv8MS3HoUz9TfK83Rg+
	2E/Yh0MqtfasB7IQWtw87MNV9Amkk7ON/bsUuKDb3WZOfelQXcgbG+9TpYNFbQtv
	gRd4zqKB+lkyRRKqibAPTgY/AIqwaNCFSLO7VQ1PDlPIiCDFzOXoMJJuWgWxnaG9
	+2azbiXhRbIkAlQNomH8c9TG1JL6W3xBWHRPVxv3Z/sHHt4g==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fj01a94ps-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 21 Jul 2026 07:35:38 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-c9667280edeso12669398a12.2
        for <linux-phy@lists.infradead.org>; Tue, 21 Jul 2026 00:35:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784619338; x=1785224138; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=I3cDrkkw7WcdmObSATeGnBkWQN16Ucd5OI+62ZV7940=;
        b=EJ8VKLJ8hK0wchJcIG88ihBQ0N1jXULUGcNtbrrebpnUHJvMU4MB9kw8AIoTTqBkgv
         RyL8R9NDC8W8uNe924hp5gQHx8amUQbf5PmaN9LHhOCp5McwuVHSVkpkO0GoCJspJlzj
         reORkz5vjIrDB4th+EKNzExFgFAsGGN8MiO1xKwzm3hICgi0ERyMR2v9dbdNq5JEUPoq
         TA9RDwX0uX5HZLspnTOCxaNDV4VU4Bxt2Xe+wbfUwPRUAuVKnRnpL7OTRwDJz/5p8VGk
         af4wyDAKntomwRlqSu7weeiN7H5lD3CfmIipIusTsIG3HDdwH5rGA4AFN3ECrOtib06E
         Y3+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784619338; x=1785224138;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=I3cDrkkw7WcdmObSATeGnBkWQN16Ucd5OI+62ZV7940=;
        b=oDk1OucI9aQVDQXBAHQGlHVAvNRlat4t93ZRtipSSL0wokhXgKMOl2bE3F1Ks5KhdC
         DaVvSEL2GCHl/oi/hI8wiU4QwY2hH29mNCLKcQ08D3Kro9tVwdTfbQp02cMA8TdLypN3
         //aCTrzj6CcOxqO5NOJe8VxFiRsjS/OOqK3YNKbY0IP/Dm/Yiq/rS4ddl+SJFKX0prDt
         8YB/0bbEIByJKO7QRL3+OlMPnuhNQNIWVUDApEUxtD35jYaCXkz4iYitH2H5fp8ERVP7
         ZDD3XPDhBkokOFlzOdGIlmBQJByLWzYsQn+fENNl/oSwJDbp0UkOpamllBJfaJCtTo2p
         94mQ==
X-Forwarded-Encrypted: i=1; AHgh+RrWTS6ay0ggWxOHK+W71+Z3eY3tzNreviQ1R02NTNwjxsEYGiuDWWp25Bru2Ev9Z0sNUZ2aHHYP87I=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw4B+Rdr6vEggrecZHrg/41LxRiIpS2D7GZhOhHY6Ko64i1Jkgj
	QczrdqssPDwu9le76lwq7xNq+7TcY1Sp2TiZumHYm6JtPA10e2gEhNFB09/sWVlabIiwmylpAt4
	f39C/GU9U9LKI/iyxJ5Su3msguCPHtX7LNkrlrEkHuUIGoSZvq0NTUnTx9QvRdWB4d29q
X-Gm-Gg: AfdE7ckUJS+S/ICGIO5Mhy05v9sXzFksSpeCxATsNV9T39aXiKeu5rlXPDxJaPsCWDW
	frvF3F7YfL0Q+H/ueezr0NPcHIsoq0Eh/ltpjxJPh0VlcKPV4Q5ZupeJLIyMGkLPbmtiSRFSIDT
	bDmfHN9Tn018QfP8Eped3kg6BH1KlTR8Bry9ZwtNulwRMw6iDeCI/4YJ6KqIXXaGYuxvNNU4Hsi
	ACrmVQXIQBec/ZwW0C33U1iO6Ftc4Tmd4ybLBwgCEza8gxHIJ1CK6hCHTYg1n8u2x0R9HOQr9U3
	IVTm2nDBhwj8RxApdzqMr8/xv2WsxLZQmPSILFwD6DsuT1g5BqHYdGtnouiSlvic0QVX7I0XzJy
	UHyfErDniuNBgkWYRTeBxrLpCYwhWctEYzqcU/WdUvqnkrb8KnqFfL4VuP0mP166amW/XC1zIGD
	zByCgVqu6sMEMiEZsNZi0cgRvJJF5YXw==
X-Received: by 2002:a05:6a21:4584:b0:3c3:84a5:f2be with SMTP id adf61e73a8af0-3c3ad5a8108mr16745410637.11.1784619337894;
        Tue, 21 Jul 2026 00:35:37 -0700 (PDT)
X-Received: by 2002:a05:6a21:4584:b0:3c3:84a5:f2be with SMTP id adf61e73a8af0-3c3ad5a8108mr16745383637.11.1784619337430;
        Tue, 21 Jul 2026 00:35:37 -0700 (PDT)
Received: from hu-varada-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3142a210571sm45224271eec.31.2026.07.21.00.35.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Jul 2026 00:35:36 -0700 (PDT)
From: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
Subject: [PATCH v5 0/2] Enable the QMP PCIe PHY present in Qualcomm ipq5210
 SoC
Date: Tue, 21 Jul 2026 13:05:25 +0530
Message-Id: <20260721-pcie-phy-v5-0-8d403ef7e780@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAD4hX2oC/22OzW7DIBCEX8Xi3I0WsI3xKe9R9YDxUiM1/gHHS
 hT53UPIxVJ6WWlG+83Mg0UKniJriwcLtPnopzGJ6qtgdjDjL4Hvk2YCRY01apitJ5iHO2jtrNP
 coHA9S+9zIOdvOer7560DLdeUuL5N1plIYKfLxa9tMdJthZyqBLJjXVtku+IleGvBz0slOAKaD
 qWTRlIj242zV8fg4zqFe16/iVzyOXQTgNDIzjZISjtTn6cYT8vV/L22nNLJWVt54Hl94MvEV1j
 WSlnZK6H+4fd9fwKHstGkSwEAAA==
X-Change-ID: 20260609-pcie-phy-99fcf91a02fd
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Authority-Analysis: v=2.4 cv=BL6DalQG c=1 sm=1 tr=0 ts=6a5f214a cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=S-5igOXgPsmUWnL4N4EA:9 a=QEXdDO2ut3YA:10
 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzIxMDA3OCBTYWx0ZWRfX0LsHWQeFPLNF
 jurwtBTyG6jEPOtDfqPHZ6nY7gH1PyzrQNfjlO3ckMRkuTp1yrn3jv3XSerMA9DczqUJBmfiW8S
 LbD+poSjczjJy63tVqjXemuMtu7FI0NTVc35g4sI6JrGvoliiBi//Aa6Rjrwv/OqBi68ID6nt2C
 L6G0sFFkWBoWRJ4SATe/JqJk17mDihbj4iD1cdBuaN8d2fQftZDtGEUs8IbHrhMLBqVdDlzGQOI
 /cEhUGeGb+lOZEz4Igi4ojcM5S1jTCfljbc/cL6Xa+JU6N0coPSOchKLGuG5OGgMT82AzllsR+s
 6H9FtmX0KiaIKRFfsp8ZE/0PtZrhC5zxZTsvjJLoIca2V+1AFeZ57Gb3HddetebnVX7kpYDcXJP
 L4kOgtOSknDZj+pnpJ3umv+IXMLQJenBw33tsm8lO/CeAQpmen5c3gQcZ2sYHjGq8/m2irsf9gr
 jwwHzMHHrG6sGXtsROA==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzIxMDA3OCBTYWx0ZWRfXwU+jv+XObFaO
 awXuOri2mIy5JGHN9GX/VyakE7JDvAJ+L6z3ksjl8Wxi9H0c+IsA3aQPf+zxfJ+Hy9Mh0WGNNCE
 DQpg/Ljagw8xifz6TvJ7WkJ+4DH1gsE=
X-Proofpoint-ORIG-GUID: QOpcxKpoI_nJ1BO1BVtQeaht-6Cj8jUr
X-Proofpoint-GUID: QOpcxKpoI_nJ1BO1BVtQeaht-6Cj8jUr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-20_06,2026-07-20_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 clxscore=1015 malwarescore=0 suspectscore=0 adultscore=0
 priorityscore=1501 bulkscore=0 lowpriorityscore=0 phishscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607210078
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260721_003539_666079_9D05E077 
X-CRM114-Status: GOOD (  10.54  )
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

Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
---
v5: Rebase to top of tree and resolve conflicts in phy-qcom-qmp-pcie.c
    Pick 'R-b Krzysztof' for  dt-bindings patch

v4: https://lore.kernel.org/r/20260616-pcie-phy-v4-0-504677c3d727@oss.qualcomm.com
    Fix commit message for the bindings patch by removing redundant content
    and adding explanation for using specific compatible.

v3: https://lore.kernel.org/linux-arm-msm/20260610-pcie-phy-v3-0-334011b378d6@oss.qualcomm.com/
    Fix commit message for the bindings patch
    Remove unused tables from the phy driver (ipq5210_gen3x1_pcie_ep_tx_tbl
    and ipq5210_gen3x1_pcie_ep_pcs_tbl)

v2: https://lore.kernel.org/r/20260609-pcie-phy-v2-0-83bc80e79fa6@oss.qualcomm.com
    Had incorrectly made both the phys as fallback. The single
    lane phy is standalone and double lane uses ipq9574 as
    fallback.

v1: https://lore.kernel.org/linux-arm-msm/20260514-pci-phy-v1-0-482429192746@oss.qualcomm.com/

---
Varadarajan Narayanan (2):
      dt-bindings: phy: qcom,ipq8074-qmp-pcie: Document the ipq5210 QMP PCIe PHY
      phy: qcom-qmp-pcie: Add support for ipq5210 PCIe phys

 .../bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml    |   2 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 129 +++++++++++++++++++++
 2 files changed, 131 insertions(+)
---
base-commit: 03cfefef0119410fc464d0d56e83626cb570b7a8
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
