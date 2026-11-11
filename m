Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D081606A88A
	for <linux-phy@archiver.kernel.org>; Wed, 11 Nov 2026 17:31:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=JD6g5m+E;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=C+sKB/gQ;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=RFvPyZYs
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=XcvYBUwfeL10Lh2f2i9l0kxUr33pDQCrLVVUuswYaGU=; b=JD6g5m+E7KXIaNiKK0Dcs7c0yU
	jPVdoaBx1B0lEnxzmigU7F12VicIhlG8hshFmD3FUyoD2n9kPhK+rZBSYxsVyOwuuarLy1ItbF/Fp
	kMItewnHm0Zn9eoTSqKeHIP8gCyz9SO/AORzEmOY3M+eVpbNH+S6EqdqO89FaIHsISQIOZbzQgDRK
	zOhXxQVBQtcdD8P5ZbjnNi+5KtCiJU6EXmkRxgHf33H6t5+AkwMQ9DtcFvbb1Tq7mSXoIoaUHFq2o
	yjIcx5+gkECRrY4iQbsOCqKSCeNnE3U/eZZtA37t4O1dLCRUSgzLt7Z4nfWKy1bml7or5O4rjynv+
	mZF3KM8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRCAk-00000007JEx-20RR;
	Wed, 11 Nov 2026 17:31:46 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRCAh-00000007JEM-3RI8
	for linux-phy@lists.infradead.org;
	Wed, 11 Nov 2026 17:31:44 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6ABGU2RC2868799
	for <linux-phy@lists.infradead.org>; Wed, 11 Nov 2026 17:31:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=jNqtTOpN/CMznlWqUHTAHA
	ik8BOVvz/W5FrGr0oZoVU=; b=C+sKB/gQLv4StcDpsCWIBr4fMP0qQLPcNDkjcK
	g9H1E3Wd8zsaCq+vlsceJp0gbs6DVlHjMJ47bucBVY9APPwGVJE/DL9cQGYSSPzZ
	FxTy3QDUV/VD45bp1OhBFZiUWiDyzJzVZgxZSoajT08YYXHoo+JD8A7KwRwrOltE
	wbKaX0OlMVwtGhh8G9IVS9wGybEj6SlYH1mY7IYmRagn3XeaL2YuxsOSeo0EwzQd
	WV+DO/itrrWqoT4sNM9LJXK4fvWIzu5pK83mhuisrzcww5UvI8P/CpjOX8N0pEVQ
	j7HCrzYTPTa75gXjpxclzUtHbDKUrB3ExsFK/0vKWA3qMyQw==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hvgjdk0nu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 11 Nov 2026 17:31:42 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-3ae72da2f57so4732940a91.1
        for <linux-phy@lists.infradead.org>; Wed, 11 Nov 2026 09:31:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794418302; x=1795023102; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=jNqtTOpN/CMznlWqUHTAHAik8BOVvz/W5FrGr0oZoVU=;
        b=RFvPyZYs+yF9yyjr+NyQM8qafmQNS2wXsUm/a/fyxK9UJoB6Qbn+FFAd0s/KAbdklk
         T/uNQtJe3VJLDru/CUt9XfnOzQBo3lgkLG6j7GFqeXUqQumGBlD9e6lpe9f0F4OBDieR
         2wxRvnUF4YqMekdQr2UVf3JqGfQhXtwPG8RdbfuWM6MuiGNHqes3ldBRh0tWeF0KBJBA
         bwdXwdCEK14TWrXiujBS0nlnbUUmRwxdopunuq8NIP1D00frLSXx5i6MWlKsrAU/F+ov
         h/06LgNqy3RbDBBcVeQB4Iruz83bYT51MAdADw95aN08wDaJJEwh7KnNZCFtTBFhuDjx
         gu5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794418302; x=1795023102;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=jNqtTOpN/CMznlWqUHTAHAik8BOVvz/W5FrGr0oZoVU=;
        b=htBzOfeWFussoh8otj8DQMrV4SWgfx9QTmKLVBGUvo70OOr8q+DYHR3Zl4EoCXN+fK
         hvTcs4sChU/fyjC3r2Zm2wjMbwoNhmX0vEjpLJQNmtj5LTdrH4ykzO4kg9Cxj/4VyGiX
         0+ImE2ZhO90b8kuU0QrCOxTdhQmtqVmzn1Z/l7mcru7/AwyY+wZHzr6EvbbvGEZNKzFL
         kCSG48E9+FjIvdaWK6F9X48cwoXa6EX8XxFL7s4hOivK9NG+cPOv6wE7HRvRMAR0H/Q0
         5c7cujfbTJ3+awMUn75PzAH9YKXGOi74Ets1j7iPP7UGH8KqoLUrP0rVHrWZMMpqmOmJ
         wFqA==
