Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60F4FC531CB
	for <linux-phy@archiver.kernel.org>; Thu, 23 Jul 2026 10:39:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BMrcERG4krUJKoiUk3MybQKcsOOWdfnvP2cEDE4jxP8=; b=oFH0iP4jp6RRng
	OoPg4w/ef8LFKCzPEsrmQNi4TUjx7Q2Z4PETLWre+XBuWae+zT6yrGHZBw3BPT3zekwTkaBWWNc0o
	XSD4c6gVw1MkKNohQ9FE3eSCvYokvmzgeoQVUn3vatZxvcizsGMuvCubSinzoFbn4/Q2MI8urJ45R
	1Ne92S9vKsU47y2m7ASSbv3baPmsf3QfruGQmamlGCNVca96JjgrfMHBASauvaHJOQ63cFzEoohcd
	nJxpSaWGqrMzCFnF70O0wZK09Cq93xfUcVfmeMLRU3LFUmi6rDN5/XQqZi16s5NafGwYhHd58J7Eh
	swARcfuqG8vRHsnbffOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmqq3-0000000E3C8-0Vmr;
	Thu, 23 Jul 2026 10:39:39 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmqq0-0000000E3Bi-3Ral
	for linux-phy@lists.infradead.org;
	Thu, 23 Jul 2026 10:39:37 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66N8qhEL3387924
	for <linux-phy@lists.infradead.org>; Thu, 23 Jul 2026 10:39:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	aPdTvyrfAeY8tLRF62Qw0SmrtSQciU0vjFIr1X70y/8=; b=kNL9jcO/abWK3K7Q
	SwTbvBuBitPuOxbGBZwtJRE+Ws+TLXO+6kRk3nf+SbnUvoYJpabJuKr9kcyz95kB
	3sis5OAwwu80jQAfQ3oYRey9Ntx9fcJSqUxZ8GfbWWAGKoUfINUcLnZBNRsqPkPZ
	MJj9d44o4ARh1kiQdWYPL1UxXtfOwqGXnG8eJsVukZSFclq012Ht13E6OxPVNl2x
	afsF6YOkV0HnlXJzTCudFEwVCogKnflEaTVMAbXmy32RvT/l46XYew4oUH7tqVN+
	LOAocJnPegQGBmW0t54EdCBs2S341mZ79/Py2b0XjE/ZgqbjQk5AEDD8DsPeFpfv
	M7XQ9A==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fk275knmt-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 23 Jul 2026 10:39:36 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-8485b7e18b4so902307b3a.1
        for <linux-phy@lists.infradead.org>; Thu, 23 Jul 2026 03:39:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784803176; x=1785407976; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=aPdTvyrfAeY8tLRF62Qw0SmrtSQciU0vjFIr1X70y/8=;
        b=cvO3cErF52EQLJuz0z1Xr3dQuoWihh9Yh4KjG/L6ZuDfl/pa77YBV6grAT5x0x2x9e
         ud2HQiatwy+I9k5kwLQz90x32z0EdUcP6hvqo6cEcCFB1PAIdHbAUdUILch9k4MXywWF
         i+LKyb+PutTo4/VAB8q5w13EkSZc8U3HOYsRtq1C4ECh13XNYu8UhN1Xp+pZJqgiwQWQ
         w9fkY29VljHj1HZisTEyRUB0hcv9/aPkdPUSW41nb4X5IGWssigs/nqldENiO/o0fuaa
         7QUb0Cc3XHxDl8c9XosZsQhoRcRlJiO9MBxMIPF41JJtkzHkAsNsAl+om5kx/URFl2UU
         tvhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784803176; x=1785407976;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=aPdTvyrfAeY8tLRF62Qw0SmrtSQciU0vjFIr1X70y/8=;
        b=EkI4tIi41g2LhZNbMFFxR8LBvxpi5PpaMG732SzL4Uqz42hRkxbIhmFOs0JNI2v3uz
         SIOybGQ0/hzkh/s+d6/r28bq1QpqgyN4kOB4eTiPNJURRmOHtYBYp6pwewQuhfaBMbxM
         ypitIPnfzaZSyEaI1+3zVHXWmKkQkael7KtMoeuz0mdMBXiEVyrOUaomfhtxmDWCF68n
         ws+CwLoKALDHtWgBgxqbhkDM+uu4Ow0Sbh9b71c3zL0WQqRUpycPVhItUw9S6E1NeNd/
         5YOFAGzVmQ5isyuPY8DeCYGArtZ6H9IQxZafFHfiIHozEm5ZJtxqeXFTVUWcM32ERMDS
         4WXw==
