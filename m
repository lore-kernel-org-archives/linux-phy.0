Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9FDD5C44501
	for <linux-phy@archiver.kernel.org>; Mon, 13 Jul 2026 13:08:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=C8IY0GJiMqkovzrRe+uhZRZ3PS+utOilPvIaCHTVPbE=; b=GMNzVo4EeZDuqv
	kWuinU1Pc3cOWLSv3Sp+ZMT51nMZ154Q/fm37dbCx4LFxS3GyeNFUGy/bk5eDWvPSJYbNnWuMG9Rn
	Ytxj5Sv3zD/iTh/Jz71GXd4SqubFpNYRtKrps7mzc3VI/a4neiE+TpdphJffZFwFxfvqmlZjsRxMp
	KwgtKYXB8klkCBvPvgSpykgYjIITypmLSQFaSM87LX6dTQDo7hib1TjPqcexwUYbuyYBjQ5JIsy3K
	adX9ce8qrxtoxWkgqSzO9nTxppJ8kYdg7QAKhcqVHqI5CpCFHWdc4sQtbYMJhPV1oJSrh0OCogMlf
	T03jlJkhuKpXi0U+cptg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjGOo-00000009KOE-1bWn;
	Mon, 13 Jul 2026 13:08:42 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjGOl-00000009KNs-3cRt
	for linux-phy@lists.infradead.org;
	Mon, 13 Jul 2026 13:08:40 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66DCE0qn1494580
	for <linux-phy@lists.infradead.org>; Mon, 13 Jul 2026 13:08:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=IbUQyBiTJhaPWdaTkK+imr
	RU+C+1Z31myd23GIEMc04=; b=az3dOMgJolpqHY2doKxRrXU/JIWohP4cNWjaAi
	Hu2hfAlkU+clmYtARs2WIW7+H/+OijyleSyIAJaqyQ23iH8g/fwwqprTwv+FKZW8
	aaxU71/7ZVqsXyIYlWWeXhywyrZXdKAIkUH5YqhXk9l+zEO5dyOoOZfzAKIleVko
	r+S+g6HQkEqobPq+g7EV0q1GxYzC+HEhdwjY2D5lu2cL4LntWQYM7duH5NLyNecU
	UA0d2TeTPGhQKVs48m3g5l2Ub++D+3j/VPcQW/tcmlQ8gEV2pgb7xoo8bNwZ8a2j
	weuXW/uqvyZjVUQC5e2lHYF8Y3k1q/uONB9e5FtLjD7M7duA==
