Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80ECCC88E65
	for <linux-phy@archiver.kernel.org>; Sun, 13 Sep 2026 14:41:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5Xv9UBorhEyzpojEjRpKyBAQfjyR3iBaXXnDqD/EF/4=; b=4xMpGHdaIddisu
	Su2NyspvBoNVxri1YsoixDsyCe/6D9FX/wBVIAHYHY2UpsBW8BTor4JBQo43Ym6rG1IRd5BY1NQtU
	SIwpGo/wkMPVc0ZkYjTDAvSgvBXe7UCaR0eHXPYmX73gl8RFxCcQYf9esMa6aunIJj9L5OTjccWCU
	otThC6marYYYXfj+B04Hw8fhuRCcf2ZRghqUrox5VweGmgqoJ/Dq/rD6n3s3x+c3x2WiqDiudJv90
	TgdeIGqfg6dxvc3yVt1q87n/xELg1LziDo6IL8SJ/Jz4GW++R5XnXsDvpXNVVbM1yyrov5mDNZYig
	2y/FUhY9xS2Jq5bmumIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5lOE-00000001ifO-1KjG;
	Sun, 13 Sep 2026 14:41:06 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5lOC-00000001ieY-1Q6X
	for linux-phy@lists.infradead.org;
	Sun, 13 Sep 2026 14:41:05 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68DE011g3039826
	for <linux-phy@lists.infradead.org>; Sun, 13 Sep 2026 14:41:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	WADuGXO2aoMe0sj7AUt3ZiPoX2ZXMtN/W8/YvHMCyFc=; b=BkQTaJdVMzXzaTgO
	KfiKVTg9uvkbTmRyXTZU2ckmy2yLfjAl24DHPYSxLkevVTYf+u3be1twM+p2NnY0
	3IjvT+OIUelDurfXnvQUAAWFYlYAApXBIXddAcZmMz5yI4qednV0MDlIn5fCs9PT
	XrIhmKZ0DBraSQX84yLOom78Gxbpwm0mDbO299pmJo2IimE4ZV6rPdyswyv0RJik
	8d3yoxCMEJbHl6fXnbvAPfSZThufEgUHf83+CoyNiqMS3Kqn/MKtrOeKbPb45VyY
	w2C0SxM2d/Wl2olS8StwFODmGbGwoJF4xZEogin7MsEg2zz2wiupJw43H06WTzQo
	pe20pw==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gmy9ckf7t-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sun, 13 Sep 2026 14:41:03 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-38ea32e57e2so4996445a91.1
        for <linux-phy@lists.infradead.org>; Sun, 13 Sep 2026 07:41:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789310463; x=1789915263; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=WADuGXO2aoMe0sj7AUt3ZiPoX2ZXMtN/W8/YvHMCyFc=;
        b=jK8EfOJ/sX5nq0F4i6YCnDwlMsZJRDce0OHbzDZqq5SZut6e1UXI8GImQnfFVhHmrw
         6Z2f4km8ywHqRXTxWW1dCNDZsOpEoN2J7qyJG/ZBnwr9TKPOkMPOZXnt9OaKdUAZwb3j
         cmojJCclxAgWdFSTOTt4A7GgVfua4S4fm5vaV+w6g97DB0oqlLqLp+ZoalbgOXc6eGqR
         lLdwUL/RhZ+RhRFIJDOWfvmtWrhGepE/U45b+UE9zWMR1pHxyX93KyMcP0Z5qztjZx7s
         +XiEfHzCacTfmfRBg6yj5kFWfF/PH7gFfingmQIFvernYAheV0EzNA+TlNx/mwWieF+a
         i0tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789310463; x=1789915263;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=WADuGXO2aoMe0sj7AUt3ZiPoX2ZXMtN/W8/YvHMCyFc=;
        b=rNWa6qhWP6QWDqS/z9FsVuJ3Jpldv/RYmBe+qdNAZnYcpCevkxjfXisorAL1R5j7qD
         QWkZeN/+Y7OVRqatRYHMfbBDMx++LYnrfFzjiG7caDWM0IsBZAOx7maIX/alxJy0BuD8
         qVXLJHcNiZ3nkPu/GsBE53/Xp/GKWcmMGtV2PkuZK14lkqwaWnrVTmD5X4BiC3Cm2lat
         QBSZD/jhP/TO6chejEtn9AulvWBtjBVMPqeju20JQlhjRzHBOOVtkpb74uW+rCgda0mc
         rqi3K5L8KjXqsvt6shFuw1BylxkfEBfdbQa6Vc1mUGSYHiuMkLJrwq5CpYi1ZC1P9gjG
         2uRA==
