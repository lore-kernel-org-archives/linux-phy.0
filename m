Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49446C982DA
	for <linux-phy@archiver.kernel.org>; Sun, 20 Sep 2026 13:59:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iU0fPW+3l0Tu+Qw1d1gL4PHH2foWPY0EqEMbRfb3ijk=; b=mjYGvJODW29jWD
	6Q7/tu0qSUvQdbWLaeXRC5CI4rlihlE9a6xLPP3MGKgYXpOyIiReQVeeQtq9s6OwCkcsYXG4toe0k
	ZSwiUF+Ys+UoHSnmgFtUOW4JeG7uMouqYwoPpVhAAJ6LONOW0FGmIwyMDXITE5WCHyX2lwZdcTS5c
	iN8MAC/X6zKfCw+Hy8HrRBXiOD5bJwkhJxkTtfDqgNVGnOME3Pr/1IoYC5tAHb+ZshyD3QCubZv+a
	bDlBvX8ysMKAgcJlN3GGI/QeHfLjCHXWZPeYu/Ai9m22aIYQIkScdQqJIjtpp1jZ99c+tmLmX+MB1
	P7v6VJGojPqqkBGOMnkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8I4k-0000000HX61-3m4k;
	Sun, 20 Sep 2026 13:59:26 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8I4j-0000000HX5R-0Wlc
	for linux-phy@lists.infradead.org;
	Sun, 20 Sep 2026 13:59:26 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68KBo2Ve2422165
	for <linux-phy@lists.infradead.org>; Sun, 20 Sep 2026 13:59:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	FT9+9SmHl3R1pvP+/NDecvgfBs1FIr4vjxEaFWXcIJE=; b=QGV94iwo+m0cN4bL
	q/uqxjesHP7fpkwH2mGB5hdU2oDYA47rl1mGDx5MT9wfDbOjNBbbWOwTOC8BCRIC
	Jq1EurStiCGYFwEn/DSlWmA4SlOEvz4CSWhx5kG11MSJESyOgJ/0ctYmlo76rZAq
	KMJhdM/XBruw/Qh3K7MBfqlBsBXpkgBPL9/A3KazuffsEj+B5xcokT2NbD5GmQZ3
	enHAowOZ/CCeC3rfoYm3kzHfiRjxRnq1lt3ciAnekEhkl7+DnazQ+LvASWRHwt8E
	Xs65cHL9imKY+7XvFTBT/nr0jSePuMwSw4wjsT14prN1Ue5XqsSe7C2kxP/itiyH
	o5KUww==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gsjm332xb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sun, 20 Sep 2026 13:59:24 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-53094ff7090so73634101cf.1
        for <linux-phy@lists.infradead.org>; Sun, 20 Sep 2026 06:59:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789912764; x=1790517564; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=FT9+9SmHl3R1pvP+/NDecvgfBs1FIr4vjxEaFWXcIJE=;
        b=bPbrGcS4MkfhWtiREAz0gZRCt6Kf4YBEjnyXMVU50ndd3QrCfQM+5XCkjYCPvqRGrJ
         AflsHBlsg+SdBY2oPw3wTzmhtpv80djQRS9VhaLB/CAXxJyJdDoGr2EBEAPAUxJ0XOey
         0Ulgt1UtIBQoTMJ0SI3HrO2wL7b98E7haN9OHW05lqTZMY8uKb7B4ONaXU3xzeNliTY1
         zXpjOIbI3olp63aFKkG9ha7VvlmxYGBtKd2KFZ13EoH0r2RGOqK8Baa9ILOK2h5IMvKL
         7++kbSRz+8MuX/1vqsrY+f4KC0QfIky67fR8t6zdTwwxGYfywnTYmdfTcEPSKYOCe968
         VMrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789912764; x=1790517564;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=FT9+9SmHl3R1pvP+/NDecvgfBs1FIr4vjxEaFWXcIJE=;
        b=cTyv0M2Jla53moiKNrazpr2Yqyvc0qVa1UzXCmpsb3135fAPBpnMaw5bj5ku10ZRAK
         1bQNKwU6w0psHknzJDFd6pkNRs4cSofgwD/6c8UJ3K/RDJ3tErwyJ8UA1ScSDgH3ZnM7
         xWoaPBR924tCYCEB9WOWUU3gpsGvSJrIxvMh5KCVipSZtH+ZCdLvfJYSIlvmIFr0bgLw
         HeISzcoNEw6T69ZYFe1tDwNhDg/WgMwL0MZ8+S1KgsAWj3wwhzbeFU9ThXKkox59SMxB
         jWLsK7hqDvBeu3VFKozqzCimWDe2jGh2u+S3qee+qPMpezG46JH20kiUdVwfRW7TRTGO
         tkLQ==
