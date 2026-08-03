Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E25AC55184
	for <linux-phy@archiver.kernel.org>; Mon,  3 Aug 2026 09:14:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9TWKfWc4leP+LJFBhWb5ktAPgCvckZnwyA4O37mKtjQ=; b=hwGf2VNofuDn16
	2tIg7p1kOAMhQk2qTnoqodrv4WkySk4FDsUbHwl2735Aoy++DE8Y3BWue3L3L34L0qzGe4RFn5vTK
	dhRx7Cjqu0Yw574FPhIeuRS7VsG4WI43wln9bLYcvV4kJiVZ5THNdpND5CIZMgwekL8qTddcLm+eE
	CEtjVDyVFlyb+g3L8G6/NqfmD43TaVHCTDWh4YSJ8n2R8w73rrEcYwROtsAbl/k3k3tZ65Fvv2RzA
	N/PxFpCuBg3f/GZ+mvNH5C4fJOv0QXfyB+popOBs/amrCBd42R/SJFa0ZLxzYgbxTXZc+W8pxRwaH
	2vGH5CnDAHOl6J5VxAmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqol8-0000000GfQz-0nKX;
	Mon, 03 Aug 2026 09:14:58 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqol5-0000000GfQH-0U7k
	for linux-phy@lists.infradead.org;
	Mon, 03 Aug 2026 09:14:56 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6736F4oG005963
	for <linux-phy@lists.infradead.org>; Mon, 3 Aug 2026 09:14:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=3jlF7a25JOXLzSC029jPZdxCM48HKf6MZPs
	BhRls358=; b=JkVQdu+rTWbuSiteCnQhY2oBwzGX93WnUuaHpfz6B4P1ENZlvZj
	2ipnlRVaLzncqNmfYH6693TDhz8CIvAxd7kHV0dyxTP1ckCX0tizDkg0OxjfGF4l
	MXtqbMT9w8lJS+SD8UlMqRXzHY0CpsHD5icZEKxzhfQrDCw3t1Aod3EEfTRFE6un
	UNgZsNA6q/DjC+KgfBkuc/r4Acis1XpW5WH3Qf+beUuFozH1DXsMbSs7J7YrF21H
	5WTqn8Jup+nCElR+gCf9V8Hbsop7WXK2Rp+WL9eAQYrk1VdRt43qnJ+/39AycWAT
	C/u2erVPXmcAmiS3p0br379hapiNT3J0xxQ==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ftnj78rq1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 03 Aug 2026 09:14:52 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-84e048a801dso4817891b3a.3
        for <linux-phy@lists.infradead.org>; Mon, 03 Aug 2026 02:14:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1785748492; x=1786353292; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=3jlF7a25JOXLzSC029jPZdxCM48HKf6MZPsBhRls358=;
        b=bMQpwEd2c5g5hcoPQ8/bTIlUb/n22EdqhPxgsf3Z4gu4ABDg2mcMw0LxRICuZ4kbd8
         pWbkbcH0cwI23/wyaWUFICyxzxGoylOhX1J2DWF9rz18JcZhBbdXe1nGpOkaCYnZ9VY8
         vXkWfJia2b828y12ZhzEdWoDOx/6q8QvPDdEDyNncG+frfvcy4+gnLXbqTgbi4miC15e
         oLp5QDTUDnntbqnqzVBu0Nw1hTR8znwNngFOzO7FX+TPyeCG/VrubOrCHQZsQCw3eIrv
         GSAFhFsPLIJq1CzcdoeA4QO3SSiLIjwOTruy04V11Ajis9tPe5MNxoDvyFonGpDoUYIi
         Bngg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785748492; x=1786353292;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=3jlF7a25JOXLzSC029jPZdxCM48HKf6MZPsBhRls358=;
        b=msjYZ1WC3JHjgPn2UGGR+VvjipXaCLJV66RKLNdDY8S027hS5xmBa9X97bRAy1s3AU
         zxr/rkIBxb+rlXP0Sc4kUe9Jegc9KgGKS2CqDfEvvlbhF+eClMP5eSBX6sHc2OuXPlex
         /F5/ADHLJn0KGonS6N7Okl5FIColh/Zft8HJwYXIQX+WqhN+zSLj8RxGMMVjIUoUR4PX
         STPMk86x1IX6Sjgd0L99Gb/QMFdlgY+QBDw+elaxWQM8mJ9T/nvRXUNv1/jBNWwc7P6L
         84PFQzzenQrbbaL3ZdpaApLvslmKl675VdQzTwg+SybVubrYlHWayuhQQFysUlFrJfOx
         ZI9Q==
X-Forwarded-Encrypted: i=1; AHgh+RocY20WKpLKIdWQpoekBS3pfSxvbldjaqlZvCpP/W1FMToHd/vkZnoU9PKUFO8ATFtmRZhFUX7Q1YQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YynarVIPTz37avFxCnnLXkCQ0znJvtKJZL62a5xiIXp6Z0SgnEw
	qkp0P1ezOgYUkV1hiNFTvKp5Kp15aWbmgRRcooXwZOOHmbL/DWjkC39cpOUBHu7o1oiEFIyMaKi
	FprEk1yOnZ8wypDLX2lSRNFMP1ckATpt1xKn0senWPx74Si3lrBoFmvdauFlT8KWTt0+m
