Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5EEC1CD5BB1
	for <linux-phy@archiver.kernel.org>; Thu, 21 May 2026 12:57:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fDoga2FVCSpDMtQ6dF0tulopS6HQqYbifYJbcankuDo=; b=OfKtAzN0V9JPc9
	MwxlrhTmvccXRrkxcWwM953xzotzFl1ZCotG8OIZFWReK+klwunDx83UI13VRSQUxsTeKY9HhJaJU
	fNu3F07wcKouQ5dLp7qnAy5mBtCFcAnVoCHesQ0dNc01oQEYNpkr0Afh5xRzvXoMq3C0stShK7y02
	GfPNggR2KZy8ZRBesH2F+EkiW1z3PUoohC0TVNmypjV6AimxfESH3IzFFHfFojZmyGBXU5eQ9gGKv
	DEwKiSOlrDJY5Eo7ItzmJJwTRko7lFItbce+76G0GYxt7Ha5jTCIqO0E9g7L39mIhQhtxafihMIBb
	naw0XsK5oJ/zL4xz6fHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ2xT-00000007nAs-48Ca;
	Thu, 21 May 2026 12:57:03 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ2xR-00000007nA7-0ycv
	for linux-phy@lists.infradead.org;
	Thu, 21 May 2026 12:57:02 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64L99of63009536
	for <linux-phy@lists.infradead.org>; Thu, 21 May 2026 12:56:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=piaeLJyu++WVR0SFsnTfn4
	SSjmjG7Pb+pUvnQO6EiOQ=; b=X0rwvwAqKisht7gptSDWXp0UW0GtMZ444zkaBh
	0CTWo44j5eoBSnCDBNeY6tr1TPOcBXkyR4IMDBKtGxkzCfQuIjS3McxALljMe+iW
	4a8kuC7foVQrIuQlK3HQvIU/AhoXxIrLyoeMdy0Ux5S1dfhpo61rQTul9cS6T7aN
	G7s9jUVXQbSAOGljv48TjodyWHWR2+TFS+oNjKYX0nV/2RNwivr5cCI6bCocsNyi
	QIZxhq+s+LKGI6X+MlSf/w3El+KjHjkRjq6s/rsVWRtxUV/OsIdz7W1CJpoW4Y1U
	MuvfWo3i0EzHwPT0KTaLOlq+PgGSl9qprOxSUE2kMK3QqlRA==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e9sr328bv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 21 May 2026 12:56:59 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-c8276c91addso3413183a12.2
        for <linux-phy@lists.infradead.org>; Thu, 21 May 2026 05:56:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779368218; x=1779973018; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=piaeLJyu++WVR0SFsnTfn4SSjmjG7Pb+pUvnQO6EiOQ=;
        b=UXwPDzcrWMkk4168k6htedI3EUfGB7kcv//48dnvR9Kp7ei+Mkn8HM04tEa1BurCTp
         Yg6TUqiy9QIjiGnour4/8ugo5jqgtcYwutEs7q+arOzBQms7sieUGACkJxZEVrFxGKKU
         PgJbuNDXLh7zM9pLQsGF4trGN0uP+eNOVB98m9v9SsXr+i+aq01NQszMur6BZIrwIesv
         t4pEAD8e27MFiqiEh3hEhLGM8cNj9Nh+pnnxqsXpGlRYLJfECc+10sSoYEgyKxvKSL7R
         /bUtpQDBZ6EXsB57FjWiAS0vgGs9IgOHUeKWptByiMjv4K+o81ZTZHyplsNyusAfUzwU
         NDHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779368218; x=1779973018;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=piaeLJyu++WVR0SFsnTfn4SSjmjG7Pb+pUvnQO6EiOQ=;
        b=ZrPaln4Q3RNuI5yKgiuMiertEXMskSP8qXX0pWOwWHrUvK28GnpNP6d1mr2XkxCSE6
         odgzYxchudWthjeJZaSVibdw2xYnAwzDyLCtvokP4WLB2xIJjBMiSJZWabwbbos/8egn
         x/dK6XUtb8z3My9eWgGCvpqAStWd4iZguVKqzT7q8oZnk/SdstgbQGtCS5a2Bm71ZQ8E
         jVijs9iwsP7NSd3+ueWfbMEwXqf++dpElzzmDDpyjlRC9paAjrkW+AiAJmQxFeT2R39Z
         tYdVA5fiF+SmYicvkku8lr3mc/XndXI5XPKxVqa9044r8mWZgxkj9MCQznCe/5rCzvkv
         OZBw==
