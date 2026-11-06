Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAC10606D80A
	for <linux-phy@archiver.kernel.org>; Fri,  6 Nov 2026 08:27:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=LhTlHQsq;
	dkim=temperror header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=E5z0jlUu;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=Xioa0FVk
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Rgv/KTwqk/VFjJh4kybToTgvxQgyLym+Eu69qfelI4E=; b=LhTlHQsqEK64WU9e553Dsp2Go4
	uQCKQgDfejiNKjKmMDmqwWAn1Cbeu+PvuhYJ2ITUauzVwy0rRGGdPX/fZUB3fBDj8FPp80yNBiw8h
	ya8lT3Q9VEhxG/zo5K3v4iRplkVzyX5wJZmaZQDIun3ve2JzZhKKSS832TtR+JWyeLi1oo+VlW/Zj
	XsG0B19hin6DJh3s/MimQxAVyCLudSNkoqspsQa9sPS/jTxzZJWV0FN2AgwB/ZVMiqRqDTCOM2tcr
	Sd0lqBW8Kj+oegJHY/cfetnAipITt22TtrlBHAcOQIWlDCA8M42BsDVqXOxtzwgN7EWuny15cY68R
	pbq/Di0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPFIe-0000000BYZb-2fJm;
	Fri, 06 Nov 2026 08:27:52 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPFIX-0000000BYUq-38hD
	for linux-phy@lists.infradead.org;
	Fri, 06 Nov 2026 08:27:51 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6A67RTPT2730737
	for <linux-phy@lists.infradead.org>; Fri, 6 Nov 2026 08:27:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=9tk+I4vZOr9
	XanR7g9lQ0IcR5uGKfPMbK/eELVN/uXM=; b=E5z0jlUuI84O/9TmJuPY8MefdF+
	ncOvlz9BVDgebFROOGx4/yn5ZcGe+YXewiUd/VCnYAS/v2sCHOP1pln2r7FQXNgJ
	fu5XF/4Vq9Pa8lMbhGpAUwFlxoU7QDULMx5ehsChvwbtVfOYUBWVp43qfL/9yCkq
	fBT7ArP1Vu/yMdjY+eUceDAG8vXkp82QwOZrPyuWJf/zWJc4wINevAACZiMfjCe/
	fsc5Z/2tM91xR1kAxjnoKR13HI82vgqwiLhK08ulH3ZbXGeB+RYLexXTbyBpeBRs
	hxeB89qBvAmH92WSPpH0RD0hAtdPvLIZu7JZS2lqnw9ZU1wbitewLY2swAw==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hs3p9htyx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 06 Nov 2026 08:27:43 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-3b0a3ee64bbso941223a91.1
        for <linux-phy@lists.infradead.org>; Fri, 06 Nov 2026 00:27:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793953662; x=1794558462; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=9tk+I4vZOr9XanR7g9lQ0IcR5uGKfPMbK/eELVN/uXM=;
        b=Xioa0FVkbuuowSTiMGxZuvyUUZWUvfN4/v2nNdHGYdtqs3bwjVh+ed1F+vIsMKMGYM
         xGJtFiE9dgVoSgNUGUktPf+/DVl5EYb+VB9Z6sj7RySq3fIDIq/qsBUnZdQfe9umAbK9
         vIN8ll/zPK4/j17n1V04PVkD9v6AEs7syHzwQObUKcvFiIiFQZ+Qz8t4c8xtnr5t0hit
         By1r07zwVxAkKmC7Rm7wYpo32DNKF6a1IXFi8m6Oc1qayKdY/ykTsItHr92nKaIrps80
         M/93H/0DwSwB6EBEh7PKpu635h9cl3haa4oaaApmUfimKo3aFdy61fYJwI+3ERMHY5QE
         8mAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793953662; x=1794558462;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=9tk+I4vZOr9XanR7g9lQ0IcR5uGKfPMbK/eELVN/uXM=;
        b=q9ice0bQfPu4+UOYaXSASt5acpMRT3bi5Yr7OTafowzeb+R1FLwFQC49WLNsWLwMmz
         3w16XL7E/4D8RcNOEN57e8umIAlAJTcxuYyLcGpnO4D+2rh5pV8s+72hUPAlKilUMdIC
         3kANhuHXNTrjuj2MI1sb0KticKlKijvn/5DoiOlJYush7xYR7GsFyCH3jtW0UIAqwBg/
         Nf/jmXzqugoX8dotXMeNZbCAzP6rJo5/Y3dZP1Y/UGZIJnX5adPUcOpUR40g7T3g1296
         4Kw/1ajUzJWo9kzUBjwL2NZViyvB/5dKFPxN4vsaxkO9v6ArlMVYGx/vSlcc9gIwrW/X
         /ggg==
