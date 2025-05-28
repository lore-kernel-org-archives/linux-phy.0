Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A3A3C3ABB2
	for <linux-phy@archiver.kernel.org>; Wed, 28 May 2025 21:31:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=57DI7P1M0uFsAckkK+Y4IXF6L0azPD3vx6RrH8D71n0=; b=lNM8pFyKgQLdKd
	nuF3A0EREcw/WHBG6ydyCzQ/JbQLyTK1OgOEQtwt0q41H2CPUSQ3Erq4PnL+dueEfAG0dU6WgmDdh
	DPyYISzpuvnEVMTZrkudv+6Wyt6nPk+pYBpzNapB0MTtSahYbuEfyvhNGZ4E6pgoM+8BZ0VtKDCfm
	eqDan4GmZtRXeKc1xULYlsA4GxOTL66XqMR7CU+Cd42UQK9pAIWlZj2VJw6bkFJMfhcA7AbdfXzNE
	CbAOlVF8E5jcUojrKxXuwMw6hqcF6HC33KOdRQI0h2XF9EAfPx+NRPJquazLhCHwyBMxoG2deqYT6
	yBMjPLVZZ9gGSh4Nd+JQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKONP-0000000E9EL-2JSB;
	Wed, 28 May 2025 21:31:55 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKOLV-0000000E92N-19Et
	for linux-phy@lists.infradead.org;
	Wed, 28 May 2025 21:29:58 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54SGjGqA002142
	for <linux-phy@lists.infradead.org>; Wed, 28 May 2025 21:29:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=vXZ9SEQrVJeMggNhRwI6U0
	eU9ZVFCs4lqNq+BNKJ4Oo=; b=CInAP+0xzRtTU1ckDbpxX1Zu+YSXvKXUHI7ino
	ngcykDRTglkHKnvraN2yJRJ36IHHg0LfaZrsQ6M01J6zL8Xjy1nAqGiG6DrdlGmW
	ZAdIU7dQt+uLgWUlAjZreMMx8yaJHnHCuHQkN+J1RF0bJD4VtYW2PZ+yjSFjR5Zg
	6PR9cclJYpqi0sR6oBJOGO/+imJ6jG8Sn90bejAbqKhT3JW6bChNQxoaCARL2bq7
	DAQYF4NLB8d0jrjPOI2mz4ANnxhiEUE3BhuduE1kXGA4LHeUTahsFrTp9cEPh7F/
	L4hYU4MurvAMgJ0ENnaoa30UNdKwmyyy/yVJak5tG917zGaQ==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46wavkwe0e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 28 May 2025 21:29:55 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6faabeb105fso4698256d6.2
        for <linux-phy@lists.infradead.org>; Wed, 28 May 2025 14:29:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748467794; x=1749072594;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vXZ9SEQrVJeMggNhRwI6U0eU9ZVFCs4lqNq+BNKJ4Oo=;
        b=WjPKvlJnzNmvDohaQrlpYKQtmXBXcfwYOhjIMHJBb0RKWMmXpPzij2YYCrCWr8ckkx
         yp5xC91aBBIr3mi00n6W/udV88xfgV3GPmGUtidlSwZ3cRj/3/v1/d163qcT8LjOEzLW
         lLyf8UfBIwgz6buGtoezqn5Qrv2xIHQVVp/5DxET+pPJoZ7jGju2Vn4/z3FlrMJk/bEb
         ijYWSGP8RczPn99lpVP3jXcmSwRPhbRPL9E8rFeg0ajyz3N+pLB74oJJ3sh3HCHodpDi
         1PMvKMXPWaqKSEVhrofS+fl85dgfOF8aR748eugAn8fLqKCG8Hge/eY7LrAFwSjG+3e3
         ervw==