Received: from mail-ot1-f69.google.com (mail-ot1-f69.google.com [209.85.210.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fcjnm2nq3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 13 Jul 2026 13:08:39 +0000 (GMT)
Received: by mail-ot1-f69.google.com with SMTP id 46e09a7af769-7e9dc0f5900so7421955a34.0
        for <linux-phy@lists.infradead.org>; Mon, 13 Jul 2026 06:08:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783948118; x=1784552918; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=IbUQyBiTJhaPWdaTkK+imrRU+C+1Z31myd23GIEMc04=;
        b=Nw24iU+kAbSNIx9E3s9F3NfbJ2cMp9GwlwgRyteHFAbOpy/67CtJDpT3U8QycjQxx9
         EUJnCH2L2YAAvU1d3x0ZWPABzk+aUdJrSZSX+0xI6GlhMLCiU2i9UBUa3ixrwy5JolST
         HAeqhjP1F3naB2ASqWNeEI1Ppp5LFjyWEQxvuITX4LKD2sfpOrnW6t22ottH0/3C31G6
         8K03gIoDrIlzCa7GFgGmjLGwEbfo4c6HbVRxsEZtV6Do64+d7oeRqTklRAynu5ZHEg7p
         k78uhYM1linNG9dFcm74HwgD118ewrS9bK5SI0u5u8HIWKFX2p20DzDgzueGxUqfsqdW
         NQNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783948118; x=1784552918;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=IbUQyBiTJhaPWdaTkK+imrRU+C+1Z31myd23GIEMc04=;
        b=JMPMBm6xDN7CI8Aek2I7WK65sLaKbA373S0q7lOzduP6HOhYirXHcQGAvKChbEmASP
         TKY3gyMMs6hZ1662YVwELufymlLcbuSxx3Ta8nmG85geluiXFtG3qegjPXM7PR4YeqEs
         qQwQDcP9kGQuVWQ0D0KpO/VntU8IrRQy6KwPyVY30Y12oB/GJm/zu1kFme27E6mXl91m
         YUMsUIckFHyAow0s69PruS4pMLjQAGw42/TGfgDa8mSGmeKCz/Be38av8UBrFBWtPRa+
         XsXlFa7Q3jRKjx6u/w0JDpDiJexFKWE7ek1UbIG41GKWsNEIqkE0Wu446qBQ7XLoY3vN
         0h9g==
X-Forwarded-Encrypted: i=1; AFNElJ9wB6YjYmEMRBXhb7811/KQcvyqwlMZ7Tqr2p+mtLLO2G/aJPmwZvbic78nZeDEWPG8BKOo8COXhSI=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy6ZsiaHobXszLrqkfgVxwAhsiJ1Zsk+PBq5k4u39FeZhYy926N
	2e1Vx8/YM4moyK/Nmbv4K90QFFZys593XWhhVnAsyu/4B30WxIQTIA1y+jevMef8v8jHa0fl/xe
	yhXOdjq0ISRj4izOal5cl2IzmfKw1HuzkltFFJys4FB9eBn41SuU2stWT4Rpmz59Lik5v
X-Gm-Gg: AfdE7clSEklh5iJTlmSLO+eL/tIfsucIOpayqG8eaKKB/x3RwmGy7XTx/bnZ56P9zn1
	FuqczMPphIQSYsQ7R4XftARQMVK9GoXhf5pmdpa5R8+vKVCmao5nW1T+Fk9eslXIAtjrlxcpeEZ
	U2M0G5yl6mZuAyGeY+l5iPe7dCuYhM+kgAwyCul3aKif6pVg0orGngfKUuTsIHQOvZRTrpxGZJD
	m8sh2mV9qGJc0fH3Eoc933a8NLTqG/xt5TzNUrCjWiNhqeq7olO6uePlYfm1jes1RAS3rWBTKD/
	INW9x43vt5l2OOPQ0QpIgKfUI2ksjX5H7+ASI46bGQ7mXbeRjPU07qlPC8Ckr7A8A/yOKxOjsjf
	ehBnWsXjn7D0mA62ezIynoK2ZUEWOkIF2UeTFraxUn0at1WRc6TfxlhgPcU6/JO1An2D5wjoAPP
	Lq2HNN
X-Received: by 2002:a05:6820:4df2:b0:6a3:127a:bf27 with SMTP id 006d021491bc7-6a39bc515ebmr4445666eaf.11.1783948118267;
        Mon, 13 Jul 2026 06:08:38 -0700 (PDT)
X-Received: by 2002:a05:6820:4df2:b0:6a3:127a:bf27 with SMTP id 006d021491bc7-6a39bc515ebmr4445645eaf.11.1783948117847;
        Mon, 13 Jul 2026 06:08:37 -0700 (PDT)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-6a38e16c7d8sm6415913eaf.9.2026.07.13.06.08.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jul 2026 06:08:37 -0700 (PDT)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: [PATCH 0/2] phy: qcom: Introduce USB support for Maili
Date: Mon, 13 Jul 2026 18:38:27 +0530
Message-Id: <20260713-maili-usb-phy-v1-0-3285da11f148@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAEzjVGoC/y2N2w6CMBBEf4X02TZtuYjEGP/D8LDgKlVKoQtGQ
 /h3K/gyyUlm5syM0BskVkQz8/gyZFwXQO0iVjfQ3ZGba2Cmpc7kXsXcgmkNn6jiffPhWmXJIYV
 cQlaxsOk93sx7/buUG9NUPbAefyf/hsdhCqJxqzGLRLCKiui4elKZaxXrOBFJlsRcce86eAoPD
 T7g7IjEMEFbO2tFiBMrl+ULfVV/WMkAAAA=
X-Change-ID: 20260713-maili-usb-phy-216495a80a6b
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1783948113; l=1143;
 i=krishna.kurapati@oss.qualcomm.com; s=20260707; h=from:subject:message-id;
 bh=jE7CekFZKhgt5cmGhG+WSkEJKcvyL7RUq/0SKWptMQ4=;
 b=Q4FD0ucJopGcsAl40GSBbU/a6doNSvbPxBE9+kqKsoy7utWRWVseNQ0AIvjBywrPj5uGX8JNT
 xFEoWOZPnNnAPToaDmRkDPrjfcaF90oa77iwVSCwyNDJ3XXSzC3Duo0
X-Developer-Key: i=krishna.kurapati@oss.qualcomm.com; a=ed25519;
 pk=6PmiuwGCdov3wRO+bdmRlRxRtmJyDKz3ED57LLPVgds=
X-Proofpoint-ORIG-GUID: q7KQ4NdFOzCTyV0dxW5zuOAYZ4w5d0Y0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzEzMDEzNyBTYWx0ZWRfX7nHCPKojiZeN
 vAqs4oHA2A9hcfGYtCTmGc6hjPhBC6VS6xMiODn2cpepc7vYV7K/QD86pO3QU4KNvWkSwCcQgqS
 s2uC7dY/u6p7zzoQzaPSqofxbMNsur6eTnoNfD9msjEarDLDBqC7Eb0/aoSn5GzylHYz6RTzkZa
 ym+spWNav+zbujfQLUhIEIpTobwz4qj6eZz0TC4T1hdizMMLw7pAaNsK1TxH/GOWX98Yv8N01fk
 DjtAmT9JnmimzyXXNW8dWTgda77LB/1tSO9aIyEYhZJmajg7dBvc22d6BF1IehjmJoAy3Hz/0Hj
 c/PdwrRQuS2EW0WGjJCVZ2QMnuHdcYr9WgENPVZW5f1CpRc/64D4zMwWfU/rq01E7gsNRAR415I
 ghj/z2a4X2u+qRo9HRr0+Btc3IrxeFgvbUh+3rr/DtZsBQoIRQUW3OXqY/Uro6sfT/yThay+v4g
 tzP7m0He8nrmQ2J6vnw==
X-Proofpoint-GUID: q7KQ4NdFOzCTyV0dxW5zuOAYZ4w5d0Y0
X-Authority-Analysis: v=2.4 cv=AfmB2XXG c=1 sm=1 tr=0 ts=6a54e357 cx=c_pps
 a=z9lCQkyTxNhZyzAvolXo/A==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=7E3VzwZjn1rR5_zOvygA:9 a=QEXdDO2ut3YA:10
 a=EyFUmsFV_t8cxB2kMr4A:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzEzMDEzNyBTYWx0ZWRfX2ZDS3udiOaTU
 v1bFZKr9zO03EgjVV1vp5gxwYBxIyDtIXQ+2fIf2DMC8dcDMPzw6t98EZKty2JcAjTtgRReRmPm
 VnuATvFU48SddRYjlbgDr78kNM0ZNOo=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-13_03,2026-07-10_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 phishscore=0 priorityscore=1501
 impostorscore=0 malwarescore=0 clxscore=1015 suspectscore=0 adultscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2607130137
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260713_060839_910413_36B9DF64 
X-CRM114-Status: UNSURE (   9.35  )
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

This series adds USB PHY support for the Maili SoC. It documents the QMP
USB3-DP combo PHY and M31 eUSB2 PHY bindings and uses Hawi and SM8750 as
respective fallbacks.

Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
Krishna Kurapati (2):
      dt-bindings: phy: qcom,m31-eusb2-phy: Document M31 eUSB2 PHY for Maili
      dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy: Add Maili QMP Phy

 Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml         | 1 +
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml        | 4 ++++
 2 files changed, 5 insertions(+)
---
base-commit: 9eab4ee76654a970b27e32ef8db5faa0e0ab1611
change-id: 20260713-maili-usb-phy-216495a80a6b
prerequisite-message-id: <20260508213234.4643-1-ronak.raheja@oss.qualcomm.com>
prerequisite-patch-id: 67eabd10459a30018201dc8e1de5d92afd66a65e
prerequisite-patch-id: e6a3b60f5be496990f4e20b61bc4e7d95a9ed6e4
prerequisite-patch-id: 2c8c33235fa26efbff7de1c1fb4fb4a914c669f6
prerequisite-patch-id: ad18f334a41515aac21faf5d684206657ada699e

Best regards,
--  
Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
