Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B669CC369B8
	for <linux-phy@archiver.kernel.org>; Mon, 14 Apr 2025 12:02:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aPYIsAO2aMS4/90N55LSIY6mv9VDdMk3trfQrprqP3c=; b=hyZEq5D0Ut3De0
	t/qlMARS827H6gY/y0I1/4O+IrVgRxXOz9spGgo4/4i01KxEJgbIV5akXwDRbqHr/B51lI4c/H8Yg
	J4+n4Tnz4nJefy75FH6UcTShxCihfpL3fJYBX9jstZ9fYTVF3Mizn1DawS+N5glHx+Y1qcki7T56+
	+T8VYD218fFGCnCdQe6x2fytIFr2C5CMJ8AZFpT+a+hMAJ6r0f6tUVqMeVSF/WKCZ5e+kzkZWkLfx
	nrhDDchkKKryjV1x5CQeYN4j7em+IeWxU5BwK9ezfmNo5LG2y30kPhg+Ah21YM8sSgDha20Ev9A1u
	bgYZcQyYkx2lDfPLQ2Kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4IWY-00000001rvQ-22If;
	Mon, 14 Apr 2025 12:02:50 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4IN3-00000001qWv-0FTI
	for linux-phy@lists.infradead.org;
	Mon, 14 Apr 2025 11:53:02 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53E99qG4030621
	for <linux-phy@lists.infradead.org>; Mon, 14 Apr 2025 11:53:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	qRH0CgOt7qs92GLKK4hmTnFI4HEOYb6qRnDMsfUX7Ks=; b=T4L48kafgUFhvliy
	7SqJqXxDFuT0IZB0mSlADmRl3I9MZM/KIyO5Tj8zaq/Bwk//KS8g35NRpiJHx2U4
	02M8wJeY6yVeuKJ2WROAPJ+y4zpDtaAWQ6BWPSTgzJ8or4U0mf+adW+qkui/pFl7
	6+I7PG9+jzQYqI1UdqOL47Gj8Gun1D24BiZ0u91uGsSqcMVKNaWiLTd7knL14Tk+
	FzHJhdMs01fHFU+9bb88rRQxxzc2TuIE9BDRQPXEA+q5SBrbdhS358eXOTdggCCl
	o2Z7g+k9hiXVzmPqnA1IO6tCw05ImGVWxp3EcYy/AwXNVccqv68EuSf06gtqv76p
	Shd7bg==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45ydvj4m34-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 14 Apr 2025 11:53:00 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-225974c6272so32906925ad.1
        for <linux-phy@lists.infradead.org>; Mon, 14 Apr 2025 04:53:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744631580; x=1745236380;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qRH0CgOt7qs92GLKK4hmTnFI4HEOYb6qRnDMsfUX7Ks=;
        b=C/3A19akBcNxKQEm47L6zmnh2VT6sTNj2MrcW+wOh7sODRoWTcNbig8A54kK6DnXaq
         akmM64+PFdqBQrePtHTCJ0xFMKbr0tP0QkjXF5jPBo2BS7keGpSRJxTLHeXits8fTTMC
         1PDqCbgc5jnAF1jpvcAr16Ev+LN6zddOGLhEh+RX4b5ipwQKQix3WBiAiDlhRo/oCg6H
         wInmXQfT5RVCEwi3u4xTW4hOFBbSurWbvBKcJuHpyQ9w32qikrJQ6/pIYkOWb8uPXp0F
         KVWGdYSfaHoSOR2Um7Vjw6+nwj0rudy6t+Rt5sLKVX9wxmGn3X8SXxgUTapqO2PgKRpT
         1omQ==
X-Forwarded-Encrypted: i=1; AJvYcCXNnEaW3+WNXaXLdbXRe//MTBJ/tl6u9Plfs4Q+8AipBojyQjb+2YKTgKmmoTwTQVdLSfmlItfYmfg=@lists.infradead.org
X-Gm-Message-State: AOJu0YwVC7zD7kyUfYjqMIf3xfEwtnXnKULi+r3ELdGZlh2uqy4VAbpp
	v/+DphS7PI5f/SsOWRajvsZzHhVedABZe6Swy6ByDeOj45fbeOthecax9GgjVa70s38GdVmyOEf
	ZhDDGOk0igfmvpCKLg88sB850oIfXcymDjqsp+pA8sHJ/r+uAfoaYlZSEF8mTIKFk
X-Gm-Gg: ASbGncthstQvSiPRPZTi2zNHVufOKJT5s9b+rtAa2o9m85FJxRXmqVmLyUODYaQ9GdV
	PmT6a/vBObou+SZZ/KnHY4F7tbg04HXJyrMHdL1uPyMh8c9Mll9KNooY6/O3p382HoEv57DeFGF
	fNewgOUhhMOLhUy4V2FpqfrXpGAAVJtdGY/cpUgwsO9cLzEs3BGWlGKxQeX85I7p19Wt54kyZ9W
	bHJFats+IbwjoL9eiYqc+cMkAdo6sAuuPVb4QCI3ArszfDBM6l7pwiKq3kjxvr5uZsuDny6VH6m
	UBFH28eeB76hfEwi0UN2qecx6zNlO6HEP8Srd1Wyy3ztGm5T+YtJk9n4XIe3uOC/hLBebJ8pdzw
	GJC76GrIldGcHVml3viT21KKlULHi3eNWTmc31f/qL8ZYubs=