X-Forwarded-Encrypted: i=1; AKwUvBxzx2v1X4D3IfhlOEvFOMi+RPgMvE0v64cOrXtW+FszZluvTeNTDPk05hUMw4Xm4E2JaZ5grBDcwB4=@lists.infradead.org
X-Gm-Message-State: AFuF++mSHnghpHzgjOzneDCqItpj6h2Rm+akzrLqwitR9CYkHTDNDeCJ
	HqlYbrNLihAjdRD4I/d42LzQK9GSqp3fXjjblu/qJpRkX25WQW8mSsFp8UASGio7l/1Qbd7SlKd
	mA3TgdLUvYmF7B/54pkCijubthiCu3Bb8gzWFz8JKHwMCy1X1exyrz9lGutAIJbC+YYwq
X-Gm-Gg: AYBFou12VG7RIkFritSRmoyRc+8kPSZe1zqx14oX18XVVOWqahr6vrdtNdPUjpHRE66
	9A9OD2CIDqfROMCssQncc0nmiyjrQsCaHTAyh6TOJa85E3R9Ax+e+mNo3xZENwYLSRN+UniuPzy
	PT0q2x8VuvnDcTwqmCfi2uqUCFQT9nlZBFD+MFtuPKKz+GX/T9cjlFOGmZYIPRlkJBB+91BYHRK
	/HxGxm1C0pNwv5sMAzBQo56KKpPT1yEB/PyiG//V8Khkngwixx7PXYhaTYqHHXe/3+fjECJbQvV
	VkkanOY71NviP6kiwQn+YiyMQMQKHx+ZzF5uNKUqNHAX3cOx1Klq+zWEw+77RkyI6TQFQHrfaGn
	cE2i/ND/aSfQJxjOIn8zgL6bx8zZIYC9hlTV4GGUJgi4gcVsZm0lMISU776TBFzUZJvU4wDXsn/
	+ocjPgc77jkf04
X-Received: by 2002:a05:622a:1e19:b0:530:e2cd:3826 with SMTP id d75a77b69052e-532b73a6116mr58891611cf.62.1789912763694;
        Sun, 20 Sep 2026 06:59:23 -0700 (PDT)
X-Received: by 2002:a05:622a:1e19:b0:530:e2cd:3826 with SMTP id d75a77b69052e-532b73a6116mr58891231cf.62.1789912763288;
        Sun, 20 Sep 2026 06:59:23 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3a607678223sm13620541fa.39.2026.09.20.06.59.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Sep 2026 06:59:20 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Sun, 20 Sep 2026 16:59:14 +0300
Subject: [PATCH v3 2/3] phy: qcom-qusb2: correst PHY description for
 IPQ6018
