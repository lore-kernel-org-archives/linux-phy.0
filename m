Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2388EC61DD3
	for <linux-phy@archiver.kernel.org>; Mon, 31 Aug 2026 07:26:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=loalzPTQvXIlinyT1wgtvTnMdyW3YhnFQYUkrmPUAwQ=; b=yt+gWUK7qYmL70
	QbgNDHqCKUqCf8e78cEOO3Boi83xWsiQW5gUISkw0QStlzIe2D5CFBM9wpPvmtGYpqwv8guPwScuH
	GKFHiRqS5SdGnYBR4lXKQa8byoEUzhFf9WMRN6MlUPmak79QBsk1qN0+sQo474zzx4/FYyyw+jiya
	Y4x71nfVAeyBxqR5IBLa7PyfVyoo/g6dXXa7X7UVFUFnkWODUXPzUgQQr634IyNtJQ1gwSTrgdwgN
	6SHp/fm7M6vQOjwo1YlfekLrPJY737bKE3fow1QD8BNlz2khi2mJ/IZgJRzXICb0oSdksI0HKcE9y
	RRl9yvWJX79TyXI22ZYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0wPI-00000008iuY-3E3v;
	Mon, 31 Aug 2026 07:26:16 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0wPF-00000008iu4-3EEp
	for linux-phy@lists.infradead.org;
	Mon, 31 Aug 2026 07:26:15 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67V52PIh3678790
	for <linux-phy@lists.infradead.org>; Mon, 31 Aug 2026 07:26:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=VEO4lYRnJbCn8tXtqxTTZT
	izUjU4GdautbEOyyKJZB4=; b=mcEE8RieQz5cVZUYqxu84b+9e5S8QhJPlYOUmK
	eLwV4xsa8vspE/V1NgOmt4pRRnEv42mSmLRex5YegVWkHnV3IY6oJxwkBUWy4Vz9
	AEJmzBaUqiZ7rKm891FcZ+vJFiVTVhGe/gKEuGJL7o1Qc4GBchxkF+orQ3tHTuRa
	myHNdCs1UoCgSQM39SdMzGtxqW/I5QsON66KKXg25YuVDRxGY469dy8y+lWW2Oay
	Vm48vn/39FUJjS0l05AeZodtEU9t87dRRPdKhirZ1EjFhDseEWGJ5iEMMWvquPQD
	VQ47LC6Le6hdJH1MrQhL+a/G6ROozosUWNcegWZSApaR2QLg==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gcv8h1evm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 31 Aug 2026 07:26:12 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-38f57e31b6eso3429512a91.1
        for <linux-phy@lists.infradead.org>; Mon, 31 Aug 2026 00:26:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788161171; x=1788765971; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=VEO4lYRnJbCn8tXtqxTTZTizUjU4GdautbEOyyKJZB4=;
        b=C5dLb+Kw+VacL+KaYWjj+8heqzUcj5qDBgO7y1fLySuEo/XGReoUk99OD5nSC/QUPD
         5CFE9MS/VKdUgAY9trB1vb/XOTntHVnQC/QQ46caUNQ85E2KTDdEI7d2zjOSmlhYD70+
         k4fKxbI+3nFP7fmGn0fPNO4o/TqZcYd6cAO5Fq25OxiPcdFN6TAYbcOfPTWL8j40acK5
         HM7OAUtPL32WMsIfgaDTMO5HYSi4AVVZEMWnQE9eFvI2CAdreGt/IrCvVuSmlDyki0Do
         xtAbIfXuQOCevpLQPJiHGx7o0EiPkKkR8YGjLRpIG1htH2Tcl7tbe/HvlZPPT7PdhBDN
         9sMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788161171; x=1788765971;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=VEO4lYRnJbCn8tXtqxTTZTizUjU4GdautbEOyyKJZB4=;
        b=EN5o0yTo5EmJTvpuWDcQGNhk5FpZVG5Dy0HZt8fBwGFaul+M24ELxNy0g4uKNp2Hbz
         n0iMY6ik5l0CohQ5GPwilBVzNDJQKkc+fp5G6Q/VtNzPaQGGYf3H+yTr8s9o3z9y0yaW
         VyPnIlqs5VWdU/eyAMb11W2bfEV0P93VDamYQHzV11JKc71mGYsw1smKhcBVKJJuqgf8
         GhM1g4QjCY7fOZ/HpEs0AbVlGPD0tbk7ycIvtY3NoOYz78vGTmrNgn15mbrL3yN8RIsA
         PCpzl/cuHAF+slKCVx/SsTLIbnB4+DMhZM1JjTgT6CdcHL61DISM+77tYGf314DsfY83
         dT/A==
