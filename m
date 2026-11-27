Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA621606A31C
	for <linux-phy@archiver.kernel.org>; Fri, 27 Nov 2026 09:49:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=iwgJKQEQ;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=UP1Dhxiy;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=SmDXnwxe
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=FWopZ8vCY0JiromkgafXlFIR185F9HWs0TtX2bi8Ovg=; b=iwgJKQEQINhZjd4AheGQXwC6Ga
	MyCkpG8f+lgM/4Ns58IGYI0U0XHcq3gkd3+hAv8/KSkzX9ymBsopero8JQITV+x3yGtpYW0W3GzLM
	o0LhdUjVSMXtZC/qnqVPEcdjJKx5G/ZBszXO7RAMnWAZt6Tp6yfBY3mv/vE/NzjimC9eeVGMxs81l
	vw/wWVaxptIe756n/tZYYoMD6aocr2d3cm23FKJ81ZE+02D/oCs6BXmD467XN6xyE0e2Qs3EasJ/v
	ztR+ykr/M/8OQjk7/WRK/t9L7aYk5x4ppw29rKLtBqQKRh9pd5yJj9erP4jT5+POGLh7rLAUVRKNt
	dRynorHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWsaV-0000000FTrb-11LI;
	Fri, 27 Nov 2026 09:49:51 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWsaS-0000000FTrB-43F2
	for linux-phy@lists.infradead.org;
	Fri, 27 Nov 2026 09:49:50 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AR7GYYe1197409
	for <linux-phy@lists.infradead.org>; Fri, 27 Nov 2026 09:49:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=g/dVMNRTOWVJS2h58fwl51
	KhjKkHrbLZafbPNTqM9uc=; b=UP1Dhxiye4B2BdT7JAUE00JjbsZ4xmoBOUdQxG
	hzWLQiu9txzZVxf2lpatCtuEaeLzgdzTqQwnnbMMcpUEcaXzpPCi0JVIYLZV34Zi
	eQPjpzyZyFMVc1a+4Es7RL6O2nLgp6ejMHw2IJJtG3xgXShrrfO0ogsJ209NE0LC
	k+cY+RCPcIZ7vDHIvdvG77cl0htHxEsHK9jVne4tNheqxEJB6kSimESMXi5wLuWl
	6h3WljE7NGhsiOR1BOv0DY2gi9z048b3dZ04Ncj/EkxQlBVaGyQrpHmc4m4PrRTA
	zSh8zlOujp1+uqGsx4Z0Ff0qYvMh1009eR3Z9NuLoKRU0aNg==
