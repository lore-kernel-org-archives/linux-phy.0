Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92EB2C5B543
	for <linux-phy@archiver.kernel.org>; Fri, 30 May 2025 16:23:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=y61vjV1Z0kXIw24+1MfOUYxdgIWofnmpza/UUD9nlB0=; b=hhWrXexNtUobZx
	x1mw375fPAOZNsH5DF5C377c2GJZ+sO3nEfSjGV0US+knxEMlRWatFjVAbUZH+Lu/fQU76j3gLTLP
	xoHfoX6csDJEzSCdI38Q/8nn2TEzK+y5AsEkLSrpIbCkfTbOa+ob7c1VVYIqAvVmJ1TLxMtE7uIB4
	4RIVZ/ez/6ul6okkgtBnQbcWHqq5GtnZ1Onvf3kcRfKPQzwxrULJyVeIasD6hoPhvHDM3ludNDbG1
	U5lXuw1qU7cRd/vLL1vefJg5CdNhRH1Kaui5q9sAkUqHuQQuhRlYM07XeeoTR+0Kl7gGAiJhRnvCJ
	O1/IgrvO84PfKsoTxEcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uL2Vm-000000019uN-15WC;
	Fri, 30 May 2025 16:23:14 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uL2HZ-0000000174N-38NX
	for linux-phy@lists.infradead.org;
	Fri, 30 May 2025 16:08:35 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54UAKBve011635
	for <linux-phy@lists.infradead.org>; Fri, 30 May 2025 16:08:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=9bsnJonvdJ9Xrna+D3/FUX
	cGLzFnNCzYuWULL47hZuU=; b=KaERWWz899nKi3q8WIv4vX0p1MpcH81UYqZr9K
	w9vBdWhYQh28O9CxfL8SbDRYr1Ne5LyDMu2//wfmKonWZ/IK8Rafyl72LOMwI9jd
	DMqDumt69CQCDRKOmbXDcRGTZTNiFycW2newzX24zevGOOZA5WT9R2dmeC2t7eNc
	x6S11IsR8k5WUGiY4cEVPTUSP86stitVkm+5r5iz0otqyejkJyju+hUKP77P05LF
	KqwTF3mbkrgggAxedbpEZpAfdhxD3hkkQHS3FvNQg9lfow3+siVfsDiWrbbaWKbf
	v8e2Ks+TFzfnrVvbXieKO1ArT4zvDxZwtKG760A/xHik7bpQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46u6g99rek-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 30 May 2025 16:08:31 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7caef20a527so556730785a.3
        for <linux-phy@lists.infradead.org>; Fri, 30 May 2025 09:08:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748621311; x=1749226111;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9bsnJonvdJ9Xrna+D3/FUXcGLzFnNCzYuWULL47hZuU=;
        b=T1xw5qe7k3deFEEIQSzH21fxAK9hbNzVllomaxJbGEqkGDNgXT2UTUPnHn4A7NMtTN
         fYsohroPvOkPn6yf2xZXd7wHxuynidROW30N89ZlEltDgpckFMGX9KTwV+O8stdh8FOc
         HkwbVifnTCd7y9uf8oT1RoEy71RJcpxNtlydExOZutBwjU0t3t/W3Toz59SRc3dBTCbK
         odyQogFUAb3XiB43kQCKedyl2GYd39G+Kh7+m0JK0HFGWQYfhL0IupIIWReYkH8b0OQF
         bPeq/FWAHG/Dka34c2dv0yT90PzjX5vOftmDjBZULDlr13q8oq9N1w+xYzlHXQnn1cJK
         nAKA==
X-Forwarded-Encrypted: i=1; AJvYcCXu0kpPEm+Q0svjqKpEwH/jISx0DcYvJRF8cFN4qIuOzedw+DrUxWfYWdLSEuZeEnwqBZsafz/Zse0=@lists.infradead.org
X-Gm-Message-State: AOJu0YxhwAya0/Wzj7XlW+xQifgMizgOmrOHObuH1uOZFtnaLdAzLryH
	lOQIZYLGM9kvWIp2wMzvGON3ZAnUn+rfWOcDggXjdqwI7SULmjyqQT/jppxqJL6SjalkwXBxMB9
	qpE878gpFKlUbCUd9CfbOnzjcbUytnrr9wfO44adVemwNrnZX0YrlUyOV1rQ1m99sOFLk
X-Gm-Gg: ASbGnct8jfPLpLaDfBlLCjyVltgbj6HN8QlsqNGAm4giymtysHRxZpbvFkIDpFWglIO
	d0SxEMpfEqtOVo194iaftJEUoeV1gi/LRsRen7/z9IEXKWD+lVlAhnyyj1bNBLSCCZ0DnS+1BFz
	SR197srcOrWyibNXfvG7MlAonJlgUm9jUSiHnF44GJLJBfQMtYp9kd/UekPhf3uBM/9Y0AtAk4x
	bJKk/2E94lcOhpAvGSaikNLGJp/40GYFAtY0YKCd7n2C8Ch9FZhz+xEWZEfu8NEQCYzMtnRdvc9
	myBE/V8OJtZ8ncTXkz9RwYw+4N8VImPLdDelqiMGVmhu0255DkK6tOAFGTXRLiWS5hSECnVeprz
	MmESgHCHv3QJoPNBMmgkx4yLF