X-Forwarded-Encrypted: i=1; AJvYcCUzMp+3r5uqO7PlgKNhJu3FnPLMVN81QSi1tvWBGh1qGR+uvlknKs2Re3yQyLqOewUMLYnKiiP9NYI=@lists.infradead.org
X-Gm-Message-State: AOJu0YwZrdaQ7Pn3f4adGSLpfJNy6m86/ub73rtQvcqdrrcf37iml/3b
	wfQIVwrqyxGWySdbMktBiPQQvCjQs77872+yeI/kKs3vNV2uMZU4VjGN8Uf4ITDLrSt0cpZBMu7
	kgYo+FqJucn07IXRgfMrBThVtvuSi2nky9DUZE2W5uyW/nOZIajqfGxSKwER8/wS096vE
X-Gm-Gg: ASbGnctHOfthsgH3QIxOwRfpvsMCj4Nd9nvRiZmGnNkGKoed5WvXxsneDwyMApBy1s1
	wYdSso6bU/BiZB7O95MTx7CU/3kKSAlQzqwRi3PnBn/UXmOjcKiKdrjaPlrgPRHuFEJQ1FV8E7R
	TWvI5zYrN+p/OsCXjS22eMLaSQ9qq3Pft8S0yxC97agcRmGqjsmat2uftcGmycn8LFbzn66VUlu
	xudwrzuPOyCCf5aj8rttXYV5IF9OU5gtQ13Bns4aMIhreKTpYouMgzpHA+HOOtWTH4/ZeRjdz/b
	otl89VVE3mIz4tol2oomQjzXzwMMnnd9R7X+tWig0mcCMlaEGxVWwzaFP3WKRmOVFbBFp8UTXeC
	e/I2F3TgWVonTsZ3ZQ0a8oxU2
X-Received: by 2002:ad4:5fcb:0:b0:6fa:c0c8:4666 with SMTP id 6a1803df08f44-6fac0c84808mr44267076d6.11.1748467793667;
        Wed, 28 May 2025 14:29:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG74eRX4V7wOqF46HjPJ7kQ9zRJHLqSzFoaXPxT/pacZMHoPveGI47Omklq+TzxGkSyAsptiw==
X-Received: by 2002:ad4:5fcb:0:b0:6fa:c0c8:4666 with SMTP id 6a1803df08f44-6fac0c84808mr44266756d6.11.1748467793230;
        Wed, 28 May 2025 14:29:53 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5533791ce4asm18096e87.188.2025.05.28.14.29.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 May 2025 14:29:51 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Thu, 29 May 2025 00:29:50 +0300
Subject: [PATCH] phy: use per-PHY lockdep keys
MIME-Version: 1.0
Message-Id: <20250529-phy-subinit-v1-1-b74cadf366b8@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAE2AN2gC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1MDUyML3YKMSt3i0qTMvMwSXROjZEsLi0RDoySzZCWgjoKi1LTMCrBp0bG
 1tQCujayIXQAAAA==
X-Change-ID: 20250528-phy-subinit-42c988a12b6c
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Abel Vesa <abel.vesa@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.or, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=5416;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=6xq/atNqNxSnjs/EFwkGKXlHoqkNTlt4lPuT3xIcHcQ=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBoN4BOuoxEflou1iT20hMXUG98t0nm+xS+0aOLe
 vL1DCqR8xmJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaDeATgAKCRCLPIo+Aiko
 1WAmB/4w05AbK/CjkUEGEXu/uqwO1UR0X6GWBrhbq4OvUAeghHCnMerhKf5R7Dcwj6vHE/Q7eky
 7IeYPMU74K6rCufSNAtOGw+QUrKIBJ0gVH3Xj9vFOgARVB5SuQ5SEaSBkOST069K83tfouRXlTP
 03hDw6xcEwayOs18+W+W2nPPEcIM1eovb9CWygjvBKOW9pWwKbPNwy1g6YRyg7gvggjkI73NVdQ
 B/NBgf1zNSfWZCiseY/s6oF35ilq7R5jHvUeRZ+ONOmWbYq1Zm5SZPeqA3xl10yb+aaon1auFBw
 AsDzsKc6qJPoW7MuOW4psVuogiFDQIGIhMmgPS9toxNvctDS
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-GUID: s0gUaZN6VnVutckzbnyHTGXw1e8szChM
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI4MDE4OCBTYWx0ZWRfX/geR06P7zUfF
 dP6v1Q6GBUShDvT//SrV6YQvK/tFNUWVE3YRwYcgBmXW9fo498B9Td4S6hZclOlDy6IVz+7f169
 roRsfmTNdZlQlRXd08ilGonz0yRRpBrN5a8Upi1DpJUUk8FlBSvvSM5LUeVR9af9XpytwVn8tvZ
 JcbbwwZ2rUey8bStWAndRUNJ0SYSv8gcGfIewV5vHUaGUbcWvYfR1w+XxOZRMumMKVtnhIamCmi
 VsCty28qrjlOvhP+xM8VHMj9nnDmT5ekDwvJF0lXTHhqE8hcVXrqaQ7O0WD4AvDT25ND0tPRqlz
 GcPvXW2LCjV4C3wxGTItmtWpp7oO2C0oTqlRFUPHZPUaJLA7DTe+tj6wMXG5mxPf4vK3kpmZrjj
 joNiz42zrdgwGvEkbX4C/kzm5TJqSrQZ1G6Q8Pg0wSg5nKlrx7up/A3JEcHcinQejOeboIOb
