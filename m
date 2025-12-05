Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85564D33987
	for <linux-phy@archiver.kernel.org>; Fri,  5 Dec 2025 16:04:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oADUNon5m1t/VZwXHG5oGXrk121c6R1IuxfmpXqgUpg=; b=ulyoxSbeJ4CYO7
	LAM5AM2VmioEzUhuXJG2z4jOLxe4ZbZk9RDN0gUOLT4sP3/Fj42/8SLEecNn1mBU57CidfrEcoCYR
	2n5Rchcrt0UP7qtI9AIVB/4F+5BUP9MrIenOECMqTiySN1Tdx8jRAqetOqw397LSh21TMw0pfTrz3
	j6q5PTRD6k4/o+s5S1G4Xrwhj6DsO7hRxrTqtDLcszfMWz1SNPqEloLARFACiLjp5IVDUw0Ar2QFo
	Hbf76w9EHP9hLNjqizcsOiw7EY+sPGgsgoFmxXJpxMqICWxjiojxExJ9oxP+U0C5t7yf/e7vAtrwe
	YeYbLLlR/juRq1hCq5Tg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRYIZ-00000009gaY-2oTH;
	Fri, 05 Dec 2025 16:04:47 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRYIW-00000009ga8-1suY
	for linux-phy@lists.infradead.org;
	Fri, 05 Dec 2025 16:04:45 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B5FBPm6887501
	for <linux-phy@lists.infradead.org>; Fri, 5 Dec 2025 16:04:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=S0NnzglkMPPQB2vvQXKO7guesAoNPG9cmtU
	s+J/UQDU=; b=U7LOy5bboGSbSlLwVZs4P2CcL7nc86zcNEulufT1cOlbj5AcZNk
	+wM0glNsuJo/fLo7dSS28dEi0hMV6C8TcKTH8ZYf534RNfTJXbMTfc6sG9rZbOFA
	Bx15WNc1tFKnOsgnMsc0WSnBDPDLoVVzBUef9x+b30behK/Hwyp5U9Nd0ldkzZdn
	cimhA2wwSggmpdbdnOMR6VwTw3D9OZ2hv00jythJCiMoDavsuSvIgADfTOmdZaFT
	tZ6z57Ab5iHszvSzSFASGQ20OVX+96T1Gx5B7kF/XJXBTeL9qzrlyL9l15GmlEWz
	w942Hig/k1mwlXs4Rbw6NX4tFuW2wmawOWw==
