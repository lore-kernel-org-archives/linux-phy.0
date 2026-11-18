Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE30B606A339
	for <linux-phy@archiver.kernel.org>; Wed, 18 Nov 2026 14:34:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=2hngAtr5;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=WPUPpxr3;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=akwUeGN0
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=g+HMsUTMe5VHBH3C0PjpSlEPfVLzYge6h26U9ac1dd8=; b=2hngAtr5is3OxVdclgGNuAjfIf
	Xh++H1rCOr8leDkFfOaUT4g+x2KoP9nmaCbv+FDwVndpeIQz8Nqjta7dXsbX4GKIkPe8matzLiOL1
	8ndpB6X9Rn1bCxTrGsnEbTspPAp89tkVSDM7YcvsA/S2Jp8VVSX/CxUgNjkjbC2RnwOG4I8oP7Vz4
	Sneb3gd2kWoz+9Pm+frBJGAyjnS6MwAofI6x4W8GScDMLVefoBw18PV0gUNd/Ka8C/pwF8EY9wskO
	t0/P0iVP42ZuYIbY781GxDYgUEO0WaC7MHOlCgshclLjR6BdcyaiLCa23f6cqGPxPytv1u5WlY+0G
	8TeWKl0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTgjo-000000097jW-32N8;
	Wed, 18 Nov 2026 14:34:16 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTgjm-000000097iu-3t2k
	for linux-phy@lists.infradead.org;
	Wed, 18 Nov 2026 14:34:16 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AIDQ9xC4072748
	for <linux-phy@lists.infradead.org>; Wed, 18 Nov 2026 14:34:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=haPwdd7A48YpDgke39xoby/moRx8yUA2nSI
	3P8bc7KM=; b=WPUPpxr3uQL+rRWpzEY7sSkIS710GUkyTcc8ApwZZ639QTSYTck
	ErtIYqdtzVAahItynOuZD+UwokgG/nQUldGvvA0tRJTi8Efleyt3a9PRdEHDJY76
	tTkSabUHUtcKrhi8KyF2jyP/qBDQ+PW9vNSaRReBFz8ST3aqTb83kJmxvHcJqNiO
	r/4eh0uaA+RQIcq//7mDeumIBdhwk24rLg9ymuCG1oqVBTyCn3VdFYb1ooPw9gZF
	IrgF6piCE1rCpcLEPCrQ3vZbc8IFmw1DYJO8AZ/PNMjdRalZ0LhSqIAWrT4Hx5v+
	nEdasrlzWs6Q/Pt152SRwLKV2O+6fZOt30w==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4j0yv73h72-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 18 Nov 2026 14:34:13 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2eaf3f829b3so9748915ad.3
        for <linux-phy@lists.infradead.org>; Wed, 18 Nov 2026 06:34:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1795012453; x=1795617253; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=haPwdd7A48YpDgke39xoby/moRx8yUA2nSI3P8bc7KM=;
        b=akwUeGN0d0fRzyPVmrRDVj20Bcv1kicVlNKGx0TWRT26Got1F82nY5S0men1w8dnF1
         n2WBS24kkY9SfTAItMf6Pvucgu2v0MxVry6CDS8KptrhbUPquoQ7AZ7wZx4Zc7pJisSN
         sDsfSp82K7zUQq0W0LxvfANJwz2Gijmis8xKGxx/bFTrjZjoHeY//uakOAkLRbF+1m0J
         BOWC28x1mnrIhq8qQVB9NWKoOywbFxr18jIqhUho5TJeTXnI73ag9uN2xbLe+F/6NaHm
         Wrr7wB91eTj8kt6jab5M07Uixk3uK93zadyzQpw7yqMAVH25BAMHIciGh2e27tHV9SgC
         Ybpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795012453; x=1795617253;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=haPwdd7A48YpDgke39xoby/moRx8yUA2nSI3P8bc7KM=;
        b=isAN14tAUGrpOCdjXKi5u2gcLQOfbs254aNSGZLsriU5DdgCIJiO8viP/Q12PCPjuy
         lk+nAGvrO9C+nM9FstVMsp5EQ/HZ9NbWXvQsLrvkZx2jriWf/peQWmkDPxyhed4BzyUt
         65+BMCafvTVIwfofiZxFBkYBc3vf6MjE5HzXkVwSAaR/5Shy6oIxlakIcjHOBdwEsYd7
         9KZYhurWzLi1D59bYfzPEx5xVcA+F7Hp0Maa770wf5PvSDeBlxqQPg37N7cv4J4liptY
         IVvov5l72oU6rVE7KnAvoAFkBAJ9t4sD+SlkVekMnainVlQTikflqz7CdbGUtjUC+U3L
         n82Q==
