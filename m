Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5763DC44501
	for <linux-phy@archiver.kernel.org>; Sat, 11 Jul 2026 17:10:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=buzFzVBl3mVJJT7USlleqqHO4d1S5qgbYz8sMG65lF8=; b=IHoW18s6VWX9D/
	W15wvzqwksHmUhXlX/sDqHbAmVRXorM3/qIKacHJE4xLnt4mePuVmvGU7Ub1OB/P3OgIbvaP4T4RS
	AT5Ix/0/WJG3BEgDcqJiw0hH8HD/FiVDg1FiLHO0ENzz3aLx5DbK487JdOc9LpvIoQ+xXZm9r+oji
	JlNwh8u8Z6s6kYQQCOPnvBDInZWyW7e5x9ZMOJjiEBDlq2LKxqq4LXezH+sG9YhwsnZThx/gddb93
	w88M8FljkUQi12qzuvhklXmyiHyluqohfsVeoiXBtghICxYpkNyc3hfc2wS6mPjd1VigqQA7WzL8H
	X34Ru9PtlwnyrEMLU4VA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wibDI-00000006iOZ-45KL;
	Sat, 11 Jul 2026 17:10:04 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wibDF-00000006iNV-37bC
	for linux-phy@lists.infradead.org;
	Sat, 11 Jul 2026 17:10:03 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66BEOPFl4043616
	for <linux-phy@lists.infradead.org>; Sat, 11 Jul 2026 17:09:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=62TjJ0RY6VeZ5IOBdjTqk2
	iAOTl905RMhzB3iESIMIU=; b=ZJn6bLnPlKsXEqftIeuZ1GwNFtzcOKaheZRZpE
	oHnVV2+vOxaR3yhmj2EMBk22qA91i/ekI2vmPBY4JTB2n9wTzfnCklqYSoJdhKVj
	MoiE6SbdN7sMYy6eiCS1J1PAg1igFDYEqWhGi4rNIl3Q3P4Hel3O8Xz0pgnCVz45
	cfwidpvjS9dWC0UVHZV4d8CRoLLqSguACr/u/pNQphMng43JyAh9D4Z05BX+jFq8
	UOdipfFuMTldtRXjpq47+crdx2SqNgYjc9p+oNVDm94/1Z6X2BehWwG2LFFRBl+k
	FX/Ypl9FgT1eLCEwCvypw0VyLslhpVPKYI6mMzj/Rbf9Q0dg==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fbeehh8vu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 11 Jul 2026 17:09:59 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-c891ed872ddso3115228a12.2
        for <linux-phy@lists.infradead.org>; Sat, 11 Jul 2026 10:09:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783789798; x=1784394598; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=62TjJ0RY6VeZ5IOBdjTqk2iAOTl905RMhzB3iESIMIU=;
        b=Qc2IBLCZrI424VOAF7JtZEFK/xf0bR/Pcezizn6F2BBfePY9lh4wlD5fwBvKrFuFv+
         4ZMZleH05I96DDKoCQr+votBGpn5OKe0K7MOB8T4Xo71OYgmTHFeYscXSjhuF6820YxW
         Dto+FNKVmw39KyHuzttRH+l24OfidY3057zQ4VlfCgNm9AZ+KryX0IfcTzYFS2PpN4IF
         Bys8CMeks/n3q6x27BlhupqwptJeRsWzfYpUDguqJs9dWRyZGyfBjqWYbWmvuvQx38RQ
         3lzmH++1qzpMpICsGMPB457GJVlz18mvByNOYvPnKo0O4Modo10sADv+VySmNdYeZ1u9
         jQzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783789798; x=1784394598;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=62TjJ0RY6VeZ5IOBdjTqk2iAOTl905RMhzB3iESIMIU=;
        b=Wo5RZL6EJcb57nYUQVKSbjAdLNhUpQ6C17zMVdABaXsutTOwH6cI/pS6p8iO8TZqq2
         NCPmZMHUNQ1nNYVcQoP5oCOXb39peD85Y62f1tQZRHg62VgkvriajdI+1ALllUiq7qYg
         61GyuViRF92VfIb25BRU4pqdP5tBkiyrDfP0Rhy9ZPIYWnc0drGUI1ZF/TBiWSrGYABx
         vA1NjdVbnAH2PPjYxuLVnVSZp8TewnA37UtbVNG4LFYPwKf0XTZdrIWz3v/2oS1F375/
         L7YBDYp556FSrTEZUIjTNSibnYAsrRXlzDZyDWIoqesGv8yehPHWrRNMivxh99NylcYY
         m1hA==
