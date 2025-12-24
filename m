Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1325EE7544E
	for <linux-phy@archiver.kernel.org>; Wed, 24 Dec 2025 10:35:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tG5LVkUNzpNsdbzKZI1f824bj//Ych9tdddIh50lpTk=; b=HARt5xiwPGehhj
	2vw4b4W+Dpt8mh5bAxVWgGHW/e4ulqIamjDN4O6v59t9yMi308scC8/t5trsnrB32He+PUhjfLUKs
	dw59UwD70j9Q0Q/YyXXD9sTXU5MB4Fl1vhvdlD/I5zWi8Qwru7t5+Nvw1ArazndXiBEOuYVEDf5LD
	Tyrb0BxX/BJ4kJAO7zUp8COcnMAh7nEjm5DY/kKlK1Jr8XsRDzvANOWu+4feZZ/B/Cw0z73rfLu9v
	L5WNbso6yZCr0u60xCOeSSe/d4LDQS5oEUmwCjuXnsCb9yFIHYV62awNIwMdVW9b1UYgvrgEf8OVq
	aevd36vxuuBZhAI7Fbgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYMD6-0000000GhQO-2gNX;
	Wed, 24 Dec 2025 10:35:16 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYMD3-0000000GhPl-3X3h
	for linux-phy@lists.infradead.org;
	Wed, 24 Dec 2025 10:35:15 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BO3mjxw4134198
	for <linux-phy@lists.infradead.org>; Wed, 24 Dec 2025 10:35:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=o0wRh4McKVmQ0eCqz7MNa4
	oubLjNjqtOBrRue2Bwmic=; b=IJNiv0R5hRfigZVFdhNJ2GSfXmIFv4SA3CNqbc
	tYYZb6uAPDINnjakzKe6ZXTchRFQ8yRWG5GjX01jTVGC20bgTdopGim6SvF7nWBY
	Qp89WfT6Qc7ovuw6TTu3bNfIQBKXyLX65J/RXsdV3cny0tXtYXWO87a5lt8SAr2P
	0YKZlD85UKUQfQwazAv4W3uqrdTjWPZZFcvBkKw50BpOCiYCTc+/N3Y79JjtMe3T
	3e2rItRD2l5BvPEGgEXTjPA768GB3Az/hbTnNQk76aSLIlqaafRTlM+M8SVGO1LH
	QoLo0IZ3syjUOLnadI5gaqymRWyOKyem2sKBd8uOibEcwg7Q==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b7x46tsqu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 24 Dec 2025 10:35:13 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ed7591799eso140061911cf.0
        for <linux-phy@lists.infradead.org>; Wed, 24 Dec 2025 02:35:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766572512; x=1767177312; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=o0wRh4McKVmQ0eCqz7MNa4oubLjNjqtOBrRue2Bwmic=;
        b=JApd7ip4uCeiqtskKKc9xNStn/ct0xoNaYTzGbx/W/F+iz8KMbH8EXmW7zWA5osy6Q
         5xFm9n8gMBg5EpCtLaZH2lZBDASAoAWzT+fPQHhO9my60fgfLKJsNCcwq8D/OSvocHqo
         WFfnzoNksjhHkYj0a/PEGu9uFo9RixZ51TLVbBJU6U5uIqXnmgXUH537DjGWRLxq0DHm
         U0K3wqKdeu3OljOK0Aass5L5ZZEMe7F7FSHPdDOyywRMyp0uYcl2v11e0PPQzPSP79bD
         quy5N9Oo58TOA0L/ollUW19cv+H9sr4nk4E7ZI2vLRjngdHMYnQTtfzpHm57SRL7Mq06
         6kAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766572512; x=1767177312;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=o0wRh4McKVmQ0eCqz7MNa4oubLjNjqtOBrRue2Bwmic=;
        b=cZi74EOaimvqZQxjUSFzJ4jokr0ob31sVXf9kJ8ziAp/+x9Ch97KAItSRP2i2C2Pbs
         f7HMh02za3e7R12Dzrb7mFIYsSVYTjAkT44OPndCQLn34hLwaMMTyRiLQ4bvVN+oiKIo
         /vhXY57FXCvMORTTKlTqssn+NG8ebJ7pFt/SJN01/LL2xwvfTnUUFQVYuEQTHAQBEIKG
         jgJy2ZIHVjchJQC/Ncnrw7Zjmp8vGZ0liVhsH08eEyI+UhPK8w3nYcQvemzkQIFydjJ1
         lxooFSFOOWxCM/qPRQGX2ShL+jn7dk66I/meymIZzV4u0ZsUrygCHethfx7s0UuzGNSN
         ilXA==