X-Forwarded-Encrypted: i=1; AL+hErELXBSF7sfvA0SUAStRtqUgd31o5aFRXP2CDoKUCGCG646HjcCyeE72yr2gNTDIwvp3uSRQDIgCOZc=@lists.infradead.org
X-Gm-Message-State: APuU4Z9wtnx9CsEbGbkxXzUUJdtzTT0Q995mP034erIIS6fu3ef3Q7Tw
	zM0n93UHjGbXF6GhFkmoQ214orGw3GmMifK1ATlXWWdgIwpS0tR1DsHeEbvC9jHt5Sl0M65XGBa
	0neneHJEPWXGhIi8eVh7drLqc/oDQaLoCVp990tJJQkXzpdICr5XrYLWyevlGepwa995o
X-Gm-Gg: AZFdTZcOic/g61LooYvz7o6w05bczNb4jHm07xUiIDXoh1Ugie3Cha0mKhS41SLQS0s
	IZhmmREXWj9fwm8vIUY93+9+ds0+h9uYo7XVHjlu2x7+5PAQytRXrFnXMuaMXGSFfY2s9jP8C1d
	b+mj1L7VPrR3aFErLAytoZrmXtpKG3mDAchjd4dsNp/boWmHajSR7CLa+J1xs/VEfS8ZKHMeRZN
	7bpsaj7pLihGgevteci9arnLL0oX645i1yVHSzKm61t/PaZ5z8d5a/qyHRPtKeUO+QrRyrZfb+P
	JXRQ3PaUfqT0Jy1/g9bkgwgljGleMj3a+UgAFQBiDf3cG6CmzCv57xyvH4DeTn85AmOXpORU+Ad
	fHEOrnQBbgdYGNTSAnFk8sZoRFInYEBvGGp5LdK9bp9BpduoB9gljHLd6UxVOtMBTWewtQKL8uz
	+jIQ==
X-Received: by 2002:a17:903:2303:b0:2ed:391c:1de1 with SMTP id d9443c01a7336-2eff7100c4fmr28398775ad.1.1795012452809;
        Wed, 18 Nov 2026 06:34:12 -0800 (PST)
X-Received: by 2002:a17:903:2303:b0:2ed:391c:1de1 with SMTP id d9443c01a7336-2eff7100c4fmr28398475ad.1.1795012452346;
        Wed, 18 Nov 2026 06:34:12 -0800 (PST)
Received: from hu-taparana-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2eff5ed0d2esm15326095ad.10.2026.11.18.06.34.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Nov 2026 06:34:11 -0800 (PST)
From: Tapas Rana <tapas.rana@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Elson Serrao <elson.serrao@oss.qualcomm.com>,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Prashanth K <prashanth.k@oss.qualcomm.com>,
        linux-phy@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, Tapas Rana <tapas.rana@oss.qualcomm.com>
Subject: [PATCH] phy: qcom: m31-eusb2: Add register XCFGI_199_192 for HS disconnect mask
Date: Wed, 18 Nov 2026 20:04:05 +0530
Message-ID: <20261118143406.2351999-1-tapas.rana@oss.qualcomm.com>
X-Mailer: git-send-email 2.43.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Proofpoint-GUID: C6TaLYdW57W7_VjI_sjW6yNO2Czuyyb7
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTE4MDA1NyBTYWx0ZWRfX3olH05I0U6y6
 A2voVXmry9YQ1bXRTqenjl2TRiTfGCI0DcxKh6jaRiP4qIsZV0rFZGzY+e0VlN62sq3m2HcLK/D
 PgYUgeKOfRzWA/hsvpG+oRj6Wp2MKHDVvtHxsZUBO+HRcG8sPtcS7Hk4w0f8/HdaMhgWRfsIDdR
 mRWXD6GoDKaML+QNB5TdCj5/cy8BGF2bbF67XQ2n+4dtse9xYQjldafTfeZLcVKLjSvMsqxfZPw
 A6vhK71eVS7L4k2rJxR12QjY01weyZKAvkLVGGfUtLX209NZXTQ5cQkR1DBrmCzyqcEvpf1Z0fE
 IrhcTuoaObC5FsbMNrjucaWCf5FblcQwk8nw1+1AqUUg0OzOEwPKgTQ3mMeOUgugI80gatBAqQV
 emtoE0SxjtOkEUXR9Z/N5Ap84zvnOVgb0IfeuuHcwn4cmvr8R3OmlFfClpZqTTDFREgYSMps2ki
 2BvKpyn7sU3s7JDaUIA==
