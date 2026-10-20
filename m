Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3CF7606A32D
	for <linux-phy@archiver.kernel.org>; Tue, 20 Oct 2026 06:18:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Fvl8Qwuf;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=Bv4vtO5h;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=HL/7h8WO
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=F86ePOMnXZtTmJ6gLO2tUbf76DgCvy6PputXvS3D3qA=; b=Fvl8Qwuf3105Rh
	tLpeg+tiju2B8lNyYJwHbu1ZUBnqSSHWEZ3xe+Q+RdaMpcmFShupW2wfDAMJkCYyWs86cRcDTXPMa
	kv8qPHrHcM0uwR6M2+yOgh7ZW5O5lKXntsMeCh2D4/5drGMeamsqbMcKGjWJA1YJWOM+rZsgr2Zju
	qTVW9jh7U/MjyiN1fQHG9e0V/4CWtdXEA19owJ86d+FHBkaDKaY4Sixh8vm9B/uM0J/TNpiVkMQ7u
	ECQniLFL2kw/g6MumzajpYYWl0hO5dJQAiCTKo4bEMDBCQYTtQWomIrw+cLfR4GBzmi/zNhS6dZqK
	KH3V7grUI+HY4sNEHm/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJ3B0-00000008ux1-2JbO;
	Tue, 20 Oct 2026 06:18:22 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJ3Ay-00000008uve-20Eg
	for linux-phy@lists.infradead.org;
	Tue, 20 Oct 2026 06:18:22 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69K0t31n1253880
	for <linux-phy@lists.infradead.org>; Tue, 20 Oct 2026 06:18:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=XAsGOIGfH/JxbAjnzlFqcJgkwSEZVDVRf2r
	QqbDcdDA=; b=Bv4vtO5hJ19j7WBJjuthUVSk1Xab5xkRnWlcGgN5wNNLO2sck/N
	rmmmEodSWVdUvxE+Dm/XuseswlLrCm+Ppbmm6EgiuYVMSg45Cy2gS0zsBfR27zl/
	xtFY0fPxHiJBT11okZIizTxzQvARCyWUz3hwtV+b/aqzLoYzVzKSeZWjVGctBcW7
	6pbtO/1WwdzjDU+W8D5dveTSH9edKtjeD4OiT4V9BMFAa9H53dlzQayu0571rk0y
	u34TwaiWSDzu9h4V1CnHEkviCxKvutgSgNRYQpb3U2aPBPKXRIgjioMImHsqaut4
	wgJN6zE6bEwQ3XijPjdgMcL3TiBVn7Pu84A==
