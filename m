Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36A6ECAC5A5
	for <linux-phy@archiver.kernel.org>; Thu, 25 Sep 2025 02:29:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VVdN7to2YWq2pund3lNpcihsI+zZgSXq1G+nADK3cxI=; b=aj1Wsrwu2oW0Aw
	mjEj0sey0xEr/XRCFqTz4mfhmeSZFQuz89DfPwvD5poWBEU2VoYnq9zVeO90a6sLCkGbcMAc0ImWB
	O01IpVKxdzZ0cCjTaHYePoQic98O7MKHNEpiZNB7hchox6rdzr9oVHK6kYr86vfqzE0o2OMXLOjPi
	6hjCL4Z/Jol4H1kXVG6f+4LrZTSQZexIKq33Fd2e2ShYSFYhEo/lktsTzc+QJ1s1ws5j+D5UWEPYa
	C7oOKkQK2evZaDm0/ypnaeWvEykaITiXmVIAkmTu3nLmMQTBEfYtoKWg5TfkQh7yCaQHgCJHqpUb6
	3vjRNTAznM5WrhnxiLTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1bjY-00000005J5W-3oWS;
	Thu, 25 Sep 2025 02:29:24 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1bjV-00000005J2q-0oVC
	for linux-phy@bombadil.infradead.org;
	Thu, 25 Sep 2025 02:29:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=GwDc2ByWl5BYnzIa/5w++Oacjx00R55NFfYXUv0r7SI=; b=HwKwyPefLxcX7LBmAcT/72yj1b
	bL3p0dvdzOaQ0DI0kKyttCpPJj7dTgd0ToJ5q2OGwqEQ2HylZIFX6soyMPWKHk8hox0GY55Jt2wwH
	GUhdHs74COcFltcdUjOch2h/IAgukqWx9AB5rFAXV2Z42V9v6yCBiuyroOp4z1HzgtDommq39xLjC
	HFfhL31U18Dia+q268AEkCWaUXm5efG5+qqiP22gmSGNwSZ7U4wetzqGHHQmp/P8kGu6jksJB33fH
	xuZ0kvI+kxA6d4y6NYY1O55wqVYb6hSpO6hD8h7xAszrAjvf+iiG0L73W5Lr5uJvFF+SvrAAn7etC
	+Tbsk+4g==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1bjO-00000008tik-2isy
	for linux-phy@lists.infradead.org;
	Thu, 25 Sep 2025 02:29:20 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P0VeUK025075
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 02:29:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=GwDc2ByWl5B
	YnzIa/5w++Oacjx00R55NFfYXUv0r7SI=; b=FoDhhdoExc/E0oa/RjY6gsGt/Jh
	V2wlsOgUWGGySNr0nKBxTNQ524GE66k9a1tr6uGHvlhxYOvuusqqfuZLoufZv3E5
	InFF9mK4clImcK31E4vXy8zGJVaNJqtlN89+4ziPsWF+sBh/Fyb/0rglEyVf7kpf
	inT29eT8B91jGnDgs+Z4Hs8fU/7w+O5tj2hTyPzX2LQnF0USyrqITFnnJd788LiD
	fy+eN5IEcV9c+OEkHuyMuMceYfWRyZiLCCpThAe4EZlwC7x3NdR4u7Qe2H1H3Di3
	k5Y6MgAqOai0gDG/WUj/SnTuhQf5TOhNwvGjBTBFJ6n0SM5L2MCrshKsYmQ==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499hyexrnu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 02:29:08 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2697410e7f9so10232815ad.2
        for <linux-phy@lists.infradead.org>; Wed, 24 Sep 2025 19:29:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758767348; x=1759372148;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GwDc2ByWl5BYnzIa/5w++Oacjx00R55NFfYXUv0r7SI=;
        b=lgR3/cfSKp2Fkye0fHaVeryVDLKr+1eTfH7Wg7Zsnw2/QoSc+ubCFwfb+UPZ3eEYC0
         ouxHfyVW6hFF5ug5WEHHO8suOocNsqoXqNzeF2Aq/o31olEXjA3EuoFF/CnqT2j01IiJ
         /HIKzCswHTE30k7YhsaUrSRh+/rGudQLkc2Gvr14oaceVr3vnrLASiD6w4pMAU+/at2u
         jSu6JTaKqXtJ8ZjaQOeUPz4+zny6m3HMX5K+yvfQPr4Y63qIxxka7epEZBvZ60uY0wQk
         Zm3TlEDJVTHPMiQOAZW5jqOgHKBeCm3b3zjSqPbyFLU7ITRwSJR/3IYD1slugnOjtUFF
         /7wg==
X-Forwarded-Encrypted: i=1; AJvYcCU2yJ08ne8mot6wMBcTojZfRpIGtA38/TzDxm95UOwmMQx/+xANFnDamlWaerCL+ktiubKbi4oLEzY=@lists.infradead.org
X-Gm-Message-State: AOJu0YyvQAly5oMmH0rWXqwpV1Qa2MrIQIv1+CS2e8b3ZuvgnzKQRl8T
	CLrsTYj7fTeSP03M/+ur//4ZcVbUkLtFFJs7/hSg5nB92PHNcJLOI/Jb6yKEAlqGLqoI+zbvt4y
	zdy1L+ZSAspR3F3VPGxbBHNyuiJsNexFwMpXTQMMyHkRzxhBgTpPi4VAqgtCZrN0mgVdA