Received: from mail-vs1-f71.google.com (mail-vs1-f71.google.com [209.85.217.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aurwvhrxn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 05 Dec 2025 16:04:42 +0000 (GMT)
Received: by mail-vs1-f71.google.com with SMTP id ada2fe7eead31-5dbcf848bc9so1131476137.1
        for <linux-phy@lists.infradead.org>; Fri, 05 Dec 2025 08:04:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764950681; x=1765555481; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=S0NnzglkMPPQB2vvQXKO7guesAoNPG9cmtUs+J/UQDU=;
        b=i8dS1177lHzGf+rjLCKBgcghMn0dJRcZ6CUxBf5YI5mCpBYsvk6wm/WbU4t34uwE5d
         /qpg+tE3Tq0f9U0oglpLlnvsdM7zpG2amX810ipwflhIChzo7E+ta+9lqBAGRsMTpvS/
         8NsJ+MKYLlm/aoFoLpj3eoGlTqH862zG5Rki2Unip8BwbahfTs35MFv0uz7W57SMaqbG
         lxOcF3kWloYfNOT3D4z/sPW4QSz3JZ7mdbPFw37DzBdTGkzyNyTGIXW+smoSl0tLc6EB
         BSsxuLDMI3C8VMUzpWaLbRFD61ARc+/6NyBAiXEJS2s/6qd4xyERmKz7LEZNcoe/yC+6
         S33A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764950681; x=1765555481;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S0NnzglkMPPQB2vvQXKO7guesAoNPG9cmtUs+J/UQDU=;
        b=AIRAI+2VSc3wVIciTPAxfD745FcLBDAMzDjun48sYqcHCQYo6EofR8ar74MkW5CCsH
         PMU/MANedK/ML0ziv7Z3EZDWHVuXPdY4UdY6HFwkFxKtAUn0GR2bBUVWvuyf/n4jpNdq
         2uLw0O5FzoTUuy55C/5QpHrK6vwcAGbbokn/JFI7EnhsZRY1l58lwhmR+xIvBNi1D/54
         +2mvmfD/L79oSLxGwsPslMEBUKvAAXpeZqH8mTijT4AI/b2H38Ny07GDfp6fg8NcgSQa
         7Jx1uIROaq00t11xwdGvyosSI6JPFx3hSaL1ROOF1cFUfCNDKn1ZetOVs3yqcsA7MuXx
         eklA==
X-Forwarded-Encrypted: i=1; AJvYcCWk1bzpjpKM87Jdp5UgAjdishY5brm/XxMRkW4r5UQ7uPYRNV1gVzVTqLEzdhq7uzA4gOFyMeK4aDM=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz115frLLOyDVJ0RcrkYWLASnTS0GV19Y52qzCRu9dZmywHzT7T
	q1Qz8E9xdQ1PAKOYegmVeQilAKwlbne7Ci2w5+skSoDphbzpxiuG14WEO5d2ocaUbihdGWKcJyN
	atEcrjFjOgQrRHfxX5Gv+HHSc50LtiuPqfr302HfyMI0wUe8xJCyEPmyOLftmNHml/JZW
X-Gm-Gg: ASbGncvPAsEEWaY+OY5lw04m2enjuEwLHkHsQE/jPLKO1NDx/ZufzBN0VKvuKA2WZNa
	mn6r3rWNgV2Yrj/AK04VZ5++V0rTnzi9QmexINca9pBNSDSzW6XU8BfFpE4Yeg4YQouacfjOOdR
	0UiaiFecPgFHFXKLKisB8VI15lypNq0sOuGDZRF2KKvUKUKisvfIiV+eCa7MT91WaW4+cdpUp29
	QaC0UcBSIZJ0BRSkLNqKEN7n+2FLIs5rwDZOeU5GJaOK/bCSwIohGsFTb8gjEJy6GZ+83x5DM3B
	uBf8susuRmFrRiHjlPc27XHl3AOKatHj9zfateRZl+IYm54l4fp8jrbRWnf63mqe5xxl9HnS3tO
	Bb/6uJ5fNGkpXIKIG9MZfYqx+9jgVxHYq5vUEMyWvPNEHt6gRVZZBy/Z1xGf1noXIAOHf7BKzfj
	Yk
X-Received: by 2002:a05:6102:15c9:b0:5db:dd12:3d16 with SMTP id ada2fe7eead31-5e490d80fdfmr2719343137.6.1764950680820;
        Fri, 05 Dec 2025 08:04:40 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEaamrW4vWITSAODt1Bj33kiLJnhqkPdX7g//zCQ60dzLvhU2D7W/7Fdpzw5zqhi8E2RsWqKQ==
X-Received: by 2002:a05:6102:15c9:b0:5db:dd12:3d16 with SMTP id ada2fe7eead31-5e490d80fdfmr2719292137.6.1764950680312;
        Fri, 05 Dec 2025 08:04:40 -0800 (PST)
Received: from QCOM-eG0v1AUPpu.qualcomm.com ([2a01:e0a:82c:5f0:f840:4916:e7c3:a857])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42f7d2231dfsm9660990f8f.26.2025.12.05.08.04.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Dec 2025 08:04:39 -0800 (PST)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
To: vkoul@kernel.org, kishon@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        dmitry.baryshkov@oss.qualcomm.com,
        Loic Poulain <loic.poulain@oss.qualcomm.com>
Subject: [PATCH] phy: qcom-qusb2: Fix NULL pointer dereference on early suspend
Date: Fri,  5 Dec 2025 17:04:37 +0100
Message-Id: <20251205160437.259125-1-loic.poulain@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA1MDExNyBTYWx0ZWRfX4m2Ykc5Wwvsv
 PmSa3/WN9/AVhnuX7+iXs8zCvuuvbdm2BU6LIWLKVp854QjUOGF1mw/1LqnmTLI93EKHC71Om37
 wVYdARKBWbMjbT1sxwyu3FC1PTPMiIulctBQeKHoH0UnbGp5A9rmlT99Vp+5B6vzT+9qxzPWpUC
 fpbpWY2DiROCATcmIG9aYQfcDbP+eZ0BLpiqC4D/DOVzZuqDOssexXy09bxSjaVVxdOc3trgEFl
 ziWNUSQH7x2ttpI85YSoLf5xlH9wlW6OXgf2F44scwjxVgxfT78Z7MIaWccCmVzklB4qz7hBNF2
 cHNzmbshbeblMfMzVCKDzXnX9b3T1sJn4EB19L3L+DGNfiIXv4/NfEA/8ESHmg3QQfmjeW+hxDL
 xhPwdiVsavjqnv7ZaBH4xtPbkcgROg==
X-Authority-Analysis: v=2.4 cv=Yd2wJgRf c=1 sm=1 tr=0 ts=6933029a cx=c_pps
 a=P2rfLEam3zuxRRdjJWA2cw==:117 a=xqWC_Br6kY4A:10 a=wP3pNCr1ah4A:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=7wYnoen6nUP2Isxy0IEA:9 a=ODZdjJIeia2B_SHc_B0f:22
X-Proofpoint-GUID: 3kx7X-1c4E00oQhOS8EftW1M6IQeqEfl
X-Proofpoint-ORIG-GUID: 3kx7X-1c4E00oQhOS8EftW1M6IQeqEfl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-05_05,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1011 phishscore=0 priorityscore=1501 adultscore=0 suspectscore=0
 bulkscore=0 impostorscore=0 malwarescore=0 spamscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512050117
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251205_080444_625029_6F0FBD6E 
X-CRM114-Status: GOOD (  12.86  )
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

Reorder runtime PM setup to ensure pm_runtime_forbid() is applied before
enabling runtime PM. This avoids possible early autosuspend and prevents
qusb2_phy_runtime_suspend() from being called before driver data is
initialized, which could otherwise lead to a NULL pointer dereference:

```
Unable to handle kernel NULL pointer dereference at virtual address 00000000000000a1
[...]
CPU: 0 UID: 0 PID: 11 Comm: kworker/0:1 Not tainted 6.16.7+ #116 PREEMPT
Workqueue: pm pm_runtime_work
pstate: 20000005 (nzCv daif -PAN -UAO -TCO -DIT -SSBS BTYPE=--)
pc : qusb2_phy_runtime_suspend+0x14/0x1e0 [phy_qcom_qusb2]
lr : pm_generic_runtime_suspend+0x2c/0x44
[...]
```

Fixes: 891a96f65ac3 ("phy: qcom-qusb2: Add support for runtime PM")
Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qusb2.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qusb2.c b/drivers/phy/qualcomm/phy-qcom-qusb2.c
index b5514a32ff8f..97bc3755a390 100644
--- a/drivers/phy/qualcomm/phy-qcom-qusb2.c
+++ b/drivers/phy/qualcomm/phy-qcom-qusb2.c
@@ -1093,13 +1093,14 @@ static int qusb2_phy_probe(struct platform_device *pdev)
 		or->hsdisc_trim.override = true;
 	}
 
-	pm_runtime_set_active(dev);
-	pm_runtime_enable(dev);
+
 	/*
-	 * Prevent runtime pm from being ON by default. Users can enable
-	 * it using power/control in sysfs.
+	 * Enable runtime PM support, but forbid it by default.
+	 * Users can allow it again via the power/control attribute in sysfs.
 	 */
+	pm_runtime_set_active(dev);
 	pm_runtime_forbid(dev);
+	pm_runtime_enable(dev);
 
 	generic_phy = devm_phy_create(dev, NULL, &qusb2_phy_gen_ops);
 	if (IS_ERR(generic_phy)) {
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