X-Forwarded-Encrypted: i=1; AL+hErE5VU4XpGNa99Mg2qvtRjci4Ga8ptAteqnajh8H92Pg1UWa+r4zPwV4GBXuSIDqad2Lu8tQ8IAZiyw=@lists.infradead.org
X-Gm-Message-State: APuU4Z9BtaUPi2PKHQChqiW5nrWA2pERvly5O3cf8EAqCryHGVMOUDAc
	Ue9YYj0g4ipvm/uO6PnD7sUrhWBqrcaz7/SXQbwSy+EcEiHMcx4SEts8aYUme3rB4Yw0vnA9NCM
	Oz2AZnVgQY0Xai7ifzz5nkU9roIrxe6bMwsNJyqccPjN2Ha4LQG9wSzyMFRnNegq2+C00
X-Gm-Gg: AYBFou35DKC3UkCbC7t306jzbzlEx+MKUVIVDT80ogqD37rTORouDf2YdqkmKT/wUS2
	7sBO+uTQPdbD8HmN3+nqXe+4T8/9iwvmWeX2G2cUnpNv317iLQS9szxTkPboKiilPM0vOYM43vE
	o1a9vnjVIJ62HQSLvwtq0d4mU/g4Joc7S8Lkqi/MIK8rzSvdBdCpVvCl4dj93e/0oQwI27cwd2n
	B2fV9sBAaGB5FouuSd23QPRIqzq0GAJW6bA+B3e/P3LwgSbz58UjR7C+nda6ualclhy3PptPrex
	bKJ6Ll6yleSRMyaCumxlY8fbPlrqSg3rGtNdK7NuHWFq/ZVeiXPfp0Z00IbUdg75sUn6Y/JeBOk
	uwN8ieZVWJY4HHAq8y1ztyEcr43BSAN4ske4o9r7+Q98GrO+Ucx+dUzw+VjE97G5eeJiGCktcCk
	a0pA==
X-Received: by 2002:a17:90b:52cf:b0:3b0:ae41:2706 with SMTP id 98e67ed59e1d1-3b0db5f60efmr1936184a91.4.1793953662479;
        Fri, 06 Nov 2026 00:27:42 -0800 (PST)
X-Received: by 2002:a17:90b:52cf:b0:3b0:ae41:2706 with SMTP id 98e67ed59e1d1-3b0db5f60efmr1936132a91.4.1793953661802;
        Fri, 06 Nov 2026 00:27:41 -0800 (PST)
Received: from hu-taparana-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3b0d7c42a72sm2433951a91.3.2026.11.06.00.27.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Nov 2026 00:27:41 -0800 (PST)
From: Tapas Rana <tapas.rana@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Esteban Urrutia <esteuwu@proton.me>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Ronak Raheja <ronak.raheja@oss.qualcomm.com>,
        Faisal Hassan <faisal.hassan@oss.qualcomm.com>,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        prashanth.k@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org, Tapas Rana <tapas.rana@oss.qualcomm.com>
Subject: [PATCH 3/3] usb: dwc3: qcom: pass live SS-link state into PHY at suspend entry
Date: Fri,  6 Nov 2026 13:57:16 +0530
Message-ID: <20261106082716.128968-4-tapas.rana@oss.qualcomm.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261106082716.128968-1-tapas.rana@oss.qualcomm.com>
References: <20261106082716.128968-1-tapas.rana@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: Y5cjnLs2nChUR4ssmUa68i7AjF_Iq1ie
X-Proofpoint-GUID: Y5cjnLs2nChUR4ssmUa68i7AjF_Iq1ie
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTA2MDAzMyBTYWx0ZWRfXxiaECf7CkY6i
 eYLB0D8OHKj7AcbW5KMgf4k3wo4l4E8bMXjmZJ8vsKG6LJ3D83+ELgh8l0I3BrTC3iYwYSg5VaL
 ohiE4o0w9V2mHPIyIznmTz7ft68XjKc=
X-Authority-Analysis: v=2.4 cv=XvNvqlF9 c=1 sm=1 tr=0 ts=6aed8f7f cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22 a=EUspDBNiAAAA:8
 a=qBW0Ez0WUtIADFg3DaYA:9 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTA2MDAzMyBTYWx0ZWRfXzXpkoC8woDgT
 4nskInustAWBo+cdVHfuMYn2WRVLSH0d9Cz7O+/y5AaLkDWtd+8APSB+GOZ0aq7x/p3V8u7pBX0
 Gwtt1Cak0HtdjsefBcOCfrz1h7CCYiCd1IUW2J/U/X/6sK0m/6nqyNmNbZaBznlCzj9/u+FkgPt
 U3qPXvKSda9L24Ai0tdH+pENmDuVlWRAsjTIRKyC10mwp4PaLvxWvnst5WGCyES7Fz7y7JIfKcr
 TtKpS6qM0n/cAvmyDcoRmiIO2ZCHasg8FUpGrrCPqzNzHcjYp7BXvzX3RQgdAbC2EIWp7KAG5V0
 KoqEcYjX/rps5akbOZxflQTqYigoKtvGEfMP2ic1yNbJbRcHhplpV+9jD5oBiBZ7JQUKWUF8GuP
 n5747KO5Bc0QrOQIB0ktEbyCbpvfLciKVZd2UATmBhVUX8zVIo40HslJOey9UXA5KTqSe44K8Bq
 Bs2pWI54/qtkhAhozVg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-06_02,2026-11-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 adultscore=0 malwarescore=0 impostorscore=0
 phishscore=0 spamscore=0 lowpriorityscore=0 bulkscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611060033
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261106_002745_818280_A601ACAE 
X-CRM114-Status: GOOD (  16.94  )
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

