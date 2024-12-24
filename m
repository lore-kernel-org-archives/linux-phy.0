Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7AA21E77188
	for <linux-phy@archiver.kernel.org>; Tue, 24 Dec 2024 08:46:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EhwfCrhKysYSqgZ+VxhAvx6+8WopiEIDhIpbkFIcIUk=; b=Sj5UZaOWN/5rLa
	AKjflAKwFH4qwUlPP83veORgGgx5fHCAXGDg6AJIDxBGRNKQRIFVRAgd5HLaR7oUIpjGCBS2tUNt7
	twt9ByO431ME7IXl72M4/SqD3CGHi2WCqc+gHTZPbHXQk3cE4nne369tC32ziovPrVha4AMeouq84
	r/Y4nDsFVx1nSUbWyiy12VP2XK6MalaY0cIrytFNiFnIhs7fh88abkuo3DxajKjSsLW+bqIyW8I75
	dUFvcUkmszb0pU4iR4y0RnZzur0Z6BB1NUwx6V+GbceAzWSm4HFvlPIH6NoTK4AN+drrga3E93aDT
	ZnCMgp9PJMQF/2CgR7pg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tQ0Yn-0000000BWYs-0fWW;
	Tue, 24 Dec 2024 08:46:37 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tQ0Yk-0000000BWYU-24I4
	for linux-phy@lists.infradead.org;
	Tue, 24 Dec 2024 08:46:36 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BO4RhLG000893
	for <linux-phy@lists.infradead.org>; Tue, 24 Dec 2024 08:46:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=/dFp7/inuZ2ik3aChnKC4Hn4A+aJ5IKNhmJ
	4jwh2274=; b=YqM9bkAp0N/XzURdMolOT3S28pZZssHslkXEiR52EjCm8EzHhXV
	BOWDtePHVVPiZI4oUheSNC29xHTV8t1rHH4xIGkuLxBjOfVi6T0LEEG+g6PVA+ZA
	F8RGiV+nFxfLmm5U5Wv6Yobc/wpBORuloD0Nk6AyQPtAeGtqMj2fhAx8XR0T2Nbr
	VgHkO/FuEojVQC3ThrVFf/HirKLBLTJL8fVG+jcwlb8EbhoTI8ib3ZH/xkJroD8t
	BSGYpjIMR9m0CqtDDI02/r7vG53ouzutNzbqtthIMZZ+jZi4cEXDCw+jym6Tj0hn
	c44P5ABvtHxN5FT0Kr4XgusJPdjrEBg1r1w==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43qnxxh4q0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 24 Dec 2024 08:46:32 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2161d5b3eb5so45541165ad.3
        for <linux-phy@lists.infradead.org>; Tue, 24 Dec 2024 00:46:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735029991; x=1735634791;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/dFp7/inuZ2ik3aChnKC4Hn4A+aJ5IKNhmJ4jwh2274=;
        b=tnIRXwblwKx7pZrS9CbodKjm4o43sQ4yHmF0cIRLjEqY3PXBFDLDWX7nTf224KOw5R
         jNWNCTD38McHVbC3p+ZTfnDKsn4NhzgACn3sO8nr46s/GOgSS6uM2QC3z18kdyH9lGnt
         b2/Oj44A/nnn1Em8Rs5l4nnWTGhMzHUHcqKO4uZrKE96XLaYnLq69HMJUtVjS2tX2Mmq
         10HJsIZublQp3m83sGJdkzEzGieBus44sRYEMKTK5ChcV2e3xpent6upaJXWQCMUQQdm
         37ZWq1ulJ94U36B+ic0dVarIaDx73w4UQ76i1WzxBVyb18Z6c4JQKU7IpKZ1lnsdru5w
         NRVQ==
X-Forwarded-Encrypted: i=1; AJvYcCVqn7nPi3bvgukx82uE5gWcvERFl97ESFFRaAfTok9X85sHR7vay2u5S9mk/1hkj2U/XXKxwyiulm0=@lists.infradead.org
X-Gm-Message-State: AOJu0YzbxtWbj2FGvGvvNQMGz7cvwHkNXfYjTrSP1GEWoGCNzZVfanBm
	Gbwz7cBjYRXSepEwR5sk8K0jibalC8rPDaR2evl5quWsMSQyrOh3fBORCw6iJcVFxmfsd8trE04
	z4eHHK5D/7fQA+1rSqIANtn4LGcZOFIX0YO4S0hUNCDNsUa/N1Mhub1EvQDwZDWkO