X-Gm-Message-State: AOJu0YyGXZTz+Il1SLB8A7V9A+4x1dqY4KtO44NPx/icNbR4Wy403ItH
	LHrJcH/QR9OJ1C6ikTvzehF+dMAsfk7IRE//vxmXAmjmnyR76DcASDiuhBZj/hE7mLZo/Mv58lq
	H9pNNH5vjHhqZoM3ODTupxdTCckEMII0+QdLU30wKXMr3amKg4eLp+vBzlR0pFFTFDVaHhDl0U3
	ci
X-Gm-Gg: AR+sD1341CkurEoAfm5rWcQpSGEJR3MundLkI2PMxg402Bd6dymLUT4FD808Eqb8C3y
	LwygdajAC6wnffI+sDImy5GhQHvAZuxM4d48MD0tNZNmmIoDhye7YkMVUO1xdypdfIyooNMA22o
	Myc+afB87G68qD99JAkw9kU6TOtDgd+s8YNn/ZurrqcQY6Nuw/eCpGVOX7i3/e0rzpzcKD+lEYl
	Pr9VZME8F7z0ScOl/jZPSxY+RGuZftmBvfnnX5+Es2scrHD/Sd3rH1Xo94+j92G6q5M9D1ugf2Q
	wrm3eRrftReP5YgRKqrKGVIQSFikZuXI21wMdRcyzQ/22chGkcOF+XSY6napDtUTAA4O+TNVAU/
	Nxqj/6XuBTjBG/+VudeGdDbPgoOchxmHKQiVR2Vv6t2WZTrSBLKO4fN7nuiSbNKqRkkL6PQ==
X-Received: by 2002:a05:6a00:399d:b0:84a:2e5f:d69c with SMTP id d2e1a72fcca58-84e2b8ae108mr2936147b3a.32.1784803175746;
        Thu, 23 Jul 2026 03:39:35 -0700 (PDT)
X-Received: by 2002:a05:6a00:399d:b0:84a:2e5f:d69c with SMTP id d2e1a72fcca58-84e2b8ae108mr2936117b3a.32.1784803175304;
        Thu, 23 Jul 2026 03:39:35 -0700 (PDT)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-84e17604a46sm2864469b3a.60.2026.07.23.03.39.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Jul 2026 03:39:34 -0700 (PDT)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Date: Thu, 23 Jul 2026 16:09:07 +0530
Subject: [PATCH v5 4/5] phy: qcom: m31-eusb2: Set phy type to EUSB2
MIME-Version: 1.0
Message-Id: <20260723-eusb2-int-handling-v5-v5-4-f32ea6c1a318@oss.qualcomm.com>
References: <20260723-eusb2-int-handling-v5-v5-0-f32ea6c1a318@oss.qualcomm.com>
In-Reply-To: <20260723-eusb2-int-handling-v5-v5-0-f32ea6c1a318@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-usb@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1784803149; l=1138;
 i=krishna.kurapati@oss.qualcomm.com; s=20260707; h=from:subject:message-id;
 bh=+Zv4CGvsEwVRxTh7LHS2d+Bik8zXMnDWJl/2GkpwVKY=;
 b=kpXWOHzEV0ps/x7U6iHzNioQi1il2m5TOacoHA+Sr7NbyRzj20jsREw/IEx6YV107lmQcevgX
 fHlnHs8AKGFC7lZMDbV6KmoR35YMvbdcDUy2jfQMj2vLlRB3JRCTqNb
