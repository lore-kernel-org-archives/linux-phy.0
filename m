Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0A12D41D5E
	for <linux-phy@archiver.kernel.org>; Thu, 11 Dec 2025 15:35:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1ArALnXmenP+ezltM/pXxqE/h+khbaKIeHT2Dh1I1rU=; b=srWriTueWBComx
	uQ7U4c44ckm+Y4hcu7nGsQMjwCsc6x83ej3UPJYPP9vU3oWkOPCR70phua2rvQWTkvNMkdKWtZqpN
	X2zFmP3g270zmSB/iqvN6KmfwK/pamKkytImY2GTbF0r0HdIDDZNaPI7Pm7xmpv8B81nuD8vzyMSB
	cwhV+yhVPJlJj/lcWKIH/EER6QdBhHLs5s6dTu0FgiDeqWxTzSIDnpIGbkSibL8KQ3Jd6XfxyRwrs
	D1rJI5YM7cYHVUtxi8jY0xh+z10QYcWnLw+Gt5ZNolHIFX0V6E/m6f2uSYQ8oxiyCwo8ilk1qJdB/
	ajqsiPwtKiVih7q0rLUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTihl-0000000GmWG-1ocU;
	Thu, 11 Dec 2025 15:35:45 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTihi-0000000GmVp-3Ith
	for linux-phy@lists.infradead.org;
	Thu, 11 Dec 2025 15:35:43 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BBEPB4T1172905
	for <linux-phy@lists.infradead.org>; Thu, 11 Dec 2025 15:35:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=6y8CKBi0wQ25Gh4vmpE2aE4J547dSs+WP57
	qW0lmvDw=; b=SrlTeU4KpGCMsLB77ZhvE2mSRuwsNYAtmTAN+3KK2b/+qDhYm3k
	oQ/H/W/1fpXW1cMlSyP8b6YNB6FaNOQ4WEetI8Lh20af77x2HMmB/GOI6+JNY/vU
	z5ZTEE4DpV0H+MB7Djme62q6/jtr+X+9OVuoYzZP/7dicak1R+IwN7/mfCb8eeNE
	25viXMFaD8kDlQY0YgCXH4AAXClIRO7iT6MG7aSn/xY5yz7FljDAkiVJXWL8bqfE
	qzdTg4wRI/24K4KMZl29BRszrOTXOgsNQimmPzl/ktdaYRBPFdMYPqTHj1PVUxXR
	8sCkqrUsZ3c/m96Ky7wdIlTOppUp+gjAgmg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aytwj9aad-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 11 Dec 2025 15:35:41 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4edb6a94873so4081281cf.0
        for <linux-phy@lists.infradead.org>; Thu, 11 Dec 2025 07:35:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765467341; x=1766072141; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=6y8CKBi0wQ25Gh4vmpE2aE4J547dSs+WP57qW0lmvDw=;
        b=G7A0aEDUgLq8ZskLofrF3rxN+NJs2dQxTWiP0GJzxrQ8Iq5/yacPSNeyfTLiImknhi
         u52V0SimQduSRsWBwT5HdMCL1Mrw+lEI6UW+YPhP2UkOOZJNRwN4iB0buqWvKE/tWFUf
         oOuasiJjxhHPpxwXoQ7wl23mByOsB1Kuf/axxjEN06rv2u/tpODHH4RblnVdOhZHBmbw
         ONC6mlc3PUeZd+JiPRr9B1TIAZmKYjg/itPk38Pzry3TVJKbfQpu5ZORyTV8PFv0sk1m
         ojIa/ENWczoaem6NZJlBnQIKyRPSQUHcnyCI9sqaoHlHfBym7iHTdMLfbHceAKWhxfYt
         xJvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765467341; x=1766072141;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6y8CKBi0wQ25Gh4vmpE2aE4J547dSs+WP57qW0lmvDw=;
        b=ZxpSSC8qKDZGaG5invO2GyaowAUQ5I8fjjOmqmOoUaeLk8ALewEzroPz8VhR+LzaPX
         7HHA99+iVrFvlpidXjzL0PxLqapDpEbu9Y2f4Y+cPxMxv2qb6eoyRTOv3VF9lmw2vvZx
         rWXq9xa5bYrASOjwfKqRln/MyA/OJffy1P2PAF8TyUGNtk1eU+5T9U4eKnWr6jooVEe0
         4ZlOgcu1vb2Ih7GNj6zGLnH3v+XWwA3vYdb6/sGXPJxh02dQI+Gg7wZUlL/57EvYJ6tW
         ZrC2q+gLdP2XQpdj7SsGz6hIgZGqH//HPnIaPqZ5ffPwLiANlDEdHp79y3bvCfgC9yEI
         MRpw==