X-Received: by 2002:a05:620a:269a:b0:7ca:f039:7365 with SMTP id af79cd13be357-7d0a49e64c9mr464122485a.8.1748621310982;
        Fri, 30 May 2025 09:08:30 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGUfS000i7sMDJkYQFbsxdx9k+HNXQLnWsX6E03rvaPDSPkcOHokxDum4TOp01tRUwMJw4Vvg==
X-Received: by 2002:a05:620a:269a:b0:7ca:f039:7365 with SMTP id af79cd13be357-7d0a49e64c9mr464118085a.8.1748621310387;
        Fri, 30 May 2025 09:08:30 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55337937842sm753334e87.221.2025.05.30.09.08.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 May 2025 09:08:29 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Fri, 30 May 2025 19:08:28 +0300
Subject: [PATCH v2] phy: use per-PHY lockdep keys
MIME-Version: 1.0
Message-Id: <20250530-phy-subinit-v2-1-09dfe80e82a8@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAPvXOWgC/1XMQQqDMBCF4avIrBsxqaaxq96juEhibAaqsRmVi
 nj3pkIX3Qz8A+/bgFxER3DNNohuQcIwpBCnDKzXw8MxbFODKERVVEKx0a+MZoMDTqwUtlZKc2G
 khbQYo+vwfWj3JrVHmkJcD3zh3+/Pqf+chTPOzKW0uu3OUhp1C0T5a9ZPG/o+Tweafd8/jil1W
 q0AAAA=
X-Change-ID: 20250528-phy-subinit-42c988a12b6c
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Abel Vesa <abel.vesa@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=5558;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=V7DzrP67LtCe1bctvDpJ8KQBTk3iWqS73P3krdOhUnE=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBoOdf9tVhhtomzo249YCB5oZ1zhqj1E15mG7Tnu
 2HC5c11gYaJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaDnX/QAKCRCLPIo+Aiko
 1RbYB/4jvlOGLkwZoZU3nMVu+YiNuZZwpr4ll6XEdSA3oMpy6BegcHtt3OaTcZuAMAK/xG1HLbv
 q8jLnwaWSlYGluGpbi3A/HO1F1CIn5e3q6CLD+fFvz+SRTpZrIezuctQaKdanRCcLop8p+jPLmQ
 ayKCJ65R9YAis3ybRbAru5fSegTmKPwnIYQ+eLUKovAm+vgb2KthOXDrzL1N1fwzsawOi0JqZxU
 RrcH9Q65VCsaxM9pbbDoy3Xb67v2jY2HRrmpXAzHEUbfP3F54QdDbCsXHHsETYBm/kCcjeCSFqf
 r+KOmxqDSn8GGH7SGcmqV96H6J8BFpDHo10Vq1RMZ0BascTI
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Authority-Analysis: v=2.4 cv=d4b1yQjE c=1 sm=1 tr=0 ts=6839d7ff cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=dt9VzEwgFbYA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=83vSGatpBiZI-y3EDzYA:9
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: A-pAT3JzEVjXTJIlEzZlCGkdLrE96-AY
X-Proofpoint-GUID: A-pAT3JzEVjXTJIlEzZlCGkdLrE96-AY
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTMwMDE0MiBTYWx0ZWRfX02dPhaCs/t0O
 SI+Y0Ymcov/z28E7z8Of1IL2K79mgrgNrTjjY05yiPHCiSJMCwAtwGo07YxwKhcPdXz10e7zPE8
 BNxOf5d3Nb7R6EU1PwZkrL5AxkkWdavfCXk65r4g+JtyrwnjqEQ7+2GbCqCmV/bZFs8sQdCj58q
 mJWTjlRab3W0HKKzrSkJciPKoFnAgTnW2DhprOq720EkuUEI9q+jnhKxyBWl/vPfCQQ4a87z2BJ
 jMj5qmacFLf19wo3QbuR7+jnefqtL/QaG+9PCM03hBtz7dpipwEP+LGZmSwclEV8NUD2QXrelt9
 fQ9XC5PILfVs6QUDmT0/82hrnMK0vGV9FUovbqCqRiW69Rojg5UbFnZiOqSiRLwLSmWi0vt8oOt
 HPIo5ny4SPatIl7T7Ud64dJMu+yLF8Usz8JbOABuDp/FPs84uj/mRkwJHksBPHhXbM8wSycd
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-30_07,2025-05-30_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 suspectscore=0 malwarescore=0 phishscore=0 mlxlogscore=999
 lowpriorityscore=0 priorityscore=1501 bulkscore=0 spamscore=0 clxscore=1015
 impostorscore=0 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505300142
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250530_090833_921839_B55D8F4E 
X-CRM114-Status: GOOD (  19.43  )
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
Changes in v2:
- Fix lamsm ML address
- Link to v1: https://lore.kernel.org/r/20250529-phy-subinit-v1-1-b74cadf366b8@oss.qualcomm.com
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
