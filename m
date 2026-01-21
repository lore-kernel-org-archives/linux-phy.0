Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E439D262B5
	for <linux-phy@archiver.kernel.org>; Wed, 21 Jan 2026 14:28:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=rt+J25l7A5dXwKH8ZC3RVFTmtfIrCVooqbirP6fphco=; b=qKP
	Zp7Ndo8PjslJRxy6odpsS49SuvZ5bLPHrB/v86zkwOTYaa+iILP3RMQP7+8eUVcMtSPN8Pt+16JeY
	1hgE9m0FhdnnNJGyeQQWEEnQTRJCePeeD+QtuYburQeL+N+OmIV/uXOKKqSQatgtgGOSKZTV3dxMa
	Ps7egfpmQL4kJrPZ2+oqJaeIbiNA96hwhaqzwJ5Ih3c3yBZ+r+Y4xG7uRzXpoRDQP7fDizsb3YscH
	BFfTmpH5IrGLLM6JUwm7hBhFR2+Nm3Ad40uG79iIyMhTJVUOY+rRmDCJ3/gwZp198/K8F9jYO2mAH
	9RvPOviPlzTPLXgI2yb59qcI0PviO+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viZCH-00000005bVi-32DW;
	Wed, 21 Jan 2026 14:28:37 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viZCF-00000005bV0-1JPK
	for linux-phy@lists.infradead.org;
	Wed, 21 Jan 2026 14:28:36 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60LDVJKo3867424
	for <linux-phy@lists.infradead.org>; Wed, 21 Jan 2026 14:28:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=3eWZ3tsQ3Zo7tMDkgRQLiK
	yPjXJaJJy29sQFbi6hTVs=; b=mODgG3N5UTc2QTerRVt4a/RGoKLGbi808IvL7R
	E6H7sV9ZXdMRj+9d6UjPhHz6cqw285zkT5s2wn9VPY7AxmHotvkNqh32Yz9MUF3S
	BggxbYj1xc+uDjGbzRaJkrlKe9hLn58dvB/xPnfoQ/tKHz8Vx4Bo/f+gS3119875
	hG3jhmBTsRx/h13vmk55AgwDgl5YVveKGdD1t1B9PWMvYzXbe9Sr4dPBDj1jDTeb
	YkV4rIDkDa4j9WP7uSC1nlUJUQ8NAp+H2lLAAjaTAyyoH/OfOynczpNlVK4AS4X2
	SG+6nniBHY4XHiP/ym7YAe30EgjumQm7qzLWaTKuYGUcw1tw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4btyrpg6bb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 21 Jan 2026 14:28:33 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8ba026720eeso263718385a.1
        for <linux-phy@lists.infradead.org>; Wed, 21 Jan 2026 06:28:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769005712; x=1769610512; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=3eWZ3tsQ3Zo7tMDkgRQLiKyPjXJaJJy29sQFbi6hTVs=;
        b=YUrM8ND/YTOJtPRP8Cz+ToDovlHAGnTRTNeEFKEFSR9No7nd7mWD+h7kihIwA4Za+V
         iJ+Rcdu78tsSAUlPQ42l13tuuLnRJ79pSf4EAOsWfKZ+DrWJWqV7sXx5ffbFvmoOqoSv
         t1s3SyELai4hBU/+UDa4kGcjpBxcMlrGtrRSceKH8l3RGVOd+IZGzG2N1CpSvJDqVSLc
         AWiBAoQ/22RRgmPsyW9zcUDG/HJeBY3Ccy9r3PL+9My/cjPkEvOPIRAEMweEXdOZ1nvh
         GI4y1cGmonUXP8z0IT5GxI/z7sZbL9BwvoZCFX6EBfZNUPE77dcDCdWzYQ/Bx4IfF9uU
         rjsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769005712; x=1769610512;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3eWZ3tsQ3Zo7tMDkgRQLiKyPjXJaJJy29sQFbi6hTVs=;
        b=w7kBRP5XTskvL2SPop4orl0ySn/jyFEvKU08qJkfE8LrxhoWNv9Gmj2uCuhYnge8mj
         O/b3KOnW9DIgd49JyF1dna4N07SJe2gUR9c/pc9feIzEvFnM9BREjaejQVR94z6P3Ahi
         p1PWlr9d23vDFuX7zx7OyGsLYWYJwl6VwJ82Rl0nEF8UCvMHSunfmYTZP3+UiKUc/mBz
         1Q1sAzrzMOoW+/fw4NdzjWqZp9LMg76zpwBToHQsVrbdgLgyK/1TLzYzArwRVEvB83Es
         5wK3VIXDb3E71ZlL7JaesAwYg5vAC3He33NFnGA6WSsdUxhJbF600I1g6WzeGCCiU3fY
         /Dsw==
X-Forwarded-Encrypted: i=1; AJvYcCXmhelZ4CM2f/Y7MtP906C2EjnoH9iDkb/Xr/12QbSZY70Qh86Iw7Oyz5KU7RCAlKlo5tbvw4GZCN8=@lists.infradead.org
X-Gm-Message-State: AOJu0YwHSDKCWKxc3dIMcQKU0VMU2TAb2tjhc+EE1azxUy0/Wnjs6rfr
	E7TP5r8G+Ih0nbOz8IubZrUW3SeSbOR1/k9EtZf20NfVG69CsS6KfjHD6sAeFfU0kl7DnQFV7PY
	JgcQdQT+tYqhprbH7+NOTaf0FJD2JRwLyqpaHdDsDARvtvm8R8xA28tzA5uLk7D3riA4LFhiJ/6
	7xFcs=