X-Forwarded-Encrypted: i=1; AKwUvBwS3I6XTN8t8cQXxM4QJC91hX4jeUF0ORD8lPDi4PCCObwU9iVXfvWc2iqJH60ckmKfUHT8O7c+07o=@lists.infradead.org
X-Gm-Message-State: AFuF++lUaDd8M58n8g/Kx6fQ0j356M2B0AX/kkN5oRXMIPkKIigCZh1T
	g2sKOYznmvjwxv6Zgh9sYsRgpzQnmo+VbKPe97G8pxcnItGmi72Y3G/3b0M2YTU7a0zIHMX9Pp/
	o4HTQKlyZlIu3SQrB8RiqrdikxHj8LckzbuKvxFQ0UFDaIqDj08WKOE+04BhVozWURovQ3q357O
	Wi
X-Gm-Gg: AYBFou1vd/2xRwpllu4w8o8NAp/vCyJer22iLeoSjsDoRvtiwVHqlm9tY0FjYImRsu2
	BrGV7ckoAImp23UWbORwdA8fuRF4D0Lf9bpo4pl3xZMZl+Q1OkVNZgOn+t9yO8UB/3JsIITQD0+
	lst3PYzTI6YUKUzEcKw7MQIKtMRA7S0LvnJsh2F60pmOzYdOtzDL0AOuC9k2PJz1X7OMBMH2auR
	2xwdUfTtOZA19au1AUR0NVx07ax6W6F4N04nyWL4lWLASHikCiA3KQ7v3C38as2l0Y9lARtUSSE
	LmEh3BbjCfYRhQVft0nCLv837mGYY2yPT1EF6UOKhjiHed2jZ1GPqTj+L5aJaCM2O27JBhGvgye
	Ak3p4R44nO0mch0dxWP+DBfryyiGCwJYcD0Wc
X-Received: by 2002:a17:90b:50c6:b0:38e:97f0:aa4b with SMTP id 98e67ed59e1d1-396d1017316mr39580837a91.13.1788161171345;
        Mon, 31 Aug 2026 00:26:11 -0700 (PDT)
X-Received: by 2002:a17:90b:50c6:b0:38e:97f0:aa4b with SMTP id 98e67ed59e1d1-396d1017316mr39580761a91.13.1788161170828;
        Mon, 31 Aug 2026 00:26:10 -0700 (PDT)
Received: from hu-sushruts-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3286f9595bbsm31327059eec.14.2026.08.31.00.26.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Aug 2026 00:26:10 -0700 (PDT)
From: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
Subject: [PATCH v2 0/5] PCI: qcom: Add PCIe support for Shikra SoC
Date: Mon, 31 Aug 2026 12:56:00 +0530
Message-Id: <20260831-shikra-upstream-v2-0-406661d75afa@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAIgslWoC/3WNwQ6CMBBEf4Xs2ZJuJVA9+R+GQ8HFbhSKXSAaw
 r9buXuZ5E0yb1YQikwC52yFSAsLhyGBOWTQejfcSfEtMRhtSl1pVOL5EZ2aR5kiuV5h0diytB1
 qjZBWY6SO37vxWif2LFOIn/1gwV/737Wg0orQVQapsafieAki+Wt2zzb0fZ4C6m3bvtPHkb21A
 AAA
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org,
        Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1788161164; l=2281;
 i=sushrut.trivedi@oss.qualcomm.com; s=20251127; h=from:subject:message-id;
 bh=gdQedCkV93rIvkShkP/AJbX+V4bQlHvBZyvJpQ0UB+Y=;
 b=njUKXKbzQO8YBIBqQe/hQ6XaAc7ksR9yP+XHwecFuXAIWcDKhY1N4cp0tggVG/AR8os7ClUoH
 QRkWoXvyZWCDP1mSfaj183/+7CsTZ7fo9HCjkRi6HBt5knOgPL1Ql7t
X-Developer-Key: i=sushrut.trivedi@oss.qualcomm.com; a=ed25519;
 pk=OrUHTxBaSg1oY3CtCictJ5A4bDMNLRZS1S+QfD9pdjw=
