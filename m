Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D0BAC61DD3
	for <linux-phy@archiver.kernel.org>; Mon, 31 Aug 2026 07:26:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2e1U/p2XawGDUrR2RMLKHDU4RG+cYnNz8DmJ47xVGQk=; b=NHzUg6LneZSmPR
	Ww/ke46kD+bVkZmcfWeF0XMoU9yu69dgosvKfJSpMzXLfHDMArpCiu7z/shHSt4a46plzqK5t9/gk
	nG4+acEm56RIN+xCjQLAeoYAHTqeIK94E476e2ZkaSWb8faZ4dBN+gi7JApbPgfHr8qk+x0itdtIm
	Pq73jyand7AiQ72j9O+0hvOBWaHHypEkIa2EPe5BNlKmyRIpMJrlGsAKd8d8ROMlMEtDwKyHIl9kU
	XaoeDP0RmitXjUtSWbmpum8OBUecnToHklHs/025rBEiwcVj9sMAIRv6uFvngm1uX/0IOQdPrmZlk
	oJmKK7AJZ7326PpOqxWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0wPg-00000008j15-0eP9;
	Mon, 31 Aug 2026 07:26:40 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0wPe-00000008j0K-0HJO
	for linux-phy@lists.infradead.org;
	Mon, 31 Aug 2026 07:26:39 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67V52JKc1933555
	for <linux-phy@lists.infradead.org>; Mon, 31 Aug 2026 07:26:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	oHuJUjEsLPE8+q1YHV5zzKgadJG0CI5d9no3OMB8tgI=; b=am1YGbgnbiuAwlKv
	MugkxV8S4vci4keiIgzknG/WrJwYqCZkTtoDthBWr11YrBNTdbUaLmD/UTz7pMkv
	qPbxFuiGn4p6V0y/4L+PUUi7nCNRRK/USIwZEZ6KqbqN/CLOCbTiVZzvsezdwdsC
	EThn0iPdyLoqnXd8igTno52uzeAW6UgdR9bPy6R1GkN4T9accGXSPN7i9Ql2pr/w
	enXNNFjjQb3OR77PMMIgrdK/N+nmD4PROmBsqpSqxzh2nNvFYJeG16MDULFBwUKa
	l76X/q09+NeAStFZxHcwvB2M15u13pCnsYiGYPyMFI+HxVg7/DA7akWkxCxY003J
	AfFIzA==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gbrq850ba-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 31 Aug 2026 07:26:37 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2cfca8558d2so40852295ad.2
        for <linux-phy@lists.infradead.org>; Mon, 31 Aug 2026 00:26:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788161197; x=1788765997; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=oHuJUjEsLPE8+q1YHV5zzKgadJG0CI5d9no3OMB8tgI=;
        b=cSEF58M6jmXOMs+19Hl/IxIhUWKRrLVJ1uerjb/iFeT8R8eDG51I7n9kLZEs4KvRXO
         FPGT8LltuLpeC0nFaLRtkkkpKAQxzWqs0eUroeH1DSVl0umzxmCX9ihYNfuYFhC/ANB0
         yN5JLEMN8MIWEx0Wtkz9nGvqygYBWOpGmwQoWOD+NEQlT1O8VGYIqqu/FyCPxOgCRs6v
         IET8SrCIdwW+aKlUrUr7UstRKo1trh4r1BP7G+cAHmES0x73wZxc0hxYZcKBM/IHCkH7
         8XMornleTUqnDse97vLQmAkqx1uQlbwdYjNQi9b0CkECQu2Qoi9SklwE3b50tjQ59jBL
         009w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788161197; x=1788765997;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=oHuJUjEsLPE8+q1YHV5zzKgadJG0CI5d9no3OMB8tgI=;
        b=MDJZhI6RilyOpxYg7+hB89OmMnUa273JesydAoqaHWCj5TXNUVhYVmo0FsfndRMbvA
         2DUk73lXWqucV/cL9XckCR+UzSDc+8zM2aMAlzj0XNhG5n8fXj3MrywtPwWSzbxwescT
         5UR1E3r/tLHEFmb7chOk4NKagPE+KdyAH/NBDYZtCkjODiq7T8lkJeF27C5jCas4wlRx
         a/jBAOsR1SLVGhekRd0AYOh2sUaxlF8GkPd09BzfaYcmquDXFR5TWOkKbSXKR1jgIOmA
         Qi+kNvLAY23Qyv1nTOjcwUwveVLX9OviUoJc6z2+V+0oMQzBlGBsZf6Y6hcm9CcBvOSR
         W4dg==
