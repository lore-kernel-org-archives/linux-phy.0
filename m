Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 166A1C55179
	for <linux-phy@archiver.kernel.org>; Mon,  3 Aug 2026 13:09:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=opbEFuCSTf4zTmvSeQ/xx3RJo8t2DBWHBkxXxixQRHw=; b=MdyLlKXpltZWSF
	x4tdgZ+BZQOKXt5a7xyuMDZgSq15yfc1xE+AVAc3LceWBuSosGHZdmfKSR1lX96gTJea5+QOeL2SW
	defKs/erU0IqyzYHDrdKzqgvNTulQYUoCaVsPC5yWo5Fdr6QjkaORlSjUmLYXQMa28QW63Muj06Lb
	Csi1dWBTJ8x9HAEsTEgLH+xm+3uaSV1GAJ5JJDABZAN1qrCUzjVYWjNY2alWXvjNj5PU/HCjvgMvv
	d5cM3manCF5nyranTnloq3Sjs4r9lAUPFPGJi8Rd/BE6LVkWo4ZMyZXIboPRlGAwoeowdk2s6zrhU
	XQd+1aXEeAJy4+TYNssQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqsQ6-0000000H8Cj-3Cc4;
	Mon, 03 Aug 2026 13:09:30 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqsQ4-0000000H8CG-2hC3
	for linux-phy@lists.infradead.org;
	Mon, 03 Aug 2026 13:09:29 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 673C4la8856069
	for <linux-phy@lists.infradead.org>; Mon, 3 Aug 2026 13:09:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=Tx+tU+JavHm
	9jlJKkOPRaMWM/yiGuddWBQeSbrpsom8=; b=Q4zX++W4DpOC2XJ2Hlyk3E51ssf
	KnA9bGQ8/Ln7WojVcwbba25OUr5BVB5g1WRiKiqyXbd/KN8uEJ0Q2Md/1SIUMK6A
	o1G9c753HmMVSfdebN0C3x9v/+xDVrlgqyujKQRKjVnJBna50s5Ho+qZRROFPGZM
	KRaAqlLBbaP1YQZ7OhSoz30tnEZGctYYa0LJphUYVrvMdx9oiGICqQJ4OPywV2sS
	e3ej0EWkdyVe7gmP7OmOvPH7WCRDZECSaFvgKhHRQNvbihYn5U3S+MNOge1J1ewq
	71OkQSjm9NDh/H6NwfYoUDQiyyzuFPWMzcK1+Gw0xTTpBhn69cLs0jpoGwQ==