Received: from mail-dl1-f69.google.com (mail-dl1-f69.google.com [74.125.82.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hdw5n94ck-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 20 Oct 2026 06:18:19 +0000 (GMT)
Received: by mail-dl1-f69.google.com with SMTP id a92af1059eb24-186c1aae818so4255562c88.0
        for <linux-phy@lists.infradead.org>; Mon, 19 Oct 2026 23:18:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792477099; x=1793081899; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=XAsGOIGfH/JxbAjnzlFqcJgkwSEZVDVRf2rQqbDcdDA=;
        b=HL/7h8WOSUO2ncO9ni+X6szmkSYQWihI9PCY/CrwwyjhK8mOjVSj0yyOa509pnrLdd
         KfESoskhFgKzu0Yl1zz0q3EdFcmktlHRLAsTwfmWN62F+3e4Tzem03vN2xXqiXYGamEi
         X0o+gprO94wRJKH6kH7c3nTWt1dqOYPmLjXeTPEeEDc/Dy+b7dJ95ICo+eQNyygWF7Om
         6KNFD1YlMm9+lbqAnwy5StMynyil+qb8qUbrMVddkPbFhzpn0bYot0iThBEzZmXcVhEd
         fbF2418e7yOq8BIyKHqlLsy6/4cSUFmnfShA0PZ5f7xXLrZMSqLq+J+AGRQHoSu7oAZG
         hBVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792477099; x=1793081899;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=XAsGOIGfH/JxbAjnzlFqcJgkwSEZVDVRf2rQqbDcdDA=;
        b=oCM7HeULWkCFncINrSwaQCMjmPO5vqRf2FZ7vOYt2OXZj1T4ib+qElZGj1MrW+qHsp
         rt90o5o1ZOj21FmCMxKgI9lGG6igDTiL5H3I8b+GpOFOP2elYX/72n+SwEZZk80Tky+w
         jWvAXIiaG23zskF5uC/yQ1fOFiG9nlqhYX7+KhgMPUaDw5PVHSLSSEFhEHk5Pm4g8OPG
         i5HXBHW8fDFCMIfkahywHH+MYl8jSlHOwauUPP7yXrC+ORPxS4xJ2dkCa0+C2lLAkDl6
         4xsXvxxlkDCWawuJ1ddse0nYcFYK5CICVZ3rS5QLCE/CI3SZTYZX/H+6JEaJU8+HdRNV
         y+sg==
X-Forwarded-Encrypted: i=1; AKwUvBxvohZyVeWBOQ7QCiombRHenWxxYdRH7/YqqYRO7NdMqPGaB69kumEmcEJcuKaQQ26cOhAXX9ZO9cI=@lists.infradead.org
X-Gm-Message-State: AFq9FYLwE8McxrFTFPADKvZstRnDgkuOwAQDn55zAPGYqr8SolrOSkaD
	xbn+7JL9CpsVwVdrLOIndfdNZSvpPvjX8OjkVzImHet5swqS4/yEMDT/2i7qKI0jbT9ffkDVKyO
	8TUAsHkof9/cnIea6dFtmilX+esYaKpxhQcKUKY074h3K1gUEvuZ7108c8VW6FxVzIN0H
X-Gm-Gg: AYBFou0z0seBMZZEox3TIeBKd1jMbZKuXLIsM8EzorFKf5EuwqRi1cmAe/omU1zu2AP
	Gx3vZFbHx2VSpBJ5Qj5uFTxYp6GUhK/o6/oe6k1EIIuhiFji3XcwJZrMcsOh+OJm2N7IGSBDbNO
	zPd6LnhNSsfpNFO+mcyLqXeTrjB4ViT5ILMHyGsMdO7Voe7djAA+gKuRFTJqFdTq2PsXwS4V4uH
	PZeW04O421DZlDeTjNr2J23J/S6Ux0D/ogJbKzA+B2XCr6JCkAGRAkKkwe6g8u90mv9NpPUpNRf
	Xnqj2gyOoYXzjnqQnN33YAOoxe3ie/TAe5OjfdvDxxfvKZ3k7dqybP8gmmagx8UyEzvgF3/h1QU
	x5TsbfXKldkzRS9kr2dnmqGw4zLNOmJ6rnjVuRYwfwkcpaaeE
X-Received: by 2002:a05:701b:4518:20b0:163:d97f:96f3 with SMTP id a92af1059eb24-1850ce9e858mr13860673c88.4.1792477098629;
        Mon, 19 Oct 2026 23:18:18 -0700 (PDT)
X-Received: by 2002:a05:701b:4518:20b0:163:d97f:96f3 with SMTP id a92af1059eb24-1850ce9e858mr13860632c88.4.1792477097963;
        Mon, 19 Oct 2026 23:18:17 -0700 (PDT)
Received: from hu-petche-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1831ca95700sm33197858c88.23.2026.10.19.23.18.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Oct 2026 23:18:17 -0700 (PDT)
From: Peter Chen <peter.chen@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Elson Serrao <elson.serrao@oss.qualcomm.com>,
        Ronak Raheja <ronak.raheja@oss.qualcomm.com>,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Udipto Goswami <udipto.goswami@oss.qualcomm.com>,
        Jack Pham <jack.pham@oss.qualcomm.com>,
        Pratham Pratap <pratham.pratap@oss.qualcomm.com>,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, Peter Chen <peter.chen@oss.qualcomm.com>
Subject: [PATCH 1/1] phy: qualcomm: m31-eusb2: Add register XCFGI_159_152 for SE0 recovery
Date: Mon, 19 Oct 2026 23:18:11 -0700
Message-ID: <20261020061811.3127511-1-peter.chen@oss.qualcomm.com>
X-Mailer: git-send-email 2.43.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: _MCU6s02hbY5iok4os_hhkx8lrlFTX4f
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDIwMDAyNCBTYWx0ZWRfX/wdmxNomUVlo
 77tT2jTafWOSJMt82qyDD42wqMm1fPkmxkdBdf20NQLrnpO+CG0D9OKVkBUd1wGJW+6BxRbbmIV
 5dfMQItOd8xfdcKs/m3PTWC0GZj+UqtMNKYLAOEXZ8uzxgRAi+KkUik+ppMMx/7ARd03A8+ZKOi
 btC05EWI5xazsu3lGIExScIl3jrE6jMqHJhnp4770tbEa6xRt3Y9Nxc2GcBiJZ0JTREZiCBZXxs
 IWPscG3cxJkdiCugqbGGJF8sGPnzrjRmuVDmkqbOs3urfTM9aSQawJy9oU1GxEFsofkyhJoylcJ
 zAibEtsxHVwrWKjJbdnWB8rCNbhAXmHvTHSKr67xDDVq8w1FDPeBTO7+BztW7u9+sc3TMIIVB1s
 kW1/EaVt79Dafzg/Eu2YVwiRM/2D4aEzdds2o3pV9KflYmoZ0tWOWL7ZeIZ0/90672wRTMahZWT
 zbRZtUoTlcQRoBkGWBA==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDIwMDAyNCBTYWx0ZWRfX441S2RzATZUI
 4eJc1NN2OoH0NoXZhaJx12GH6SadU9hckKYEt/uzwhMqepAdTWkBK7dZDKCOS3mpNNxlUw8I4sw
 7mhH0rPJZoqdw5Jf4wSnyFBfjtgpWIg=
X-Authority-Analysis: v=2.4 cv=VI9IDNPX c=1 sm=1 tr=0 ts=6ad707ab cx=c_pps
 a=kVLUcbK0zfr7ocalXnG1qA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22 a=EUspDBNiAAAA:8
 a=fkmqLtjFOitS6APqvyEA:9 a=vr4QvYf-bLy2KjpDp97w:22
X-Proofpoint-GUID: _MCU6s02hbY5iok4os_hhkx8lrlFTX4f
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-20_01,2026-10-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 adultscore=0 lowpriorityscore=0 spamscore=0
 malwarescore=0 clxscore=1011 priorityscore=1501 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610200024
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261019_231820_534954_FF86A471 
X-CRM114-Status: GOOD (  14.59  )
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
X-Spam-Status: No, score=-17.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From: Elson Serrao <elson.serrao@oss.qualcomm.com>

This patch introduces support for the XCFGI_159_152 register to enable a
hardware-based SE0 recovery mechanism in the M31 PHY when operating in
host mode.

During PHY initialization, spurious pulses from external devices can
interfere with speed negotiation, potentially leading to abnormal
behavior. To mitigate this, the M31 PHY provides a fail-safe mechanism
controlled by bit 159 of the XCFGI register.

When XCFG_SE0_TIMEOUT_EN (bit 159) is set, a hardware counter is
activated to monitor the SE0 state. If SE0 persists for more than 2.5 ms
before entering L0 mode, the PHY interprets this as bus inactivity and
resets the state machine to its default state. After transitioning to
L0, the PHY resumes normal operation in accordance with the eUSB
specification.

Signed-off-by: Elson Serrao <elson.serrao@oss.qualcomm.com>
Signed-off-by: Peter Chen <peter.chen@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-m31-eusb2.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c b/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
index 275df38256de..8d954e772585 100644
--- a/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
+++ b/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
@@ -56,6 +56,9 @@
 #define USB_PHY_XCFGI_7_0		(0x15c)
 #define PLL_LOCK_TIME			GENMASK(1, 0)
 
+#define USB_PHY_XCFGI_159_152		(0x1a8)
+#define SE0_TIMEOUT_EN			BIT(7)
+
 #define M31_EUSB_PHY_INIT_CFG(o, b, v)	\
 {				\
 	.off = o,		\
@@ -88,6 +91,13 @@ static const struct m31_phy_tbl_entry m31_eusb2_setup_tbl[] = {
 };
 
 static const struct m31_phy_tbl_entry m31_eusb_phy_override_tbl[] = {
+	/*
+	 * Set XCFGI[159] to enable SE0 timeout mechanism in M31.
+	 * This enables a counter which will assume bus inactive if
+	 * SE0 is more than 2.5ms and reset the state machine to default
+	 * state.
+	 */
+	M31_EUSB_PHY_INIT_CFG(USB_PHY_XCFGI_159_152, SE0_TIMEOUT_EN, 1),
 	M31_EUSB_PHY_INIT_CFG(USB_PHY_XCFGI_39_32, HSTX_PE, 0),
 	M31_EUSB_PHY_INIT_CFG(USB_PHY_XCFGI_71_64, HSTX_SWING, 7),
 	M31_EUSB_PHY_INIT_CFG(USB_PHY_XCFGI_31_24, HSTX_SLEW, 0),
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