MIME-Version: 1.0
Message-Id: <20260920-fix-qusb2-v3-2-c273e75c9fb7@oss.qualcomm.com>
References: <20260920-fix-qusb2-v3-0-c273e75c9fb7@oss.qualcomm.com>
In-Reply-To: <20260920-fix-qusb2-v3-0-c273e75c9fb7@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Kathiravan T <quic_kathirav@quicinc.com>,
        Baruch Siach <baruch@tkos.co.il>, Dmitry Baryshkov <lumag@kernel.org>,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Manu Gautam <mgautam@codeaurora.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1930;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=OvXsXZhyh0/V75JFh9+1ibNWyaPWqSxRuFIu0OMPcCA=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBqr+aySroGXCWsSjrOInlYIIc6Gv1IlHZGBWy4a
 qBy/cnYjWmJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaq/msgAKCRCLPIo+Aiko
 1a19B/9Io+G3tt274CadXBHOXyHdfeVCXgmou32sL+P4eQ593Z9ggaA4RiL4qYli5SORXPibv7j
 LF5TEJuU2LdSZCcgkK7cw7jqZy9ZSd94Sn6EGB52bMhRctfQYvpjsTWCHJO3LOX0tuqseXxOHuK
 8PtxbT8e9Dvtr0XsHnS+kKcRIvEz686KkNNw0iip9w4dAgE+22vad3IRMRiWWceorE0gSyBUxBH
 zLqQkuAoDosXXsVZNyZYMczXS6s3W4217zTs2OilMkadQLGnCZDNaLpjnV911enKpHE4t7dQjBz
 Gqt1UyHrQ1MVhH2CbhwPBpUgUBJ//Ih61UtHun6Dz6f6s8w9
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-ORIG-GUID: 3OtHAc2iiv-SuLMMIA9jvlj9WB8u2CL5
X-Proofpoint-GUID: 3OtHAc2iiv-SuLMMIA9jvlj9WB8u2CL5
X-Authority-Analysis: v=2.4 cv=DtfDa2/+ c=1 sm=1 tr=0 ts=6aafe6bc cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22 a=EUspDBNiAAAA:8
 a=rLpG3bFX5iBGt7CpEVUA:9 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTIwMDIwNCBTYWx0ZWRfX9a19qkHA8Gtb
 NYp2vqw9Cn0QKVN18OrhZIo267qTEXxhnr5cx6dWAJPzqehkYiUCzYOImKd+mnUCcBqNXA2HNkU
 8R2b6GRtcP9x/FUeHhyKIYPtoiADBYT5cK1f11YH6A8ok4EO25Td1TTvbRI83iVPknHSmn6L4tq
 8FzDxvlWkuLVC/r3VeWL/PUYNUgEZPmoFKKUjBEfI0Komt2D5SsbDK+yS+7ionZpGROL2jemaWU
 9Gry3AVh1P5ioRPjkX8HNu6hQYVEeBc1/iYjU36mT0iUc2KetmFKeUdXvOjoEhcAq7F6j8Kr7TW
 bOLjz1COv7wFKz2z6TdXKmVWS+Hhk7q5oxZHMZJzgG7ze7BuXsC5jnXgbPf9NjaHow4mATrLWU3
 xdwP5/i+RqxQD4QyxdEDonfaGeiFYgTxY0WmcFLfd7iwteeAr2EkJow3p7oHi+/S2dmHVPFaHQT
 RGz+izJshpJIDljXo2Q==
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTIwMDIwNCBTYWx0ZWRfX9eQXJ1ZuJQHc
 OuH3OjyqX0kAZ3R7VlDcSpW/IdMSkdETwtyhdVTpEI3ZkfoSHMg8toJOv9CxhUl9K3ms1d7SI6t
 oxGS6SOF7zkyrdXMB697w3H8F3ve168=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-20_04,2026-09-16_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 priorityscore=1501 adultscore=0 spamscore=0
 suspectscore=0 clxscore=1015 phishscore=0 impostorscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609200204
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260920_065925_175568_0B15AD4B 
X-CRM114-Status: GOOD (  17.34  )
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

Qualcomm IPQ6018 doesn't need to reach power collapse or retention of
the USB voltage rails, so autoresume is not used on that platform.
Instead of programming a fake register bit (BIT(0) of TEST1, while the
QUSB2 platforms on that platform should use BIT(3) of TEST_CTRL),
explicitly disable autoresume programming on these devices via the flag
in the platform data.

Fixes: 2cfbe6765b7a ("phy: qcom-qusb2: add QUSB2 support for IPQ6018")
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qusb2.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qusb2.c b/drivers/phy/qualcomm/phy-qcom-qusb2.c
index fc516b7cf5fa..a1de05a83128 100644
--- a/drivers/phy/qualcomm/phy-qcom-qusb2.c
+++ b/drivers/phy/qualcomm/phy-qcom-qusb2.c
@@ -294,6 +294,7 @@ struct qusb2_phy_cfg {
 	unsigned int mask_core_ready;
 	unsigned int disable_ctrl;
 	unsigned int autoresume_en;
+	bool autoresume_disable;
 
 	/* true if PHY has PLL_TEST register to select clk_scheme */
 	bool has_pll_test;
@@ -341,6 +342,7 @@ static const struct qusb2_phy_cfg ipq6018_phy_cfg = {
 	.disable_ctrl   = POWER_DOWN,
 	.mask_core_ready = PLL_LOCKED,
 	/* autoresume not used */
+	.autoresume_disable = true,
 	.autoresume_en   = BIT(0),
 };
 
@@ -687,7 +689,7 @@ static int __maybe_unused qusb2_phy_runtime_suspend(struct device *dev)
 	}
 
 	/* enable phy auto-resume only if device is connected on bus */
-	if (qphy->mode != PHY_MODE_INVALID) {
+	if (qphy->mode != PHY_MODE_INVALID && !cfg->autoresume_disable) {
 		qusb2_setbits(qphy->base, cfg->regs[QUSB2PHY_PORT_TEST1],
 			      cfg->autoresume_en);
 		/* Autoresume bit has to be toggled in order to enable it */

-- 
2.47.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