X-Gm-Gg: AZuq6aLfDEb0tGeroSK0Y2nd5Sdlo9ufVy42ls/nvUhppruCCQC/4wvUlw397m0wmXF
	7SPVtCpnNwETCr7top+SpGqfYXxba+fWxyMzG3pv5la1p8KSIhlICY6PUPEXHClK1RkGrlNOpD6
	HjEZNGdCePDXcHTpfpuQ1yvwEdf7lgdE3jCY/tq82QHJ/fARNVpYSoBZWHNheNK6RCcgg94C8bp
	4hd0ggVGn0U4AbrY1jUJ9w4bblYeKN8YwLKAm4sHN0Dhn+KpkOxCnbzQRTNaVppYqZbQxbd3CBd
	RxFMAuv8kkKfNd8kk2D9MT0ounYw5BZO/9ktLD6hSO3e+w6PFwKTLHqcabsHWgWf8BhOE+IJ6m2
	Sc8tplzM2AbKZOqO6tTkLXGkieMzLfh6WmbN9pdDtmTGwQ6iI+0ZDIt1qXn9cYrd7pesW2STr/m
	4LVkGT
X-Received: by 2002:a05:620a:2941:b0:85b:cd94:71fe with SMTP id af79cd13be357-8c6a66f2991mr2589736185a.33.1769005712157;
        Wed, 21 Jan 2026 06:28:32 -0800 (PST)
X-Received: by 2002:a05:620a:2941:b0:85b:cd94:71fe with SMTP id af79cd13be357-8c6a66f2991mr2589731085a.33.1769005711356;
        Wed, 21 Jan 2026 06:28:31 -0800 (PST)
Received: from QCOM-eG0v1AUPpu.qualcomm.com ([2a0d:3344:10b3:c488:b09f:b54c:1120:95f0])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435996540cesm6098180f8f.43.2026.01.21.06.28.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jan 2026 06:28:30 -0800 (PST)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
To: vkoul@kernel.org, kishon@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        dmitry.baryshkov@oss.qualcomm.com, neil.armstrong@linaro.org,
        konrad.dybcio@oss.qualcomm.com,
        Loic Poulain <loic.poulain@oss.qualcomm.com>
Subject: [PATCH v2 0/6] Fix possible NULL-deref and runtime PM race conditions
Date: Wed, 21 Jan 2026 15:28:21 +0100
Message-Id: <20260121142827.2583-1-loic.poulain@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: IqC9MN04korxnm7Wddl9uzCJZgctZaAu
X-Proofpoint-GUID: IqC9MN04korxnm7Wddl9uzCJZgctZaAu
X-Authority-Analysis: v=2.4 cv=KpdAGGWN c=1 sm=1 tr=0 ts=6970e291 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=qf4gfuq51q0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=C7rGozDzmCPgz14KtV4A:9 a=3ZKOabzyN94A:10 a=k40Crp0UdiQA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIxMDEyMiBTYWx0ZWRfX77SrrEgY+FNd
 EUW3LFmwkvMlxWDktMOypLPwBN1nTl5KhU0WlpRHyrRC0IN+81iNw5qA2kNuOb2xuTJqyQIBmpi
 8XXQ71JiR7xsv+rhi8bUvGFtQu3ZtE6QfGzd8H4UK7jmqFZ0BxdQpuXbd9sufl6ScOISnEmMeF3
 Zl7SWX4/bdfAXxJHA0AyFo7a0Eomh6T1MDC2hfW/HtcFh3WkHaxL53rlSjiMXjJIh7JD8Krv8wM
 2glHPb79NU3Olgm3NUDCGmtFbkT8I14k0y2WdGJxvq2XfhuiQLvFj9OFPolxT5No81veOvqbtbr
 oHC08+zxJShi283rEiQ9z6/+4B+u+GTba1OZ+cnW7kYi3PgOXosYtTo5JxUjcQsRej79MJaBydn
 +UqqbXD1eqlOLiX6TrxcUwPAF5Di4CxHdcwMGrSfpTzoU/HkOM3itEDbhnWLD3Mv5D+GzYupF1f
 FgGCnBe51R0+Ns98M/Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-21_02,2026-01-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 bulkscore=0 priorityscore=1501 clxscore=1015 suspectscore=0
 phishscore=0 spamscore=0 malwarescore=0 lowpriorityscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601210122
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260121_062835_354737_9C14DD42 
X-CRM114-Status: UNSURE (   9.27  )
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
Content-Type: multipart/mixed; boundary="===============2394012648523157469=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

--===============2394012648523157469==
Content-Type: text/plain; charset=y
Content-Transfer-Encoding: 8bit

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

Changes in V2:
Split patches 2/4 and 3/4 so that the null‑pointer dereference fix and
the runtime‑PM enable/forbid reordering are logically separated.

Loic Poulain (6):
  phy: qcom: qmp-combo: Prevent unnecessary PM runtime suspend at boot
  phy: qcom: qmp-usbc: Fix possible NULL-deref on early runtime suspend
  phy: qcom: qmp-usbc: Prevent unnecessary PM runtime suspend at boot
  phy: qcom: qmp-usb-legacy: Fix possible NULL-deref on early runtime
    suspend
  phy: qcom: qmp-usb-legacy: Prevent unnecessary PM runtime suspend at
    boot
  phy: qcom: snps-femto-v2: Fix possible NULL-deref on early runtime
    suspend

 drivers/phy/qualcomm/phy-qcom-qmp-combo.c     | 10 ++++-----
 .../phy/qualcomm/phy-qcom-qmp-usb-legacy.c    | 21 ++++++++++++-------
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c      | 14 ++++++-------
 drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c | 15 ++++++-------
 4 files changed, 34 insertions(+), 26 deletions(-)

-- 
2.34.1



--===============2394012648523157469==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============2394012648523157469==--
