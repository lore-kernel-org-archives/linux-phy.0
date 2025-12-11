Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30029D41C38
	for <linux-phy@archiver.kernel.org>; Thu, 11 Dec 2025 13:48:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KsnhFrMpJF8q4skZ5Aen748vwCLJGBvlibc+ckOA7+o=; b=pH3p+lNu1VKdR8
	lNZRfQ+XlHm8F49bAyD4QYGf+6+r3tQoWXBvbJiNrbINH2Q8jWvNqZpEBeWfbQZep+hnHQxduCpF4
	tejf7dWjNEa5rTaHOxzwSyTFRsfYciuiD294V1OVbDA1/BWl+XrI3wPqsR0p7lp3IyUoiQCwIlHmj
	hfvxxIgIdpJahj8aQ5ZZLXmzxS2gfI9J1raOWfF4pMH1GzVVdvitUDzyWpTP4DpHeUlPXfE/HUJ8P
	3d9lrZqdHJg7z3DESHVBB4uPjJINj92qDD9Pv6LDBPuNRS0qFIUxmlNimzqH6gcWVwO5LA6YdA1M7
	9fJRNsQqt/vhcLtgaRdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTh2D-0000000Gfnn-3CEn;
	Thu, 11 Dec 2025 13:48:45 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTh2A-0000000Gfjr-2p5j
	for linux-phy@lists.infradead.org;
	Thu, 11 Dec 2025 13:48:43 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BBAXp981211810
	for <linux-phy@lists.infradead.org>; Thu, 11 Dec 2025 13:48:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=W41T2XTGFNTe7hNaJvANiSZvGfa8LES33g7
	aIDm/jUQ=; b=e8SntY7b49hKrgyW4iDfkAqeUpwpwryP/iEEJlNoVnXBNKRBla0
	39OP4D5mdKb3S9d2x0ugvs81/UohnOTv7wnl/kdF4/N2csqZHuHXz09tHUqXN0yU
	zyQnt1KsVb7fF94h9U/AofXC2vYG539mOeyECfkuNOPp2DSgraRzRZw9mu6b1mnP
	n97WKx2SPQNDJ2sPuD7oZA2cFj5Q4K35yJ1jj5VPovH53M1lygpEeruoC+F8cAFF
	fXgvh201z2uU7xCp7edkfVPvnujGft0MJ9b9X/lRQJonRphCV496iXFpPsv6TL5s
	W+uoBYqRmn4UJclSuBhlDBNuw81gkGw2I5Q==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ayg0ptspw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 11 Dec 2025 13:48:41 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4ee1b7293e7so3115131cf.0
        for <linux-phy@lists.infradead.org>; Thu, 11 Dec 2025 05:48:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765460920; x=1766065720; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=W41T2XTGFNTe7hNaJvANiSZvGfa8LES33g7aIDm/jUQ=;
        b=gIqZy9/9gPvrtx9s23l7SfrmdTw0zwteu74Z1vPZvILxIUGopuzAZRg3nkaf3QGy7R
         uZoCCXfYGoqDg6/oSP8NppvwlH8Vc/KLaprDNdfYfEJjJbLeU0z8XOoJBZhnUB+oAioH
         9OMpNxw2I/3ZULSGPevkvTfj0nV09NglKK8O/SxciIZn6NKmP/XzMEITjcvzaBt0Hab9
         hQQ6iU9EpDYGYYfj+IHlM3M1T9U88cTR44wGzMESSqVBOzKAkzrHkBIgr7pr5k0gRSeF
         7eOOEP4eqJvrQDQP48yDs1Qz494YiEvv8AFrRku2h/XA1yeiyc61vPVaZ3IOQU05AqrJ
         D7Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765460920; x=1766065720;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=W41T2XTGFNTe7hNaJvANiSZvGfa8LES33g7aIDm/jUQ=;
        b=GXxbWN0bZ5Xl7m9LvhRBfskD1gIEBobPvF6GA2f1FOuodFU8eR/BtvjLHhPCOnHIEz
         EChnzq6Bh7lp4uQDLh6pYyu4ig2AD1tLj1Jo2YyLfc1ZZyjG6Ssk/018o5idKp+tewR3
         hBqa5PlT3TUXLH3Rr+eOG9KqI1zAbqvEjzdtJ3Yk4j+4xXOsH+XSNv7SEKPSyeOEPJeB
         Wcp+PGlks7cfSG1UPtrqR7huwV42zId/vErlXH+CFFZQvgVYERcLEjhUMB1wqTLGDGg0
         mRcf65PC0Zifvrp8005QyKhnGREKkERUzeCY8cScLJscRmScSMid0EJGz3CiNNxr3zFE
         Q8nA==