X-Forwarded-Encrypted: i=1; AL+hErG5lFctFBM+ZWK4SSwi6h/jlGcnokyghaoz2/5xQEuIwAzLPk3BRKDWFpyd2zsSg8z4cvwH+3ZIzyc=@lists.infradead.org
X-Gm-Message-State: APuU4Z8xE1bNaPEVumw5O5E54h3x8GHpKkZLaJVbgG6fbu9Yrf0Q4/a/
	IPDubPpLjOHPAemo6jnFNWpehA6qeo4Eh+Mj1or09YO7WeaQW0rE9gIlSCSSMF7evGoF4RNxg5+
	FvJMPNEK2b0i6VQ9gt45EK8xIVJKZSfs6av9d0FRpsvCuz2MefptYOuXXWWJlK5akju0d
X-Gm-Gg: AYBFou1GukICABqCOp3tGjJEVXW+d01JolRuCesFxJoAMG8+HIyfxQ3jAB3RBMXYlN9
	xG8m0fzL1rIPmMmHl1rGS51cXU8fYbiH0+XQoSd+0OI/y44e0T7oOmDRVicYUpmIPFvd4dZTgm3
	YA/pmaEVr7lQl+Lu4g2hW2qRZDFscdwMPWrkVYyI4j5pjebKdqb8Y/8V5v9W3Ng9slGn+nSRLfb
	FdXbjrwEOJ03aXKn3we/sCHemu2ChzS2YEVCuPGGv1stpTBYqDWeprbocZaK1geknPWLr34GrjQ
	LG3aCq5Gd9//IlaeCNzcRU9X0KW3uwIvGT5sbuQ9Xy8qtLHzDwjFhopMhZn/L1hJz2NCT8DrwBK
	/Iw+IBuU/Va99M7O0KPzJPet7nUXrHSTvr5dXEmi8lTAAdFbGBFjXJp3PO14km7BTUktf974z8a
	+5/Jwao/nZrR4GPn8663ajN1Z9+DNiWSMfQs5WgB7vCw==
X-Received: by 2002:a17:90b:5810:b0:3b0:968f:fdef with SMTP id 98e67ed59e1d1-3b182f2b221mr3410380a91.49.1794418302262;
        Wed, 11 Nov 2026 09:31:42 -0800 (PST)
X-Received: by 2002:a17:90b:5810:b0:3b0:968f:fdef with SMTP id 98e67ed59e1d1-3b182f2b221mr3410352a91.49.1794418301662;
        Wed, 11 Nov 2026 09:31:41 -0800 (PST)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3b197c42c11sm237305a91.2.2026.11.11.09.31.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Nov 2026 09:31:41 -0800 (PST)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: [PATCH 0/2] Add charger detection support for Shikra
Date: Wed, 11 Nov 2026 23:01:25 +0530
Message-Id: <20261111-shikra-qusb2-charger-det-v1-0-5a9d919c66b5@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAG2m9GoC/yWMQQqDUAxEryJZN6ChfLBXkS6+36ipoG2iUhDvb
 tSBWTyYeRsYq7DBK9tAeRWTaXQoHhmkPo4dozTOQDmFwoPWy6ARf4vVhD7RjhUbnr0hPqks25A
 I/P5VbuV/qav3zbbUH07z6YN9PwDxQflyfAAAAA==
X-Change-ID: 20261111-shikra-qusb2-charger-det-de6a4299f6c2
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Maxime Chevallier <maxime.chevallier@bootlin.com>,
        Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794418296; l=2673;
 i=krishna.kurapati@oss.qualcomm.com; s=20260707; h=from:subject:message-id;
 bh=0Pl912EABXQTovWccfrUyAncQ2UeU1pCEyYIkN2QOIM=;
 b=/eQJF7WEIaB+unxgd8L4ZnvTZuKJKo5IbHBBa3+Xv49WO63JqM4VcEJzZerYPPmEdS16ARk/s
 jX+GD1AcxJ9AK3BZk9Cobq5hbJUvERa5WcKq/IskILneqwGd1H4cbv8
X-Developer-Key: i=krishna.kurapati@oss.qualcomm.com; a=ed25519;
 pk=6PmiuwGCdov3wRO+bdmRlRxRtmJyDKz3ED57LLPVgds=
