Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E488CD4F3D
	for <linux-phy@archiver.kernel.org>; Thu, 21 May 2026 00:37:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IMqlILsYBxahhbtQ4eXmd34x+AqONe+wfqiFOAnYzms=; b=pg3KEoP5ORZ7Wz
	X/BAYFHgoCx+fDsWHdm7a9pidauF5II/AfZYeJBEpqOLf9Hty54O19JRPmZPbsrTGpx/52uxbJSYo
	Ok3bANnP/V/ERjuSy+O9xCF+cwf4rQktRapdFZk8wdsOYFa9cJF4B61sFw6MefZyU8MsIcJjmB4Mg
	yY0zFaQMGHmbiqPUIs4W0g/TT4DERBD/p1rl95ges/nb3kAw3AheiU4hSMMJMUPQ97qhUk2LPWsom
	pA4r5KrwtfVv2eTAZOFtUwyjcCofu2MQ4oAvwV1eJXIbY+abs3Twk5BJV1ffE4HBP3RAos/J4kxE8
	WA0pXhRm8z2/9YNh/0/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPrPZ-00000006Hxn-0wk4;
	Thu, 21 May 2026 00:37:19 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPrPW-00000006HwR-260n
	for linux-phy@lists.infradead.org;
	Thu, 21 May 2026 00:37:15 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64KM09m23680440
	for <linux-phy@lists.infradead.org>; Thu, 21 May 2026 00:37:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=Fdw4wGz0s7N
	X7rZlmQyXYCSIQlXchuQ2tG5rGljK0io=; b=PGBK2bA8MWsiAutAPM87yw4W7Ir
	5m+2p23yoSDwzTi7LI4GgFR5OkME+NiTyJvGjpAKDVkpwmJRMXQi8gcK4tJnkrzO
	jUzAcKqkmKDbFZFsOADV4kxN655nok5LxZfyTikA7BQovndHJxqOoBujqCl5Tt92
	KfxQ8sUPN8GzaQnf7Z5zecmSCgqkdEptILaMVsS08/Gp14N7qvXTWTqK/7Qw2IF4
	dRyyTGB6B2FuCHiBZLX5yBROslF0DS51PI7VrawMFZjDrIzIiGHEbDVcRDh6jjb1
	zGc07qAkXrFr3eHUI+J5SdTSviiVzPA+ZSxWT9qy0Htkx+Fcx0EdSm5+1SQ==
