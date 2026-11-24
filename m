Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36156606A31E
	for <linux-phy@archiver.kernel.org>; Tue, 24 Nov 2026 14:58:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=gctCBgVO;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=Xene0RQr;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=S/84YDlG
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=2i0cHPjIEFLXJOQFxRd/EjvlJX8X1B3nRvgRzL2c0JM=; b=gctCBgVOHgVufSPp0BJBExmRKI
	DuFHdDaH82sX71NNaYAriWVVigFE/veh53nNc9dnM4hkL7tW17+wd/YXDtZxJlMpqArjVTqa32wT2
	W3+ep5xF7Wq8h9KcvMfk+8aimgCqYcSsQNlOhmDP9IefpMCwZ/eGA/2YqMgUmPhgFydXJafgdBDv6
	J+Sw394pZ33upTAnAFq6rlavAsFfJfv0LbVSu0JFWnhysdihYow+tMaH4nHd9eI/zTZTaGkSNJ/Rr
	iO8X2u8VK/1pbDqDmoJc8Licup2nchhyCV2XmFcJZT1caxhTwguloDOPfut2UTqt5F20jJkZrUQmp
	qh0yCJog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVryW-00000006pgF-2geh;
	Tue, 24 Nov 2026 14:58:28 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVryT-00000006pfd-0gyO
	for linux-phy@lists.infradead.org;
	Tue, 24 Nov 2026 14:58:27 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AOEbpqp1507766
	for <linux-phy@lists.infradead.org>; Tue, 24 Nov 2026 14:58:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=S1pbfabk1bLhg5LDTOJSLe
	okpoOQMI4zmjiCNBT9bWM=; b=Xene0RQrK+RHijV6Z5RslKJQ0uomYs2xuCUL5k
	b/ni7R2XE0WiHH4RrtM6Lua+xMsnO+9GkYPsteUDJf97nJdmdxNgJRhzpprSEVHC
	+xP8Yx/5ogAzaoLkp9NPAX8PwIQlqccFpF5eC0wMM+sMmxS3iH2B4tCmJ1KoRuoj
	FH3cMMh8svbwaF+PXbzOiS8XgJFsAkEV0Xwe62QgdFHEjzOJWEkBrK8DmbNZx3jT
	La1WHBUecttZL7f0eQS7NueWG1kkZyvZUH3ExG7dEhZw+7bPsLeZTD/u0yXyhs/s
	krrzV6BIrk/oqFXPH4tQ8ANKxTk+zeP7UdpwfJMa1BzNZfqw==
