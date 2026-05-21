Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0F39CD5BAC
	for <linux-phy@archiver.kernel.org>; Thu, 21 May 2026 14:05:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kWmpdpBxdA3fU4gFaEA9POQDitndUr7jM2IF3H5JxRE=; b=L/SbIY/YHxohF0
	mOl7IiPyFzv81jNDaiObS0p7ygz7NodVKLNgYGRGu4l/PxC53f+IR4adHthBiWe4oq1GpWgNs3N02
	S3cIy14te1KV1xinHhgjXhddh+GHMU0OkXuMiwE+hKU2M6snpBOIbGD6R5u/3SqPScr9HYFhQLbIV
	Nep/Nnt755jqp1ZlNfg+G78e7pkGsE1aBv4pYpGb559+VB5slUQL9Y4CoEEj/XS1V1uCWnibFD4Xm
	3gpEsuh2T7X99MAr+XQhKD17nim+A0bkZhDNjmLxW1dsX3DBHOKDg9scyyg+9DTNqXhUHNT0pvhIK
	4YQf4V+piuI+p+S+lvTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ41v-00000007zIk-10io;
	Thu, 21 May 2026 14:05:43 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ41s-00000007zHu-1xN1
	for linux-phy@lists.infradead.org;
	Thu, 21 May 2026 14:05:41 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64L99xoh3009667
	for <linux-phy@lists.infradead.org>; Thu, 21 May 2026 14:05:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=3OTRDFg5JhaU43k+bSlIH/
	IJf6yxe4CHmbFjPGs2lIU=; b=I31eoLTlZxSwY4D7eKvF9DrRGuKU5fS9wyoXER
	sJ/5uko/s/wbnZ1PxNzVEqsM3rxLAj8yrUU9CL973njaVGN7Djqk+A/aym5y7YLC
	c1a58MtksLOzv1/NUABWuu3yx6q28MIDk1O3VckAqHr4/TpnHU73jbaU3Xeb048y
	DlOjXUTId2e7ZY7iTflLckcfhXM1mLrzUPVCsF1wXmlbJ0oeOjvpCvwD6V0eERi0
	mqDvxKW6HGYTF/Ml4sfF1/2e/4ltCofwNgYNb7ORZq8AjRKFO64hZ51epQ1mzZyb
	SqJYzciWuh40RoTt4Yb6YN8FO0ssS9sRQfDemLKcexGP0HvA==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e9sr32j60-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 21 May 2026 14:05:39 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2ba224c3ffdso149475505ad.0
        for <linux-phy@lists.infradead.org>; Thu, 21 May 2026 07:05:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779372338; x=1779977138; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=3OTRDFg5JhaU43k+bSlIH/IJf6yxe4CHmbFjPGs2lIU=;
        b=VQ50e0WGmKpRoLx070GbaVfKsfRX+bMs6D7CHgnJV/Io1oPZ1Qz6gRRYlTZSGnXYb1
         iK22hPt+nVBerVgMeHxEkpkkrQK7Ju6o6/CqQwnKEiHQHM38Pnnje7jUiejsOpebWVCN
         rc+/elxxnTbfgTd+q91aHOgUygq+0eSGyn4bv8XKw882kVOXquwCzC1bNklw4Mnn9oy5
         hTEe/ZFpKg2uXtWYjVXLakWyE/Qe3ph4Z6ULmboAO7J3EyNI+HTA0Cx2coYHgQ0+GiNx
         dejYaDzY81CT3ubUuCgk7Imdm4NV0/vsMzpuJpr4HyhjnI5ARMhRKG8I3Y/lVQTDD5o9
         +0Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779372338; x=1779977138;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3OTRDFg5JhaU43k+bSlIH/IJf6yxe4CHmbFjPGs2lIU=;
        b=ZakdlYARbgqFRP15c2DXioAW9TtMetI+7SGPQKbOF5bH/hT1KRUsYfUVT+POCROL1R
         PjJ/HvLrkMRc4kT3UkEVPBQU/6R3M+PbLkTg7auvTxxWi1v23RrJ2P3Qqb1OaZNRK904
         5fsZT9KKxfJ6Ib+C45CKCmP3pUPTGim4C9A1Z7y4fUXvqeas1DPLG0JizYFZO0zMBsvU
         sJr04EfX36F6q+lL2JUlrHIWJwKQlUsRIGVCEMs9YsYlmoqYkOwnqjULEGVw1Gbz1NuP
         2t/Y0dLemdfX+ek1N6d5nJO1C6pgKKpqGfiQAue1JbcFZzRY1Jjdr5eIh2TB41f+b8KQ
         pbyw==
X-Forwarded-Encrypted: i=1; AFNElJ9OIO36D3GANGNTUDB51J1eLkPoxmebPTaki+OktoUN1Wlp3C1QYDe5OAGj4cnaRJ3OBzIQQ2ZdgwY=@lists.infradead.org
X-Gm-Message-State: AOJu0YwIIG2OeZjeehLlbAcShhHtAd+/TWjKI8pYudtWTW5FMnqexCCR
	Po/dBLOeNXeYFLVO8DZE2a9z+yUwbuUvyd4V2vpcWMv5YCF9gs70xdTSrXJ+asqpuLsJ8t5thfz
	550XQkFLzLnaczeLCZXZMYpY1CCuU3OUR/AovT1fmJ8himB2HC5RgX3YMMZM97UuOb/tL
