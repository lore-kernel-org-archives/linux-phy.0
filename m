Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7224CD4F3D
	for <linux-phy@archiver.kernel.org>; Thu, 21 May 2026 01:09:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mzYV719NbV85ygpNvp8UqoOKqt2XuyCwbuXTXxLSvKI=; b=P7sANDUNv6rp3q
	pai8TU9Yuudpq07YHtMfp1lu0lTnV0kQsPTCr9H1htHnZSlQCe4HR4MJRX5xvojL2bDS4cPkk9Jb0
	9CKQA/N+0d4403tfzFpvLOd11s74PshCoz4CGFhFfu/288TPMAGWDdUY7Djynx5QKvM2Htr4XGMUU
	vuG5e2qnK4PmnnRkk+IeBDERvtTIg53Xrg1hYqAGyGB8cY+snhKG9mNF+uoeZ6O2b//t1cWg3U8ge
	AnEdLYCuCH2tcm8FtTldbK9QgNw94B+YioZ33gK1GZAIJZDwrbUDhqKuySqMohjsDXZL1z4VDnVaH
	1cFALdWqKF86zxP/5PkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPrvC-00000006LJh-22YR;
	Thu, 21 May 2026 01:09:58 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPrv9-00000006LIr-3Awa
	for linux-phy@lists.infradead.org;
	Thu, 21 May 2026 01:09:56 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64KKlX4X2157616
	for <linux-phy@lists.infradead.org>; Thu, 21 May 2026 01:09:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=u+V9cVsKTNh
	VN5JgnurmHUqaFwybS+3Yl850UmViNVU=; b=YuaSAZeby1ujciVFSKjkfjOJWEB
	/BNSvVWFrwpINlIANgENFA1odq8X/Fk9+OiW1fJ7Sjg5FJoE8biY4I+VqKNVl0pk
	2Hdqi0qmyrmabO/eE3Oe1lNFwCPIwLWXe3VGzxX8/eaLa9O03Qqo755nOszwbbvI
	b+fxf49nYLNkZ/ehFqCfJdUh2a5Os06zS2YuW1wvICTJZOvjmuVLBij2/QhHdJ9s
	r7jjQmvgqrS5T+GeQO+ozFSS/aGCzp5zSrC28BHBQd+d/wz56wF+7vU4mPrlZXxh
	O2cLYh1Uje2ILgsP007rvxtXkxr7cyryszM1T+pR7hl3shmZ1o8hDL8p0hg==
