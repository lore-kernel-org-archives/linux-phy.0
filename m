Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94309606A327
	for <linux-phy@archiver.kernel.org>; Tue, 24 Nov 2026 20:02:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=QrxXqorD;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=TGvf9KwK;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=XQeHnusj
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=1pwAxZzi346ZbF8qTuo19E5F/TBShITPGvCRrQPvrFs=; b=QrxXqorDA/PzNJLuWRowSdQAC5
	aCRAkgERBlAFmEJS6sDgb0Aj08Dx+typR/GARbB1cMuGLq4FHiES72hFYnJAU5JDfcvSvus/go8ku
	S8QSLCxHIOgpmWw2FE2QqrcCaVlNMU19zrgaL/ozIIB3chpJ+duLMK0JIBwnA3P6DcF/9ot5U2+yw
	lQhVkyhnd4MhMZIhu1JQtWHfr1OAKfUrAjQ8tvHgJ4M3N1pdJDIVI18yiL6VhzRPN6cRi1lCRiCfl
	8OIIZfpgByuX8VWx7K1yuHUtMiVsso9ff1a5G7Blc336kmgoT5XMFUup7YrgYH8YrLqopRcG3u4D5
	NGfTrtdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVwiW-00000007h7s-1Vhg;
	Tue, 24 Nov 2026 20:02:16 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVwiS-00000007h6Z-3h1G
	for linux-phy@lists.infradead.org;
	Tue, 24 Nov 2026 20:02:14 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AOIXrhb3701456
	for <linux-phy@lists.infradead.org>; Tue, 24 Nov 2026 20:02:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jDFGofZS9wIbG6zZ/KoqobVo6RlFteO9ubwUWazjPnM=; b=TGvf9KwKvWtorsv7
	IlkKQHvhJ98YDIcRXg+OLTdiq0/gIozGKCv3qjHuNnCfF1KQPdQI0p4WDdDCbuTo
	EEBiY1xW99qNtNT3aRywF+X8/RB+pZacJPSK2khsA/BX6GY5wNZ+yV3tbQ9huJaO
	MuPwJCublkI/HInKTMAxX+y0oHfR9egSgOKWafrjzOVisMzqAf+Wsi+ZwCRiRWCX
	oH01GTUTd6AmgLaPJJT1IWb+EzG/SXZAmY1PGhjuLi5A8zIFX9/RdYyLg8rai3As
	zrl70kWcugI+5WDWyDTahbZIcpASndWkVhN1lYJ9Pf+cB693g4hq1fLPOcaskxVa
	OdRjzg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4j5ad7t56d-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 24 Nov 2026 20:02:11 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-94965dfec53so58235285a.1
        for <linux-phy@lists.infradead.org>; Tue, 24 Nov 2026 12:02:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1795550531; x=1796155331; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=jDFGofZS9wIbG6zZ/KoqobVo6RlFteO9ubwUWazjPnM=;
        b=XQeHnusjsgKphgsd0IOToFW/aMXoWMYPHoEOJKJ4UHzhBMfjogbr1ctylURhuLKjBC
         rpiXPzd/EoV6wl5pn/r7eM9X3SOT7Wxbs0RECM4FwvI+6ZaZNuGOZFhMFcxOLI5kCzZc
         82JTnCO0+GaiMTFyd27S+5T6tgwLkQXxtjv8I8x82zmB4Br9mFrmwebpLPtNymXXRjLP
         /+MoepUIAS2O/lhFBDWM+KTuC25yVjLt6aaVOHh3IiQdJJVO82MvV7aNZMSLuHsCXAPd
         sj/xUELl6Qhq77GuGxDtXD/kAM9oX1LoPZKaY6GGEPWBK+kJfumV7uw4bgtqzfj6P4sq
         a9iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795550531; x=1796155331;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=jDFGofZS9wIbG6zZ/KoqobVo6RlFteO9ubwUWazjPnM=;
        b=jzP7QbKEp1VTF1CtesmsiV4SiMzpVP+t/Sx1oHZMe8NYSNevn8G5jypCvAgkl6Fynb
         BZWzHre16yjG79+Mjwcuctf6AwtG5MiEZ9CEkBdya+qVMNp1Ljj+IA6rVbHGCpyxvKiJ
         dDIBpa50671ibIcDG6VppTAM2EeJJgB0/aiUpBiuaIQjlyR7tEKGXfLvms3tLYdQlSMI
         0WGNIfd4OXJzEo92jNcwnnJbqlGs2dMc5vpD/tEI3m835PdH206O0N47bHDwQZ4MrVVZ
         2LkigcQNqnu756KFhORHFixrBkhJh6okztRFJTqfiM2ea9UcuZz0r8LKLKg1+uobLK0T
         xiLA==