X-Gm-Gg: Acq92OFZIu8ccWVluvXUcEwey4w9sCwfQRUQvi8Vp9MbUUv4uHRoO2usHROensLw7E6
	BsgiWvQYVlMG2vq7uc+rarTDLq/5fKw8gE0nncSaEJWOtO+wC4TM1qYFbAhry8X6u+iqw0KayIE
	VRqYeybLdBrtk3Q9qGwBVvWU6VcA8aXeGOB55TQnExQFPnH0AoIhs85MY1zctrHL/5OkHJO68Tb
	zTzYT8HsKCrE0hPZLJ0mUQ2sJJPYx8tghwBeP0KVtAZIS6mmGIYRo3PxLIxogLA5M5743m706Ks
	rC7FEpLqttrNkGJhZkp/7tEQ+vt8CZeCNJhAQsKdH8UrA30kGvLUl0fP4XP84aPgJkUPS8eSb2Y
	SVNdFfzUSYN0vzi1jydTPko+CFSzXBLeFokkHEduNRhrGFksBbGbeyOiz
X-Received: by 2002:a17:902:d551:b0:2bc:7d1d:b677 with SMTP id d9443c01a7336-2bea33abf63mr34891365ad.36.1779372338096;
        Thu, 21 May 2026 07:05:38 -0700 (PDT)
X-Received: by 2002:a17:902:d551:b0:2bc:7d1d:b677 with SMTP id d9443c01a7336-2bea33abf63mr34890605ad.36.1779372337563;
        Thu, 21 May 2026 07:05:37 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2bea9287997sm13189765ad.24.2026.05.21.07.05.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 May 2026 07:05:37 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Subject: [PATCH 0/4] PCI: qcom: Add support for Eliza
Date: Thu, 21 May 2026 19:35:28 +0530
Message-Id: <20260521-eliza-v1-0-97cdbe88389d@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIACgRD2oC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDEyNz3dSczKpE3VRTY0NT08RUCwsjQyWg2oKi1LTMCrA50bEQfnFpUlZ
 qcglIs1JtLQCRIcRQaQAAAA==
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
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1779372332; l=1529;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=O7C+WAshZBT5qe7BGQyWLbLRGLqNcCFqdNXx9ENZ2ug=;
 b=qL6upoywstmBHfEA/kiZY/0E1OCxGPxyH5TmL0lnTocWoJBsNk0QQEwjSWCA4ZdE4q5vbc/dw
 BP2qsvW2fqnD7WGsvOL+X0cDgwsAeSxb0W4TQitGgfNk2ublP7xS5hw
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-GUID: N6ZToYi1lF9htvI2kMy5J5XBCy6SwsFq
X-Proofpoint-ORIG-GUID: N6ZToYi1lF9htvI2kMy5J5XBCy6SwsFq
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTIxMDE0MCBTYWx0ZWRfX5LsjYetxaKRC
 78WYr6pAvyzaED8x5eCREnDZv+jWItutJJVUt4pfI7b/tYTc2uhgECm0vy6lrE9IWZSg2Gyddb0
 JtZ1Rh+39HtOMBlMu1G8ooJlSzDJnLiHLRFYAhBI8q/hca9K1/m2xGfRLwMmgZrH4Cj20Tirn7i
 Cz7o87bKR28U4URddA+/y/981G7r5cwb4zCxSiS+ODc6u7WktZygICRz7KoxN7AjO294EAQWQ8Q
 qA8komDDbcykA+4819841vTr0/dkxtUzhBzgrNGwMQRH0HRXayoFoEt4G9CSH7novrBoMv/E/L2
 XcO2fbwguIjTiVpmzEkYqw3HVTPVYVUwfHb8A534qisFDTT8VMp2kXA4iEKmpQJKuhZC6rB0QOU
 UVkni8uQWX0BXBZWQr2u98eWF6Bm7+f+HQexzv7I+D52zQp0413xVJo7g69UuaiHGU0o2A4fbVH
 F6zFucgUSfk62uTqnpw==
X-Authority-Analysis: v=2.4 cv=L+YtheT8 c=1 sm=1 tr=0 ts=6a0f1133 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=KRKipztoQesxEaMeAmMA:9 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-21_02,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 suspectscore=0 priorityscore=1501 malwarescore=0 bulkscore=0
 lowpriorityscore=0 phishscore=0 clxscore=1015 adultscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605210140
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260521_070540_625023_C1B68F54 
X-CRM114-Status: GOOD (  11.46  )
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
two PCIe root complex controllers capable of 8GT/s x1 and 8GT/s x2,
both using the cfg_1_9_0 configuration.

The QMP PCIe PHY support adds a new Gen3x1 PHY configuration with
Eliza-specific initialization tables, and reuses the existing SM8550
Gen3x2 configuration for the x2 PHY instance.

The series consists of:
- dt-bindings for the Eliza PCIe QMP PHY
- dt-bindings schema for the Eliza PCIe controller
- Driver entry in the Qcom PCIe controller for Eliza
- QMP PCIe PHY initialization tables and configuration for Eliza

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
Krishna Chaitanya Chundru (4):
      dt-bindings: phy: sc8280xp-qmp-pcie: Document Eliza PCIe phy
      dt-bindings: PCI: qcom: Document the Eliza PCIe Controller
      PCI: qcom: Add Support for Eliza
      phy: qcom: qmp-pcie: Add QMP PCIe PHY support for Eliza

 .../devicetree/bindings/pci/qcom,pcie-eliza.yaml   | 165 +++++++++++++++++++++
 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   |   6 +
 drivers/pci/controller/dwc/pcie-qcom.c             |   1 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 139 +++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6.h    |   1 +
 5 files changed, 312 insertions(+)
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
