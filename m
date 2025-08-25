Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B29BCA0FED
	for <linux-phy@archiver.kernel.org>; Mon, 25 Aug 2025 12:54:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BuohrKxHBdqX9ayzMyyLTH1F5SU/0iKdfm5WzfKGfFo=; b=M9u/MFcekt+c/p
	SGRyoa/mD/2wiPeyq6lQJYLfuaYGPDFIstZTtQaYx5t0UdNtW631wIFTGNtjtatebu5JrrLsFw0GT
	MOMq0M+Q3lBDnO0SdXrXRk+u/vQCnUrdTMLJ2D+4BkBkqCWt4oUEu7EkOcdoqcuHV45H4ihy9etL5
	OwYd6N4AV30S2hr0fSuWQdoK51yM6mA0LBWJVEIXAjmObwPeP/mvwDA2tepvxpr16ayjEJ7PgvZ38
	5XyM+VJe1roSvrOy7t+ZIaENJmQB1ysbCdIAy7zBVjcHkfRR6nJrrkVwJC2EsyNEUSbiB28E9xE4J
	bvh35fXWOVyJI6nWEYZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqWit-00000007zWZ-0Mnx;
	Mon, 25 Aug 2025 12:54:55 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqVkN-00000007qEW-3OlT
	for linux-phy@lists.infradead.org;
	Mon, 25 Aug 2025 11:52:25 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57P8jWqC014572
	for <linux-phy@lists.infradead.org>; Mon, 25 Aug 2025 11:52:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1RD0fxwdT+wj1xPAjqTg5MEtJTG2YBJSBCyvEzZQyeE=; b=hDCU99zfPOpo3lqc
	QnzIA0HfHXmMAQ9o6m0PoOm0e+5yfXdqKA68kB3DdltalXW6KJmqdWKAp+YdIXH+
	OwcN6qpBJDO4LGhjBRhol2CJve6gU8Em/7q2rvJZ88WxmyGflnHavNxTPdKaw0dZ
	jtf2p+dBHZ8uIUYctm1cELUA22Ho9dNM9Twy05FhkMzfbXaLCuNy4/oosJX/dAIf
	P+fCseuEvx91k2V3xsBW3FnTLhIy4ar87C4dmfLvyZdEDjwZS56mlKxRdjdRSm8k
	KXmTiw9KR02c25TtJm+cDxbWeVGfpiD9HPsUDHlvSv82tEYE9gVFd/IfjRcSydYZ
	09bc6g==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48q5y5cuuk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 25 Aug 2025 11:52:22 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-24636484391so31728535ad.3
        for <linux-phy@lists.infradead.org>; Mon, 25 Aug 2025 04:52:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756122741; x=1756727541;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1RD0fxwdT+wj1xPAjqTg5MEtJTG2YBJSBCyvEzZQyeE=;
        b=faFJH1Ecf5EvGARKaNiKFNDN1a+VLggsSzLE8AXBApZ9aWWyCSXmfbX70oUvrJFgc+
         pNxgicuc9owPskZyZgq4HyOE4pQ2wCDWonH8Je3kcc6qSaMbpf9UTidZ4vhCxb6hk2BW
         N1Sunlg9zWxpnwjMsG/fGpUTFtgMCnkq8fjDLCpE6ksmeLQItFFs7njGajEMqoabWSmb
         5tylf2cNXQn9HsIXAozaQEJYbw8vTUlgLUq/9jYyETTynp4M5Kxb52DCFOfLv15yrkQ9
         NXyBlZ2iipwjLhg6yikT5yMYeWuEffyqk+h3UXTOyxYba//yOmkK1P2PvlX90rCLOF7e
         RS9g==
X-Forwarded-Encrypted: i=1; AJvYcCXAoZPWLDXs5aB0FatxGfs6reXl8FW6dx0CeD+9MDVCUqG5piRD5UpBazB9bU1CSPko0zuFg3sVzRQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YxX3hzodUSwT7dqkP/pb70o5ndkXZ4NRYfmRTRwaA6tvIgPcbG5
	i8Dl0eSs28fDo+x101+JPwnqJQ+mgZRYJMFwWh1un+oZb1xGJnvhRAa4gGZUgldyN6KYUNKtfyq
	kStZ/2l8to3+nJDvLlUHeqfRja19930yCmmTgo05zc1SIp4zM26dyfnjF7+5x0ywnm/KBugrYTB
	1r
X-Gm-Gg: ASbGncu7bdbOyKNqkPgrC276iOz1zknvMIVtyuREJZK/NmjmJ+Mo006tVjPClTchP/H
	LKAEbgldDFqvT+OM43v8gyLswJvJYx52aQhS4JLBNiQakIuAMy5g82nrqFaNY1vU+6iYlQiLlTb
	EGypGdS9xHQ0WfCv27vLGjm4Ojti8KAMHzDsmO6iw9KOpNuAdA/QnKRf/oR77kvUmkXGOWrRKRv
	Xbkd3Fuik6GClSA0xpoAg/8upS2qTg0psbFFDoFlEZYLXKqA6fiz2CQKxY9WWUCTYnYXvqZjaFf
	a1EnCUDAGGxKkgYb+N28uQOcC3wFaGKfo/BVhrHcEnrS/5eXW0q3RczCg4ND6tdU8DTg/1Mf3OC
	77STgMJKLs/JStV83+7KhtiVEatuRbSAQKqgnzDpyPFxGFDKDwvS5FDOah5b0eUwvtq93Z9W0pJ
	A=