Received: from mail-ot1-f72.google.com (mail-ot1-f72.google.com [209.85.210.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ftnrb9ncf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 03 Aug 2026 13:09:27 +0000 (GMT)
Received: by mail-ot1-f72.google.com with SMTP id 46e09a7af769-7e6b59d85dcso4395599a34.3
        for <linux-phy@lists.infradead.org>; Mon, 03 Aug 2026 06:09:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1785762567; x=1786367367; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Tx+tU+JavHm9jlJKkOPRaMWM/yiGuddWBQeSbrpsom8=;
        b=UDFVZNhOPQWOmxvqZpFBImNy9aDtq+vKJhMtydfCKqwniNhTxWhhntZTMDhoBgn2ES
         Y8RMBteLej2WJsNH4EhNuOI88TktybfNjKm6GVdjqw1Imk244Y8UXKiIUu7W1UojiZ+9
         9UIcyC5YGRSO/pgogqKtPDb2Mct3DEr41HVob5J6OUhwd0MZ+DMwK0lRy8LGAKjrKZQ/
         kns8Qbhr36+H0V6gls8n9DrNSUrEwttk/sGzKvo6kIKZasCOc0NpH42Ofglo4Lcez9mh
         mPd8YimownOGku5Fa1piXU0unqjNh0WdGBOOKBWpxEUOlva0tUNzfku2gV/rx/AH05xo
         sVOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785762567; x=1786367367;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=Tx+tU+JavHm9jlJKkOPRaMWM/yiGuddWBQeSbrpsom8=;
        b=UntXeaXmPXQo9QmcfUgcCHEFRQCmRY7cAu7IXm6VY/gxgbTsXzGLm5DjmXQIWGOzgg
         gKXR14WIeJ9EjzklJMVanbdd37kCFWQeAU9mxxAC9IeT9Cqk7d5OIU3zL9qqa36qMvI8
         Ygx1HyxmtbIISTGsySe6ju4VczOEfT6AFkPhR07TIYa//mQNvrXpk/pWwcP7Wc8ULs2o
         +hiAFfA/Xoq/S0969teD1ZeyTLKF4384IzCzgGD9CTqxsqc4TUZ/FFymek6plUI6vBVC
         VxNU4bwXf25IP4g02kYjKhzQFKaBrLTSe7QMjZm7B6rcziy24I1FkYimlfBa66ygIR55
         TPDg==
X-Forwarded-Encrypted: i=1; AHgh+RrO8bjexVtAf5A8/JopimbzamuIOQvD/RFvSxQ9I+ImrIqATvfD6+J5zRwVxaBHcrj4VO3nvGbT8PA=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxjl9vhfkoefKNO+JsCSMxUp/rOagD+ykYQGD9BzqM/bBYwnwJp
	dQvyaiCJczJBv6uJZMcxve9sDi88S3KgJtcBWmYONPeHo37RTnUDY4B4Q2WNEqF1RG1uZMyhuA9
	Z/yDuJHydgyK0HxBsFENHdUKmYRjSwyJalqYykQM7/LQxJyavVlUUW5t6j+DscMJ2qNjX
X-Gm-Gg: AR+sD11yYIVVbVBoGWAMzMYnhzkgUqyKwhPpLyG4Oqiu3kEKMpmJJ1kogzAqm7G1Xxt
	t9vTp6Scq1oERjryflkMj/hAgtiCOAKSvVKjSjOy58BOsUEU7RhwFCq8fBPX151q7k0AWxpkuFc
	6pSxHU5aUdt24G/BrX3W+spZvtEvDgCm6BIWLkaFjCMru+da+v8vlomFfk9uWZVFToSlak2Imm+
	zX1IZJydjZ4k5oowc2YL8D3xuHYvgrzAsmGZ5iq0mwqShjWi5+a3LBPlsYZFp1av8nr3mTxeDVo
	T5ve1PJEPNGYIaw+cDbNAr/ggkW26xCUykB00d6cBXTCiA687aTBuoGlJw76bTdl0/bYIdlqXf5
	1HDyKaY6JtsPGhMyRNo4DnlHZ7ZGlOjgE
X-Received: by 2002:a05:6830:8299:b0:7ee:3bdc:9205 with SMTP id 46e09a7af769-7f1970380c7mr18910785a34.13.1785762566943;
        Mon, 03 Aug 2026 06:09:26 -0700 (PDT)
X-Received: by 2002:a05:6830:8299:b0:7ee:3bdc:9205 with SMTP id 46e09a7af769-7f1970380c7mr18910128a34.13.1785762561654;
        Mon, 03 Aug 2026 06:09:21 -0700 (PDT)
Received: from hu-pkambar-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7f18f0d6ef6sm7366929a34.21.2026.08.03.06.09.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Aug 2026 06:09:21 -0700 (PDT)
From: palash.kambar@oss.qualcomm.com
To: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, mani@kernel.org,
        alim.akhtar@samsung.com, bvanassche@acm.org, andersson@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, abel.vesa@oss.qualcomm.com,
        luca.weiss@fairphone.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com,
        Palash Kambar <palash.kambar@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v5 2/2] dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: Add Hawi UFS PHY compatible
Date: Mon,  3 Aug 2026 18:38:52 +0530
Message-Id: <20260803130852.1432714-3-palash.kambar@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260803130852.1432714-1-palash.kambar@oss.qualcomm.com>
References: <20260803130852.1432714-1-palash.kambar@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-Spam-Info: AW1haW4tMjYwODAzMDExOCBTYWx0ZWRfX782xTix/5vgW
 dR20mounrC+vf0SLWRMI3AFHKEq4Qxm9ztX5Th4aH68dhw3cvRP1zbaUW/U6SyeGSeO0zkugMlC
 3QeIlgGKfT9CwmtzVZV/hv257tBJR1Y=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODAzMDExOCBTYWx0ZWRfXzblqrHh1ttn9
 1/j8/dUPUQNWTlm7E06MKx35uCX6H3OiSaXlDo2orfE4PLyKxxHaWrkCPUHMtNrV8b9QvXlfyxv
 JjBDVuYBmNNWN3vfiUpHa5nDbM5uKsGu0gPh3OVOiXu95O+N7QDlLgMZb+3Vf3QDHWPX6Zw+F2U
 ZusUhIk/gyycrgX1M5Xu7pMwDj55I6+RW15KwRJEoX5W2wksazDldJlD22hTFDE033+B/K+sCGt
 MYaoRXdii+Wftn73xyXNoDxOd31d3R31H3emnU+BatqCO14B4M6IcQdqmmcZ9HBAj1qijVMIS1h
 2tnP0vof2qafll5sYzSwZjfDQX2Zmh/7sSi39mEzDYqzxYmlWjOF75zKkIi2Epcg+pXQ8VA3s0w
 8HP5koJGqhU6VLIGGtstQJHJUvRdA6HO9KWdBONRsQs0S+PQICTVol5kH1TM1VJR2g26kf2cIJI
 EoyjxIQ6A64z59XQjMw==
X-Authority-Analysis: v=2.4 cv=RNSD2Yi+ c=1 sm=1 tr=0 ts=6a709307 cx=c_pps
 a=+3WqYijBVYhDct2f5Fivkw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=EUspDBNiAAAA:8
 a=VwQbUJbxAAAA:8 a=MMZtLZuhhDi3SW52_uAA:9 a=eYe2g0i6gJ5uXG_o6N4q:22
X-Proofpoint-GUID: PEuYsrPDyts2hITPymGEe9dcoRls_z_K
X-Proofpoint-ORIG-GUID: PEuYsrPDyts2hITPymGEe9dcoRls_z_K
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-03_03,2026-07-30_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 suspectscore=0 clxscore=1015 adultscore=0 lowpriorityscore=0
 malwarescore=0 phishscore=0 impostorscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608030118
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260803_060928_794682_A903C6A7 
X-CRM114-Status: GOOD (  10.22  )
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

From: Palash Kambar <palash.kambar@oss.qualcomm.com>

Document QMP UFS PHY compatible for Hawi SoC.

Reviewed-by: Manivannan Sadhasivam <mani@kernel.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Palash Kambar <palash.kambar@oss.qualcomm.com>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml      | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
index b2c5c9a375a3..4efe40c0dc97 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
@@ -38,6 +38,7 @@ properties:
               - qcom,kaanapali-qmp-ufs-phy
           - const: qcom,sm8750-qmp-ufs-phy
       - enum:
+          - qcom,hawi-qmp-ufs-phy
           - qcom,milos-qmp-ufs-phy
           - qcom,msm8996-qmp-ufs-phy
           - qcom,msm8998-qmp-ufs-phy
@@ -108,6 +109,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,hawi-qmp-ufs-phy
               - qcom,milos-qmp-ufs-phy
               - qcom,msm8998-qmp-ufs-phy
               - qcom,sa8775p-qmp-ufs-phy
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