X-Forwarded-Encrypted: i=1; AKwUvBzyq9yovQ6MvdkEt/JRr+k9/MpDwIuRdkLOxKPq+IrLjU+SBBAOE0++2q2cRb9wk73EbOUUDzgcuxQ=@lists.infradead.org
X-Gm-Message-State: AFuF++nS7E7D41oYNm0deCgo9Ul7FnTVRbfkSh8ozCRx+us6xx0XOb5N
	sHAvDEu6Xy5CprOioQg3UewjwLVPEgynklHsp0Mz0RWlHp5lQace47YGf7xK29E3ysdcmjMEhUi
	ISAISmhQwf/WdfQ8g/4HoKt3gLozX0+ux0RDibHiza13eu1kX/jIy59A99pPjgCuyRpqmyDV+Ib
	SX
X-Gm-Gg: AYBFou10yYN0g1oiBqdec8W8Bt3YtwzCSPJ6D3DDFILuX8Ub58DT/A4i3zpwn2S9XVn
	2qVjg3Rv5S4nB87F6F9I4wf6MeEzusZ5rK1/iatqdgJA6Uopk/iEmOgSkdnl4M+7/4UDff21g4t
	z7EYHY8IqPIYcpSMXbpeSClgiQmWxnXrWC2tX2mz9s5ivRJnxvVKmq6xMX7vWh65BdzPAc8vMbp
	nPUXHi9rBO+znz6jOsz4RvfXjGsBNF3OvC5VIhTYmi7RYe6Ws3R8OpuYzawQbLOWf35hlWsBJb2
	7mOpG88EAQgEWsoObQJL4PyPTBQTrxzLyHp3jSyLJYeQJP9v4HkpcK67VHSBf2GVE6G7vdMVaFl
	qvCVLAmuooNQj8f71FQXB1M+7q6FmdblRrEFj
X-Received: by 2002:a17:903:3b88:b0:2d8:df44:a5c2 with SMTP id d9443c01a7336-2d8df44b118mr230672805ad.20.1788161196970;
        Mon, 31 Aug 2026 00:26:36 -0700 (PDT)
X-Received: by 2002:a17:903:3b88:b0:2d8:df44:a5c2 with SMTP id d9443c01a7336-2d8df44b118mr230671785ad.20.1788161196378;
        Mon, 31 Aug 2026 00:26:36 -0700 (PDT)
Received: from hu-sushruts-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3286f9595bbsm31327059eec.14.2026.08.31.00.26.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Aug 2026 00:26:35 -0700 (PDT)
From: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
Date: Mon, 31 Aug 2026 12:56:04 +0530
Subject: [PATCH v2 4/5] phy: qcom: qmp-pcie: Add QMP PCIe PHY support for
 Shikra
MIME-Version: 1.0
Message-Id: <20260831-shikra-upstream-v2-4-406661d75afa@oss.qualcomm.com>
References: <20260831-shikra-upstream-v2-0-406661d75afa@oss.qualcomm.com>
In-Reply-To: <20260831-shikra-upstream-v2-0-406661d75afa@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1788161164; l=4605;
 i=sushrut.trivedi@oss.qualcomm.com; s=20251127; h=from:subject:message-id;
 bh=aTj5KtOb2vKiTmwN7SGIUjWosWnCNz+9xpIGl5k0Q6c=;
 b=PjB8STXozdOt3bZU83GyYBS/uO+OuIbWwQDKA7PhE07yCX+a6lnCt7IJ6sy5kjsbjFqaMzWYu
 VgwOi6BrBLZCgrxK/Zo4fFAJbRi0ApsytXvmD/vEz+NtgZ0EcgfJdtC
X-Developer-Key: i=sushrut.trivedi@oss.qualcomm.com; a=ed25519;
 pk=OrUHTxBaSg1oY3CtCictJ5A4bDMNLRZS1S+QfD9pdjw=