X-Forwarded-Encrypted: i=1; AJvYcCVwgpff6SHwFmOmWFNAZ9+fHZkkByOZvKkw7g94ebGul5fM6dsSRGkGpwhy9m0yYxHV6cw9c5FV0qc=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz9g1mBeC7rh6fVPnq1XJyhlKm/p8FUUE3ZvrULYOvEePXmP/3L
	o61FdY2ta2EB9wT9+13xkUtRVqjuqcYSgZebl1pUBEY08ld5ACBF/W/PIlYD7/BDpyWqKDexR1S
	Nj3OY1bsPQlNn8Yk5R62iQT1ZJKz/mzRC412CpVHOeQS/plfvQsB34SWOZpUyk+le0Cm/
X-Gm-Gg: AY/fxX5inNOHI26Beng83eAIO85F8ey+iJz594CPRx5ew4o32ATojj08eqKQEuSrok7
	Y2FldMdmSNiKIIhpUNpae1P9PsPBMdHBIeQ6Zl9lkfc0521hka3xdczSNTTi6YqoIDbFi8smn/n
	fNOGjMIVjZ1UC2t5BGzEb88jHWQB2xwqnkUB2fAelb5/xLgv2XouRtg0gfZTjCbAezzekGs4vuh
	WbyjMtIhqplzAYoNrK19ItXPlnGdWIyYuHq3bZ2YlGY7GoCUJmKzwevLeuEx6C4miyGUq7HMz/j
	muYdJVKQ85d2xcc/82wYteF/cQqAcrJNDxzXwdsxcamwHaASh1UJNDsxtpFc/u1646gcjH51mZ0
	TlSrIu4MC6qqAt7o=
X-Received: by 2002:a05:622a:341:b0:4ee:24fc:be81 with SMTP id d75a77b69052e-4f4abd400d4mr265149031cf.36.1766572512034;
        Wed, 24 Dec 2025 02:35:12 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFSi9Ewyw0GUdoJ7T4Ey1Be2Kg2DU5JzeaC0kxe8WprrOkVsKHayOTqD1ZI8V5VDJHlkvaSig==
X-Received: by 2002:a05:622a:341:b0:4ee:24fc:be81 with SMTP id d75a77b69052e-4f4abd400d4mr265148861cf.36.1766572511527;
        Wed, 24 Dec 2025 02:35:11 -0800 (PST)
Received: from hackbox.lan ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037ad806asm1729496266b.23.2025.12.24.02.35.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Dec 2025 02:35:10 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Subject: [PATCH v3 0/2] phy: qcom: qmp-pcie: Add support for Glymur PCIe
 Gen4x2 PHY
Date: Wed, 24 Dec 2025 12:35:00 +0200
Message-Id: <20251224-phy-qcom-pcie-add-glymur-v3-0-57396145bc22@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIANTBS2kC/43NTQ6DIBAF4KsY1h0DWLB25T0aF5QfJVFRqKTGe
 Peim+6abiZ5kzffbChob3VA92xDXkcbrBtTKC4Zkp0YWw1WpYwopoxgwmDqVpilG2CSVoNQCtp
 +HRYPuOJPripGjJAonU9eG/s+6UeTcmfDy/n1/BTJsf0DjQQwEGFuRpGrwUVR93YU3uXOt+hQI
 /1KlPAfEk0S41yUjJeUVVXtQsjnRfSpPeRpoGbf9w+P+e0FEQEAAA==
X-Change-ID: 20251015-phy-qcom-pcie-add-glymur-096b6d951fac
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc: Wenbin Yao <wenbin.yao@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=1305;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=WBAxW70kLr36N+16VMDnyUYrgMjJ3I+VrVEfqsxWN7w=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpS8HWhHQtDdSEVoYJxea7dghUNT653wUP2zN2Y
 ubbpH5HYjaJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaUvB1gAKCRAbX0TJAJUV
 VmZSEACIRfe3BGB3ilmF0Ghsy+pek5aRzxoJ4aXuo8K1ipfgA2G1xV1cY2H6mpzkxB7KGfPMaoa
 oSg5JNqE8Htv2OuGs5n2/OT9H+YwF9B5rZv0gLfsBwu9NDxByL7SNyEbM/WyAGyjBg1i8uv70L/
 B4+5cTl0A2xHoF1q4BcaD/jBaIHNn5TXkrLzZvX/7rRFW1xm26jaqLhxHOZ9vxwnD7O3VS6MQvM
 g/0QEq5GMXZnT10O8ZQPSX5Cf92vlsDGvjkNJsSc039UlJBQ9wY3PbJIcmArnqt6WSjtmCuuzgH
 uGS3jF9OI4Ut3qGMGU73IHEJyBxPMB/BP2b4jpo3NDJDFJjdyrO54SZD6+4Smz323rXDnVmFkFW
 0XVlBBdt4/+2PqcJ7UUCUy9eVzRFRWUOp19t4E70aGINJWKAvYJbWEgvfp+Oka05wK19o2L4fwn
 4EWEwq5e+oNqAO2iDYxSGPGFmHoX3ht+k8i2LTsse9JscLTnyKEWiGQnli7ExGklnQ7ED2wSqYa
 +35VEH4o7tKkQSt9+x8hMqTDutulZRVWigGlGelHmlgr6BXaNE2BnmJXboRCsjG29fvzfFa6s57
 126+yp0q5yocn3GIS5U0IXofHZAGzsb2PSnxqZts4DYVAL4FcTEtj3WCLox3GKc2MRpoOEyiJN4
 6bv/AchUNMgqQJA==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-ORIG-GUID: 4ibo0yuDd5PD5RAh23C26bswvWcAL8Nz