X-Forwarded-Encrypted: i=1; AJvYcCXlhmkTC6A1+SvD2mPVgDue5zul+dkmJuq6vbbIiLBWOb9MWyRKd6msrEL5A24KqgWNagHubmwRyvs=@lists.infradead.org
X-Gm-Message-State: AOJu0YzzxWmhX+5ToMypcnnkJzXlWH1zcQLtMifW2X61ndCendZx+nsg
	qb5qUBSeEXgMrexYjJJ2gVf3ennBB7zw68L9ON8olmtwEWMkhuT3Ks35Bw3iSI2QdJLyoyRJ5pr
	KcLp/k9KXHVvPK5k29ZqnEKZkE1sEGkxzh89alhSJ9x9bamMjfo3WbTKAjdITobyMORLL
X-Gm-Gg: AY/fxX4js5a0fTGaG3lpg4OtmmjZQqI84hKmPVYNyBT47YXaHUh14Ld0FtDjHDcsG3b
	a/Jih1v4V5GKWaRJdRWhT0JtUy3mVlHEKQwy9EPotdl0quDljhf2+e3nhIqaj3jZhEOktermdPN
	8EXwvIeaSnao4ilguLslcxNAzqHzqxzlEbnMfnn2OAAPR1viVu7q9cPhpmKcfkRjekFXDmVYULR
	CoD4vtuFQ3KDOZmJe8HtbCAKmnknCyzpOUJgczqLGQxTURY2z6ot9m96YaxEPthWUuyLMWW1I5q
	NoTeXU5N4tDGFzDnWbki9PyrnBJhqDW0nmRJtb+f1ZINd4iOyihHfYavyGXthDAd5nk/WO4pARy
	kBuWTO4kX8YhlrkWZidRTFHvPp/Gc3RJeuxVxpSMaW/injzyHYU7yYFbyQN1zRqSB5P+gH10ey6
	8J
X-Received: by 2002:ac8:7d55:0:b0:4ee:222b:660a with SMTP id d75a77b69052e-4f1b1ae552bmr83972891cf.76.1765467340598;
        Thu, 11 Dec 2025 07:35:40 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE2mj16xRxgy8PDBOrzAmeAA2nbv25/fqYa2cwEcsz/g/ZOHEERMQ/ZBFPUOi6WJbT3s8xOnw==
X-Received: by 2002:ac8:7d55:0:b0:4ee:222b:660a with SMTP id d75a77b69052e-4f1b1ae552bmr83972441cf.76.1765467340126;
        Thu, 11 Dec 2025 07:35:40 -0800 (PST)
Received: from QCOM-eG0v1AUPpu.qualcomm.com ([2a01:e0a:82c:5f0:85ae:5e15:f198:7755])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42fa8b8a841sm6644305f8f.30.2025.12.11.07.35.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Dec 2025 07:35:39 -0800 (PST)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
To: vkoul@kernel.org, kishon@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        andersson@kernel.org, dmitry.baryshkov@oss.qualcomm.com,
        Loic Poulain <loic.poulain@oss.qualcomm.com>