X-Forwarded-Encrypted: i=1; AL+hErFDhfYzGv3ZCMItFrRe6AeHIrSKa2OrFh8O6yDO+i8w5Uml3P9Dy0UpQpAsPjrxw88Xd6wr7vNPUww=@lists.infradead.org
X-Gm-Message-State: APuU4Z9oa0R89lVQvV/31/8cL06zkRvC/2xmMnVSV1jjNGYzM+F8m8Np
	wylSCKtE+HvzpL2h2zX7z+ODdybbY5PbRVZ2rVEFBTJ2pk6o4fl6y9I9ESAyerYcScG2Y+sLK2n
	ypmsDBX8jOHVSPSgKLSDQGU8anRYyaQGOdUZTMkxHFNuKOl3abUy03VFfrtSTTPJR6dz8
X-Gm-Gg: AZFdTZfOsBacsKy5HogyrPp40wN6Lshg0RH0SfDUecZBTm+/CJaDqH7fERA1jrD4Hc6
	lSL6JvzENpiX+ki1BxvaUHUV6newsgzV2o3feZGW/9nCiz+moRvIDv53cj7Jtk8zlPjI0ipuISc
	QdIfRpgi4vN4fO5YBgsJ3SYbNVaHl0YTlVz7xvHszl9/llqB3ThvoUGlsKT/cypCl7WjFQtb7le
	qxqolkE2DGHy1BcOVPHMIQj1oQ/FqtNZdf2dGpzGhXXLPNb7Pljw9BVYZU/nzGCotP3wnZfhGx2
	2LQLQWum12/bTxe0deJiQl7KnrxglpIyKIHWJCVyP+I0oX2N7gt555aOivRV7JlQH2Lmg5Mft0/
	q4FC8MkofEI7Lggs9AQAV/GrfcewtNSW0LTTDs6NTmMqdc8mLaQRdS+IQ9kMT6ewTJwMEFtspyL
	lvFfR6K5w=
X-Received: by 2002:a05:620a:1118:b0:949:95d6:4039 with SMTP id af79cd13be357-949ba9c1d91mr2807630385a.3.1795550531155;
        Tue, 24 Nov 2026 12:02:11 -0800 (PST)
X-Received: by 2002:a05:620a:1118:b0:949:95d6:4039 with SMTP id af79cd13be357-949ba9c1d91mr2807622685a.3.1795550530332;
        Tue, 24 Nov 2026 12:02:10 -0800 (PST)
Received: from KDYBCIO.eu.qualcomm.com ([2a02:2a40:15fe:b200:7192:a019:58a4:eb4f])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4bb85399e2esm517678195e9.7.2026.11.24.12.02.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Nov 2026 12:02:09 -0800 (PST)
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Date: Tue, 24 Nov 2026 21:01:39 +0100
Subject: [PATCH RFC DNM 10/15] thunderbolt: nhi: Resume a runtime suspended
 NHI for system suspend
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261124-topic-next-20261116-fsm-mvp-v1-10-a9b45c69cd38@oss.qualcomm.com>
References: <20261124-topic-next-20261116-fsm-mvp-v1-0-a9b45c69cd38@oss.qualcomm.com>
In-Reply-To: <20261124-topic-next-20261116-fsm-mvp-v1-0-a9b45c69cd38@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
        Brian Masney <bmasney+clk@redhat.com>,
        Jerome Brunet <jbrunet+clk@baylibre.com>,
        Andreas Noever <andreas.noever@gmail.com>,
        Mika Westerberg <westeri@kernel.org>,
        Yehezkel Bernat <YehezkelShB@gmail.com>,
        Mario Limonciello <mario.limonciello@amd.com>,
        Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-clk@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        usb4-upstream@oss.qualcomm.com,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1795550497; l=1364;
 i=konrad.dybcio@oss.qualcomm.com; s=20260604; h=from:subject:message-id;
 bh=VT0A3Ff5mjwo5JFp7mj0fXPs8lsBYJ24xhfJ+8TyvbE=;
 b=BI/O1PsXCKL75DybTynegzhap9M3cUZ42FTlJ5Ou9qvJpR0kF5q8oxlq+CxsGnKfDU1bNa0J+
 DWYwwr0nFv9D9l+3YxFMBX2j0dcjtFaVMoXllO2R+3oUn4HJ+WZFIi4
