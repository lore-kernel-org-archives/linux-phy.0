Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76FCC606A31C
	for <linux-phy@archiver.kernel.org>; Thu, 26 Nov 2026 18:59:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=0lRLnj7I;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=Cu9Wzjj7;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=S3LBRrSj
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=WlLLk25JLjkXUS45t2acieNvAvyvqCdN4cqkgAr3nyU=; b=0lRLnj7I/94sVeXhUYC1yW8wx4
	w7lb1WJCDEeBTSNxZsblnApR0ncXlPTwHnhThChaJOEp7bcuumgczohrxEPo+4WVIS1dc1m8EmN+t
	xoTRJHp197uS/2e994dZ3vNuMn+y8X3t37RFqsBalJds7/7s1KKGFhmuj9cCUd+0Rh9RU6TiDlLRx
	eb1XrC5l7y/CSR1asUj3je2RjzWAxT5JQPFEaL23VMPZurv5hitO1Dg2sxGmonzsVxtGpCyfIIu3F
	klxATW+clOMlcbmvG909BfwGPBExUKv/Px465KWmkbbusEMZ9wPFoX45ZdfyxCv7wKg7B5UyEy8rJ
	iS7cf2ZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWeh7-0000000ED7L-0IH2;
	Thu, 26 Nov 2026 18:59:45 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWeh4-0000000ED6o-1aCQ
	for linux-phy@lists.infradead.org;
	Thu, 26 Nov 2026 18:59:43 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AQFu9Tm275277
	for <linux-phy@lists.infradead.org>; Thu, 26 Nov 2026 18:59:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=PKnwJGn1kbNBw+OYy82caU
	/JC92cEMMnvBlOquiaj/U=; b=Cu9Wzjj7rorA/u6iXgCIiQ/SUnhbjxcPw6D0t/
	yzeHlTiXtf0S0fhhEG3F6gbCIHuUQlx+i+YHFzCB6PhjrA0adrp8H70mai82PMTq
	3FwFFSniXsdqIDXBFxDPvwHI9e3WK+vS4gL3WWXqmQgf2Fo7O6jXtDDGf8VNDDXM
	dtvdXPnjPDIkHuRb8VD6Q0ie+KWvtyx2r/DSja2F/Q3tyZHKGZ4R1W5at+Ei7KO7
	a9jq2aQN/f8y9gjCmwG4FEV4LcPcrnzKK+G9Z/rHW4hxuS2MIXIS9HZqi11WbM9g
	ZsmoTG8dX+QucmIdvvpczclncmDj77KseVifa0mP9rDtU6Bg==
