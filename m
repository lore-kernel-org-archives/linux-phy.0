Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A81F6CD342F
	for <linux-phy@archiver.kernel.org>; Fri,  8 May 2026 21:33:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mzCTzxmXv0zps3T35aGTcXJLiWhj9NeKDLxKn3M9Grc=; b=vH52xefSEJWpCr
	Q6bjR6qj5eBpPBGAu8RhfK1TkxxywYwnQEYA022XIhE+lX7VU4zQLavuWnBgtQ1U7TzCk1TNPwIHi
	L4U5kaVsnbQm2PTADnwKw5C5WkqLOq09s8036HXwnECUYYaTt1ryixUXgVO3DVXGoeNUyv1ZQh/H6
	uv1tdFKAFZ1ElNyT1+MN4961SkACf6JzbUI0zNa3DsihDoFQGvZvC4bbjqEFdUXwtwFW+w/hajMEj
	9iNu82/TdDWgiNeDzyJRZZzY/fq+B71ECzAX/nZbRugzjM8XUcJHx4Ou/1S5jZ+h4NngB21f8je0U
	W/RsoJHA6tgie7aCxCiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLSom-00000007Z7G-3Dir;
	Fri, 08 May 2026 21:33:09 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLSoj-00000007Z5l-3lVv
	for linux-phy@lists.infradead.org;
	Fri, 08 May 2026 21:33:07 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 648GWJFW2335408
	for <linux-phy@lists.infradead.org>; Fri, 8 May 2026 21:33:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=ishO0sGDv2e12plW9StdJroZu9Xzo2EbYqG
	B0f+M3M8=; b=l+m5M1qT3cR4+K1Toao4eL7iI9DEAg9lzroeZrfiA/h73eCraqM
	brJj8tWcAEELVWLz1ebnhtCwPTFIJKp0W/qgzEqO6+pwtAD4mcqDfAk1Cb6CidS4
	lsTzmWXAHrZAjqdBArEbF6O5vT/bw2dVwYJTT47aRl5CCYfFuTSa1ac+at9uhDBU
	Jpdk5RO//cHez6i0diRYQEilIXlF/X9ZNgxnAoWgvDY6bjCMenIcZoqSmfV7OhGC
	HtC0+lCqBdxk7stGcPl7ELFqGL09QIZ0brCryBCDi9IqGNlXRilSb94+OH9OADh5
	sicbCXienX+rA0bFKaEp1+z2BzQhPGgmo5w==