Received: from mail-dy1-f200.google.com (mail-dy1-f200.google.com [74.125.82.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4j756k8mq9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 27 Nov 2026 09:49:47 +0000 (GMT)
Received: by mail-dy1-f200.google.com with SMTP id 5a478bee46e88-386a0f79047so8514845eec.1
        for <linux-phy@lists.infradead.org>; Fri, 27 Nov 2026 01:49:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1795772986; x=1796377786; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:content-type
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=g/dVMNRTOWVJS2h58fwl51KhjKkHrbLZafbPNTqM9uc=;
        b=SmDXnwxe9A3CiWxMrXd6aoM5fOe+ra6i69My4z707UX0q0RfLtoS2eHD5c5GqlrBNs
         47o8lyharzAGog6NsZaN1gwjuRQP0n0dSyvt9q5pusJYbrKQeCyyHCGpPen7UBtf+OcI
         GeqkwPi0KNBBggw1ic6SFd5ijWG3ZFVdU80FcPi0HBK4BueGJl41aiw2aaaNyAeAGvx8
         H99bjYN3nyOfYLmubhTxpjC4CDt8rVXuN8rVOa3ieOVxkYUDV4cAyPYzZ/mgcDl+r4h8
         bCgXbq4QUNiGIFlPJfdjK2p0JkbHSPp2hwftn3YBPhpRWzHQdnmZAzrcifJvvq8TLu88
         kH/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795772986; x=1796377786;
        h=cc:to:message-id:content-transfer-encoding:content-type
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=g/dVMNRTOWVJS2h58fwl51KhjKkHrbLZafbPNTqM9uc=;
        b=ptjRo2XrVF5iciz8lrcbURnc5VjA5irPkSsnByNg5UJgj+auSB43dPyhPW20IqEHzL
         UpN+82VGwp3zO5dADJr7xGVnQzdWmJv4pjZ37Q8B2+FffLDdqI+W3AdBd1LHiPBAes54
         apmoaPkeoGMRIJOzWz8vkw7vQK5WMOqylY8erRh25NSjPilhb8FeCBXpp3cqQzXrwyoH
         ApxQaBSv/h/aLaSM5w+uieas9OOq0RDCYpatlqFFvhVfSG4i03umXOvblqyECDjwAtE8
         YPGicMAl7z/m0Y8rqZIgn6eNZd5/rCTMGjNxSOBfXWR0vWBthw+yBO61w6/TH7UJNSiY
         TvHA==
X-Forwarded-Encrypted: i=1; AL+hErF5qkKLevFFJQeEX/msWCohUdqgSQvuJqGWNxQhPSCUg7U2B7LFPlSmv9EhxD76zwGQIAcIEKA0Q4I=@lists.infradead.org
X-Gm-Message-State: APuU4Z9DD1LATLeDqHNzU6I+XjPyk2+MS9WFfwtOCq9NNkqEsIU4OUaZ
	E5Gwuiv/Sf2dYaMI2+RRkxY1eOP/CPQdFkBy4v0KAyqbLoznJ06te5HhMBY+fGNj0clethKT/4C
	F06UDh6XuWgkkh+TiH84BvlImTUtO/T5co6sPQu9MqhLzvtZHJriQ9Ayx7URrLrwGGm+3
X-Gm-Gg: AZFdTZexx1ipzxcd/R22Vwmwb8E1BlVKjLK1AY9xGwvx2GJ2YllHfxAnIIlfzrlRvfu
	5rbWJ2dHDqWHiFkiW9rb8+ddhts1m3Za9BGupBrB95ohgJytIGrH/VWNvdgHvANFeC2M0LMKdJs
	mbDgst5CgEiPJQ3/NQxOn7JRydpeG0hE7bQZ2NgMDqEOwUiYe7yLQPN7lYGjg6795i3JEjdxJ1S
	qilfqpijR1q2SHvvT9xbvpMg658KoIL/5AVDrFXIb4xpS9MfiSPhyHGRQ15iD9k5CylfQ0qmGRG
	iEbEGJjpzUdar5yW/IHjtv4FrTHV7mVuRwz+SnoQiBbqDNxlnsxsN2VVNC68bOr+xaOqt/2wMl1
	brl+2m+R57JS+XmqiPPdJ35pNvPF3PK+RptqzxmWcPd0KoXQ1QzS6QNCuCagJuGESMPK2s/xCn7
	rU1X8FRGAiYgAcYg==
X-Received: by 2002:a05:7301:26:b0:37f:d740:51d7 with SMTP id 5a478bee46e88-38571b1308dmr24670084eec.41.1795772986497;
        Fri, 27 Nov 2026 01:49:46 -0800 (PST)
X-Received: by 2002:a05:7301:26:b0:37f:d740:51d7 with SMTP id 5a478bee46e88-38571b1308dmr24670067eec.41.1795772986018;
        Fri, 27 Nov 2026 01:49:46 -0800 (PST)
Received: from hu-hsreedha-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-38567ea2cc5sm65178723eec.29.2026.11.27.01.49.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Nov 2026 01:49:45 -0800 (PST)
From: Hariharan Sreedhar <hariharan.sreedhar@oss.qualcomm.com>
Date: Fri, 27 Nov 2026 15:19:40 +0530
Subject: [PATCH] phy: qcom: qmp-pcie: Fix missing shared
 vdda-phy-a/vdda-pll-a votes on Nord
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261127-nord_rc_fix-v1-1-2cddab95b91e@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIADNSCWsC/x2MQQqAIBAAvyJ7TkgPJn0lQkzX2ovGChGIf086z
 sBMg4pMWGEVDRgfqlTyADUJCJfPJ0qKg0HP2iilF5kLR8fBJXqltdbbdCBGb2AUN+PQ/23be/8
 AaHguuF0AAAA=
X-Change-ID: 20261127-nord_rc_fix-888a8fbeeda6
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Maxime Chevallier <maxime.chevallier@bootlin.com>,
        Shawn Guo <shengchao.guo@oss.qualcomm.com>,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        Hariharan Sreedhar <hariharan.sreedhar@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1795772982; l=2578;
 i=hariharan.sreedhar@oss.qualcomm.com; s=20261127; h=from:subject:message-id;
 bh=i3E5sBvhssKdtPLNwWnVHLoAWh3t7XDA7nSsvH84w8M=;
 b=pIYu8N2S6WQWDXwY8iAtxm/TQjS1WZ0sT640DDmji1Ad4y0AFY4BEZ1wyQ+DE2Bdk6oOB0KML
 OvxglYAX6y+D6x3ft9tn3MmXXixiENQiiwvcB2+Zz8AURSvQDDrDVV0
X-Developer-Key: i=hariharan.sreedhar@oss.qualcomm.com; a=ed25519;
 pk=IQIpQ+cgN/94LwyXI6ZP0PWPyUZmrnRMQYkbY4j7yhs=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTI3MDAzOCBTYWx0ZWRfX0BRYcL9JgN6S
 7dYSuhl4EBrxTW0sgMX9AFNBryrxHboNzeN2hNxf+fKZD8JmV9vT6cTJ6fMLVi9UAo0i5kQytOY
 2aBF1lf8zw9+uG40EKVGu3XmyLgurPy3o/XcAjFG0QDxSWQkzaSTXRFmZq3BfmGM6oS5xjEwj3o
 IrjNy+YiY05BqzcCl56cycZXhrn+kF6ynuKU1ED0EurohKHddISy0T7OO/VankLWJDQFdiUR53u
 F3crfEakfEJT9ECXFzJ7Q8z4nwmCf97VFvt0p3BRgbBDo5jGDJUiosn6aJitoJQUfqwSTTR3bYF
 SctWkAE3u2fO5q4L4l8rU4zmu3aU3n2TlHGgfeDBPsTqGXqmBPuQzBhqSeYOHrQvemJldwP9IYe
 cU1yMUYO/UPUCoRGa78Dot8ZHrVA8THjJQST6lOyff/rbJy2iB/7oZqdEvB/FiSRQzqIDurGees
 PZMs/WcxAcSHC5qX1Sg==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTI3MDAzOCBTYWx0ZWRfX6Y68Za/uDknE
 EI2SJkduHP1fMy244qEN+9PfZNO2xV+zr/a4Am/B6zXqEGvN4r1c+cittBjvyY9Cc6DfCZfCodC
 MmTcVivAUQKV97SYkCQUciPaUkGQdXY=
X-Authority-Analysis: v=2.4 cv=ebWo7LEH c=1 sm=1 tr=0 ts=6b09523b cx=c_pps
 a=PfFC4Oe2JQzmKTvty2cRDw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=N3CJI4e0y6JgIT0HOQYA:9 a=QEXdDO2ut3YA:10
 a=6Ab_bkdmUrQuMsNx7PHu:22
X-Proofpoint-GUID: fzEt0Vq_sxnQ4BuvRAAa-8DejAdqvIV1
X-Proofpoint-ORIG-GUID: fzEt0Vq_sxnQ4BuvRAAa-8DejAdqvIV1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-27_01,2026-11-26_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 priorityscore=1501 malwarescore=0 clxscore=1011
 lowpriorityscore=0 phishscore=0 adultscore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611270038
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261127_014949_146865_0AFDA834 
X-CRM114-Status: GOOD (  11.77  )
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

The regulator lists for port B, C, D, CD and BCD only contained the
per-lane vdda-phy-x/vdda-pll-x supplies and never included the shared
vdda-phy-a/vdda-pll-a rails that back the common PCS/common block.

When a board enables only ports B, C or D (or a combination that does
not include port A), the shared vdda-phy-a/vdda-pll-a regulators are
never voted. The PHY common block, which backs the DBI register
space, is therefore left improperly powered. Accessing the DBI
registers from that under-voted rail during suspend/resume crashes.

Add vdda-phy-a and vdda-pll-a to the port B/C/D/CD/BCD regulator
lists so the shared supply is always voted whenever any of these
ports is active.

Fixes: e397c8507e36 ("phy: qcom: qmp-pcie: Add Nord Gen5x16 PCIe multi-PHY support")
Signed-off-by: Hariharan Sreedhar <hariharan.sreedhar@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie-multiphy.c | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-multiphy.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-multiphy.c
index ccdb7748a9e1..90ff12faad0d 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-multiphy.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-multiphy.c
@@ -280,24 +280,25 @@ static const char * const nord_pciephy_port_a_vreg_l[] = {
 };
 
 static const char * const nord_pciephy_port_b_vreg_l[] = {
-	"vdda-phy-b", "vdda-pll-b",
+	"vdda-phy-a", "vdda-pll-a", "vdda-phy-b", "vdda-pll-b",
 };
 
 static const char * const nord_pciephy_port_c_vreg_l[] = {
-	"vdda-phy-c", "vdda-pll-c",
+	"vdda-phy-a", "vdda-pll-a", "vdda-phy-c", "vdda-pll-c",
 };
 
 static const char * const nord_pciephy_port_d_vreg_l[] = {
-	"vdda-phy-d", "vdda-pll-d",
+	"vdda-phy-a", "vdda-pll-a", "vdda-phy-d", "vdda-pll-d",
 };
 
 static const char * const nord_pciephy_port_cd_vreg_l[] = {
-	"vdda-phy-c", "vdda-pll-c", "vdda-phy-d", "vdda-pll-d",
+	"vdda-phy-a", "vdda-pll-a", "vdda-phy-c", "vdda-pll-c",
+	"vdda-phy-d", "vdda-pll-d",
 };
 
 static const char * const nord_pciephy_port_bcd_vreg_l[] = {
-	"vdda-phy-b", "vdda-pll-b", "vdda-phy-c", "vdda-pll-c",
-	"vdda-phy-d", "vdda-pll-d",
+	"vdda-phy-a", "vdda-pll-a", "vdda-phy-b", "vdda-pll-b",
+	"vdda-phy-c", "vdda-pll-c", "vdda-phy-d", "vdda-pll-d",
 };
 
 static const char * const nord_pciephy_port_abcd_vreg_l[] = {

---
base-commit: 9437ee8b6cf607e883b36e44bd755968daaebd48
change-id: 20261127-nord_rc_fix-888a8fbeeda6

Best regards,
-- 
Hariharan Sreedhar <hariharan.sreedhar@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