Subject: [PATCH v3] phy: qcom-qusb2: Fix NULL pointer dereference on early suspend
Date: Thu, 11 Dec 2025 16:35:36 +0100
Message-Id: <20251211153536.1880258-1-loic.poulain@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Proofpoint-GUID: nSQgn2EBCr6mnMPSx32oezlG0jhBqyOe
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjExMDEyNCBTYWx0ZWRfX2v8UW9R5CUkF
 2k9cDkTBVPrShmXEeGpVeTmqOt5UuQL9b7FHcteEh7zUwxcLDRUdNlJgLPVGergizPZAMljpPBl
 SUx5oPFXh/Ret6RI1bOlIYLjPdqJ8hklluknH5yManltOa7g1h53FxV32JFhwWSvpCUbcwX5NNu
 X9YaMPoS5Hr9aKUYyxOFgMJDg5H/ElioQijwq0j/2A5XWhbZGhO6vp2DA5qcOD3Mt89zngDoQxQ
 hMvo8n/O5hek3R77sT2nDSMMDUx4RgFgykZyAInun1MJPQrkCpejXvUOKAJIZceO3Q10kmSaeFW
 2175BK0av1DXbphfgWnTEoT0H/CqESkLyLHzvarMQnfKjUGu1ib6KO/fJlPVnG1jES6XmMeEU2X
 11k7qyqdOs3h+dkRUXttq5SEL59wWw==
X-Authority-Analysis: v=2.4 cv=YokChoYX c=1 sm=1 tr=0 ts=693ae4ce cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=wP3pNCr1ah4A:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=A460xltCzdekeuk-sJYA:9 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-ORIG-GUID: nSQgn2EBCr6mnMPSx32oezlG0jhBqyOe
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-11_01,2025-12-11_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 malwarescore=0 lowpriorityscore=0 spamscore=0
 clxscore=1015 suspectscore=0 bulkscore=0 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512110124
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251211_073542_848464_5E47BAB3 
X-CRM114-Status: GOOD (  14.73  )
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

Enabling runtime PM before attaching the QPHY instance as driver data
can lead to a NULL pointer dereference in runtime PM callbacks that
expect valid driver data. There is a small window where the suspend
callback may run after PM runtime enabling and before runtime forbid.
This causes a sporadic crash during boot:

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

Attach the QPHY instance as driver data before enabling runtime PM to
prevent NULL pointer dereference in runtime PM callbacks.

Reorder pm_runtime_enable() and pm_runtime_forbid() to prevent a
short window where an unnecessary runtime suspend can occur.

Use the devres-managed version to ensure PM runtime is symmetrically
disabled during driver removal for proper cleanup.

Fixes: 891a96f65ac3 ("phy: qcom-qusb2: Add support for runtime PM")
Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 v3: The phy-core expects parent's runtime-pm to be setup before creating
     the phy, so move back runtime-pm to its initial location and
     relocate dev_set_drvdata() instead.

 v2: Move runtime-pm enabling after dev_set_drvdata
     use devm_pm_runtime_enable() to fix unbalanced enabling on removal
     reword commit message

 drivers/phy/qualcomm/phy-qcom-qusb2.c | 14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qusb2.c b/drivers/phy/qualcomm/phy-qcom-qusb2.c
index b5514a32ff8f..6386d834b0e4 100644
--- a/drivers/phy/qualcomm/phy-qcom-qusb2.c
+++ b/drivers/phy/qualcomm/phy-qcom-qusb2.c
@@ -1093,29 +1093,27 @@ static int qusb2_phy_probe(struct platform_device *pdev)
 		or->hsdisc_trim.override = true;
 	}
 
-	pm_runtime_set_active(dev);
-	pm_runtime_enable(dev);
+	dev_set_drvdata(dev, qphy);
+
 	/*
-	 * Prevent runtime pm from being ON by default. Users can enable
-	 * it using power/control in sysfs.
+	 * Enable runtime PM support, but forbid it by default.
+	 * Users can allow it again via the power/control attribute in sysfs.
 	 */
+	pm_runtime_set_active(dev);
 	pm_runtime_forbid(dev);
+	devm_pm_runtime_enable(dev);
 
 	generic_phy = devm_phy_create(dev, NULL, &qusb2_phy_gen_ops);
 	if (IS_ERR(generic_phy)) {
 		ret = PTR_ERR(generic_phy);
 		dev_err(dev, "failed to create phy, %d\n", ret);
-		pm_runtime_disable(dev);
 		return ret;
 	}
 	qphy->phy = generic_phy;
 
-	dev_set_drvdata(dev, qphy);
 	phy_set_drvdata(generic_phy, qphy);
 
 	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
-	if (IS_ERR(phy_provider))
-		pm_runtime_disable(dev);
 
 	return PTR_ERR_OR_ZERO(phy_provider);
 }
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