X-Gm-Gg: ASbGncv7e1ZYOkqwdIWeBUIWxyfl3Ip+gl89ge89GkHBbFyZ37au8V/1dteoZGyebHL
	2BQ5UPOaZzm1oVEzELWc3vQ2WQc1YDQPdZ1GH55MnBFiUZJGhhfh5++Jv8ebIY55snsibezDiFl
	WVm+B+ecuZ2DyBzBffoY6RJo7cG1AqZR5whCkEDWWx/9hBODEuaThBGfle/sGYhrLARpWT1WHuu
	4JZAaTA8+9PPcapfyUE7DEs5gHVTlc763vK9OOBLQFlKixFEIdnWUUTtSk6WGb6VXtAWUdmpKHH
	Fdi4ckXMM0J2LZjs2S0=
X-Received: by 2002:a17:903:2306:b0:205:4721:19c with SMTP id d9443c01a7336-219e6f1448cmr197392605ad.37.1735029991377;
        Tue, 24 Dec 2024 00:46:31 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFx6N+BNVCJnCmEfHaE8WX8Zsoe41fiC374QBtCvPlMKHKhsQSSjWcfjL9+FH+eBLnuvq+wjg==
X-Received: by 2002:a17:903:2306:b0:205:4721:19c with SMTP id d9443c01a7336-219e6f1448cmr197392315ad.37.1735029990976;
        Tue, 24 Dec 2024 00:46:30 -0800 (PST)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-219dc9f692fsm85471195ad.216.2024.12.24.00.46.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Dec 2024 00:46:30 -0800 (PST)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Johan Hovold <johan+linaro@kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Varadarajan Narayanan <quic_varada@quicinc.com>,
        Wesley Cheng <quic_wcheng@quicinc.com>
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, quic_ppratap@quicinc.com,
        quic_jackp@quicinc.com,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: [PATCH v3 0/3] Add support for USB controllers on QCS615
Date: Tue, 24 Dec 2024 14:16:18 +0530
Message-Id: <20241224084621.4139021-1-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Proofpoint-GUID: zvnXyEzssRIUHS4kFPAVsiRhCdlpsH_U
X-Proofpoint-ORIG-GUID: zvnXyEzssRIUHS4kFPAVsiRhCdlpsH_U
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=999 clxscore=1011
 lowpriorityscore=0 suspectscore=0 bulkscore=0 spamscore=0 impostorscore=0
 mlxscore=0 malwarescore=0 priorityscore=1501 adultscore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2412240073
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241224_004634_656189_C907E416 
X-CRM114-Status: GOOD (  15.82  )
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

This series aims at enabling USB on QCS615 which has 2 USB controllers.
The primary controller is SuperSpeed capable and secondary one is
High Speed only capable. The High Speed Phy is a QUSB2 phy and the
SuperSpeed Phy is a QMP Uni Phy which supports non-concurrent DP.

Link to v1:
https://lore.kernel.org/all/20241014084432.3310114-1-quic_kriskura@quicinc.com/

Link to v2:
https://lore.kernel.org/all/20241017130701.3301785-1-quic_kriskura@quicinc.com/

All the patches are acked. But some are merged and some don't apply clean.

Phy bindings have been acked on v1 and have been merged from v1.

The v2 DWC3 binding patch has been acked but conflicts with sar2130 code
and hence v2-patch-1 doesn't apply cleanly.

The QUSB2 phy driver changes in v2 conflict with IPQ changes that went in
recently and hence v2-patch-4 doesn't apply cleanly.

Changes in v3:
Rebase on top of latest linux next to avoid conflicts.
Updated mail ID from quicinc to OSS. So changed the SOBs and retained the
ACKs since the author is still the same.
Updated cover letter heading since the changes are for both ports and DT
for first port is merged and second port is ACKed.

Changes in v2:
Addressed comments in v1 by using lowercase for reg values.
Removed explicitly setting of struct params to false (as they are
already false).

Krishna Kurapati (3):
  dt-bindings: usb: qcom,dwc3: Add QCS615 to USB DWC3 bindings
  phy: qcom-qusb2: Add support for QCS615
  phy: qcom: qmp-usbc: Add qmp configuration for QCS615

 .../devicetree/bindings/usb/qcom,dwc3.yaml    |  3 +++
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c      |  3 +++
 drivers/phy/qualcomm/phy-qcom-qusb2.c         | 27 +++++++++++++++++++
 3 files changed, 33 insertions(+)

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