X-Gm-Gg: AR+sD10ZSpjMKlbesvb11JoeVfv5zVjW2p/0P8WgjRy8zQ1j1aSYjTdYT9nAQ0B16tw
	Zjyiua0TIjoHN4QPwuYuuB76yzf8qi6SvkpCUr45+32z3TvIN5vNT4Zwe2zBk5Kr8OYxP+Inp9Q
	m5c/H8phTIoVi7y37vp4AaW1JBMURASe6ZDLBMRtmli9wd+4HarDmukbqRTpLznjt42qlRE0WE+
	9zvcjntmzbfHFC8ShHkBtHQKnNJcnrhDYLZm2nF1o+mhxptau9soxwnSssgYj+smyiv1NMzwPbt
	JBArIlJkQJVtpV1jYZI5daOesOwIL3TWJ4JBdOZwnSnPtZyornPNNdaL6vdGKcTIv66gCswvfyq
	7Wjha/LfS2OB8erswQs4Irp5rgig=
X-Received: by 2002:a05:6a00:ad1:b0:848:2f2c:b2c8 with SMTP id d2e1a72fcca58-84ee4821879mr8717664b3a.24.1785748491841;
        Mon, 03 Aug 2026 02:14:51 -0700 (PDT)
X-Received: by 2002:a05:6a00:ad1:b0:848:2f2c:b2c8 with SMTP id d2e1a72fcca58-84ee4821879mr8717633b3a.24.1785748491248;
        Mon, 03 Aug 2026 02:14:51 -0700 (PDT)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-84edbe572d1sm3516376b3a.18.2026.08.03.02.14.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Aug 2026 02:14:49 -0700 (PDT)
From: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
        Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
Subject: [PATCH v4 0/4] phy: qcom: Introduce USB support for Hawi
Date: Mon,  3 Aug 2026 14:44:37 +0530
Message-ID: <20260803091441.3040830-1-mukesh.ojha@oss.qualcomm.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: HC7vfrujbx0evJj6CsMyUm23kHlvbRPj
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODAzMDA4MSBTYWx0ZWRfX2MhHDxgJORd9
 jN+nIGPSVu7RE4FyEE0bobkia7uGARhhNCNtF58YOj32vsDRGj1OP0R/fbwvBuAnXlpyteoLFmd
 1gqKdhWv3b97MxMuaQaWD88ig2JS1fS/hnE3PtzfGv9jZ+nYI02CZDgfH1z+7aN5mYprLNas+sd
 mCCll+mKo9fmiI8hw/mUX8qGSsbS8qRTihjPzpHADluBXodWfatERWKgC51JT8iZyQgkYYFc4Dp
 lGnUOVePIEZ44VrNInNs1lcMuVHLhLumlES+zAXjVCJ9S0N4BJfd+pWY+e2l+r1BUSN763ltWad
 E7r6nkRo4e51Dm1+CD86Z3pzLnMR8XCFeiHYa+IZGUWvEBBPSULqXOom1NcrcvlwPuVRNaBMlw+
 d6Zq8jD7gIvvQPYuzmNGgjHRizVcsQvYt4ZQH83TSqfihPg7HeUtve7qkvVE1Z9lnLN9hjXbpbL
 IJu6zShKBwv4qpqAOZA==
X-Proofpoint-GUID: HC7vfrujbx0evJj6CsMyUm23kHlvbRPj
X-Authority-Analysis: v=2.4 cv=PqSjqQM3 c=1 sm=1 tr=0 ts=6a705c0c cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=y5t-mIDxVrGwD0Vs-1YA:9 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwODAzMDA4MSBTYWx0ZWRfX+1WsC47Z85eq
 epr7pDE3+H1DNZpkI7T2ntbcJcMlsl5sercHaqO5V2Y9knRct4+g1fpNMrOf6+xZt4xvH6eTtuu
 Lh7LaohrZuXPSCkm57+c4hktZ2+Okyc=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-02_06,2026-07-30_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 phishscore=0 spamscore=0 priorityscore=1501 adultscore=0
 clxscore=1011 impostorscore=0 suspectscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608030081
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260803_021455_295930_246B6A94 
X-CRM114-Status: GOOD (  13.84  )
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
Changes in v4:
 - Rebased on top of next-20260731
 - Resolved conflict related to recent merged common phy headers
    from pcie.
 - Link to v3: https://lore.kernel.org/lkml/20260508213234.4643-1-ronak.raheja@oss.qualcomm.com/

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
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v10.h   |  16 +-
 .../qualcomm/phy-qcom-qmp-qserdes-com-v10.h   | 116 ++++++---
 .../qualcomm/phy-qcom-qmp-qserdes-txrx-v10.h  |  98 ++++++--
 11 files changed, 459 insertions(+), 70 deletions(-)
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-com-aon-v10.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-dp-phy-v10.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-aon-v10.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v10.h

-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