X-Developer-Key: i=krishna.kurapati@oss.qualcomm.com; a=ed25519;
 pk=6PmiuwGCdov3wRO+bdmRlRxRtmJyDKz3ED57LLPVgds=
X-Authority-Analysis: v=2.4 cv=Q53iJY2a c=1 sm=1 tr=0 ts=6a61ef68 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=eH_FKzx8O6utXoIrfkcA:9 a=QEXdDO2ut3YA:10
 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzIzMDEwNCBTYWx0ZWRfX9xsy+kbqvWWo
 U+26uU/2cTPQRjSAiRgiOaBr3BYAipyZ6PSlOBrV317GwasN5ZEqDoGnRmg+vrOnkfLkbsYfve0
 Xy+yBYxOeQs78+lvc99VJhgPFcfY8ng=
X-Proofpoint-GUID: yfCDKSKKMp2VSq8Iq9jSzOV4nl5zNPgl
X-Proofpoint-ORIG-GUID: yfCDKSKKMp2VSq8Iq9jSzOV4nl5zNPgl
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzIzMDEwNCBTYWx0ZWRfXy1+fwpSxsge8
 M0/kKUmcwFhxKZQFFymT+5A0bWltxUFYGaovVPO9Des4oMXsiHGTljrhcQ24zxZ2wsdoNb8bZtl
 5frSA7snDk3ylWLW/xTVRVgvgeZDWfbYGjMacioAkcj3ZzGLNLZXCWbOBlkVqbGHtpblzQOiqg5
 ydfU+c6K6bX+d9dLB1OO+q8mtyIeBKJlLnYL9n0kKNhA7s9ck5atC2vhOwg5oGCHG0Bz0XGi8zc
 1tdEgLZ63dT/0MTjWUJ60u4qwKhnfvM2jIIOQqZPOWnXN2g7ic7xLdpgRy9oBqJqumUR/DlPf95
 BK14OcItUjD1k827aLMnq84CmC3QpxAU+snIBwPv9be5k174Je7Ne5jlwispp61Xt3iVYZz03d2
 W21pC2Ge5ItiP2SIsVj5Asgxyx600dH0IPNs4YptoJnSOcwZLk1aJWZSaXAG23MRj0a4dLzuXLM
 FwYIoC/eutB2YlRFaMw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-23_03,2026-07-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 priorityscore=1501 adultscore=0 bulkscore=0
 clxscore=1015 lowpriorityscore=0 phishscore=0 malwarescore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607230104
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260723_033936_865783_7E1CAF23 
X-CRM114-Status: GOOD (  12.58  )
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

USB controllers like DWC3 are agnostic of the kind of phy (USB2/eUSB2)
connected to it. Set the phy type to EUSB2 to let the controller know
the phy type when queried during its probe.

Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-m31-eusb2.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c b/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
index 0bec8657149c..158c3a55ba56 100644
--- a/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
+++ b/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
@@ -16,6 +16,8 @@
 #include <linux/reset.h>
 #include <linux/slab.h>
 
+#include <dt-bindings/phy/phy.h>
+
 #include <linux/regulator/consumer.h>
 
 #define USB_PHY_UTMI_CTRL0		(0x3c)
@@ -277,6 +279,8 @@ static int m31eusb2_phy_probe(struct platform_device *pdev)
 		return dev_err_probe(dev, PTR_ERR(phy->phy),
 				     "failed to create phy\n");
 
+	phy_set_type(phy->phy, PHY_TYPE_EUSB2);
+
 	ret = devm_regulator_bulk_get_const(dev, M31_EUSB_NUM_VREGS,
 					    m31_eusb_phy_vregs, &phy->vregs);
 	if (ret)

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