Received: from mail-yw1-f200.google.com (mail-yw1-f200.google.com [209.85.128.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e9ma40qc4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 21 May 2026 01:09:55 +0000 (GMT)
Received: by mail-yw1-f200.google.com with SMTP id 00721157ae682-7c24193e2b8so101130507b3.0
        for <linux-phy@lists.infradead.org>; Wed, 20 May 2026 18:09:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779325794; x=1779930594; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=u+V9cVsKTNhVN5JgnurmHUqaFwybS+3Yl850UmViNVU=;
        b=QKEs9HHr+fBXRfaeGQidciZTxkxkAZtepkUFqC38SwI1JUDR8/KXUbBAFThFAQYHjF
         RsBYdIk3ER3DKdgWYkF60WKzffJvzkvdFZCI80Wi5Des5vT7eDKtTcswV7/Kfsi9T0XQ
         29vk6yFL5ku1h2dTIwv8LGltlesCLoTKYYHkTv0r38yIOGE8uEdRbwgxrx+YRcf0jW0y
         XcM0wHzoktEF4lPf3r/GaBj7t7bJIGwtcr35cuk3JniWMHeMLPYQnfNowhIT7hHZCsHD
         P9FoQ6Bj/mM5zCWXOwqIAVcEY5OFWmVoa+dg+xDyvWVMtzxn+G9+pkwJjwEf1jbX7dWx
         6ozw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779325794; x=1779930594;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=u+V9cVsKTNhVN5JgnurmHUqaFwybS+3Yl850UmViNVU=;
        b=PQ4/Hbha2HVcRNUqv+xLaKrgAnb0O6Q7iqPZBYXhPwvOt1Y1ZaWqj+S5NYZpGTaL6I
         GzBDo0l84tPJ1fOeKw+IFNzplm5hbddZ4lzK6eErmB2+LGsdYHqsyH1TdOYmLvjRIoII
         ZyyZgAjkFDeJCRfbUT+m+AEWMa4N73WBm072IretxNK9ofFmQtVCqJaFnBL/hqSvZ7kC
         tFroM9j7fBNmUz6Dqs2azIJ3dqsDO31xt87PEW1vsiX9AYRiivuNKDJiesoouPgJfFVt
         Hk+lh6kGrhDhBUKVKwH9LR67velI6IGC2BwDCnVBk7WDQxabl9eF7Zhr8zDliqzomM0c
         OgGA==
X-Forwarded-Encrypted: i=1; AFNElJ/5uTn8g/3tSSIQNhuDNOw1Di2HEQF0c5fsRNyC0QLHG5dE0ueoS5BLeY4w1RWK6priekhsm2u6iPg=@lists.infradead.org
X-Gm-Message-State: AOJu0YxzfusfqhPa5cK+V/GSp7E0Fo3noLkzcsibEa+3gQ7SiUNeh4rq
	EN+KEwRvqxgH/7KoF57+8e3VUfADXI5BIyxuEbFnkjDT2n4zsnOekD75/SHbb3Xa+eVLjCiPy4x
	3l2eiqzbrenlzim0xaRb3Te7JusfEbgcLdoL/Pjk07YLiAJQFvc5YzEjvF2hZytZm4oNx
X-Gm-Gg: Acq92OGQyf/l5xq9cK+t7FUeglK4hzDLVV2/wtdAFSi2Crd/vXunaEHJjrTNS12yd5a
	weejoAzB9A8QnyQmgaWGq+IjPtolM783sNu46a7KzHOgXy7yyTq1kMVnPeNd0LhRy6xViJc4Bdb
	6Zm1WJsfG1J302+cgbRRukXeoZUZkNQ3yGShnEKXJb7FBYmHm9M57Uhy4P6mEHekaT08vv6Oqiy
	dMTqBya/Ns8aqWNB42rxAPSWWo0kkNdXtT2mMGWpL0cVIw1WB/NkJlUS/Bjc3tRwIv1jMovJNZ9
	xRgIvWK/9jxx8ItrGrVn4Nne/btnDtzae50q4IXOhDyazbwWcQ+ICufH9lVSEOA+x8cHyw3JB3U
	3JK5t4IcfGJPOfYY8sEpQe6ncewQGNIz8rMjw8RpujdRGb9v+MZTCrxXy94wnrPwrZx9kaPaLOF
	J3GJH+MAfD3Hxd/vA=
X-Received: by 2002:a05:690c:6387:b0:7b2:136d:240a with SMTP id 00721157ae682-7d20aa9cb6fmr9422007b3.9.1779325794025;
        Wed, 20 May 2026 18:09:54 -0700 (PDT)
X-Received: by 2002:a05:690c:6387:b0:7b2:136d:240a with SMTP id 00721157ae682-7d20aa9cb6fmr9421707b3.9.1779325793555;
        Wed, 20 May 2026 18:09:53 -0700 (PDT)
Received: from scottml-Latitude-7455 (107-198-5-8.lightspeed.irvnca.sbcglobal.net. [107.198.5.8])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-7cc991c98d9sm60851307b3.10.2026.05.20.18.09.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 May 2026 18:09:52 -0700 (PDT)
From: Michael Scott <mike.scott@oss.qualcomm.com>
To: linux-arm-msm@vger.kernel.org
Cc: vkoul@kernel.org, neil.armstrong@linaro.org,
        dmitry.baryshkov@oss.qualcomm.com, wesley.cheng@oss.qualcomm.com,
        abelvesa@kernel.org, faisal.hassan@oss.qualcomm.com,
        linux-phy@lists.infradead.org, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, devicetree@vger.kernel.org, val@packett.cool,
        bryan.odonoghue@linaro.org, laurentiu.tudor1@dell.com,
        alex.vinarskis@gmail.com, linux-kernel@vger.kernel.org,
        Michael Scott <mike.scott@oss.qualcomm.com>
Subject: [PATCH v2 1/4] phy: qcom: qmp-combo: skip USB power_off/exit after device teardown
Date: Wed, 20 May 2026 18:09:32 -0700
Message-ID: <20260521010935.1333494-2-mike.scott@oss.qualcomm.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260521010935.1333494-1-mike.scott@oss.qualcomm.com>
References: <20260521010935.1333494-1-mike.scott@oss.qualcomm.com>
MIME-Version: 1.0
X-Authority-Analysis: v=2.4 cv=K9kS2SWI c=1 sm=1 tr=0 ts=6a0e5b63 cx=c_pps
 a=NMvoxGxYzVyQPkMeJjVPKg==:117 a=cdagev08qavQYXHyx3V8vg==:17
 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=EUspDBNiAAAA:8
 a=EvQFHbMspfJCUfrvVzMA:9 a=kLokIza1BN8a-hAJ3hfR:22
X-Proofpoint-GUID: QMgG0VZ0RXN6Zxv5HA-n8FrbJ5pFDAFN
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTIxMDAwOCBTYWx0ZWRfX5clXU6xUO4Xx
 XcqaCxXYFeTrZhwdDug5tD9yDFsHxW7giKLf9IbSdWP5RkxkVSMgpLm3yY/TdZGX0219+kcD32y
 DO60EmEvSePRTIt5oFdd+kuStIhbi9hxI/6m9j8CuEWNarNNMkuvzSvCBroaJ+B02Wcez5y0fSH
 7Qv1AEQ77J6fkPCwDd11WF55mrL7Fdz3vaTZpEzi0DoQvqy4wU1d7K9iXAEdVp0QJnJMZdYrmpk
 lga7onaE8eJcYf2wXkn+MRxjLt/W8amLwKlSmSSaJtJKGRM3iDjMLPX5c3I6kVoXzK3dAeJTD7y
 EFmJCbjedkq81V4KrrYI1R3rWm5LOSndOoNEQRAaS/q2FMhCOVmm4CR+SV6cep9/P2P5eK2YXj3
 ysy358ohXpvjOoOuZl+JKQmZrvVnGYP5uXF389yG/lyDFnaZkRxk0CZEaV1i5JOJfPowpUZAA9f
 mtGYRlK1DXNuWWsiptA==
X-Proofpoint-ORIG-GUID: QMgG0VZ0RXN6Zxv5HA-n8FrbJ5pFDAFN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-20_03,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 bulkscore=0 adultscore=0 priorityscore=1501
 impostorscore=0 malwarescore=0 spamscore=0 clxscore=1015 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605210008
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260520_180955_801157_D0BAF0A0 
X-CRM114-Status: GOOD (  17.19  )
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

qmp_combo_usb_power_off() is reachable from an external consumer
(notably dwc3 via phy_exit() during driver unbind) after this device's
backing resources have already been released along a separate teardown
chain. The dereference of qmp->pcs (whose ioremap mapping has been
freed by devm cleanup) then takes a level-3 translation fault and
oopses.

Easily reproducible during testing of USB-C role-switch enablement on
Dell Latitude 7455 (X1E80100), by writing "none" to a USB-C DWC3's
usb_role_switch role attribute, e.g.

  echo none > /sys/class/usb_role/a800000.usb-role-switch/role

which triggers the chain:

  Unable to handle kernel paging request at virtual address ffff8000876c5400
  pc : qmp_combo_usb_power_off.isra.0+0x58/0x470 [phy_qcom_qmp_combo]
  Call trace:
    qmp_combo_usb_power_off+0x58/0x470 [phy_qcom_qmp_combo]
    qmp_combo_usb_exit+0x38/0x90 [phy_qcom_qmp_combo]
    phy_exit
    dwc3_phy_exit [dwc3]
    dwc3_core_remove [dwc3]
    dwc3_remove [dwc3]
    platform_remove
    device_release_driver_internal
    device_driver_detach
    unbind_store
    sysfs_kf_write
    vfs_write
    ksys_write
    __arm64_sys_write
    el0_svc

Two WARNs precede the oops from the same teardown chain, confirming
the resource ordering:

  WARNING: drivers/clk/clk.c:4494 at clk_nodrv_disable_unprepare+0x8/0x18
  WARNING: drivers/regulator/core.c:2657 at _regulator_put+0x84/0x98

i.e. the pipe clock provider has been unregistered and the regulators
released before qmp_combo_usb_power_off() runs.

The proper long-term fix is a teardown-ordering rework so the QMP
PHY's backing resources outlive any consumer that may still call its
phy_ops. Pending that, guard the power_off/exit paths with the
existing usb_init_count balance so re-entry after teardown does not
oops. usb_init_count tracks the balance of usb_power_on/off; if it
is zero we have either never powered on or have already powered off,
and there is nothing to do.

The same guard is added to qmp_combo_usb_exit() since it is the entry
point used by external consumers via phy_exit().

Signed-off-by: Michael Scott <mike.scott@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index cdcfad2e86b1..0db200292642 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -3926,6 +3926,17 @@ static int qmp_combo_usb_power_off(struct phy *phy)
 	struct qmp_combo *qmp = phy_get_drvdata(phy);
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
 
+	/*
+	 * Reachable as ->exit from external consumers (notably dwc3) after
+	 * this device's backing resources have already been released along
+	 * a teardown chain. Refuse to touch registers in that case.
+	 */
+	if (!qmp->usb_init_count) {
+		dev_dbg(qmp->dev, "%s: PHY not powered on, skipping\n",
+			__func__);
+		return 0;
+	}
+
 	/* PHY reset */
 	qphy_setbits(qmp->pcs, cfg->regs[QPHY_SW_RESET], SW_RESET);
 
@@ -3968,6 +3979,17 @@ static int qmp_combo_usb_exit(struct phy *phy)
 	struct qmp_combo *qmp = phy_get_drvdata(phy);
 	int ret;
 
+	/*
+	 * See qmp_combo_usb_power_off(): an external consumer may call
+	 * phy_exit() after the QMP device's resources have been torn
+	 * down. usb_init_count tracks usb_init/usb_exit balance.
+	 */
+	if (!qmp->usb_init_count) {
+		dev_dbg(qmp->dev, "%s: PHY not initialised, skipping\n",
+			__func__);
+		return 0;
+	}
+
 	mutex_lock(&qmp->phy_mutex);
 	ret = qmp_combo_usb_power_off(phy);
 	if (ret)
--
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
