Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6AFC7D1D47D
	for <linux-phy@archiver.kernel.org>; Thu,  8 Jan 2026 15:49:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hKx1mw6mkx6px9AqkaZ4WUb7a9wpeXbC0y1NbY707UE=; b=SvbHAgNHSqZJEJ
	tlCqwwHwBUPBYdhONir/NWgEuUwDBslqxjxfjJISbBbnoGItsPD+LQWc4cx/eH3oPU+l3QBbQ71US
	ABchtygjmAKc+UxS5ufkr+ejRwV1SvCp0OByPT7mN8gSneHepibhlRTCqn+2NszCl4lP1jj1vA+MY
	s9AQd3mSpvYARSkNFi3Tp8oe+fGntOUWqs47J453QZKwtrh+Kw3XDo41PIF4lmNz/zd/44HMffcS+
	tjMhLUnpxC71vJ8dXlkt8YEeFtVyU0zO3FRpx3l81LJjhwGWEYobhw6wtsGqnjSEHUAhFFi6BobQ5
	zo4kWF52Ma0vX6o7Wd0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdsGp-0000000HaDH-0Y7w;
	Thu, 08 Jan 2026 15:49:55 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdsGl-0000000HaBb-3gPH
	for linux-phy@lists.infradead.org;
	Thu, 08 Jan 2026 15:49:53 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 608Ff2GM2491612
	for <linux-phy@lists.infradead.org>; Thu, 8 Jan 2026 15:49:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=p/HZ58zf29jYmVW+sORZChb4+DSCtmh3Yrr
	S5zE9Izw=; b=KKDFg9o6YeGRLsOU+atarVRRE9vL7XocNWH3NRcTG2gYlqnyUn9
	cqkc8NUquzoITiQ5GaG8TwJbsE3dR7mXGQJ1xMUUImtmZzPdml24TfSlwF+Uxy4B
	XAzriWC/H8O/pLKmobZAvhikJZKxGyPsOWpll3klob0ZeJVqB0k8d6VvFg3pVr0K
	4dXfw+qAH8ihUmZwRugnZ38BTpAQstoUQdaMnWMiArmiQSNmNyfAM+8Thg3z/jrY
	GPP7JECB93L0fUf5Hu5dYJktwzBj1LwFHRYoa0SqUdgO+jT4xc0JwdtwNNnIwCwk
	hYMLuZiuK/6uif5YH2TkRlg7hk7hDavmFvw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bjfejr0qw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 08 Jan 2026 15:49:49 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8bb6a7fea4dso788977085a.0
        for <linux-phy@lists.infradead.org>; Thu, 08 Jan 2026 07:49:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767887389; x=1768492189; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=p/HZ58zf29jYmVW+sORZChb4+DSCtmh3YrrS5zE9Izw=;
        b=aZOe7HxzUGJhBNej2557l4Aq0uKnCDNmKRiBiDnc1xF58A7gwHY2BTH9XQxkmTx9+E
         NA7/q1zvoUsDsk9GZUfWVTc8xcjshjkMzx340XacAhlLnYB4fxXyP3199O2Sp3UHqVad
         BXa3KYax998iE4lQ9t7OZlKAs08CjpwWvkwvWnxbZ8Z79hAln98fxGJsXhLbsJZ9qkb4
         1XHnlQoMH49CwDITm5YABUgpPiorThS3gOOCCONm/eNLAaKXdWasssJkapXwik4RVJpV
         EKVXKRg0lMXlkd5UC7F3LcOoFR+honw+kCDoHKVgB2fUHf/Uc81PORNjjRRonJLy7/Oh
         sN8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767887389; x=1768492189;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=p/HZ58zf29jYmVW+sORZChb4+DSCtmh3YrrS5zE9Izw=;
        b=r7FZzgsuSLFPqvn82Qg2iHRaJlHW/OLElNhVPJzLCSPTJKEfEHnMGvXwU9zvYHVwRo
         KG8mSdVc8/j2ZC/YcXhfyv4e3LsIOOX9NDVAQJw3bslaA2t64xObknsLscVs0W8Q7Iq5
         4g7PBYDm/yIfzPRM/9T9KIkKrf+dCJbpOmqIiaKWuw1bmWgQCZOGrrVyyMXis1jnX/Br
         KqwRQW63/F8fvJt4BlfOC1RS6JH5Y3NVVpVnODd8A+jaP3HWGobQLgn+LKeKpZ3yb2tE
         o+x0X6RA2IZ2XsiRe8liUw7vFE9hRK0sUeSG4ESRtGTU2Mv6mKEhOUfMY3lA0AFNZm8Y
         gZ3A==
X-Forwarded-Encrypted: i=1; AJvYcCUl6Sxz001Djueh8FqVHvVNgTq4ROSqzSepGUFw4WCw6DbhgrUCNU4PcUSiqG6vLEieg56//6tNejA=@lists.infradead.org
X-Gm-Message-State: AOJu0YzkyKhNByLpDroaefU9sn5bfttCmu6CKAmgIosyNCBPzLBOo6kd
	gNY90sW373KPAEChMsaz7XVrDjgcb3F6IV4CCGd7eHMgOWmZcNKuGbkpeHauMb99fXt1RMcSTdV
	/cDqJLiaWZvDYA/+Kke8Gi85HM90r8Ggig4HRQywbMrUpvpYls0NCGgdRjG0BJI4xMihO