X-Authority-Analysis: v=2.4 cv=fMk53Yae c=1 sm=1 tr=0 ts=68378053 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=83vSGatpBiZI-y3EDzYA:9 a=QEXdDO2ut3YA:10
 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-ORIG-GUID: s0gUaZN6VnVutckzbnyHTGXw1e8szChM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-28_11,2025-05-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 impostorscore=0 phishscore=0 suspectscore=0
 spamscore=0 priorityscore=1501 lowpriorityscore=0 clxscore=1015 mlxscore=0
 mlxlogscore=999 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505280188
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250528_142957_347572_87CE826F 
X-CRM114-Status: GOOD (  18.13  )
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

If the PHY driver uses another PHY internally (e.g. in case of eUSB2,
repeaters are represented as PHYs), then it would trigger the following
lockdep splat because all PHYs use a single static lockdep key and thus
lockdep can not identify whether there is a dependency or not and
reports a false positive.

Make PHY subsystem use dynamic lockdep keys, assigning each driver a
separate key. This way lockdep can correctly identify dependency graph
between mutexes.

 ============================================
 WARNING: possible recursive locking detected
 6.15.0-rc7-next-20250522-12896-g3932f283970c #3455 Not tainted
 --------------------------------------------
 kworker/u51:0/78 is trying to acquire lock:
 ffff0008116554f0 (&phy->mutex){+.+.}-{4:4}, at: phy_init+0x4c/0x12c

 but task is already holding lock:
 ffff000813c10cf0 (&phy->mutex){+.+.}-{4:4}, at: phy_init+0x4c/0x12c

 other info that might help us debug this:
  Possible unsafe locking scenario:

        CPU0
        ----
   lock(&phy->mutex);
   lock(&phy->mutex);

  *** DEADLOCK ***

  May be due to missing lock nesting notation

 4 locks held by kworker/u51:0/78:
  #0: ffff000800010948 ((wq_completion)events_unbound){+.+.}-{0:0}, at: process_one_work+0x18c/0x5ec
  #1: ffff80008036bdb0 (deferred_probe_work){+.+.}-{0:0}, at: process_one_work+0x1b4/0x5ec
  #2: ffff0008094ac8f8 (&dev->mutex){....}-{4:4}, at: __device_attach+0x38/0x188
  #3: ffff000813c10cf0 (&phy->mutex){+.+.}-{4:4}, at: phy_init+0x4c/0x12c

 stack backtrace:
 CPU: 0 UID: 0 PID: 78 Comm: kworker/u51:0 Not tainted 6.15.0-rc7-next-20250522-12896-g3932f283970c #3455 PREEMPT
 Hardware name: Qualcomm CRD, BIOS 6.0.240904.BOOT.MXF.2.4-00528.1-HAMOA-1 09/ 4/2024
 Workqueue: events_unbound deferred_probe_work_func
 Call trace:
  show_stack+0x18/0x24 (C)
  dump_stack_lvl+0x90/0xd0
  dump_stack+0x18/0x24
  print_deadlock_bug+0x258/0x348
  __lock_acquire+0x10fc/0x1f84
  lock_acquire+0x1c8/0x338
  __mutex_lock+0xb8/0x59c
  mutex_lock_nested+0x24/0x30
  phy_init+0x4c/0x12c
  snps_eusb2_hsphy_init+0x54/0x1a0
  phy_init+0xe0/0x12c
  dwc3_core_init+0x450/0x10b4
  dwc3_core_probe+0xce4/0x15fc
  dwc3_probe+0x64/0xb0
  platform_probe+0x68/0xc4
  really_probe+0xbc/0x298
  __driver_probe_device+0x78/0x12c
  driver_probe_device+0x3c/0x160
  __device_attach_driver+0xb8/0x138
  bus_for_each_drv+0x84/0xe0
  __device_attach+0x9c/0x188
  device_initial_probe+0x14/0x20
  bus_probe_device+0xac/0xb0
  deferred_probe_work_func+0x8c/0xc8
  process_one_work+0x208/0x5ec
  worker_thread+0x1c0/0x368
  kthread+0x14c/0x20c
  ret_from_fork+0x10/0x20