X-Authority-Analysis: v=2.4 cv=DY0nbPtW c=1 sm=1 tr=0 ts=6a952c94 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=0S22rWqy9xk-ZxXqdxcA:9 a=QEXdDO2ut3YA:10
 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODMxMDA2MiBTYWx0ZWRfX6BqHeYGS9rYF
 uAJM0Zus02GLROUBaooDrusxDu/TczEQ1TWlw9lOJJUSrquvNPyf3hJzOecvvpvh6jrM1Exm9YG
 qcFSWw2ApjuRl+49eDBIq/u4dBW1DztBenu/SQnKKaSkZYTlzdfbfjYwSJAB+EiyOYauMTy37Va
 swatLe4tvDRHM3vv9JFCg1A/CBGsmD0ceqC7Xbon/s+kDwIP3G7NaH//2ikh2YnkBjuI5W5av9o
 +cFNnB6NqyxTuXn6tuov1fkzdz0VQCcyiVq2CD61CcnIjHZV3AM0jFEXdeeayoMVjeXYK2j2JHs
 +urIt6S5V31y5lkQEfV9zDK9NV/5eMY82p+6MmQgu4SPd5Z4qdnkcwWemipA+2KJ3G4LZ2ZtcrZ
 8MD/q/uCI0BSiLtS19zuNPL3O3CaJOuPC3Q0OUCvlcLbJFOxbCDDKXYRK09lgJgraUvCvin2MW2
 TOLLmWcZ0IBdyc1Ouhw==
X-Proofpoint-ORIG-GUID: 66QuzdqwjrUOvY80lYksFWp77e67O6tu
X-Proofpoint-Spam-Info: AW1haW4tMjYwODMxMDA2MiBTYWx0ZWRfXzDI85LUXgA+1
 fH8a9dpPN/v+S7xpjiYtBGA8ONgjZeNTIBtXcvaricHitbq2+rQuEP4DQefkuajVJjRi+zxfvIZ
 8iSCN+7Nd/0qRZauYv5Msm9mTky82yU=
X-Proofpoint-GUID: 66QuzdqwjrUOvY80lYksFWp77e67O6tu
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-31_02,2026-08-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 adultscore=0 clxscore=1015 priorityscore=1501 spamscore=0
 suspectscore=0 malwarescore=0 bulkscore=0 lowpriorityscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608310062
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260831_002613_821263_3A0747F2 
X-CRM114-Status: GOOD (  12.93  )
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

Add PCIe support for Shikra target, by adding dt-bindings for phy,
controller and corresponding phy & controller drivers/device-tree
changes.

Shikra RC is connected to TC9563 PCIe switch on all three
EVK variants: CQS, CQM and IQS. The individual downstream ports
of TC9563 connect like below:

DSP1: M.2 B-Key for 5G Modem
DSP2: M.2 M-Key for NVMe
DSP3: Embedded ethernet device

Power and reset to M.2 B and M.2 M slot are controlled via
TC9563 GPIO's. Since TC9563 GPIO driver from Alex is still
under active review, current series only contains basic PCIe
enablement for the controller / PHY. TC9563 enablement changes
would be posted as a separate series once the GPIO driver is
ready.

[1] https://lore.kernel.org/all/e2inl7k5gsjj6oomv2k5ximuzpb3gfiz66ufet3b4hvov7zqt4@qz4pifbos7yf/

Signed-off-by: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
---
Changes in v2:
- Remove TC9563 specific changes [Mani]
- Fix commit descriptions/subjects [Bjorn Helgaas]
- Fix PCIe controller dt-binding errors [Krzysztof Kozlowski / Mani]
- Document PCIe Gen2 limitation in controller node & commit msg [Konrad Dybcio / Mani]
- Add GCC_PCIE_SLEEP_CLK (which is actually PHY AUX CLK) in PCIe PHY
  node.
- Link to v1: https://lore.kernel.org/r/20260701-shikra-upstream-v1-0-e1a721eb8943@oss.qualcomm.com

---
Sushrut Shree Trivedi (5):
      dt-bindings: phy: sc8280xp-qmp-pcie: Document Shikra PCIe phy
      dt-bindings: PCI: qcom,shikra-pcie: Document the Shikra PCIe Controller
      PCI: qcom: Add support for Shikra
      phy: qcom: qmp-pcie: Add QMP PCIe PHY support for Shikra
      arm64: dts: qcom: shikra: Add PCIe PHY and controller nodes

 .../devicetree/bindings/pci/qcom,shikra-pcie.yaml  | 218 +++++++++++++++++++++
 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   |   2 +
 arch/arm64/boot/dts/qcom/shikra.dtsi               | 159 ++++++++++++++-
 drivers/pci/controller/dwc/pcie-qcom.c             |   1 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           |  73 +++++++
 5 files changed, 452 insertions(+), 1 deletion(-)
---
base-commit: 565fa02f75448ce1ddd18bda6b31ad985cf75411
change-id: 20260701-shikra-upstream-14b8668f1001

Best regards,
-- 
Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