Received: from mail-dl1-f70.google.com (mail-dl1-f70.google.com [74.125.82.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4j6hm82242-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 26 Nov 2026 18:59:41 +0000 (GMT)
Received: by mail-dl1-f70.google.com with SMTP id a92af1059eb24-1a5005fd0f8so6944929c88.0
        for <linux-phy@lists.infradead.org>; Thu, 26 Nov 2026 10:59:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1795719580; x=1796324380; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=PKnwJGn1kbNBw+OYy82caU/JC92cEMMnvBlOquiaj/U=;
        b=S3LBRrSjL8bPqJZErZRQmrfk7g4aDZiADMqm4+qhfBRqt3uhreqGnGtMAtNIqOLuPB
         T6fIvJv2lX25qCdFKurh3B1dKRdXoa/wLsWZXtBSaDGwpJkl3b3I+tVVAn688gkXCjtP
         /1K8TCr7WIWLOM5opnfo7dTpxRngmoBzY2r/fj4LKUVskusmTnRHH9Fh5R2csNMxGn2T
         UqUQ7T8CHKsLVRl/9Aly6POYm0zyeEeqoDC3dSwFeG1sMh77kvz5QxzQjXVqpGWTjYtl
         gV+XCbjBVe5yI5Z5AxjshXy1bHW0Yy2/DhjIx1ZLhdnbfe5swDajnF/pdjCpp59hW49V
         0m5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795719580; x=1796324380;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=PKnwJGn1kbNBw+OYy82caU/JC92cEMMnvBlOquiaj/U=;
        b=mhzZShzU477R4CPQLdzcwRqqauR/8GUKj6A0twVctPyIoGbuz9k2onjO4zDvQIe7yE
         HmaH8Ui4o0iz36jQkI+SQoM6v0HitK8b0INC5tQYLgtR7qSQsbRVp0K+6OxaLVQ+vUiA
         I3K8fHzGwhC+KhQroFSRtTE3oncf4rIFmjzdrE3lzR23bWiH2EF4zBGVr4n2PENOjHJH
         uAprM+05i7tFLmb6JDyBGKMi3HVL/+653TJex7z3TIbXjTHs0JD6T3lmiaZ1G7pZ6isB
         coFpLg+TZBsRrbVoCbHEbDVjp9Po6/x9kzV1r0RLtd3bOj+DLBc/J2k1O9lyDhf8HuO4
         ZoVA==
X-Forwarded-Encrypted: i=1; AL+hErF+8V1wWEHB1tsLjKwRX/wGC6w5YhAkhq741dvU9CUzhXFk6So43n5qb2tgSq4AV+6JJreYGPIb2xA=@lists.infradead.org
X-Gm-Message-State: APuU4Z8spdElE/KHjswLiqS4fV87LESWp8ZpDsu0thwWlF410e7k0pxN
	9DeVCRC4ueUemHIIFQXjp8mhQ8XGh6RkCn6LbxQHzNkfpLy1z+lUdzd76bfigHGArkpDRPo5VOK
	RN6wUXu1dXRSVGtSwwC8580+tVHWY27lBcFf5lQuzeUqClZZCBaFzAVR+HVPKx/NAQkcR
X-Gm-Gg: AZFdTZdxuvYlZg7P2m+o8uwANo33h91QZuW5nX4rlCzwMTx2MwGBz+yI6mlvwxX92XT
	CqngkEPu2khFJO6xKhC5XWRnTwL/pJE2aE3XR3/iAGclM6Vr+odWRz2cNfXWk48QmvrLzFoEpU7
	dqmoqXgd71jlSYlYWAaDx3O/RHB+v0ibxydHisT3fqCC5biVbTipz7+IUP6paR4uBFr/bv5i6as
	CdPkqLUfbjRsrTPhT1fM3sRHZWhfNcQVDX2rlya8iTg1IPCQc7IUFcIF5O1AcLirclnz/bte4IK
	GED/8vZfDU8lqSGDVyaS44oh9NnE2mwNBtim9zHGe+eAUA+uzepm01GBXkTFES3Z2hkB/KjZodn
	+TtZf3xKZJ0ypzOBzfpoRJ52bMZvVpnPH3Nm1JmQGoFbGZgdmtNCjt2O7hOfJmAqc4fMDKJGuHA
	TE/6IL
X-Received: by 2002:a05:701b:2814:b0:1b5:1a5a:1dc with SMTP id a92af1059eb24-1b5568bcbb3mr25262155c88.12.1795719579992;
        Thu, 26 Nov 2026 10:59:39 -0800 (PST)
X-Received: by 2002:a05:701b:2814:b0:1b5:1a5a:1dc with SMTP id a92af1059eb24-1b5568bcbb3mr25262137c88.12.1795719579488;
        Thu, 26 Nov 2026 10:59:39 -0800 (PST)
Received: from hu-jkona-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1b5567ffa8csm60868190c88.7.2026.11.26.10.59.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Nov 2026 10:59:39 -0800 (PST)
From: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
Subject: [PATCH 0/8] clk: qcom: gdsc: Allow USB and PCIe GDSCs to stay
 enabled across suspend
Date: Fri, 27 Nov 2026 00:27:08 +0530
Message-Id: <20261127-usb-pcie-gdsc-suspend-v1-0-485a08ffdc6f@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAASBCGsC/y2OSQ6DMAxFrxJlXUeEIaiseo+KRQguRC1TnFRIi
 Ls3QDe23pf8/DdO6CwSr9jGHX4t2WmMIG+Mm16PHYJtI/M0SZWUqYJADczGInQtGaBAM44tlPp
 +N6pRaZ4oHm9nhy+7nt5nfbHDJUS9v0I+IJE+9RW75DKTSRaXkIXKSwUSZqcplvC9eD8mIrEE/
 THTMIg4ji+NJoQjsL5iI64e/jULXu/7D8gvyVncAAAA
X-Change-ID: 20261126-usb-pcie-gdsc-suspend-7a99c6b62406
To: Bjorn Andersson <andersson@kernel.org>, Abel Vesa <abelvesa@kernel.org>,
        Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney+clk@redhat.com>,
        Jerome Brunet <jbrunet+clk@baylibre.com>,
        Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
        Ulf Hansson <ulf.hansson@oss.qualcomm.com>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-pci@vger.kernel.org,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Prashanth K <prashanth.k@oss.qualcomm.com>,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Proofpoint-ORIG-GUID: H7tIWnvJ-Zpfr9PCnLGm46445cpTFS5B
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTI2MDA3NCBTYWx0ZWRfX/+vc2GOrDNnO
 mp2WOQVwUVg6DpZi/ynyTK2MlHyyun2lwS4b8MmWrEZ47cH7p6qRR5U7ys+XYBV2tlRLP1Qy4k8
 +AlWlYg5/WPKonqCDML3YOxXQj4ZWyw=
X-Proofpoint-GUID: H7tIWnvJ-Zpfr9PCnLGm46445cpTFS5B
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTI2MDA3NCBTYWx0ZWRfXxtzhyu9hyiOz
 s7yWMvxQHayqpXGBHOyM1L2danhUbpZ/kQNYH1ulQ1FzROv/75RRwW847vnSdDxlPrQNi8O5z/O
 vhjn5nBuMYv19ramDoJg7JeaEpe4dIvRyLLp8ua44Sl78wgLz759GzodisYJ0fo39PJQY1TnNXs
 c687RR4N3IO6vtA5P1AKqY8kwSp+ql6OLn+CFRYRD1fhusyMQCVSTBjPSSzkTPRmm3k/BK2nGOu
 ZnPszoembhefalrQ6kqWp+hEZwEU83+UjqaKaBPtFQJ+ZYqVYlka6WTobTjIw4d733b5yCimPsU
 nl0OHckkmxLSTDI0GSOZ1TjDI9Jcq8rqayeCQLgsloJa5YQLvckJ4sj0S7kkh0G7N7IBdhETnK4
 KQ7ComqmCrkw0avD6CtYOTY0Zgc0q2lDJn5IhqjZ3D6/huKbWP/ySblWlW8mDyMGJgeMcLTtF+8
 CCWscHzyQjJ+iSyQFrw==
X-Authority-Analysis: v=2.4 cv=O/usLx9W c=1 sm=1 tr=0 ts=6b08819d cx=c_pps
 a=SvEPeNj+VMjHSW//kvnxuw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=IPO9h8n_qQbs29NzXk0A:9 a=QEXdDO2ut3YA:10
 a=Kq8ClHjjuc5pcCNDwlU0:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-26_04,2026-11-26_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 bulkscore=0 adultscore=0 clxscore=1011
 impostorscore=0 lowpriorityscore=0 phishscore=0 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611260074
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261126_105942_561076_6A2AD116 
X-CRM114-Status: GOOD (  12.56  )
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

USB and PCIe GDSCs on some Qualcomm platforms need to remain enabled
across system suspend for certain use cases, such as USB host mode and
PCIe non-D3cold. These GDSCs currently use PWRSTS_RET_ON, which keeps
them enabled after their first enable even when consumers no longer
require them.

These GDSCs have a HW mechanism to stay enabled during suspend while
allowing the parent voltage rails to turn off, with HW handling the
parent transition to active voltage rails. Use the existing GenPD
hwmode interface to let consumers request this behavior only when
required, and clear it once no longer needed, allowing the GDSC to be
powered off when unused.

This series adds the set_hwmode_dev callback for USB and PCIe GDSCs on
Qualcomm Glymur, QCS615 and Shikra platforms, and updates the corresponding
USB and PCIe consumer drivers to use dev_pm_genpd_set_hwmode() to control
the GDSC dynamically.

The clock and USB driver patches need to be picked together on Glymur
to avoid functional issues, since the existing RET_ON flag is removed
in this series. This approach can be extended to more targets in the
future.

This series is based on top of below qmp phy suspend/resume series and
depends on it:
https://lore.kernel.org/all/20261113103111.156476-1-prashanth.k@oss.qualcomm.com/

Signed-off-by: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
---
Jagadeesh Kona (4):
      clk: qcom: gdsc: Use GenPD hwmode to keep GDSC enabled across suspend
      clk: qcom: gcc-glymur: Register set_hwmode_dev callback for USB, PCIe GDSCs
      clk: qcom: gcc-qcs615: Register set_hwmode_dev callback for USB, PCIe GDSCs
      clk: qcom: gcc-shikra: Register set_hwmode_dev callback for USB, PCIe GDSCs

Krishna Chaitanya Chundru (1):
      PCI: qcom: Keep GDSC enabled during non-D3cold suspend

Krishna Kurapati (1):
      usb: dwc3: qcom: Add support to keep GDSC On during host mode bus suspend

Prashanth K (2):
      phy: qcom: combo: Keep the PHY GDSC ON during host bus suspend
      phy: qcom: usb: Keep the PHY GDSC ON during host bus suspend

 drivers/clk/qcom/gcc-glymur.c             | 46 ++++++++++++++++++++++++-------
 drivers/clk/qcom/gcc-qcs615.c             |  3 ++
 drivers/clk/qcom/gcc-shikra.c             |  3 ++
 drivers/clk/qcom/gdsc.c                   | 21 ++++++++++++++
 drivers/clk/qcom/gdsc.h                   |  2 ++
 drivers/pci/controller/dwc/pcie-qcom.c    |  6 ++++
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 14 ++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c   | 15 ++++++++++
 drivers/usb/dwc3/dwc3-qcom.c              |  4 +++
 9 files changed, 104 insertions(+), 10 deletions(-)
---
base-commit: 47588e4c16d8876d3058bcec030ed8a016794b9e
change-id: 20261126-usb-pcie-gdsc-suspend-7a99c6b62406
prerequisite-message-id: 20261113103111.156476-1-prashanth.k@oss.qualcomm.com
prerequisite-patch-id: d39d8cf075595b668e85fbc6c3cf7234c318602e
prerequisite-patch-id: 5f7421fa9312a84661ff4a87e946f315e8dc27e8

Best regards,
-- 
Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