X-Proofpoint-GUID: 4ibo0yuDd5PD5RAh23C26bswvWcAL8Nz
X-Authority-Analysis: v=2.4 cv=aOf9aL9m c=1 sm=1 tr=0 ts=694bc1e1 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=DdBtMnqNxkYIvXj6ev4VzQ==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=bC-a23v3AAAA:8 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8
 a=KKAkSRfTAAAA:8 a=25G5sqDuFd8dvZOKy0MA:9 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22 a=FO4_E8m0qiDe52t0p3_H:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI0MDA5MCBTYWx0ZWRfXzkag4XIT/ZGb
 Jec5Os5ed4tGSANtkoa6lJ+jebxDOHEa2yVLtxZiBI+Rsl+s2czVnPo18d0T3RW/5IYn0aa+5HP
 YPtFxleyWipunxS/C31JjwfUFdKk1rROSMJseo83ps0oFcvzUlwaEU0vHiuanRQiZiHo1KJ2ou9
 olf1ouR2nykQcToiG4UCE5/GuiWX85jFeUy6nZ90HL69n/4zffYVAvRHsCoeWEF6AxmQd6HFO8q
 ZLpAl6XJtZ+PKQbwTQ32QYCQ6pjR3bryyfIZp1i8lKTFLMb2Ap5qBWZIJrs4s5xU2xqc4Hh8NrV
 PC03IqbXbH4P6vDDDnpBRzkOVoOQ14Kpp7AGnrftYLp7aAuqIK2dIqXJeZvo+bBlED/N2wepJTw
 irOXq5cCEY/vtxmS93lEJUkh9EmmhqK/4PCFVw3PmeAKbyJOyi7uJk5wViZ1UShi9dcOhIZneAw
 ECo4x8AZJvjY7Ls9mKg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-24_03,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 suspectscore=0 spamscore=0 bulkscore=0
 lowpriorityscore=0 malwarescore=0 priorityscore=1501 impostorscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512240090
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251224_023513_892006_5E241F82 
X-CRM114-Status: UNSURE (   9.33  )
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

The Glymur platform comes with two PCIe Gen4 2-lanes controllers.

Add support for their PHYs and document the compatible.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
Changes in v3:
- Picked up Dmitry's R-b tag for the 2nd patch.
- Rebased on linux-phy/next: 27287e3b52b5 ("phy: ti: phy-j721e-wiz: convert from round_rate() to determine_rate()")
  So it can be applied without conflicts.
- Link to v2: https://patch.msgid.link/20251216-phy-qcom-pcie-add-glymur-v2-0-566a75672599@oss.qualcomm.com

Changes in v2:
- Rebased on next-20251215 
- Dropped dependency since it was merged.
- Picked up Krzysztof's R-b tag for the bindings patch.
- Link to v1: https://lore.kernel.org/r/20251015-phy-qcom-pcie-add-glymur-v1-0-1af8fd14f033@linaro.org

---
Abel Vesa (2):
      dt-bindings: phy: sc8280xp-qmp-pcie: Document Glymur PCIe Gen4 2-lanes PHY
      phy: qcom: qmp-pcie: Add support for Glymur PCIe Gen4x2 PHY

 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml      |  3 +++
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c              | 19 +++++++++++++++++++
 2 files changed, 22 insertions(+)
---
base-commit: 27287e3b52b5954b73203d32ee76ffd5f53f5074
change-id: 20251015-phy-qcom-pcie-add-glymur-096b6d951fac

Best regards,
--  
Abel Vesa <abel.vesa@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