X-Received: by 2002:a17:902:f54d:b0:223:517a:d5a9 with SMTP id d9443c01a7336-22b694c18d9mr213896095ad.15.1744631579792;
        Mon, 14 Apr 2025 04:52:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEPXOEiRYhXgMglgs11kctzcDXDK3b6W0HXJff+ysU258rbYV0ZpyqGT43lZkTX3t1fwWlzJA==
X-Received: by 2002:a17:902:f54d:b0:223:517a:d5a9 with SMTP id d9443c01a7336-22b694c18d9mr213895835ad.15.1744631579375;
        Mon, 14 Apr 2025 04:52:59 -0700 (PDT)
Received: from hu-kathirav-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22ac7b8b73asm96425735ad.86.2025.04.14.04.52.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Apr 2025 04:52:58 -0700 (PDT)
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Date: Mon, 14 Apr 2025 17:22:50 +0530
Subject: [PATCH v2 2/2] phy: qcom-qusb2: reuse the IPQ6018 settings for
 IPQ5424
MIME-Version: 1.0
Message-Id: <20250414-revert_hs_phy_settings-v2-2-25086e20a3a3@oss.qualcomm.com>
References: <20250414-revert_hs_phy_settings-v2-0-25086e20a3a3@oss.qualcomm.com>
In-Reply-To: <20250414-revert_hs_phy_settings-v2-0-25086e20a3a3@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1744631571; l=1188;
 i=kathiravan.thirumoorthy@oss.qualcomm.com; s=20230906;
 h=from:subject:message-id; bh=wk/Fhq9Q3rutgnD4Qc6wZpn1xULO5MLO0XKdfB5uUPQ=;
 b=hAqdX7W+eHb4WuShSmXpBAAbTWTL9nQNSkf60MHrsSQNnXnMxz0CKkqs+q1bbkIziNaftbaw6
 tYEmHNpWr39BVfmO5b9O6k/4HC+Qc6igstYAHGbeJm+u/uWJQ6tdEC7
X-Developer-Key: i=kathiravan.thirumoorthy@oss.qualcomm.com; a=ed25519;
 pk=xWsR7pL6ch+vdZ9MoFGEaP61JUaRf0XaZYWztbQsIiM=
X-Authority-Analysis: v=2.4 cv=ZIrXmW7b c=1 sm=1 tr=0 ts=67fcf71c cx=c_pps a=IZJwPbhc+fLeJZngyXXI0A==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=45MnPZ1KAyxS56gpr9IA:9 a=QEXdDO2ut3YA:10
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-GUID: JGtEQD6v1HpH6hyDQMuWb-jDgh2G1oLp
X-Proofpoint-ORIG-GUID: JGtEQD6v1HpH6hyDQMuWb-jDgh2G1oLp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-14_04,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 suspectscore=0
 clxscore=1015 priorityscore=1501 bulkscore=0 phishscore=0 mlxlogscore=999
 spamscore=0 impostorscore=0 malwarescore=0 mlxscore=0 lowpriorityscore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504140087
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250414_045301_105275_EDEF9A58 
X-CRM114-Status: GOOD (  13.13  )
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

With the settings used in the commit 9c56a1de296e ("phy: qcom-qusb2: add
QUSB2 support for IPQ5424"), complaince test cases especially
eye-diagram (Host High-speed Signal Quality) tests are failing.

Reuse the IPQ6018 settings for IPQ5424 as suggested by design team,
which helps to meet all the complaince requirement test cases.

Fixes: 9c56a1de296e ("phy: qcom-qusb2: add QUSB2 support for IPQ5424")
Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qusb2.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qusb2.c b/drivers/phy/qualcomm/phy-qcom-qusb2.c
index 81b9e9349c3ebb4d303cb040b5c913336bb6b6d6..49c37c53b38e70db2a1591081a1a12db7092555d 100644
--- a/drivers/phy/qualcomm/phy-qcom-qusb2.c
+++ b/drivers/phy/qualcomm/phy-qcom-qusb2.c
@@ -929,6 +929,9 @@ static const struct phy_ops qusb2_phy_gen_ops = {
 
 static const struct of_device_id qusb2_phy_of_match_table[] = {
 	{
+		.compatible	= "qcom,ipq5424-qusb2-phy",
+		.data		= &ipq6018_phy_cfg,
+	}, {
 		.compatible	= "qcom,ipq6018-qusb2-phy",
 		.data		= &ipq6018_phy_cfg,
 	}, {

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