X-Proofpoint-GUID: j64EJx4EaRwoDRljmcXq0ClYhWon1SMA
X-Proofpoint-Spam-Info: AW1haW4tMjYwODMxMDA2MyBTYWx0ZWRfX0LuE4TWxeDZs
 dE6P8NEkjyPP8jPERL3iE0zHmbnUBVnwTIacDyUgguBvPMJRTMwv8fkMR3Gwa2+qtf+cNbCFcb9
 NQJ8aA8vAeAJWlfyZ/d3KfgDglKO+8Q=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODMxMDA2MyBTYWx0ZWRfX/Kqb//JRq1Y9
 atV5vw5CKTJAI72M+swQoz7UoP60pv4HfdGcpJXRtEDQrdiYCH9Q9Xpuzxv1mv45JUljmTAdais
 BoBIwuYwKvjmt4IueeiEw2Uc1VpSdgRiGc248/5JEUoJ9+uhLmClg/Atp+g0Kh6BvC3p2Oxb+ai
 82QJibT7MK7Ta4Us5LjAI1x7L5J0QyN0fxgUTyUGOT5HGl/M+huUdrrYEDbCSsnxrqbJ7uiM3of
 gng7HkTYOjwo8qgOu7EuthwCOk3r6TlHqN2gq+mnNQyuv60SBZwxXOR2gameKVKiS9Ny1X7NOsY
 o5mXtZSfjbT53YlSowXyGnpShSxO04rnSK5kinJSYwob5O6sgWBktIcilbqYQ2ZKypd9UpyFIgt
 NSdSVPwXRicAD8b9SPs6tOQ7b7P1TUSC9GXs2620Kfz716pY1G/99z1iN1HhfnxzQrkWc1KtP8n
 vAHV7sBvtwUZijHPX5g==
X-Authority-Analysis: v=2.4 cv=ZOPnX37b c=1 sm=1 tr=0 ts=6a952cad cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=EUspDBNiAAAA:8 a=iLgwJ6eFgLmkID89yw0A:9 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-ORIG-GUID: j64EJx4EaRwoDRljmcXq0ClYhWon1SMA
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-31_02,2026-08-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 malwarescore=0 lowpriorityscore=0
 priorityscore=1501 adultscore=0 bulkscore=0 impostorscore=0 phishscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2608310063
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260831_002638_236477_39AFF580 
X-CRM114-Status: GOOD (  12.45  )
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

Add QMP PCIe PHY Gen2x1 support.

Signed-off-by: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 73 ++++++++++++++++++++++++++++++++
 1 file changed, 73 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index d3effad7a074..e0995e4d5f2d 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -2172,6 +2172,50 @@ static const struct qmp_phy_init_tbl sdx65_qmp_pcie_pcs_lane1_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V5_20_PCS_LANE1_INSIG_MX_CTRL2, 0x00),
 };
 
+static const struct qmp_phy_init_tbl shikra_pcie_serdes_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V2_COM_BIAS_EN_CLKBUFLR_EN, 0x18),
+	QMP_PHY_INIT_CFG(QSERDES_V2_COM_CLK_ENABLE1, 0x10),
+	QMP_PHY_INIT_CFG(QSERDES_V2_COM_BG_TRIM, 0xf),
+	QMP_PHY_INIT_CFG(QSERDES_V2_COM_LOCK_CMP_EN, 0x1),
+	QMP_PHY_INIT_CFG(QSERDES_V2_COM_VCO_TUNE_MAP, 0x0),
+	QMP_PHY_INIT_CFG(QSERDES_V2_COM_VCO_TUNE_TIMER1, 0xff),
+	QMP_PHY_INIT_CFG(QSERDES_V2_COM_VCO_TUNE_TIMER2, 0x1f),
+	QMP_PHY_INIT_CFG(QSERDES_V2_COM_CMN_CONFIG, 0x6),
+	QMP_PHY_INIT_CFG(QSERDES_V2_COM_PLL_IVCO, 0xf),
+	QMP_PHY_INIT_CFG(QSERDES_V2_COM_HSCLK_SEL, 0x0),
+	QMP_PHY_INIT_CFG(QSERDES_V2_COM_SVS_MODE_CLK_SEL, 0x1),
+	QMP_PHY_INIT_CFG(QSERDES_V2_COM_CORE_CLK_EN, 0x20),
+	QMP_PHY_INIT_CFG(QSERDES_V2_COM_CORECLK_DIV, 0xa),
+	QMP_PHY_INIT_CFG(QSERDES_V2_COM_RESETSM_CNTRL, 0x20),
+	QMP_PHY_INIT_CFG(QSERDES_V2_COM_BG_TIMER, 0x9),
+	QMP_PHY_INIT_CFG(QSERDES_V2_COM_SYSCLK_EN_SEL, 0xa),
+	QMP_PHY_INIT_CFG(QSERDES_V2_COM_DEC_START_MODE0, 0x82),
+	QMP_PHY_INIT_CFG(QSERDES_V2_COM_DIV_FRAC_START3_MODE0, 0x3),
+	QMP_PHY_INIT_CFG(QSERDES_V2_COM_DIV_FRAC_START2_MODE0, 0x55),
+	QMP_PHY_INIT_CFG(QSERDES_V2_COM_DIV_FRAC_START1_MODE0, 0x55),
+	QMP_PHY_INIT_CFG(QSERDES_V2_COM_LOCK_CMP3_MODE0, 0x0),
+	QMP_PHY_INIT_CFG(QSERDES_V2_COM_LOCK_CMP2_MODE0, 0xd),
+	QMP_PHY_INIT_CFG(QSERDES_V2_COM_LOCK_CMP1_MODE0, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V2_COM_CLK_SELECT, 0x35),
+	QMP_PHY_INIT_CFG(QSERDES_V2_COM_SYS_CLK_CTRL, 0x2),
+	QMP_PHY_INIT_CFG(QSERDES_V2_COM_SYSCLK_BUF_ENABLE, 0x1f),
+	QMP_PHY_INIT_CFG(QSERDES_V2_COM_CP_CTRL_MODE0, 0x4),
+	QMP_PHY_INIT_CFG(QSERDES_V2_COM_PLL_RCTRL_MODE0, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_V2_COM_PLL_CCTRL_MODE0, 0x30),
+	QMP_PHY_INIT_CFG(QSERDES_V2_COM_INTEGLOOP_GAIN1_MODE0, 0x0),
+	QMP_PHY_INIT_CFG(QSERDES_V2_COM_INTEGLOOP_GAIN0_MODE0, 0x80),
+	QMP_PHY_INIT_CFG(QSERDES_V2_COM_BIAS_EN_CTRL_BY_PSM, 0x1),
+	QMP_PHY_INIT_CFG(QSERDES_V2_COM_BG_TIMER, 0xa),
+	QMP_PHY_INIT_CFG(QSERDES_V2_COM_SSC_EN_CENTER, 0x1),
+	QMP_PHY_INIT_CFG(QSERDES_V2_COM_SSC_PER1, 0x31),
+	QMP_PHY_INIT_CFG(QSERDES_V2_COM_SSC_PER2, 0x1),
+	QMP_PHY_INIT_CFG(QSERDES_V2_COM_SSC_ADJ_PER1, 0x2),
+	QMP_PHY_INIT_CFG(QSERDES_V2_COM_SSC_ADJ_PER2, 0x0),
+	QMP_PHY_INIT_CFG(QSERDES_V2_COM_SSC_STEP_SIZE1, 0x2f),
+	QMP_PHY_INIT_CFG(QSERDES_V2_COM_SSC_STEP_SIZE2, 0x19),
+	QMP_PHY_INIT_CFG(QSERDES_V2_COM_CLK_EP_DIV, 0x19),
+};
+
 static const struct qmp_phy_init_tbl sm8450_qmp_gen3_pcie_serdes_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V5_COM_SYSCLK_EN_SEL, 0x08),
 	QMP_PHY_INIT_CFG(QSERDES_V5_COM_CLK_SELECT, 0x34),