Received: from mail-dy1-f200.google.com (mail-dy1-f200.google.com [74.125.82.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e1keh8xpv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 08 May 2026 21:33:04 +0000 (GMT)
Received: by mail-dy1-f200.google.com with SMTP id 5a478bee46e88-2ee5b73c5f2so11136373eec.0
        for <linux-phy@lists.infradead.org>; Fri, 08 May 2026 14:33:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1778275984; x=1778880784; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ishO0sGDv2e12plW9StdJroZu9Xzo2EbYqGB0f+M3M8=;
        b=jUS84I4P7nnEbS8BycuJIqtWnqHbDtWhLWT0lXS3nzJ03pLBEcrQmb5lSSz1j7T2RP
         kSnNiETruosz9Lhn/UhtRNwbU4p+8HtYsH3UxkW2qCW/A4wujoT/9KcHK/2cI762+pFt
         4pkxlXB0d372xoE4vQeYPX6V2htWBDrh0xNfPJwl7dCLScQYVvRsCSTo05QLW1/kg5SN
         qUmRuV6Q6OC2yE5dz/EPochcyPB7oMpoUy+T5uzL4zf1Lb1I9ZY1REU7OFrDkjXwz1Jv
         7BGkHJZ/youDK4AgRTmb2ZcXcmoTPo3P1Rm5i0J6kqIxVToiwZw6iumZvbhHo0rscGEZ
         IgBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778275984; x=1778880784;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ishO0sGDv2e12plW9StdJroZu9Xzo2EbYqGB0f+M3M8=;
        b=sAwoOLUaNedAWXzMPykEcKP67uiwKreyJcuwGtYG/qAZODTnYya0/5oUp3wpRusQ4E
         pvgjKMkhOqDJYxYL2iOaHTb1wEn7erqLd8dQDyQ6HPr4yC4IZUhXS70tlgfA0Js5PV5L
         wtoOzqnHNfPEGYdflzPOcCCFIlgxew7ZWeKBvqdiKwsxdxocFHUlFpIKSp5d9tODNhc7
         3owACX3ynTfpCWUyh1vLBvoXTjRO5um5z3+HGsHzrGV6BvWhy8P7fPWaWtC4e12qUEjx
         d6YzqnCNovZ1k3UpJmXO4RsfWztBHoUhR61ao85QG8TzkICz1ur66S6Lg4qkkVy14fW9
         WFFw==
X-Forwarded-Encrypted: i=1; AFNElJ+P0LPRjC9JgdwDsYINNkBYBCDxajNAgxkaz7VX923MAU3q02TR6UW8oJewpQHJDQ9+4uIX25FPIGY=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz9AEuaL4q1Si59Btkn82ypX1h4opHtlDcXPnceROviho7R/qnf
	9TTMZ4LlmfET0suBQFZ6q56XB7yjieNDzDYEHgIR9ecVGDrjCTAEvhVaiHDFy/NR54/ASU7+kEk
	Ww5jjr4ZwdkmFM8gKfFXC11pNQJ+oahqacRoRhbLM6RCOM63NohEWWw0MQrYACH7XsycH
X-Gm-Gg: Acq92OFKAv5/b1EmyLu1CQeOz3F1KpxJutQ0h3RKz5d1k64bqIJ1VS+bHIfMqGWWpdS
	ABBPmT3wDs5y/4Rkv9jDk+KONyPVuVlZqHy8ZWDsbsQOu08O54Yu89vh8fvmqtxoGSd5X8H6Byg
	B/7w6sRg7EI+wrOe4F2F4jCDe1mO8kj74ezybZnOaWT1nHLVPqJL8zA/6JLhxNrkGdTw1ac5p3/
	sfiCyv9A9L6FHeKSb4JwQJ+iH/vWfwRuzQkqFzI+gOknCCdevYtvfhCudl6XLn2E6ceBN5Kk7+o
	4mvgEnV4aPY9WYo9ROUpOrkMSbGvppiScy/LEqoVqTGhRSaPXsrIL6kG4lBQycPFaLpkstOvyeL
	XR8EGW8K0HYVgFNUGuzhM6YsQcJzESRs8Izg8xyaBUgZTtzi0w+O+H9R9DV0dT5DCbOPt+O8Ng5
	A=
X-Received: by 2002:a05:693c:2c97:b0:2ed:e15:c926 with SMTP id 5a478bee46e88-2f54be949a5mr7815884eec.34.1778275983809;
        Fri, 08 May 2026 14:33:03 -0700 (PDT)
X-Received: by 2002:a05:693c:2c97:b0:2ed:e15:c926 with SMTP id 5a478bee46e88-2f54be949a5mr7815852eec.34.1778275983281;
        Fri, 08 May 2026 14:33:03 -0700 (PDT)
Received: from hu-rraheja-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2f888e3e285sm4871285eec.27.2026.05.08.14.33.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 May 2026 14:33:03 -0700 (PDT)
From: Ronak Raheja <ronak.raheja@oss.qualcomm.com>
To: vkoul@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, robh@kernel.org,
        neil.armstrong@linaro.org, gregkh@linuxfoundation.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        abel.vesa@oss.qualcomm.com
Cc: wesley.cheng@oss.qualcomm.com, krzysztof.kozlowski@oss.qualcomm.com,
        ronak.raheja@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/4] phy: qcom: Introduce USB support for Hawi
Date: Fri,  8 May 2026 14:32:30 -0700
Message-Id: <20260508213234.4643-1-ronak.raheja@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Authority-Analysis: v=2.4 cv=CJIamxrD c=1 sm=1 tr=0 ts=69fe5690 cx=c_pps
 a=PfFC4Oe2JQzmKTvty2cRDw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=fySfh4wnc5TE2N7XS4QA:9 a=6Ab_bkdmUrQuMsNx7PHu:22
X-Proofpoint-GUID: gpjI3Q7AwCdJpd93A2__k0IK9TuAebbb
X-Proofpoint-ORIG-GUID: gpjI3Q7AwCdJpd93A2__k0IK9TuAebbb
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTA4MDIxMyBTYWx0ZWRfX2gJqLl8dhCWu
 fvjQjgblXP26OZvVBdF0Al3LwtdX0hqR3NupHKeQMb73wXchsHkWIgx9LaYMidyzhhLrE3sR/EL
 TYR8E1dxdGpqFmHx8NbtXC1E6O1H7vXAapZrfVL2nJSU13ATAJpx/CNSn7k8wlg6KUUVM/YZiE4
 +JWnXLWPuPlVVExvdSEvCq7HfVk6VDWHy8P/7atCMk/U3aIOuOOQdqpEA7lY3GJ4lqUKSrzBJkC
 VV+z3DI6OH7lXw4wtvwGsC6l6DEdolDS0zIqulCMvA/7cQ4F0tEAqfhiJbVw4MQ+U6ttAKYHHTm
 82qL++lvaPj3hs0Aq5/0+vYU3tcELyDy1TJSUGcJuhad8MBLgYUYnTJ6twopgVGRfLXWAbekBBJ
 qhZKAB5zIZDDHbt4288kUU0lyUTFlYAmh/ihFeSNyr9uVbiHK+cV8rlwwV3NdVipe4s9bfe/tHe
 wXunw/bhbmzKpt2ya1g==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-07_02,2026-05-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 bulkscore=0 adultscore=0 spamscore=0 impostorscore=0
 phishscore=0 lowpriorityscore=0 malwarescore=0 priorityscore=1501
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2604200000
 definitions=main-2605080213
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260508_143305_949181_1C7E2F15 
X-CRM114-Status: GOOD (  12.87  )
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

This series adds USB PHY support for the Hawi SoC. It documents the
QMP USB3-DP combo PHY and M31 eUSB2 PHY bindings, adds the Hawi
compatible to the DWC3 USB binding, and adds the PHY initialization
sequences to the qmp-combo driver.

---
Changes in v3:
- Fix missing version tag in individual patch subjects
- Link to v2: https://lore.kernel.org/all/20260427214217.2735240-1-ronak.raheja@oss.qualcomm.com

Changes in v2:
- Clarify in the QMP PHY binding commit message why Hawi needs a
  dedicated compatible string vs previous targets
- Remove stray blank line in hawi_usb3_rx_tbl
- Link to v1: https://lore.kernel.org/all/20260425070002.348733-1-ronak.raheja@oss.qualcomm.com/

Ronak Raheja (4):
  dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy: Add Hawi QMP PHY
  dt-bindings: phy: qcom,m31-eusb2-phy: Document M31 eUSB2 PHY for Hawi
  dt-bindings: usb: qcom,snps-dwc3: Add Hawi compatible
  phy: qualcomm: qmp-combo: Add support for Hawi SoC

 .../bindings/phy/qcom,m31-eusb2-phy.yaml      |   1 +
 .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml    |   2 +
 .../bindings/usb/qcom,snps-dwc3.yaml          |   3 +
 .../phy/qualcomm/phy-qcom-qmp-com-aon-v10.h   |  15 ++
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c     | 231 +++++++++++++++++-
 .../phy/qualcomm/phy-qcom-qmp-dp-phy-v10.h    |  15 ++
 .../phy/qualcomm/phy-qcom-qmp-pcs-aon-v10.h   |  13 +
 .../phy/qualcomm/phy-qcom-qmp-pcs-usb-v10.h   |  19 ++
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v10.h   |  34 +++
 .../qualcomm/phy-qcom-qmp-qserdes-com-v10.h   |  89 +++++++
 .../qualcomm/phy-qcom-qmp-qserdes-txrx-v10.h  |  89 +++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h           |   5 +
 12 files changed, 512 insertions(+), 4 deletions(-)
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-com-aon-v10.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-dp-phy-v10.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-aon-v10.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v10.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v10.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v10.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v10.h

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