X-Developer-Key: i=konrad.dybcio@oss.qualcomm.com; a=ed25519;
 pk=SGRRMmlLTuP/lGKdQ0f4KPvxn8VVsXtXaTpdGc8i82c=
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTI0MDA3OCBTYWx0ZWRfX6bf3htClgQfM
 rpsKw+MfcWeSvv28bxIk1SbEh0nZR3aXfIFSB1SrUcjzW0KZSdyd3XAJ4MEd7s8idLi3xPOKgYu
 DRrecEtELzhS4uwPP9K9yLdZKGphgr8=
X-Authority-Analysis: v=2.4 cv=cI51IVeN c=1 sm=1 tr=0 ts=6b05ed43 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=EUspDBNiAAAA:8
 a=KHM4NlRHU2ppStx7mUgA:9 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTI0MDA3OCBTYWx0ZWRfX6faXxz7mD+Bc
 J2TMvcTuraLhA82iHHEfJYGUPl8E6HztpAJrasCU0KqzU4qf1meca1J8atzS6+LzguuQsxo2KMy
 d9mD3PWD/P8JHkyzXI0gWpVJkQOTfNKAXTpB8CBy6f9gyIAz5IwRzkokppnCIVTi0DSsJyTl1xI
 OPwjiGFjnosMRhUaNumokP8tmh6IaZqdIlq7vZDE71NH8sB6WbPKYwW+PoRd6W8+WhDJaurSMR1
 fawLz1BNpAqkCwqQmIuRK8Qnq4xeelbFpRIE5SBb8zVe5QWFToBgbxb2bEtmCRuQEth1r3dhljr
 /00+/jhZFgWexj444OOovNA9cAMej0Bm2xIZU3OVNSLCVKYJa0WE7O9ZzVwfQBceFhB4PD9Pjrq
 pDbQUas0Z31++HUIzWGWTcwNkgnaA0pa3vtJC9tUAGe1ZA2gnKmwSyntBV5RV/DeMvje0jiCHMC
 BgCnclvgCR2PYMIwScw==
X-Proofpoint-ORIG-GUID: 19dlHu0ghDU-kKqvuKvgiABvJIvJ4F84
X-Proofpoint-GUID: 19dlHu0ghDU-kKqvuKvgiABvJIvJ4F84
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-24_05,2026-11-23_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 bulkscore=0 suspectscore=0
 clxscore=1015 impostorscore=0 spamscore=0 adultscore=0 malwarescore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2611040001
 definitions=main-2611240078
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261124_120213_039436_E55A28B5 
X-CRM114-Status: GOOD (  13.88  )
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

The PCI core resumes a runtime suspended device in pci_pm_suspend()
before calling the driver's suspend callback, so nhi_suspend_noirq()
always finds the NHI active. Platform devices get no such treatment, so
these runtime suspended NHIs gets suspended a second time in the
noirq phase and resumed in nhi_resume_noirq(). nhi_complete() then still
sees it as runtime suspended and resumes it once more, which corrupts
the control channel (RX checksum mismatches, config space timeouts).

Resume the NHI at the beginning of nhi_suspend(), like the PCI core
does as a workaround.

Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
---
 drivers/thunderbolt/nhi.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/thunderbolt/nhi.c b/drivers/thunderbolt/nhi.c
index e2578740d569a7ee1d5ab22e8effc153cb7d4632..56bc5748b6515b9d4799aa87ce0f72e1d673d634 100644
--- a/drivers/thunderbolt/nhi.c
+++ b/drivers/thunderbolt/nhi.c
@@ -1258,6 +1258,13 @@ static int nhi_suspend(struct device *dev)
 {
 	struct tb *tb = dev_get_drvdata(dev);
 
+	/*
+	 * The noirq callbacks expect the NHI to be active. The PCI core
+	 * resumes a runtime suspended device before calling this, do the
+	 * same for the NHIs that are not PCI devices.
+	 */
+	pm_runtime_resume(dev);
+
 	return tb_domain_suspend(tb);
 }
 

-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