X-Gm-Gg: ASbGncsoxBQNF+olTQjRTy0nNTODyYHRcQzOPyBpPeAbZLW/xmgUmtsdnH7fz5yPPp2
	s9Q1yY849fkyNrjg2WdI+7V9q+35us1JTUt7ytanz7vm/JFyqa5HH48c/OlSqy3T/VPvBM9TJZO
	YTmUacspkW2Hyfq/BG7CgQneMtrdXZE1ZcmQkk0UDTU6m83/6TUJrcmdk0r4XvxzMH0XIW8CDuX
	6tlmU78LBEFfgSV/071fdDLSSyubfImCPgIBIW1+GQZAEk0g7muuD3erBt0NRI5uEz/oIoUpjj4
	VtEqGvrKyGohmI+p2xCspbFWDs+FZz66WZAz8P9NHUA2knPwyJzkdUixdMZmGZZveyAd9fr2FHb
	5EywrxEavwcy/Mkyd
X-Received: by 2002:a17:902:ebc6:b0:26c:4fa9:64d with SMTP id d9443c01a7336-27ed49c69e2mr21780815ad.5.1758767347714;
        Wed, 24 Sep 2025 19:29:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEvMKdq/R1VOIoSCgX8QYg7ZQfJNKKkQRcAu0k1AT4ZkR8KlDibAwSZZsHxhiLM+nIZarqOfg==
X-Received: by 2002:a17:902:ebc6:b0:26c:4fa9:64d with SMTP id d9443c01a7336-27ed49c69e2mr21780475ad.5.1758767347265;
        Wed, 24 Sep 2025 19:29:07 -0700 (PDT)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33471d711ecsm499881a91.4.2025.09.24.19.29.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 19:29:06 -0700 (PDT)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
To: krzk+dt@kernel.org, conor+dt@kernel.org, dmitry.baryshkov@oss.qualcomm.com,
        kishon@kernel.org, vkoul@kernel.org, gregkh@linuxfoundation.org,
        robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: [PATCH v3 09/10] phy: qualcomm: m31-eusb2: Make clkref an optional resource
Date: Wed, 24 Sep 2025 19:28:49 -0700
Message-Id: <20250925022850.4133013-10-wesley.cheng@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250925022850.4133013-1-wesley.cheng@oss.qualcomm.com>
References: <20250925022850.4133013-1-wesley.cheng@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-GUID: _g-oOCJ-UO0Zcvl1fkvhrnAbkxHQJEme
X-Authority-Analysis: v=2.4 cv=YMOfyQGx c=1 sm=1 tr=0 ts=68d4a8f4 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=8inbgvmG2iPteTk8MkMA:9
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAwNCBTYWx0ZWRfX7jigKYxx6UXB
 tIN5k1rM32Kc/IKHiI80LrdGEHf9lySem1zxsedUuT+gfzBSYeInkLilgp66ggCc6wfyq+KBrAP
 6k5Nyv+YlJ7w1nTZ5felw+hHsy0jta8WvIxdb6EBiwnsBvfOhLP0WrHAvRaeR3jUenACPK08SAW
 CiX0ZEKTPT1KYqYe8cYtWZsbbnA4oSgA7To0r0KhWO0/hDkTTqbawAG4F6Xc2LnNnjgbto8xS6+
 /1OD1LmCE1NJioTAHcU1oCZYY0mvPJnL7iRwWAv1v0eobVnA9el2sERpB/Sqj6V6qz5/qHhwP/j
 pSv1oqPVqGAIc3aDqA9/i7CK2jHON7flO32H9NuPdbGrO/WeRtQ4wTh0xrhB2lcHmYFJeES1+fS
 e3asdE1d
X-Proofpoint-ORIG-GUID: _g-oOCJ-UO0Zcvl1fkvhrnAbkxHQJEme
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 adultscore=0 priorityscore=1501 spamscore=0
 clxscore=1015 suspectscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200004
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250925_032918_257438_579CC404 
X-CRM114-Status: GOOD (  14.15  )
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

Some USB subsystems that utlize the M31 eUSB2 PHY doesn't require a clkref.
One example is the Glymur platform, which contains 4 USB controllers that
all utilize the M31 eUSB2 PHY.  However, PHYs associated to the primary
and secondary controllers do not require a clkref resource.  Due to this,
mark this as an optional clock.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-m31-eusb2.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c b/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
index 95cd3175926d..f8a00962f937 100644
--- a/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
+++ b/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
@@ -267,7 +267,7 @@ static int m31eusb2_phy_probe(struct platform_device *pdev)
 	if (IS_ERR(phy->reset))
 		return PTR_ERR(phy->reset);
 
-	phy->clk = devm_clk_get(dev, NULL);
+	phy->clk = devm_clk_get_optional(dev, NULL);
 	if (IS_ERR(phy->clk))
 		return dev_err_probe(dev, PTR_ERR(phy->clk),
 				     "failed to get clk\n");

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