dwc3_qcom_suspend() puts each host port into autonomous/wake mode
without ever telling the PHY whether a SuperSpeed device is currently
attached. qmp_combo_enable_autonomous_mode(), made SS-aware in the
previous patch, therefore has no live signal to act on and always
sees QCOM_USB_SS_UNKNOWN, falling back to the legacy receiver-detect
mask regardless of actual link state.

Add dwc3_qcom_read_ss_state() to check each port's USB3 roothub for
an attached child device running at SuperSpeed or above, and pass the
result as the submode argument of phy_set_mode_ext() so the PHY can
select LFPS detection when appropriate.

Signed-off-by: Tapas Rana <tapas.rana@oss.qualcomm.com>
---
 drivers/usb/dwc3/dwc3-qcom.c | 36 +++++++++++++++++++++++++++++++++++-
 1 file changed, 35 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/dwc3/dwc3-qcom.c b/drivers/usb/dwc3/dwc3-qcom.c
index ac68b4218b56..d4ba095e47eb 100644
--- a/drivers/usb/dwc3/dwc3-qcom.c
+++ b/drivers/usb/dwc3/dwc3-qcom.c
@@ -19,6 +19,7 @@
 #include <linux/iopoll.h>
 #include <linux/usb/hcd.h>
 #include <linux/usb.h>
+#include <linux/phy/phy-qcom-qmp-usb-ss.h>
 #include "core.h"
 #include "glue.h"
 
@@ -66,6 +67,7 @@ struct dwc3_qcom_port {
 	int			dm_hs_phy_irq;
 	int			ss_phy_irq;
 	enum usb_device_speed	usb2_speed;
+	enum qcom_usb_ss_state  ss_state;
 };
 
 struct dwc3_qcom {
@@ -251,6 +253,34 @@ static enum usb_device_speed dwc3_qcom_read_usb2_speed(struct dwc3_qcom *qcom, i
 	return udev->speed;
 }
 
+static enum qcom_usb_ss_state dwc3_qcom_read_ss_state(struct dwc3_qcom *qcom, int port_index)
+{
+	struct usb_device *udev;
+	struct usb_hcd __maybe_unused *hcd, *usb3_hcd;
+	struct dwc3 *dwc = &qcom->dwc;
+
+	/*
+	 * FIXME: Fix this layering violation.
+	 */
+	hcd = platform_get_drvdata(dwc->xhci);
+	if (!hcd)
+		return QCOM_USB_SS_ABSENT;
+
+#ifdef CONFIG_USB
+	usb3_hcd = hcd->shared_hcd ? hcd->shared_hcd : hcd;
+	if (!usb3_hcd->self.root_hub)
+		return QCOM_USB_SS_ABSENT;
+
+	udev = usb_hub_find_child(usb3_hcd->self.root_hub, port_index + 1);
+#else
+	udev = NULL;
+#endif
+	if (!udev)
+		return QCOM_USB_SS_ABSENT;
+
+	return udev->speed >= USB_SPEED_SUPER ? QCOM_USB_SS_PRESENT : QCOM_USB_SS_ABSENT;
+}
+
 static void dwc3_qcom_enable_wakeup_irq(int irq, unsigned int polarity)
 {
 	if (!irq)
@@ -359,8 +389,12 @@ static int dwc3_qcom_suspend(struct dwc3_qcom *qcom, bool wakeup)
 	 * freezable workqueue.
 	 */
 	if (dwc3_qcom_is_host(qcom) && wakeup) {
-		for (i = 0; i < qcom->num_ports; i++)
+		for (i = 0; i < qcom->num_ports; i++) {
 			qcom->ports[i].usb2_speed = dwc3_qcom_read_usb2_speed(qcom, i);
+			qcom->ports[i].ss_state = dwc3_qcom_read_ss_state(qcom, i);
+			phy_set_mode_ext(qcom->dwc.usb3_generic_phy[i], PHY_MODE_USB_HOST,
+					 qcom->ports[i].ss_state);
+		}
 		dwc3_qcom_enable_interrupts(qcom);
 	}
 
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
