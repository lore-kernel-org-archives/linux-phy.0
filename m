Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83E08E9A03E
	for <linux-phy@archiver.kernel.org>; Tue, 17 Feb 2026 20:11:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9sgrFaajnSpYb9eMy/+iv9mwdeRqpEFl0YoSDe6JJvw=; b=RaqVOgWFFcF+lS
	x1IESNVng0FrVQmBFXkHUx/S4t/o/t04Cr8t8l5Je1Sd49z8GPG1TE+VVexxoE2X3kfNeYzyCuuff
	Grdp129X+3HwSV8YvtzTkpy7qREsDIiwqEPoKJG9P/bbZopEHW8D3rfmoejpfR5u2BI4C4ua1ySxB
	FrVwCQ1taf/7tkCacVYvbu8jww2KRPxi4U39hkDvgQ2yGSNmgVafGNRKpxbuXSF9ncji87PBJugBt
	8xs+749jWdMIaJ8eXvx8GC0KZawuqSveqBptey7oJNpcSruo6qRzJ0QMISln/ijF4HiM5rwFAuWfi
	tEII5EcHbmWl5ZslAYhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vsRQ0-00000008q6H-2781;
	Tue, 17 Feb 2026 20:11:36 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vsRPy-00000008q5q-1jVn
	for linux-phy@lists.infradead.org;
	Tue, 17 Feb 2026 20:11:35 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61HHMY5a1544900
	for <linux-phy@lists.infradead.org>; Tue, 17 Feb 2026 20:11:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=U4LWRwUn9sJIHa3iVPT1Ps
	amgzgdpUokfwkXUCeFWss=; b=Ke6sBSXqqtggbM8ASzIxNDJuDgvuGkB2x9O9s8
	9wqw7oz8ttfPUBIc6b/WU4J0TixYtte9jK9dLwPuYuFAlF0Cd1NDmYvrGlZrUjea
	jLroC4Elb7zXE+Vd0Q1fYY7Ax6ueqKC0ZgAsglpETV9H8ifVgbynP4jxRLkITsjl
	72HhA2y8lbUIzrRv1AZCxpLCW2cRi9rYo597b72z+TWKs8fBRWj9iyIKbQlXTWVN
	VGBOLp3Bum5+q5S7OwglHO3FRT28A5AHtrREk+s0UlypPuaksPy0SxLDjvNad1tO
	xosOx1dLYKw9aeR7d6XD8cpECDIPg6VfFJigvSeS916a1XsA==
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com [74.125.82.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cc7ajunne-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 17 Feb 2026 20:11:32 +0000 (GMT)
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-2ba728aa1f9so17066838eec.0
        for <linux-phy@lists.infradead.org>; Tue, 17 Feb 2026 12:11:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771359092; x=1771963892; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=U4LWRwUn9sJIHa3iVPT1PsamgzgdpUokfwkXUCeFWss=;
        b=a7/wF/TNk/thYdZMgtTn347o8UN8aC/QsYclhL7gOwGhvLAtD9424dpZ4X4Za6o2v2
         70GVns5F0SenFWtM2/ZyFAEwqlcYHxScSNl0YY0DAh+GTXyvHwfmwNl4U6m3XLxt3G7Y
         wgDwDUld/fpO+rfIKKC3dISTef+BhOXiZLs7NnD06IWqpgoDqUUzswgGKVTLG6VNSvzS
         DHFActd096vHPq51vxZJyTVkqvBJ98TyYcmwnPRCEVZtImbxixUr14IUPClpsoxehrKi
         15g3ekZW6+DYcOwiwS4m6XxPptEuvBpL10Dsksp3T9tcnG9OCDHfijTYo2ncxvotNiyR
         2hHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771359092; x=1771963892;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=U4LWRwUn9sJIHa3iVPT1PsamgzgdpUokfwkXUCeFWss=;
        b=PVQ2uRsNucHQ8kMDxWV42YKebhWDTELc5tZQr5tcdDM6GGC0e3f4t7PBjxbaAy05dU
         +20NQEl3SyEzdsPda66r5iIre8F/FNy+FCi9fJS/3Gt0Mby/4yzvIiPnO3F/kCHHe9H0
         GkW+X9cEspw4p054Z8CGD6RWenUxftF2RBrIohAH5SJNN4ru9yFKIYKsPCACYBhzMFly
         jk5vtp2/BDiheLznyZyHnPlWQvYmc+Ou9SOqYyjOG8Ac24prNjAEae3qrm9tQ4N3v9Z1
         P1uEzXRm6h07DP3hZ0wyQMxQ6dcJPentRiG3dwZao6+/7s0XYpP6MzKIYintfEs8eQLG
         PDjQ==
X-Forwarded-Encrypted: i=1; AJvYcCXfaUCAcCsp9wr+sVT9Kq/uOMYs0eztFGnR7vy67RWii34qITKaUbr1QyeqB7ef/OOWxzLcVURGSCk=@lists.infradead.org
X-Gm-Message-State: AOJu0YxROdMtF83KTLwB57HMHiKI8fWEoNEeZ+2MNlicVE9gkQeIVCam
	chlTW+f69GreDyw2OE6BHojT7TjYf+2Y1YOxKAawgdMuIz4dhEf65s6MbGSL75DxMmFhh+hHgCg
	HgTeKaQ249AsAKJ4dNdP0TPEKlT29GvblKYHGLuKMF8/FYKmu3bhs6LAmOc7+1k249lAa
X-Gm-Gg: AZuq6aKXKGiTdx44BsQ0zo8RH+FMReSWlrzyPxwei057f/Jfn/TWWpCOOpkUQfdo5W2
	Qjk6QA5mQdENZ3f62pj/J+Iv0Gv0CBFhmEpBDQBO4xmI62DnApeQD7/gm4DW3UZojjXtnZhtDYh
	6eXcw6QAixPlH4Etk8vwNFVgDeReDuyAoHIOFlp8YgViYLNCic3mGv4j8CR9M7pSHGsRUR5F+Xw
	ejJ/2wNkisBQpbeh003iO5HjFUvcYfRhFa7qIUDZxPf65XPNhG3bFDAL0OD1VdIVpTbl1wmCrZC
	IKl090ATL+lrvB5K8+oAfJGXekc0Olo4FHzZfNsjZ5XrPRpH6ChqDLwuWcylM6MkGfACAKiYyhU
	jAhd2I2qi139ZorOTY3IaPl2bssDBb4AOaEZjlHB7BrRopHjpDVLBBWJ5TctHKgCqsCrGh7rlXo
	M=
X-Received: by 2002:a05:7301:1e4a:b0:2b7:f44a:a688 with SMTP id 5a478bee46e88-2bac97d96b7mr5221002eec.38.1771359092068;
        Tue, 17 Feb 2026 12:11:32 -0800 (PST)
X-Received: by 2002:a05:7301:1e4a:b0:2b7:f44a:a688 with SMTP id 5a478bee46e88-2bac97d96b7mr5220983eec.38.1771359091526;
        Tue, 17 Feb 2026 12:11:31 -0800 (PST)
Received: from hu-eserrao-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2bacb658531sm17319194eec.18.2026.02.17.12.11.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Feb 2026 12:11:31 -0800 (PST)
From: Elson Serrao <elson.serrao@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Johan Hovold <johan+linaro@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, stable@vger.kernel.org
Subject: [PATCH] phy: qcom: m31-eusb2: clear PLL_EN during init
Date: Tue, 17 Feb 2026 12:11:30 -0800
Message-Id: <20260217201130.2804550-1-elson.serrao@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE3MDE2NSBTYWx0ZWRfX4zqdUs4fV9Y0
 hXRVj1u3ACoAhRsbSlbAnudUgmhMshJ8DhpQPvzcB0YhOBaA6VBg1s1dp8UZ2femQtqFiHilSf9
 /UGYWv3TTdq8qQiynXoT9MY2mmRYggpbS2BSFJB7c7O5xJ24vjyeB5vj1X258xE//XVFGBB4eaS
 m9+8dwpqjRiYB2msr+MBcdfLW8pxQNU+kSLbAWwYT25dQzoO1UVl8FT6+Qcd/IIw4i/zvSkp7uz
 ntBmy+5FRnCZxOJgMzIKh9F6t5xQ+bjsLB1S+MwlaF9eRBJNJY4lRy3TSpSHEglAtQtMreWORiu
 vkLXul+/qdJ7g5p74tWvrR8SzlYGYmjlueYiGkLc3Rc5OlMQxb1bfDSHkXpvQ05sBd+EExxpD5o
 IrZ5PcYLZ1VQsA3jKdtKDLVp3nTiHTRWyqPL7GD8Bu9JvJeOGzqKOWiND2mmUy7L13H0vm0TXLC
 UYuMbW3ms1m8MX5AWLA==
X-Proofpoint-ORIG-GUID: 4wKcAx9ReQ92D-AM_Hg0rDr39q-R-pZ_
X-Authority-Analysis: v=2.4 cv=BryQAIX5 c=1 sm=1 tr=0 ts=6994cb74 cx=c_pps
 a=cFYjgdjTJScbgFmBucgdfQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=49oE3CkF4HoBucdVWpUA:9 a=QEXdDO2ut3YA:10
 a=scEy_gLbYbu1JhEsrz4S:22
X-Proofpoint-GUID: 4wKcAx9ReQ92D-AM_Hg0rDr39q-R-pZ_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-17_03,2026-02-16_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 lowpriorityscore=0 suspectscore=0 phishscore=0
 clxscore=1011 adultscore=0 bulkscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602170165
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260217_121134_468308_893148B9 
X-CRM114-Status: GOOD (  12.88  )
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

The driver currently sets bit 0 of USB_PHY_CFG1 (PLL_EN) during PHY
initialization. According to the M31 EUSB2 PHY hardware documentation,
this bit is intended only for test/debug scenarios and does not control
mission mode operation. Keeping PLL_EN asserted causes the PHY to draw
additional current during USB bus suspend. Clearing this bit results in
lower suspend power consumption without affecting normal operation.

Update the driver to leave PLL_EN cleared as recommended by the hardware
documentation.

Fixes: 9c8504861cc4 ("phy: qcom: Add M31 based eUSB2 PHY driver")
Cc: stable@vger.kernel.org
Signed-off-by: Elson Serrao <elson.serrao@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-m31-eusb2.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c b/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
index 95cd3175926d..68f1ba8fec4a 100644
--- a/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
+++ b/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
@@ -83,7 +83,7 @@ static const struct m31_phy_tbl_entry m31_eusb2_setup_tbl[] = {
 	M31_EUSB_PHY_INIT_CFG(USB_PHY_CFG0, UTMI_PHY_CMN_CTRL_OVERRIDE_EN, 1),
 	M31_EUSB_PHY_INIT_CFG(USB_PHY_UTMI_CTRL5, POR, 1),
 	M31_EUSB_PHY_INIT_CFG(USB_PHY_HS_PHY_CTRL_COMMON0, PHY_ENABLE, 1),
-	M31_EUSB_PHY_INIT_CFG(USB_PHY_CFG1, PLL_EN, 1),
+	M31_EUSB_PHY_INIT_CFG(USB_PHY_CFG1, PLL_EN, 0),
 	M31_EUSB_PHY_INIT_CFG(USB_PHY_FSEL_SEL, FSEL_SEL, 1),
 };
 
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