X-Gm-Message-State: AFuF++kz4y1MQpwFLm3RqkHfD2y6v7XDOxZpclbZB2IJzr3fH4l1vqUu
	EKz8kGJM8HRPLfLdeaC5oj1E/sT4gVtr202ys4pt3Q3pTHe6RTBDmXLLpSu4gTYH22NFpB/8FUW
	pQKpkX9Aka5BzR2vSy/PI9/cG3clHszJ1BkOfZ99BvA5owLOtTykeDDqDJcyPO+n1GOfT
X-Gm-Gg: AYBFou1Z/TMecpw7nFwrMyJs3NO6uN10W/Oz+lamDFrMJP7eu9DfWjPHS7niOcX2avX
	sFXiXDjzyjz4u/mR4zOIiUYQ9CDk26F9B1NT2rqiJx0mLyc98PIrQyhzfddHMZwP5fdq2UmRN8R
	n+PUTwBhyvllXzvxEeo8O/SXU7bFwZdtg+v7rMcP8ytaldMggosnBQ5WklbahoN4wHVqEJ2GJmc
	ctK4g9H/dFUNrv/xPC7WSjfEaEprxD4e40yFTlW1hKgUS03LW5pjgAldPh/n+a4WqWL5KyFu5xI
	SAEnkxW/WPwmrs7YOYHdsdr9pYJ7vtK9RVeja/0Rj0665dnBHms6wdRr/Bdw6E/tUAMRiTqAMdi
	xbhjzxsddHjRibvgGeXpE6W+/vxhCJuFdBk7U5pYvf80hN+Bev+66UBq0oD1B7AL+AKrxNw==
X-Received: by 2002:a17:90b:5408:b0:39b:3109:10ce with SMTP id 98e67ed59e1d1-39dbc6a0196mr14224694a91.16.1789310463142;
        Sun, 13 Sep 2026 07:41:03 -0700 (PDT)
X-Received: by 2002:a17:90b:5408:b0:39b:3109:10ce with SMTP id 98e67ed59e1d1-39dbc6a0196mr14224655a91.16.1789310462739;
        Sun, 13 Sep 2026 07:41:02 -0700 (PDT)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-14382741839sm2904705c88.6.2026.09.13.07.40.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Sep 2026 07:41:02 -0700 (PDT)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Date: Sun, 13 Sep 2026 20:10:44 +0530
Subject: [PATCH v8 1/5] dt-bindings: phy: Add PHY_TYPE_EUSB2 definition
MIME-Version: 1.0
Message-Id: <20260913-eusb2-interrupt-v8-v8-1-0f505b9c394b@oss.qualcomm.com>
References: <20260913-eusb2-interrupt-v8-v8-0-0f505b9c394b@oss.qualcomm.com>
In-Reply-To: <20260913-eusb2-interrupt-v8-v8-0-0f505b9c394b@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-usb@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1789310452; l=1964;
 i=krishna.kurapati@oss.qualcomm.com; s=20260707; h=from:subject:message-id;
 bh=IY2WnSD8E/Qc7eoIlUp3aoznMSkvtOFuNLNJe202z0k=;
 b=O5E116sLIKdMq7m8mU3ZS4xE9nMUaQM50pmqzz3y0t2E/twLbTfyVIOTlWjZSaucWPmnWISos
 ucWaTi3SA0xDUMH7MpWkbiG+X9MYhCpULb6YAOuoJ9f2UmuPrIY7Ugm