X-Authority-Analysis: v=2.4 cv=E7tYNqdl c=1 sm=1 tr=0 ts=6af4a67e cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=EUspDBNiAAAA:8 a=4n8TeYVi5Tk8eXVT2wYA:9 a=QEXdDO2ut3YA:10
 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-ORIG-GUID: OU2No5Bj5yLEnkrQCFeSZOCJLGuNUhCx
X-Proofpoint-GUID: OU2No5Bj5yLEnkrQCFeSZOCJLGuNUhCx
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTExMDA2OSBTYWx0ZWRfXzqd0MsxXQyw4
 KEX7bjW7YzHwTHkzGrt3BGrlVcBiIKqZdcCMbv7MTiKqhmoa1M++SgkKj/ghbxLEr0kgjBdIuuy
 42tesKUdguUV4Qsn5VgusPMzehlHgNyQmPZnm/MAhTqjC+eDE+S9SRm/vnGBDcY2cQjskyK6smU
 tqEBj3emEJNh9b/A3Jk2IrcxKYgjRkpakds76M8W4H0kf4LJpDumARGCts8CJ2XnoepazqyObge
 NnC+J+csF6Xo5+6+gQHPksWjIkR3CgDKj6SW9og2vOXoMy4AQbz/LvYXFWKGjfu7L4bLzevlSfk
 fqf6/MnniRuhDRD6bVeRSYiLGaXPg1jX/O40r9SQUNgc2JX0zDk4vAb+io8al7ia+L9yXW8nMm9
 Nlb4A53wyo3+UWbuHdJFh6/lGIgLrNaQY5kVRAwaqq7i5+apBFudab7G+Hv7J+6m06tZMBEGDFw
 0A2ja/GMeeGJYXeoCMA==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTExMDA2OSBTYWx0ZWRfXwumMgUVmH2MS
 3vE1qdziohotHrbbcoNM9U4Kz0ZzBhIfLe4thG3xvcAjPWC51d4zbIdM+VTu49nPsP/xAyceWSu
 p6jKOEuOl2uKboRcbSs604UT7pYZqLU=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-11_04,2026-11-11_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 priorityscore=1501 impostorscore=0 adultscore=0
 malwarescore=0 clxscore=1015 bulkscore=0 spamscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611110069
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261111_093143_867264_97354ADF 
X-CRM114-Status: GOOD (  18.23  )
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

QUSB2 Phy HW is capable of doing BC.1.2 charger detection. On most of the
platforms, the charger detection is done by PMIC. But on Shikra CQM/CQS
platforms, the PM4125 doesn't have ability to do charger detection and
that responsibility is delegated to QUSB2 Phy which acts on the DP/DM
lines in its control to get the job done.

During process of charger detection, if the controller is supposed to
enter device mode, the charger is detected as SDP/CDP/DCP. The controller
must enter device mode only if the detected charger is SDP/CDP. In case of
DCP, the phy can be turned off after detection. If the controller must
enter host mode, charger detection can be skipped and hence the phy must
know the role before the controller so that appropriate decision can be
taken whether the controller must enter device/host mode or not.

Intention of adding remote endpoints and usb-role-switch property binding
support is as follows:

a) The DP/DM lines do go through the phy to the controller i.e., the phy
exists between connector and controller. Hence adding remote endpoints
depicting the same.

b) Although the usb2 phy is not the entity doing role switching, it still
does need to decide which mode the controller must move into and hence
adding usb-role-switch property to allow role notifications from charger
to go to controller via phy.

Also the driver changes do the following:

a) Refactor phy enable/disable calls to control regulators and clocks.

b) Let the usb-role information coming from PM4125 to pass through the phy
so that when a vbus active signal is detected, the phy can check if its
SDP/CDP/DCP and pass on the role to controller only when the charger is
SDP/CDP. In case of host mode, the role is forwarded without any charger
detection.

c) Since the controller probe relies on phy probe to be completed first,
during phy probe, it won't be possible to get role-switch handle of the
controller. Hence check for controller role switch whenever a role info
is obtained from the connector node.

Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
Krishna Kurapati (2):
      dt-bindings: phy: qcom,qusb2: Add support for remote endpoints
      phy: qcom: qusb2: Add charger detection support

 .../devicetree/bindings/phy/qcom,qusb2-phy.yaml    |  23 +
 drivers/phy/qualcomm/phy-qcom-qusb2.c              | 606 +++++++++++++++++++--
 2 files changed, 597 insertions(+), 32 deletions(-)
---
base-commit: 6628e7d4c6b25c8d18f1345e3a20d21829aae7e4
change-id: 20261111-shikra-qusb2-charger-det-de6a4299f6c2

Best regards,
--  
Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