X-Forwarded-Encrypted: i=1; AHgh+RqDWatKdap/lkP0yoYo9IATvZHZLC7yEJdqYvZHOTSaBsKeTp7KZvDGObY2KvlYFGJk5DSL2Gqq57k=@lists.infradead.org
X-Gm-Message-State: AOJu0YyCAhyA6HKyRzjVlPJwPKrWyvlYtJXXgvDUb2pi6IQlRMGC/wMT
	jK0jmCLdOwp4fatV5FA3nHikOW1bIOm9FR3Hotz37TwxvtnI0EwwOkGJfOS7iU8mJELI/SPxWMk
	xvd32tcx0PK3eO7/bBMEvEHdCsM2JUu+FZxZglyoXuqr8KWu7U6o81EtfDEPeQ1eufB1F
X-Gm-Gg: AfdE7cl8ZAtzaVa4mCxhsHOvSF4obQMgBCV6E155dC+hbXAhDHfjBZUdkEMbUwrWUPF
	e5l2hnJbDCM1TqIPpg2w8r6oBHVNDDDYvYz4wWqUfverYEmTKOrK2C+xVC2vrvj3UyMKIzvFBUP
	M3yzjynMGjUk/28KzimLu+fBA7gxnSZsvZ/i/0+iedUaPLKu+aZpMu9zYe9xj6hLtzoskFQzi18
	Qs4Qcx4r0XfJTLAdwyuILgd8ywTdFFETbV503V4gCSI5nfdIMwo3zhqzE5kkW01dTtKDi/9cLY6
	YoW4PX53TLVFi64WD/+dXzr5lVfTdGhg7nE9BfpKqmy+uHKVloOpgoj7mRdofa6cDKU8ZsWjcAG
	YhaYBddCwMfuD5LLd9XhcIUusFMpKCjh7SdX+fEYfXcvWydvZqihrUn9qEwlielmQ65DJ1MFVHn
	mNGaki
X-Received: by 2002:a05:6a21:a109:b0:3c1:142e:762d with SMTP id adf61e73a8af0-3c1142e7916mr2962362637.1.1783789798598;
        Sat, 11 Jul 2026 10:09:58 -0700 (PDT)
X-Received: by 2002:a05:6a21:a109:b0:3c1:142e:762d with SMTP id adf61e73a8af0-3c1142e7916mr2962331637.1.1783789798131;
        Sat, 11 Jul 2026 10:09:58 -0700 (PDT)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-313b9ca880fsm12943635eec.23.2026.07.11.10.09.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Jul 2026 10:09:57 -0700 (PDT)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: [PATCH v5 0/4] Add USB Phy driver and binding changes for Qualcomm
 Shikra SoC
Date: Sat, 11 Jul 2026 22:39:49 +0530
Message-Id: <20260711-shikra-usbphy-v5-v5-0-229ba3602737@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAN14UmoC/yXMQQqDMBBA0avIrB1IQmOhVxEXGidmWogho9Ii3
 r1Rl2/x/w5CmUngVe2QaWPhORbYugIX+jgR8lgMRplGPbVGCfzJPa4ypPDDzaLXRln9cOT9CCV
 LmTx/r2Xb3ZZ1eJNbzg8cxx8z8kzvdAAAAA==
X-Change-ID: 20260711-shikra-usbphy-v5-f120514ceffd
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1783789793; l=2238;
 i=krishna.kurapati@oss.qualcomm.com; s=20260707; h=from:subject:message-id;
 bh=f5M5hytx1ky2qfopaUhBZoYqxyomhDfuBgV0wm3ocnQ=;
 b=3hRKKt8/B9PBUko5BUNEyYK6WYFA4VpMX778qo08Ux0D6etYTvZja932rpmm6tfzfGQQzrQxR
 fL61e6Dh2cpB43MyQFsFs2vbxxDQ7YkQDJSTBuSXCO2n0SQk9DVouKm