Received: from mail-yw1-f199.google.com (mail-yw1-f199.google.com [209.85.128.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4j4yyt3bt2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 24 Nov 2026 14:58:24 +0000 (GMT)
Received: by mail-yw1-f199.google.com with SMTP id 00721157ae682-8b3494ad22dso9724637b3.0
        for <linux-phy@lists.infradead.org>; Tue, 24 Nov 2026 06:58:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1795532304; x=1796137104; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:content-type
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=S1pbfabk1bLhg5LDTOJSLeokpoOQMI4zmjiCNBT9bWM=;
        b=S/84YDlGm95JP9Rhs9SC5St0edKKF+tGBn9IqXc73A0S6UpWvNiRIrraSTl2ziiywA
         ikdIiWE3x7ud8JY5oMA1lklyJI2EJwRJwXQ5bOUFgRA0JSiwHQv90o2ErIqPq1a27/th
         mp7yBFfBiIBQ2dF4p7RoQ6QS1EDFq+r2Md7vmK+HiHmTytmFfQYIt1qC4KRcCxRQ4FG5
         EG0bfaCPN7HFfFwPL7xTpSyC31lipJUz1fXth6txxb42PkDmvcx0l0P9bqmOGCTWIISY
         cdrymN8U1CAW5Bf8cn6TGLakgrIlcTMwTGeXFSNq8YOEoXxJkXv6lSI7uSNRBRMs4wHn
         jFUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795532304; x=1796137104;
        h=cc:to:message-id:content-transfer-encoding:content-type
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=S1pbfabk1bLhg5LDTOJSLeokpoOQMI4zmjiCNBT9bWM=;
        b=kqpvStdEf4ES4oe6LoSaJQJDkklmAsU4wstttk/S72B2YgldFzNDzjvfShboP/lilB
         GOQLrxcnSBKeeRvaRegRy/yWyuB/s3CL0YkRp853WvS1lNN02TivomklL1ToGcsSAIQV
         t4uB9XlsMJjY9vRHw1W1r7kF3mYmneUbuYdYoOBDySFnf48g5bWaqvwGDKozWxdQeqkQ
         FZ+mS22bAagswgqxG3I8gtO49v1BgegeM378fk77YtDymLz6fPqCJZQlZxJ1lA24Ee1R
         eUGH1gGCQqj4WeEtuOWrWvyJb5GlxGtC6rGkYGZz3e5SSkBgit8obFyJ3l11oLbX+Z7Z
         PqKA==
X-Gm-Message-State: APuU4Z9LfFeQJLwFDuHTpkyhxLPMiCaca5ywOZ+uV9Nyp+qDfbbgvl99
	dmRRWg5TAXjU/P1p0cDDva4SYNfBg73nW4qPazvIk+PeCiT924elYt2KRl4GuE5r9O3xgBxGQXC
	EdubgDMIdAzR2d39Go//4KwljY+xAsnq8Xm4aKyZ6AviV1fvEx03PZzMuYoKKMgBkSLrsbkyKpa
	Ab
X-Gm-Gg: AZFdTZcIQx5RDjSDHfz5KtAdpKGTwX4GdX2ot06L9EO/QUUF2c1D9S+KSnDcIAnOLG7
	O9YlL3JtEklJY4Mqd59DQyTkrHHhuYqsl+PxcM+54g0Li3ruzEJRoTSw+H2yP+aOdHtMX+MXlDP
	hC2nEOJltWQMTnbbfiLEL+ki3XgH2DWvMIWUvAd7+/mKd1opaKPrE/h2z7WdjMh6BSVM5BK/yVH
	l55GTWh2y/WD6lPzib2nUsyDExDJr4ToP7b+jFEoXBd+QtgLJvkGYedIV+52Uzet5E89PEGqQFB
	kC9mr/PNB736brl0CM3yeE7LuTj4We9qVpZPmCwvgVZH8RvQ3HYyMs5eZRlYWqbEeEZptU32zTi
	0uCYhKqz5ZEttfhbqMuN0GXWf820UEWzCvn8FIZuQdLL0JQSFedHs+oyIpecRvLoiMl9gmvC4q9
	/x1RUZviQ=
X-Received: by 2002:a05:690c:5c1b:b0:8b4:e990:e763 with SMTP id 00721157ae682-8b5201e88b0mr90402277b3.0.1795532303710;
        Tue, 24 Nov 2026 06:58:23 -0800 (PST)
X-Received: by 2002:a05:690c:5c1b:b0:8b4:e990:e763 with SMTP id 00721157ae682-8b5201e88b0mr90402157b3.0.1795532303287;
        Tue, 24 Nov 2026 06:58:23 -0800 (PST)
Received: from KDYBCIO.eu.qualcomm.com ([2a02:2a40:15fe:b200:7192:a019:58a4:eb4f])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4ab65cb4341sm28804497f8f.4.2026.11.24.06.58.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Nov 2026 06:58:22 -0800 (PST)
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Date: Tue, 24 Nov 2026 15:58:21 +0100
Subject: [PATCH] phy: qcom: phy-snps-eusb2: Ensure reset is held for 10 us
 for QC PHYs
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261124-topic-qc_spns_eusb2-v1-1-9030230a4cba@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAAymBWsC/x3MTQqAIBBA4avErBPUfhZdJSJSp5qNmVMRiHdPW
 n6L9xIwRkKGoUoQ8SGmwxeougK7L35DQa4YtNS9UroV1xHIitPOHDzPeLPRwliHpjFSqg6hlCH
 iSu9/HaecP+eFledlAAAA
X-Change-ID: 20261124-topic-qc_spns_eusb2-bcdeb3b0015e
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>
Cc: linux-phy@lists.infradead.org, usb4-upstream@oss.qualcomm.com,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1795532301; l=1149;
 i=konrad.dybcio@oss.qualcomm.com; s=20260604; h=from:subject:message-id;
 bh=wPfhMcWaQUPwlC1uKLSPds7cAM4iCd0ybCsbPzWJWGM=;
 b=Yi1DtW6fFqkDhhhnaHh1cqK1cWZZ96hTdufNDDEs4CZzJ5LS8YKaJ96KEyeMywBkDoBWoIH4p
 HYjcWJblNWrCaxAz60vLvntYvzXQNYJkpJjM3dB1nozROa2PTY07IHN
X-Developer-Key: i=konrad.dybcio@oss.qualcomm.com; a=ed25519;
 pk=SGRRMmlLTuP/lGKdQ0f4KPvxn8VVsXtXaTpdGc8i82c=
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTI0MDA1OCBTYWx0ZWRfXwEYWKxk4yXSd
 Kq84W3l8rUm6B+3h64J7J8wN62QnIXIo0NC1FIFnxGiCLqlDlIJ+kVIBPWsbpdyQ/IoH53fcnhB
 r75O+hyH3eGQmIs9cFEXVVUnzPCwaHU=
X-Proofpoint-GUID: mDdzTmteWwX04H1IsKfKMrZrXT3uoXkS
X-Proofpoint-ORIG-GUID: mDdzTmteWwX04H1IsKfKMrZrXT3uoXkS
X-Authority-Analysis: v=2.4 cv=W9OtxhWk c=1 sm=1 tr=0 ts=6b05a610 cx=c_pps
 a=72HoHk1woDtn7btP4rdmlg==:117 a=mIlr93M0opYrpvY3:21 a=xqWC_Br6kY4A:10
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=vcXBDuXdFjkjd2rvfpYA:9 a=QEXdDO2ut3YA:10
 a=kA6IBgd4cpdPkAWqgNAz:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTI0MDA1OCBTYWx0ZWRfX5KvdtR5hjP2Z
 aWuT3YKV72Hy97+dYytu2p433zGwRzCbGjsFFbURw1tvaxZKGNRc4U2lMcVEqRx+Z0uHXZPhAxh
 e/6yNdVKoXbecn+sxnLvRiF29LVp4aozwxgw/oPnS4tE+zu5/msTaKe/jwsnwJCTgYc5k7/i0Yi
 ab39H6o36ZY64GeyT2Uiq2uxHfnaCkBLLRpYsRFL3EtqxB1jYhmKpXxnWXN3452GaSExk2GQuTC
 tGprFes2Vt2SlckDYeOY/fMrFlhnx30pOGvSd5lZftz/o9Ev8aIURrAbD2NJsCdgGrLQjtedceS
 8fX88ugmRJ4y/559r0qHF0Zxb+/wYPVBYRW89OIVje+DJfq3MCc7KMrrwCQrMrmuaLWq8y71Q4Z
 frLRTl9hMHLZSY6LRCfrKMN0NKxLsfe0EjlF5yB4lwFwHNmhP1nR1AcFYiuPmIfj7U5xjO0m3PY
 5lN+6QCF5tk1tG5NgEQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-24_03,2026-11-23_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 suspectscore=0 phishscore=0 priorityscore=1501 spamscore=0
 malwarescore=0 bulkscore=0 adultscore=0 clxscore=1015 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611240058
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261124_065826_188599_CECB7160 
X-CRM114-Status: GOOD (  10.29  )
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

The Hardware Programming Guide states that the POR bit must be asserted
for at least 10 us after the supplies had ramped up. Ensure that.

Fixes: 80090810f5d3 ("phy: qcom: Add QCOM SNPS eUSB2 driver")
Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
---
 drivers/phy/phy-snps-eusb2.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/phy/phy-snps-eusb2.c b/drivers/phy/phy-snps-eusb2.c
index ee473b32f116d81773ff5f0013d823de8c4ec68b..2304ec111e17430d858c66aa6b157ff6d72d0387 100644
--- a/drivers/phy/phy-snps-eusb2.c
+++ b/drivers/phy/phy-snps-eusb2.c
@@ -372,6 +372,7 @@ static int qcom_snps_eusb2_hsphy_init(struct phy *p)
 				    CMN_CTRL_OVERRIDE_EN, CMN_CTRL_OVERRIDE_EN);
 
 	snps_eusb2_hsphy_write_mask(phy->base, QCOM_USB_PHY_UTMI_CTRL5, POR, POR);
+	usleep_range(10, 20);
 
 	snps_eusb2_hsphy_write_mask(phy->base, QCOM_USB_PHY_HS_PHY_CTRL_COMMON0,
 				    PHY_ENABLE | RETENABLEN, PHY_ENABLE | RETENABLEN);

---
base-commit: 749a4de370409464cf8501ec5b2451df45c84eb4
change-id: 20261124-topic-qc_spns_eusb2-bcdeb3b0015e

Best regards,
-- 
Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