X-Developer-Key: i=krishna.kurapati@oss.qualcomm.com; a=ed25519;
 pk=6PmiuwGCdov3wRO+bdmRlRxRtmJyDKz3ED57LLPVgds=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTEzMDIxMCBTYWx0ZWRfXzR/jlBTlHpld
 ghseqgyDCjp6K9TmOl+fZyrt5gFnGiNATnL0pNjsvc2BtOzt2H31XH+HCrvE+EwBDhHehWUoBvv
 WqMa2Gan8t4lAMMQJq5raG68Xy5Vncu2c0+yMfLkGg+QVrcQOF//lUrCtOTXpHR4H7KY9PgY7AT
 2WlQiTKB+4gkXUuOszNgFB9lNgsnM6zt/umvGk5q9BwX8sUm1Rpcb/NCo/520/QxmRCQX07lSU4
 qO0gmpjA6t2RUThmORxlKyfWz32uyhu83+E63uoLgbfO3rrNHISS2tOMfHH0nLdY3OlF2fMwzH9
 6SbdpmwNUmlPEXxc4co3VImTxF7uU5AoORVW/N2yUkROW/ItUEiDegUoBzps6Ryh9i8mbW8CPhW
 o2uI6jrZi1PdDCNLjgHr3k0UCuidlnkOSKYAFMKEI3RGwZoz9FzPiGoCFfulJXNcwTuvtxi8baQ
 y0VVQ9Ebjp5RdHU8EVg==
X-Authority-Analysis: v=2.4 cv=EMyTQFZC c=1 sm=1 tr=0 ts=6aa6b5ff cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=L1EOSesq0gyy4kqEYQ0A:9 a=QEXdDO2ut3YA:10
 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTEzMDIxMCBTYWx0ZWRfXzAN6fBm7nS/G
 4A0IAKgDhxps9COAef6qhLoerQXk28TpMvvN+BDwhVM9jLkk5pLbcdZIoHFqfckFlD1HCpXE+r4
 vMcHwUEW8hv5zkmVoWoD7y+gtI7hCmI=
X-Proofpoint-GUID: kfQbTKQ9k9k_IvqDHGLQqBwOF5HMSvYR
X-Proofpoint-ORIG-GUID: kfQbTKQ9k9k_IvqDHGLQqBwOF5HMSvYR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-13_05,2026-09-11_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 phishscore=0 priorityscore=1501 impostorscore=0
 spamscore=0 bulkscore=0 clxscore=1015 malwarescore=0 suspectscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2609040000
 definitions=main-2609130210
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260913_074104_411864_3750F72E 
X-CRM114-Status: GOOD (  13.17  )
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

eUSB2 (Embedded USB2) is a MIPI Alliance standard for chip-to-chip USB2
signaling. Unlike standard USB2, which uses 3.3V signaling, eUSB2 uses
low-voltage differential signaling (~0.4V) and requires a repeater to
interface with external USB2 ports. Because of these differences, eUSB2
PHY initialization sequences, voltage tuning, and register configuration
are distinct from USB2.

Additionally, eUSB2 targets handle wakeup interrupts differently
depending on device speed when operating in host mode. According to the
eUSB2 specification, remote wakeup signaling in host mode is detected
via different data-line assertions based on the connected device speed:

- Low-speed devices: the host repeater drives eD+ to logic '1' upon
  detecting a K-state on the USB lines during remote wakeup (eUSB2
  spec, Section 5.5.14).
- Full-speed/high-speed devices: the host repeater drives eD- to
  logic '1' upon detecting a K-state during remote wakeup (eUSB2 spec,
   Sections 5.5.15 and 5.5.18).

Since the eUSB2 PHY's DP and DM lines need to be configured differently
from USB2 PHYs, controllers should be able to query the PHY type and
configure wakeup interrupts accordingly.

Add PHY_TYPE_EUSB2 to distinguish eUSB2 PHYs from standard USB2 PHYs.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
 include/dt-bindings/phy/phy.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/dt-bindings/phy/phy.h b/include/dt-bindings/phy/phy.h
index 979b5dfd8353..555a022c8c0b 100644
--- a/include/dt-bindings/phy/phy.h
+++ b/include/dt-bindings/phy/phy.h
@@ -24,6 +24,7 @@
 #define PHY_TYPE_CPHY		11
 #define PHY_TYPE_USXGMII	12
 #define PHY_TYPE_XAUI		13
+#define PHY_TYPE_EUSB2		14
 
 #define PHY_POL_NORMAL		0
 #define PHY_POL_INVERT		1

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