X-Gm-Gg: AY/fxX7YX+qqrjNt3CKjNJjxhqlthB2p1POHaOICnhHrwYOMdEdIPOgMQIrGmmcyPwp
	RrumdgcLDQrMbDK5j6fZejL7OYl794eOjI3UsdyAu9ij26LfhsjpJTYF4taqp46Eu8rzLsSmHL+
	bMEl3eHZBkDzH+Z1BYL7oXPAIUjY6gw1yShsEZAWM0keC2aDYkrI7HpvzJkxLxneMoSGFMOIqZn
	AsSj5J6JFspMnLWVNyNx6dPeNCkDLchX3e76wpcwsHpAfzPAvmn6Zl1B3/qrQlxng4a8s+g1QlF
	DJhw7gA9QUr5RMJ0hByzLeEZWzeboENXKRivwdCKSTCLrQL0lLDOcKH/TPWdl5nPCPJjvC7CSvr
	dyuQDtbEd1VAxG3/EW+crHyfVzCd82y9Q4P3EfLzomX789203bNePlKZiWuWwqaz1YP8+AtJ+Js
	/U
X-Received: by 2002:a05:620a:1726:b0:8b2:ea2b:923c with SMTP id af79cd13be357-8c3893688f5mr902588985a.14.1767887389162;
        Thu, 08 Jan 2026 07:49:49 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEkKN+dguBranu2hCCdsLEooGmpWyCithrBFwiR+qTHo/YTnl8hHNstMshKtfjqdEMgdEsg1g==
X-Received: by 2002:a05:620a:1726:b0:8b2:ea2b:923c with SMTP id af79cd13be357-8c3893688f5mr902586085a.14.1767887388737;
        Thu, 08 Jan 2026 07:49:48 -0800 (PST)
Received: from QCOM-eG0v1AUPpu.qualcomm.com ([2a01:e0a:82c:5f0:211d:6051:c853:ae97])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6507be655aesm8078121a12.17.2026.01.08.07.49.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 07:49:47 -0800 (PST)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
To: vkoul@kernel.org, kishon@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        dmitry.baryshkov@oss.qualcomm.com, neil.armstrong@linaro.org,
        Loic Poulain <loic.poulain@oss.qualcomm.com>
Subject: [PATCH 0/4] phy: qcom: Fix possible NULL-deref and runtime PM race conditions
Date: Thu,  8 Jan 2026 16:49:40 +0100
Message-Id: <20260108154944.211886-1-loic.poulain@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: uxWo9PuwGYnW37utUw4QAMynN-P-cqVj
X-Proofpoint-GUID: uxWo9PuwGYnW37utUw4QAMynN-P-cqVj
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA4MDExNSBTYWx0ZWRfX+VyTowW6uBcn
 pejTpVcCJpFCd2HF1giw++5jj2d9eVW0aD56aPzkdZIdN/eykqIeSLB+Iprp32UrxAO9k95hwNW
 wNEwMHCN8MiLfFMV4EhpLc8DDjhks5jQWsHpHce7a/x0BPThwYlvgZ8nfEMmVialhaZ+2XSs8bF
 pTLsORsv6c4XmkZf210bkuyPGAhxa6n1jKTxFDV0gBGmGbCNCnNyZmpX7l7Hxlds6MMVtTTcgq0
 sjJVw0IJ2IPMJPQ+eaZ4WF7j8jLRIAu/barnM3NHcBUzJ4VYNl7ovBTOONwzk0Mi+BpLWTnFc7k
 TD7PjKTxK9AdcF5F9c59UkQwwP0OEuoC7peJe0trM5FUj7ai5dTx+QpikDxpFuRy2qegEKAkm7l
 y8Dr3TerSrKcJqITHIvh9l9o5oyKRQ3h8LD6rzF0R+pCG7pRmn7o4+oO9yg5j+aEK+gwsrhfhO8
 qnvSAW4rMwjPGmqrh3Q==
X-Authority-Analysis: v=2.4 cv=ZfAQ98VA c=1 sm=1 tr=0 ts=695fd21d cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=vUbySO9Y5rIA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=C7rGozDzmCPgz14KtV4A:9
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-08_03,2026-01-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 bulkscore=0 clxscore=1015 lowpriorityscore=0
 adultscore=0 suspectscore=0 impostorscore=0 phishscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601080115
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260108_074952_042558_C6A7D7DE 
X-CRM114-Status: UNSURE (   8.56  )
X-CRM114-Notice: Please train this message.
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

Address potential NULL pointer dereferences and race conditions related
to runtime PM in several Qualcomm PHY drivers. In all cases, enabling
runtime PM before the PHY instance is fully initialized can lead to
crashes during early runtime suspend callbacks.

- Attach driver data before enabling runtime PM.
- Introduce initialization flags where needed to avoid dereferencing
uninitialized pointers.
- Reorder pm_runtime_enable() and pm_runtime_forbid() calls to prevent
unnecessary suspend/resume cycles during driver probe.
- Use devres-managed PM runtime helpers for proper cleanup.

Loic Poulain (4):
  phy: qcom: qmp-combo: Prevent unnecessary PM runtime suspend at boot
  phy: qcom: qmp-usbc: Fix possible NULL-deref on early runtime suspend
  phy: qcom: qmp-usb-legacy: Fix possible NULL-deref on early runtime
    suspend
  phy: qcom: snps-femto-v2: Fix possible NULL-deref on early runtime
    suspend

 drivers/phy/qualcomm/phy-qcom-qmp-combo.c     | 10 ++++-----
 .../phy/qualcomm/phy-qcom-qmp-usb-legacy.c    | 21 ++++++++++++-------
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c      | 14 ++++++-------
 drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c | 15 ++++++-------
 4 files changed, 34 insertions(+), 26 deletions(-)

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