X-Forwarded-Encrypted: i=1; AFNElJ8NEkOdknaCwzHYMCBhda9nbcOOJ5lcdF7/fo1x9i5FHCnqKgXL1NIu7EDO97RK/UVftehFuUUmLHI=@lists.infradead.org
X-Gm-Message-State: AOJu0YzYTf5Jseo31Th7gCIhaXv4VR3C5Urwj+PeKcW/1Jxc4HZKSANN
	MxRh61Wf89oexPmTUyPTWBDjJVO1S3GfJS0wvpIKWdzOF1tr8yCFu6LifhWFiIb3M3TIluOuHGk
	q5Pdos6fT3wSvIHKz1EyfXgE95o/lJV3bBt4F6I6oIkNDUeKX/680JqO2GESX0A2S6yq0
X-Gm-Gg: Acq92OFVRjr57hhXLY7Ck9CnFClQjto1njBryqxTxK03XsOsgztqZt6g/8Cic7DgKa8
	3fatyaR8q64o+tVWo2zURba0AWCnVIMRmTTfflsg0vE2ZGdxI3Yv4zDShNofVqb+KMNW8qjmhIp
	A8gaKwjrcMHDXSfzOzn8xl/+5Vp3uiWbT8mtQIsEMXaYqGrTmxxTmSsEg5mBwyAhtF1q1uSiIWe
	SQlmvc8c48Y5N3gVfdzU4RjYBQT3TOcMkk5RYsfXnqWNhbs/oT+GvsLcjT+IzES1M9F7Jy+53ii
	OCgc2J49r/vroi3YyW7ueUD2QmhSQb2cozTbC+fBm6vmU6FoVMVnXLeeg4soigm3a8Pjv2hvqJL
	DQNSFtdBHzPg4PrCw22fjPcHXrNb4px4slugEiupmc0beRErKK+HYCAfI
X-Received: by 2002:a05:6a20:430c:b0:3a1:90ef:7e46 with SMTP id adf61e73a8af0-3b308859fb0mr3466663637.33.1779368218422;
        Thu, 21 May 2026 05:56:58 -0700 (PDT)
X-Received: by 2002:a05:6a20:430c:b0:3a1:90ef:7e46 with SMTP id adf61e73a8af0-3b308859fb0mr3466631637.33.1779368217903;
        Thu, 21 May 2026 05:56:57 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c85198f508bsm357984a12.20.2026.05.21.05.56.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 May 2026 05:56:57 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Subject: [PATCH v2 0/4] PCI: qcom: Add link retention support
Date: Thu, 21 May 2026 18:26:32 +0530
Message-Id: <20260521-link_retain-v2-0-08ed448b081c@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAEBD2oC/1XMwQ6CMAzG8VcxPTvSDmTgyfcwxCAWaYRNNyQaw
 rs7uHlp8m/y/WYI7IUDHHczeJ4kiLMx9H4HTVfbOyu5xQaN+kCIpHqxj4vnsRarWiooRVNmhjO
 Ii6fnVj6bdq5idxJG578bPtH6XZ0cCcs/ZyKFynBuCq1TbLPryYWQvN5137hhSOKBalmWH9md+
 8StAAAA