X-Received: by 2002:a17:902:d48c:b0:246:96bf:c919 with SMTP id d9443c01a7336-24696bfd54amr85187575ad.10.1756122741414;
        Mon, 25 Aug 2025 04:52:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGaLDyLIvMkQiJKdMioGfxMs/33mkrUVT35+uXH7WGxzy1geJK0Zer8Luo6lAcRhKMl1HXryA==
X-Received: by 2002:a17:902:d48c:b0:246:96bf:c919 with SMTP id d9443c01a7336-24696bfd54amr85187225ad.10.1756122740912;
        Mon, 25 Aug 2025 04:52:20 -0700 (PDT)
Received: from hu-kathirav-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-246687b521bsm67081015ad.60.2025.08.25.04.52.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Aug 2025 04:52:20 -0700 (PDT)
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Date: Mon, 25 Aug 2025 17:22:04 +0530
Subject: [PATCH 3/3] phy: qcom-qmp-usbc: fix NULL pointer dereference in PM
 callbacks
MIME-Version: 1.0
Message-Id: <20250825-qmp-null-deref-on-pm-v1-3-bbd3ca330849@oss.qualcomm.com>
References: <20250825-qmp-null-deref-on-pm-v1-0-bbd3ca330849@oss.qualcomm.com>
In-Reply-To: <20250825-qmp-null-deref-on-pm-v1-0-bbd3ca330849@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        Poovendhan Selvaraj <quic_poovendh@quicinc.com>,
        stable@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756122727; l=1613;
 i=kathiravan.thirumoorthy@oss.qualcomm.com; s=20230906;
 h=from:subject:message-id; bh=gZlFwG2FsBtPkQDUxJ9WIqEJzQC4A40Ol48lNH0eyzE=;
 b=D6EbEOJZPQ86Rzpamaut1ppVk09TGRn58vCjBk8qVEa2c4cjy4SEham80Ams0Yh1KNdQlocGr
 ggkfCvnjmIQBBnRZyJ6QA+WIQiSf623Aq6EZmfjH4CwGqa0rTbtvRrp
X-Developer-Key: i=kathiravan.thirumoorthy@oss.qualcomm.com; a=ed25519;
 pk=xWsR7pL6ch+vdZ9MoFGEaP61JUaRf0XaZYWztbQsIiM=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIzMDAzMyBTYWx0ZWRfXzl9HlIc61a4e
 yV66liSaEhQB1P4KjolRY8ycaKC/kt45bRADJOAPhVx1kjwO/4c69Xj/s6FcrCLS6H17sWvhTrB
 CjFUNoRC2+/lYemm1i97m3vIqIHrf8TVMwBpPxyyoVhkWgc3EzR+3W7hRSJMP19lt9rVkcXOTDy
 VXndeJUpX1JztKqW6oYIzXwtsbdkaMBpGgblRJ6GfwNGHwW52nddUug+EcSYzI/BRtLPXeWAM18
 dbVwWNCmuPYPYZS2J0wm5ruLUQSvu5FtRCEHWabhE8gi8SlpqfRuFc/MgDbMv2IHDXcqJOuiyLG
 arfr1LBlaxQle63ic+eV7StTpWsYJBmuGPLV/p0IgP4qr4uhRdbK1umlzAgYPG0Kcv9GHjEU9jY
 7rBUn3y2
X-Authority-Analysis: v=2.4 cv=Lco86ifi c=1 sm=1 tr=0 ts=68ac4e76 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=COk6AnOGAAAA:8 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=lFmJHyBsCXrKv0U1x8cA:9 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: y1YZN8NyJ4tYS6QaFRdhp9Em9WPpm0RW
X-Proofpoint-ORIG-GUID: y1YZN8NyJ4tYS6QaFRdhp9Em9WPpm0RW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-25_05,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 clxscore=1015 malwarescore=0 spamscore=0
 suspectscore=0 phishscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508230033
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250825_045223_973499_E7BD9FA4 
X-CRM114-Status: GOOD (  14.45  )
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

From: Poovendhan Selvaraj <quic_poovendh@quicinc.com>

The pm ops are enabled before qmp phy create which causes
a NULL pointer dereference when accessing qmp->phy->init_count
in the qmp_usb_runtime_suspend.

So if qmp->phy is NULL, bail out early in suspend / resume callbacks
to avoid the NULL pointer dereference in qmp_usb_runtime_suspend and
qmp_usb_runtime_resume.

Cc: stable@vger.kernel.org # v6.9
Fixes: 19281571a4d5 ("phy: qcom: qmp-usb: split USB-C PHY driver")
Signed-off-by: Poovendhan Selvaraj <quic_poovendh@quicinc.com>
Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
index 5e7fcb26744a4401c3076960df9c0dcbec7fdef7..640f6520f7c1cd78f9e79843a0778c1bee790f64 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
@@ -690,7 +690,7 @@ static int __maybe_unused qmp_usbc_runtime_suspend(struct device *dev)
 
 	dev_vdbg(dev, "Suspending QMP phy, mode:%d\n", qmp->mode);
 
-	if (!qmp->phy->init_count) {
+	if (!qmp->phy || !qmp->phy->init_count) {
 		dev_vdbg(dev, "PHY not initialized, bailing out\n");
 		return 0;
 	}
@@ -710,7 +710,7 @@ static int __maybe_unused qmp_usbc_runtime_resume(struct device *dev)
 
 	dev_vdbg(dev, "Resuming QMP phy, mode:%d\n", qmp->mode);
 
-	if (!qmp->phy->init_count) {
+	if (!qmp->phy || !qmp->phy->init_count) {
 		dev_vdbg(dev, "PHY not initialized, bailing out\n");
 		return 0;
 	}

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