X-Forwarded-Encrypted: i=1; AJvYcCUJksFdR1AjNtC0uPAnaxOOGJaTgoIBErLH07Q5Kv4h2aKtI/tip87f3OXpVpzEGto/O/b91xbvu2Q=@lists.infradead.org
X-Gm-Message-State: AOJu0YyRAaCEESAj01QMmw6uNfZDDOVKhgJ9r3+IZrGANuuOXsc4VMg1
	/nziJIc7JR1mxCg6NbhPmwpXqmFiDbxdExLL0Vvfnla9QXCYUZeFGFvxwdxzJNzQaQDlM8PzR0C
	48gCZsgqcuM4H6y0LNxfi/nXlxRpiFWsC3qJ7t6TJ63pz0oeFHuh5ew4Cqa18dLrdZo4g
X-Gm-Gg: AY/fxX60Cdoozy3VbeVOHB4fpqAociImfzR4XIvKRj97WDhF7I4OCzHXT6UjzES86JZ
	3lRvncZN55NIP/ccPpvNuFEag3FM52UIjcQ/ttpFTeA83NFZOXka6q+mJX/TkhnKbWZJQtwmPYl
	lWEcAo8Q6MT1Knb+OZzY2gbK8wxQ8dmPPfMnHRLktPdH1k6cvN9//sKZTMFApjOJcztksmf9rSV
	wGpIcEnEhJsDFDFf5D6wdFk695aueNvGl0/PdubTF6z7Gbh9RdzLi2ETczWSZHU1t8mQgR8Rcnu
	mqvNMpMBJE+OVxk1RupNEwb8bSHGP7DxckrJKVyLaAwdRmHR0joZBDup17VcRv09v6BajUIV9jQ
	UjJVnu27qCnS3XhKKFSrMYi4ZVi4ntuo3iwyfVb0dARdX9MQurhPcGWR0M1hYLk3fOBHlbLrMfP
	Xh
X-Received: by 2002:a05:622a:198b:b0:4ed:6ab0:bd26 with SMTP id d75a77b69052e-4f1b1b0bf93mr90695321cf.46.1765460920022;
        Thu, 11 Dec 2025 05:48:40 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH3akSGmsW1LBDRrh/N5LqDOP69625/Xmcd+aBEDUOiijYg7EjK1IAcpqgUjpkEdoXKEFOYKw==
X-Received: by 2002:a05:622a:198b:b0:4ed:6ab0:bd26 with SMTP id d75a77b69052e-4f1b1b0bf93mr90694721cf.46.1765460919503;
        Thu, 11 Dec 2025 05:48:39 -0800 (PST)
Received: from QCOM-eG0v1AUPpu.qualcomm.com ([2a01:e0a:82c:5f0:85ae:5e15:f198:7755])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47a89f0385asm13251475e9.18.2025.12.11.05.48.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Dec 2025 05:48:38 -0800 (PST)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
To: vkoul@kernel.org, kishon@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        andersson@kernel.org, dmitry.baryshkov@oss.qualcomm.com,
        Loic Poulain <loic.poulain@oss.qualcomm.com>