Fixes: 3584f6392f09 ("phy: qcom: phy-qcom-snps-eusb2: Add support for eUSB2 repeater")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
Note: I've used a Fixes tag pointing to the commit which actually
started using nested PHYs. If you think that it's incorrect, I'm fine
with dropping it.

Note2: I've tried using mutex_lock_nested, however that didn't play
well. We can not store nest level in the struct phy (as it can be used
by different drivers), so using mutex_lock_nested() would require us to
change and wrap all PHY APIs which take a lock internally. Using dynamic
lockdep keys looks like a more ellegant solution, especially granted
that there is no extra impact if lockdep is disabled.
---
 drivers/phy/phy-core.c  | 5 ++++-
 include/linux/phy/phy.h | 2 ++
 2 files changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
index 8e2daea81666bf8a76d9c936c1a16d6318105c91..04a5a34e7a950ae94fae915673c25d476fc071c1 100644
--- a/drivers/phy/phy-core.c
+++ b/drivers/phy/phy-core.c
@@ -994,7 +994,8 @@ struct phy *phy_create(struct device *dev, struct device_node *node,
 	}
 
 	device_initialize(&phy->dev);
-	mutex_init(&phy->mutex);
+	lockdep_register_key(&phy->lockdep_key);
+	mutex_init_with_key(&phy->mutex, &phy->lockdep_key);
 
 	phy->dev.class = &phy_class;
 	phy->dev.parent = dev;
@@ -1259,6 +1260,8 @@ static void phy_release(struct device *dev)
 	dev_vdbg(dev, "releasing '%s'\n", dev_name(dev));
 	debugfs_remove_recursive(phy->debugfs);
 	regulator_put(phy->pwr);
+	mutex_destroy(&phy->mutex);
+	lockdep_unregister_key(&phy->lockdep_key);
 	ida_free(&phy_ida, phy->id);
 	kfree(phy);
 }
diff --git a/include/linux/phy/phy.h b/include/linux/phy/phy.h
index 437769e061b7030105c9ea4e9b0da9d32b6fa158..13add0c2c40721fe9ca3f0350d13c035cd25af45 100644
--- a/include/linux/phy/phy.h
+++ b/include/linux/phy/phy.h
@@ -154,6 +154,7 @@ struct phy_attrs {
  * @id: id of the phy device
  * @ops: function pointers for performing phy operations
  * @mutex: mutex to protect phy_ops
+ * @lockdep_key: lockdep information for this mutex
  * @init_count: used to protect when the PHY is used by multiple consumers
  * @power_count: used to protect when the PHY is used by multiple consumers
  * @attrs: used to specify PHY specific attributes
@@ -165,6 +166,7 @@ struct phy {
 	int			id;
 	const struct phy_ops	*ops;
 	struct mutex		mutex;
+	struct lock_class_key	lockdep_key;
 	int			init_count;
 	int			power_count;
 	struct phy_attrs	attrs;

---
base-commit: 460178e842c7a1e48a06df684c66eb5fd630bcf7
change-id: 20250528-phy-subinit-42c988a12b6c

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