Received: from mail-yw1-f197.google.com (mail-yw1-f197.google.com [209.85.128.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e9e9j2c9f-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 21 May 2026 00:37:13 +0000 (GMT)
Received: by mail-yw1-f197.google.com with SMTP id 00721157ae682-7bd92c50e6aso103651117b3.2
        for <linux-phy@lists.infradead.org>; Wed, 20 May 2026 17:37:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779323832; x=1779928632; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Fdw4wGz0s7NX7rZlmQyXYCSIQlXchuQ2tG5rGljK0io=;
        b=OkP8KODyCGxH+PlDW8SPQ5FzRNcRxHROIs82gzxOMaTqs5XPmlKFPGosYDf94CrmEf
         ae0wVwdwj3DBR2L90gBXz9iy3zci96my1PpKAS+VjiUJ5N1i+LVyG/ss2bHvJpPRrpCX
         xPiW+XOIBjTM7p1PNyYN91tYfjKwFkbcDEq5Qc4EllpLKrexfXC9+7L7M+xd4S+lY3IE
         gho/Q4tK/06p5bAnKp90W24cU1BbAeU6kwnubqZLAp0qfQe7al6zDVVknj0ITzr7ajzJ
         V4loXtSECqAAiNRO2ppgG+AnOwy+QscXSircE3qUXu2xIdeMEwkIK/ngjPjQ11F2wKMw
         cQ7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779323832; x=1779928632;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Fdw4wGz0s7NX7rZlmQyXYCSIQlXchuQ2tG5rGljK0io=;
        b=E9rgs6E1fsYkmVfpHCDcoj/6jJwmqJwZnkuiXPiiRoAWkCateRF1bSsjaSBKf1F4WH
         LnYqa3M8rZ7B46rfh9aIS5O7zB/gwpstlyvXtan/sdPvsT/ehYKA2jiSO18IuPaPv6FT
         jGPZoiisO/+7Xw3h8p7Q20PWQNtibCEHEwujKfZIaDjQTaIL7ywrosBOSo6vpxOz6/ly
         460DXVqf7+PqGfUY/ghd1HpE/yz4GuYA4Dy/vWdQxkYEXvAT7OMuESpriWk0B2Ma9xZ2
         zOxDBrTLyV0atV7sdAbxWp1prLXrVqyXMfXqJUOk40vjYT66xlCrzlcGzM4ReM5QnwFS
         67tQ==
X-Forwarded-Encrypted: i=1; AFNElJ9JEymQQa8wPbyw/xQ9JRh1I2xh4lup+xzMCUBvPeHHJgSE4l7CqldDzVxeczsVeQWpJWN7nn7PE+Y=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx0nBS4yxB3QWAym791u+YuhM7/ZoyKMMiNs18BdssJr5UzdP5l
	fD2wwR9Jvq3WFR8m5By29PpsUnz2T3VrotpVH2mrlbsAAI4ryFYMqxK2lsCMas/895oBONxBlUR
	NFcDEEB8DVtFArl6/mVG7xpcyT6ePVZrFbIKEcvzb5UAgEPTCpCZYI8dDwryw9nkUcSTq
X-Gm-Gg: Acq92OEMwi4ysGb87f0KG+r6guyPvT6wjwckry19MJsNBtyUTFa8s0r63IbQo+HN4/5
	UNNjtRJzU1WrIQ9yikp6XOdNIViBxSosvn/7cp2jh4js0Me1t/UPjqjW4aRwKGqD3uph0QkFZmn
	dIUTz5IskQVscwfrl9crTZ9hZH6NeYDl77QL0fh/RSVKN4e3XRaaHMLhL8NidAsl5YO0tE8CUw0
	HsXWUnJrntRQ9jArmrT2frR00VgGkcBq6WtGZox3iPmAQf0nLO3TkzAN0bfvxgRgJNzkEfGW+18
	HR+xTGCESooN/FG1aV6OSIF951ZL8UMP6NPw38gq9XsXq0oWA8CfatgR4D8TaZ66gwSlTduySsD
	L4C8UwT7EU9nI2HfvrHdzODLIWFF4EaTsMkKtfEzuJ/NV1ruFvIN+fCto0wAACC6t636wbEXyJg
	FucBbCuhcY8tdvzpmdAm9PmwIWJg==
X-Received: by 2002:a05:690c:b8e:b0:7cf:d9bc:80af with SMTP id 00721157ae682-7d20c54bdfdmr7903317b3.30.1779323832406;
        Wed, 20 May 2026 17:37:12 -0700 (PDT)
X-Received: by 2002:a05:690c:b8e:b0:7cf:d9bc:80af with SMTP id 00721157ae682-7d20c54bdfdmr7902977b3.30.1779323832015;
        Wed, 20 May 2026 17:37:12 -0700 (PDT)
Received: from scottml-Latitude-7455 (107-198-5-8.lightspeed.irvnca.sbcglobal.net. [107.198.5.8])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-7cc991c98d9sm60545717b3.10.2026.05.20.17.37.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 May 2026 17:37:11 -0700 (PDT)
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
Subject: [PATCH 1/4] phy: qcom: qmp-combo: skip USB power_off/exit after device teardown
Date: Wed, 20 May 2026 17:36:12 -0700
Message-ID: <20260521003615.1260844-2-mike.scott@oss.qualcomm.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260521003615.1260844-1-mike.scott@oss.qualcomm.com>
References: <20260521003615.1260844-1-mike.scott@oss.qualcomm.com>
MIME-Version: 1.0
X-Authority-Analysis: v=2.4 cv=bfhbluPB c=1 sm=1 tr=0 ts=6a0e53b9 cx=c_pps
 a=0mLRTIufkjop4KoA/9S1MA==:117 a=cdagev08qavQYXHyx3V8vg==:17
 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22 a=EUspDBNiAAAA:8
 a=EvQFHbMspfJCUfrvVzMA:9 a=WgItmB6HBUc_1uVUp3mg:22
X-Proofpoint-GUID: vsrG0887wC1DozJtdbt6bBh0WjmgIsaB
X-Proofpoint-ORIG-GUID: vsrG0887wC1DozJtdbt6bBh0WjmgIsaB
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTIxMDAwMyBTYWx0ZWRfX9w2JesLKvoD2
 taAlbDnB9LJYSwz/bmcanVa3kuA2sJOd4jin8EfdN1jtS3KsXKKfbESHGjcTswjOCS+8VPLgs2f
 l3N7W+4tsqr8kl/QpnJPyYuwzIuOqBWwjTPenqDNn6cPfiTBXit8QZXFiOLwYFPsGL4DEC7nz0R
 MTnU6gR+6a51/sUhS9ToUJwW6f80mYPSMGmsXm21ovpz7dFEeT4jhZfIlAYp+0SeM9FfUpXfwol
 oZ3Ft6V618+1fwLwksyCeaH7hC+3LhlmkUxofFttjL1VMpg0+Bo/PBj9cCWOooySHvkdtaanUwM
 sYo+3oP7T7H19rlPJYvsg5aSD8nrPTlj7xnDK3BE0O6XdSozZVwtBoDuUh7471y4SVLpeLH4tBk
 V6f90gttEJFgDXUHmK2HLyfgRxb2vG3RWU9CDadPfBxolmGA5x1KlrFJeojLW8dOVE/Kxe59GAH
 yJ59oJ+WD2kZxgisGww==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-20_03,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 impostorscore=0 priorityscore=1501
 bulkscore=0 clxscore=1015 adultscore=0 spamscore=0 malwarescore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2605130000
 definitions=main-2605210003
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260520_173714_543340_0B373303 
X-CRM114-Status: GOOD (  17.24  )
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
index 93f1aa10d400..4057583c0cfe 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -3922,6 +3922,17 @@ static int qmp_combo_usb_power_off(struct phy *phy)
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
 	clk_disable_unprepare(qmp->pipe_clk);
 
 	/* PHY reset */
@@ -3966,6 +3977,17 @@ static int qmp_combo_usb_exit(struct phy *phy)
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