Subject: [PATCH v2] phy: qcom-qusb2: Fix NULL pointer dereference on early suspend
Date: Thu, 11 Dec 2025 14:48:36 +0100
Message-Id: <20251211134836.1777897-1-loic.poulain@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: 8AFzpdXu6FZKurJMLzwLsWZDCtDGCPJM
X-Authority-Analysis: v=2.4 cv=b46/I9Gx c=1 sm=1 tr=0 ts=693acbb9 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=wP3pNCr1ah4A:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=A460xltCzdekeuk-sJYA:9 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjExMDEwOCBTYWx0ZWRfX+nAMTyx0WV1e
 3ao86DnTtbGoIoyU27ua8i9zFoq82W1yUYek0KkQfeVwpgHqKijwfbHUGTQQekJ21tTGRfJlDwT
 EFg4Nw6UbuSokRS9Wwdbzs6Q3yO1xq8EQhk08/v5Nz99PT5Nd7H4aV9RzZi1PYR7vXcnNuzV+hg
 0Ne0P+KeegNE4pYQ9xjDy7+hyqX/aqIzE8BM2lCtY+uFu5+LBuTOumo9+K53d/aVwxmG4H0iArE
 qy+/8bek1LfgRo3HpptC+sbJErPxJ4wt5J2Nc1SAmGWAUMeHY6HlGSTeb4KuDsRQfeC59zbCd5U
 5BC72beZPONIsWhzx43vPJe4BihaGax+e3d4Cz5Fzcwxqh+EXnlbuWLLOcjP76zRDtJZvIdch3+
 KbnkjUVjjqpsyMQs3l27/LS8nhjEiQ==
X-Proofpoint-GUID: 8AFzpdXu6FZKurJMLzwLsWZDCtDGCPJM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-11_01,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 impostorscore=0 spamscore=0 lowpriorityscore=0 suspectscore=0
 phishscore=0 clxscore=1015 adultscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512110108
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251211_054842_718169_0B454C49 
X-CRM114-Status: GOOD (  14.80  )
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

Enable PM runtime only after attaching the QPHY instance as driver data to
avoid a NULL pointer dereference in PM runtime callbacks.

Reorder pm_runtime_enable() and pm_runtime_forbid() to prevent a
short window where an unnecessary runtime suspend can occur.

Use the devres-managed version to ensure PM runtime is symmetrically
disabled during driver removal for proper cleanup.

Fixes: 891a96f65ac3 ("phy: qcom-qusb2: Add support for runtime PM")
Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 v2: Move runtime-pm enabling after dev_set_drvdata
     use devm_pm_runtime_enable() to fix unbalanced enabling on removal
     reword commit message

 drivers/phy/qualcomm/phy-qcom-qusb2.c | 19 ++++++++-----------
 1 file changed, 8 insertions(+), 11 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qusb2.c b/drivers/phy/qualcomm/phy-qcom-qusb2.c
index b5514a32ff8f..c496acbad0bb 100644
--- a/drivers/phy/qualcomm/phy-qcom-qusb2.c
+++ b/drivers/phy/qualcomm/phy-qcom-qusb2.c
@@ -1093,19 +1093,10 @@ static int qusb2_phy_probe(struct platform_device *pdev)
 		or->hsdisc_trim.override = true;
 	}
 
-	pm_runtime_set_active(dev);
-	pm_runtime_enable(dev);
-	/*
-	 * Prevent runtime pm from being ON by default. Users can enable
-	 * it using power/control in sysfs.
-	 */
-	pm_runtime_forbid(dev);
-
 	generic_phy = devm_phy_create(dev, NULL, &qusb2_phy_gen_ops);
 	if (IS_ERR(generic_phy)) {
 		ret = PTR_ERR(generic_phy);
 		dev_err(dev, "failed to create phy, %d\n", ret);
-		pm_runtime_disable(dev);
 		return ret;
 	}
 	qphy->phy = generic_phy;
@@ -1113,9 +1104,15 @@ static int qusb2_phy_probe(struct platform_device *pdev)
 	dev_set_drvdata(dev, qphy);
 	phy_set_drvdata(generic_phy, qphy);
 
+	/*
+	 * Enable runtime PM support, but forbid it by default.
+	 * Users can allow it again via the power/control attribute in sysfs.
+	 */
+	pm_runtime_set_active(dev);
+	pm_runtime_forbid(dev);
+	devm_pm_runtime_enable(dev);
+
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