X-Proofpoint-ORIG-GUID: C6TaLYdW57W7_VjI_sjW6yNO2Czuyyb7
X-Authority-Analysis: v=2.4 cv=H8xOUOYi c=1 sm=1 tr=0 ts=6afdb765 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=EUspDBNiAAAA:8
 a=LxLwC_4Rt_vGV6uIXdcA:9 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTE4MDA1NyBTYWx0ZWRfX/eSscmcHB8tO
 5fCJO/VDPSoQvN49289GOQn6lDBuROfVFy8I7ARmmBqNBKol6/sObmzBeLN51Du9WNNoTu2rVyE
 R0Iv83YoAD6DU305mMYf276Z/PX8qMA=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-18_04,2026-11-16_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 suspectscore=0 impostorscore=0 spamscore=0
 bulkscore=0 clxscore=1015 adultscore=0 lowpriorityscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611180057
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261118_063414_973773_3CD97838 
X-CRM114-Status: GOOD (  16.07  )
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

In USB 2.0 High-Speed, a device disconnect is detected by the host PHY's
analog HS disconnect envelope detector: it watches the differential line
amplitude and flags a disconnect when the amplitude exceeds a threshold
during the bus idle/EOP window (a disconnected cable reflects the host's
own drive back, roughly doubling the observed amplitude).

While the host itself is transmitting, the line is already driven hard,
and trace reflections / signal-integrity overshoot can momentarily push
the measured amplitude above that threshold even though the device is
still attached. With the detector honoured during TX, the M31 PHY latches
a spurious HS disconnect mid-transfer, showing up as false
disconnect/reconnect events, re-enumeration and transfer stalls under
host-TX-heavy load (e.g. bulk OUT to mass storage). The failure is
signal-integrity dependent, so it is intermittent and board/cable
specific.

Program the XCFGI_199_192 register to set XCFG_HS_DISCONNECT_EN_TX
(bit 196), which makes the PHY ignore the host disconnect status while in
TX mode; disconnect detection continues to work normally when the host is
not transmitting, which is when a real disconnect must be observed. This
register was not programmed previously, leaving the envelope detector
active during TX. Add this bit to the reset sequence to suppress the
spurious TX-time disconnects.

Fixes: 9c8504861cc4 ("phy: qcom: Add M31 based eUSB2 PHY driver")
Signed-off-by: Tapas Rana <tapas.rana@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-m31-eusb2.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c b/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
index 275df38256de..4e7ea41720d7 100644
--- a/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
+++ b/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
@@ -56,6 +56,9 @@
 #define USB_PHY_XCFGI_7_0		(0x15c)
 #define PLL_LOCK_TIME			GENMASK(1, 0)
 
+#define USB_PHY_XCFGI_199_192		(0x1bc)
+#define HS_DISCONNECT_EN_TX		BIT(4)
+
 #define M31_EUSB_PHY_INIT_CFG(o, b, v)	\
 {				\
 	.off = o,		\
@@ -100,6 +103,15 @@ static const struct m31_phy_tbl_entry m31_eusb_phy_reset_tbl[] = {
 	M31_EUSB_PHY_INIT_CFG(USB_PHY_UTMI_CTRL0, SLEEPM, 1),
 	M31_EUSB_PHY_INIT_CFG(USB_PHY_HS_PHY_CTRL_COMMON0, SIDDQ_SEL, 1),
 	M31_EUSB_PHY_INIT_CFG(USB_PHY_HS_PHY_CTRL_COMMON0, SIDDQ, 0),
+	/*
+	 * Set XCFGI[196] to make M31 ignore the HS disconnect status
+	 * while the host is transmitting. This prevents trace reflections
+	 * and signal-integrity overshoot during TX from being latched as a
+	 * spurious HS disconnect. Disconnect detection stays active while
+	 * the host is not transmitting, which is when a real disconnect
+	 * must be observed.
+	 */
+	M31_EUSB_PHY_INIT_CFG(USB_PHY_XCFGI_199_192, HS_DISCONNECT_EN_TX, 1),
 	M31_EUSB_PHY_INIT_CFG(USB_PHY_UTMI_CTRL5, POR, 0),
 	M31_EUSB_PHY_INIT_CFG(USB_PHY_HS_PHY_CTRL2, USB2_SUSPEND_N_SEL, 0),
 	M31_EUSB_PHY_INIT_CFG(USB_PHY_CFG0, UTMI_PHY_CMN_CTRL_OVERRIDE_EN, 0),
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