X-Change-ID: 20251001-link_retain-f181307947e4
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Jingoo Han <jingoohan1@gmail.com>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Qiang Yu <qiang.yu@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1779368212; l=2776;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=5/2BYjXjluc8EIuTVwI/UNkQU9qRZBXpI4urNoHwCAw=;
 b=EOSZDRFne1tilI/fYA+ZUVIeA0W/JA7+2Mrt2wzPNN41PyaduACfm5ow6izeQ3wbs4Un5xqeu
 6+6WRklFAFACnMq0cwp0OlHO6NGAzqqZebY9N9n7KcWnkMY6+aBd3yu
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-GUID: Ns32WJy1VHO8XzRyXNYX6gj2poaUqliZ
X-Proofpoint-ORIG-GUID: Ns32WJy1VHO8XzRyXNYX6gj2poaUqliZ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTIxMDEzMCBTYWx0ZWRfX4/krKU5EUmi9
 M8CfyV7Qd1GHiE9wFAwT55vPdUYCYgeYoJCXlzRdh62TEavWFbscnTXcFfUpL8XJ+QY6hcB6Qoi
 sW8TWVknWDXmJx4omarWSRh/RS1bQCOBN1gv2+zSv6v1TyxuT916EXAq9BfPK7oKjFwsfY/tSLM
 nPo84peLiShcK22i2xCuM+mYd7fN9bN5izzjWirqRC9bi2X6fN+wd/LEJx/R7sYUA91C5ofF9Y8
 7IxhWBw4MZVJl49+1/AfPNb5tOPQgdsR+KtiGgqpN9KR5lgmRxNgpPpWse8sdIM3MA1UEso1KUa
 lo8a1nX28YuqoEOythK0Kx6i67aZrQSVudmWqOhvQ5jBA8STohdo/Jmy6jo+ue4K/+sCag9nRqt
 Vjd5j9ks8eLGXv3EKVMP059HtQ7GCruMeQ+gz9iCJ+aFmV0GWLNgTUvl8ii0eYPy76cGeQYG0dh
 Tqv8WO380nkD1AKoCmg==
X-Authority-Analysis: v=2.4 cv=L+YtheT8 c=1 sm=1 tr=0 ts=6a0f011b cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=fuwIWhs0SkhWFt5P5XoA:9 a=QEXdDO2ut3YA:10
 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-21_02,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 suspectscore=0 priorityscore=1501 malwarescore=0 bulkscore=0
 lowpriorityscore=0 phishscore=0 clxscore=1011 adultscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605210130
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260521_055701_423417_8B5D167D 
X-CRM114-Status: GOOD (  18.93  )
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

This patch series introduces support for retaining the PCIe link across
bootloader and kernel handoff on Qualcomm platforms, specifically
X1E80100. The goal is to reduce boot time and avoid unnecessary link
reinitialization  when the link is already up.

We are not enabling link retantion support for all the targets, as there
is no guarantee that the bootloader on all targets has initialized the
PCIe link in max supported speed. So we are enabling for hamoa & glymur
target only for now based on the config flag.

If the link is up and has link_retain is set to true in the
ithe driver config data then enable retain logic in the controller.

In phy as we already have skip init logic, the phy patch uses same
assumption that if there is phy no csr and bootloader has done the init
then driver can skip resetting the phy when phy status indicates it is
up.

Problem:-
1) As part of late init calls of clock the framework is disabling all the
unvoted resources by that time and also there is no sync state to keep
them enabled till the probe is completed. Due to dependencies with
regulators and phy, qcom pcie probe is happening after late init which is
causing the resources(clocks) to be off which causes the link to go down.
To avoid this we need to use this kernel command line argument
(clk_ignore_unused) to skip disabling clocks as part of late init for
initial version. Once it is resolved we can avoid those kernel command
line argument.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
Changes in v2:
- Rebased with latest changes
- GENPD/power domains are not longer getting turned off with the latest
  kernel, only issue is with the clocks.
- Removed the patch [2/5] PCI: dwc: Add support for retaining link during host init
  as we are not seeing much difference with this or without this (Bjorn).
- couple of nits in commit & prints (Mani).
- Remove skip_reset for the long term (Dmitry).
- Link to v1: https://lore.kernel.org/r/20260109-link_retain-v1-0-7e6782230f4b@oss.qualcomm.com

---
Krishna Chaitanya Chundru (4):
      phy: qcom: qmp-pcie: Skip PHY reset if already up
      PCI: qcom: Keep PERST# GPIO state as-is during probe
      PCI: qcom: Add link retention support
      PCI: qcom: enable Link retain logic for Hamoa

 drivers/pci/controller/dwc/pcie-designware.h |  1 +
 drivers/pci/controller/dwc/pcie-qcom.c       | 74 +++++++++++++++++++++++++---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c     | 31 ++++++++----
 3 files changed, 88 insertions(+), 18 deletions(-)
---
base-commit: 8bc67e4db64aa72732c474b44ea8622062c903f0
change-id: 20251001-link_retain-f181307947e4

Best regards,
--  
Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