X-Developer-Key: i=krishna.kurapati@oss.qualcomm.com; a=ed25519;
 pk=6PmiuwGCdov3wRO+bdmRlRxRtmJyDKz3ED57LLPVgds=
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzExMDE3MyBTYWx0ZWRfX5TZwMXdGj24t
 hxHrYYz4/XVT5tiqKOguZkh0FgiQhjzeRL4yvbxRFJi0dKR8eQP3notjlvoXmylI6ufClNFtyG2
 NNI3kZXT8j79hrOBblvDVJpfWve4y3A=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzExMDE3MyBTYWx0ZWRfX2ab320NnnFaJ
 kKIU3X4u7WnH3UTzXb97mdDGm/7Hz6co6t8p7pdAdnyFL5LUGEa7um/IKzvIpNNpUr10Humxt3X
 UV4iqXU6qwxI5OMYsBAAk3w6f393t3nM4VSLT1jIcJde55eEHvzaalxPOo7ZChSdBEFfwPw4ilD
 HGVHHYYi08JOGY26fPAkoUDrxTd4secPz7fEavdfAeTwPtaPpKy2knSH88/V9+Xy493HjWtX0fS
 hbg2sPxXzEskEbepPecVBDXY759LziKBMmZI/TXSSPb0ObMKkK/WNQuabiG6I5XqgXH9i3ckChS
 R2fa+u1Fwc8m6TuZVSXY3PkMPwqfosNCeVGtNDT072FlGhpuO8vCz8MqVBugiA9UEglx7NvVcoF
 hEtY+fA3+jGnBBE0jPpnVPAzIva1nJ4yrvaK94fL3tDFbnkrY2gpB0wKlraefUOviE4J0livdj4
 wao1/cnnUh2xEp9FiNg==
X-Proofpoint-GUID: zNKJJLyKZuQK8rvoeEMyNVsLKpuREMyX
X-Proofpoint-ORIG-GUID: zNKJJLyKZuQK8rvoeEMyNVsLKpuREMyX
X-Authority-Analysis: v=2.4 cv=aPvAb79m c=1 sm=1 tr=0 ts=6a5278e7 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=snenXNZ0Rr6npqWaDuoA:9 a=QEXdDO2ut3YA:10
 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-11_04,2026-07-10_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 adultscore=0 suspectscore=0 bulkscore=0
 clxscore=1015 priorityscore=1501 spamscore=0 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607110173
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260711_101001_936973_26EF9BF2 
X-CRM114-Status: GOOD (  13.32  )
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

This series adds Driver and binding changes for USB Phys on Shikra.
There are two USB controllers - One of them is SS capable and other is
highspeed only capable.

Changes in v5:
- Fixed shikra specific minItems property for qmp bindings
- Rebased qusb2 driver changes on top of Dmitry's change [1]

Link to v4:
https://lore.kernel.org/all/20260701165051.4122259-1-krishna.kurapati@oss.qualcomm.com/

Changes in v4:
- Moved to using qcs615-usb3-dp-phy and added resets specific to shikra
- Updated bindings to reflect that there are 3 resets used in qmp phy
- Add remote endpoints and orientation-switch for Type-c handling

Link to v3:
https://lore.kernel.org/all/20260526184401.3959717-1-pratham.pratap@oss.qualcomm.com/

Changes in v3:
- Moved to using qcs615-usb3-dp-phy since the DP Phy is present although
not operational.
- Using Talos as a fallback for shikra in qmp driver
- Add required "phy" reset in qmp usbc driver since its needed on Shikra

Link to v2:
https://lore.kernel.org/all/20260504170659.282532-1-krishna.kurapati@oss.qualcomm.com/

Changes in v2:
- Separated the usb controller binding changes
- Updated commit texts.

Link to v1:
https://lore.kernel.org/all/20260430-shikra-usb-v1-0-c9c108536fdc@oss.qualcomm.com/

[1]: https://lore.kernel.org/all/20260706-fix-qusb2-v2-0-8d9cd73b1db7@oss.qualcomm.com/

Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
Krishna Kurapati (4):
      dt-bindings: phy: qcom,qusb2: Document QUSB2 Phy for Shikra
      dt-bindings: phy: qcs615-qmp-usb3dp: Add support for Shikra SoC
      phy: qcom-qusb2: Add support for Shikra
      phy: qcom: qmp-usbc: Add qmp configuration for Shikra

 .../bindings/phy/qcom,qcs615-qmp-usb3dp-phy.yaml   | 54 +++++++++++++++++++++-
 .../devicetree/bindings/phy/qcom,qusb2-phy.yaml    |  1 +
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c           | 53 +++++++++++++++++++--
 drivers/phy/qualcomm/phy-qcom-qusb2.c              | 14 ++++++
 4 files changed, 118 insertions(+), 4 deletions(-)
---
base-commit: b7296e82650f0130b8811ef79c5e17aadbf85bd1
change-id: 20260711-shikra-usbphy-v5-f120514ceffd

Best regards,
--  
Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