@@ -3911,6 +3955,32 @@ static const struct qmp_phy_cfg sdm845_qhp_pciephy_cfg = {
 	.phy_status		= PHYSTATUS,
 };
 
+static const struct qmp_phy_cfg shikra_pciephy_cfg = {
+	.lanes			= 1,
+
+	.offsets		= &qmp_pcie_offsets_v2,
+
+	.tbls = {
+		.serdes		= shikra_pcie_serdes_tbl,
+		.serdes_num	= ARRAY_SIZE(shikra_pcie_serdes_tbl),
+		.tx		= qcs615_pcie_tx_tbl,
+		.tx_num		= ARRAY_SIZE(qcs615_pcie_tx_tbl),
+		.rx		= qcs615_pcie_rx_tbl,
+		.rx_num		= ARRAY_SIZE(qcs615_pcie_rx_tbl),
+		.pcs		= qcs615_pcie_pcs_tbl,
+		.pcs_num	= ARRAY_SIZE(qcs615_pcie_pcs_tbl),
+	},
+	.reset_list		= sdm845_pciephy_reset_l,
+	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
+	.vreg_list		= qmp_phy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+	.regs			= pciephy_v2_regs_layout,
+
+	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
+	.phy_status		= PHYSTATUS,
+};
+
+
 static const struct qmp_phy_cfg sm8250_qmp_gen3x1_pciephy_cfg = {
 	.lanes			= 1,
 
@@ -5603,6 +5673,9 @@ static const struct of_device_id qmp_pcie_of_match_table[] = {
 	}, {
 		.compatible = "qcom,sdx65-qmp-gen4x2-pcie-phy",
 		.data = &sdx65_qmp_pciephy_cfg,
+	}, {
+		.compatible = "qcom,shikra-qmp-gen2x1-pcie-phy",
+		.data = &shikra_pciephy_cfg,
 	}, {
 		.compatible = "qcom,sm8150-qmp-gen3x1-pcie-phy",
 		.data = &sm8250_qmp_gen3x1_pciephy_cfg,

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
