Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83629CD4F54
	for <linux-phy@archiver.kernel.org>; Thu, 21 May 2026 00:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5IpV4MsZwWaQmxDGY405nwrf1ty4a1BasRKqhGhASLQ=; b=eBZzZ3wLhXaHov
	MBVZuBi2kMCqWTuvUndcQuyKRU7L0kXhYnVKNbauY0E/I2JWw2cI5XInUzeCKgDOLS4PseV+0tdnS
	Jq+yA2JIcgJ1dK7rAiwLGUaCwkXzUlX1x0i4IAPC3ubnuMSrzppiiGjbzJyOP6Ig/OM/6ilyvbQR7
	aaRkgqPsclIFdfGPYNy4x+czg/raLfzxOsJ8K7LDC+ZALeHJTwygvEFULfYlKWNgcfvrvYAjB1Gji
	55kAvPpI/s3QdFF5AIsDiNkX54l5Td9izeP/OYf/A42nZps+A/OPXAq91WE/isf4FZXHNQrMSkzUM
	iGOL6zQuTChNC1XEB4AQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPrPe-00000006Hzi-158p;
	Thu, 21 May 2026 00:37:22 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPrPZ-00000006HxX-0v9z
	for linux-phy@lists.infradead.org;
	Thu, 21 May 2026 00:37:20 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64KKP8df316412
	for <linux-phy@lists.infradead.org>; Thu, 21 May 2026 00:37:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=/53XCL17jN3
	51K4aaPlGvru/vziGTGGtsn9yhfrv7hk=; b=eXz3QRKZIFXaBD89KyrgH/U9+4j
	wJVHWfbLEEOJ0YXXbIM3w4KqIrR8Y3bsudCd/ytYzDSNvoQGPIQCK6EwALgkENon
	t0SmaEztdhd3iuBUEqxC3fnzfrlNzcZFuCbdjiJJEShUk4WFKq/d7Fdvf2YGkXIb
	D9eIdo5v0IfmQ1JrS3RSeo/vpTAticWOSUlMfiJ4hHpkOkBQerW9XAkrXRX1JCFf
	J9QHkFV1OXBCNmz6D4FHDEVLDAiZXq4Ya25lYhSQxvRuTNVI8ZTk8E0tiZ+HtjM7
	twJ7cawUdp1HsPu7NSKUea1N3HIt8OypVR+GQL9HwJAfgzixs2fRbT4wuCw==
Received: from mail-yw1-f198.google.com (mail-yw1-f198.google.com [209.85.128.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e9d5qtku9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 21 May 2026 00:37:16 +0000 (GMT)
Received: by mail-yw1-f198.google.com with SMTP id 00721157ae682-7bd726a9569so108410147b3.3
        for <linux-phy@lists.infradead.org>; Wed, 20 May 2026 17:37:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779323836; x=1779928636; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/53XCL17jN351K4aaPlGvru/vziGTGGtsn9yhfrv7hk=;
        b=TBKXczhsFNK5QzNkBRHlfGLaQq+LYba+Btss04bkWZlDyOI/DfNvKaDSpQOHrg0Fv3
         CDw7lcgqIPJGQ7WdVO4KojU1gkpLM8BAiGGMsPf7C7zjQhgw8ObUfmQFxJHDOMnrnFUK
         upslfBHCx2D+kQo/8c04/cjtU5Ed4iAyeToO/vv6OsYXId6dhbSNJ8amnMG1wCN9GIK7
         chGWRrwIQj10Gnt3OvmOb+Bpu1SypPeVeEjncx7/ZqwN5fcAHOsY03GTSR96zC7urcKW
         dcuyfrpOJJidz4WeYo26EnF0AVoUcA1tFyuXdKM9/NuzpNeSnK+H3GrgO4lWSAsd18lQ
         xHNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779323836; x=1779928636;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=/53XCL17jN351K4aaPlGvru/vziGTGGtsn9yhfrv7hk=;
        b=qNX8B0A3dZtE47SZI0k390kDZv3ImmsbTJYsW+kiU+PnvvDB6xZ7iDqBvDTxye5llV
         0pb3IfnchHBNWXAATVFeiY9dMTHrgOrWcfDtg4aZ8sQ0Kq0I6tybXFkP1ZH4TG/pckYl
         ET3IqHTddQgt2mN3Q2mW57y3W/1LVNurxZvT11w21fMOA0yPiwBqRJF4LpqTU8NoHxFH
         l1FW/EmmSbqDTKuuJ5EAahsLFdyfu3eABt6MsFTBLvb7UBUQ45Niyph3R/twsuN/jl5g
         Nv8RNHJnn+6fPFlUSLLdPQ2SeuhO9YZM/hfRrEomxp7GoamHOks9jiLy9jvumEPgnMNr
         YKoQ==
X-Forwarded-Encrypted: i=1; AFNElJ9Nd3sLAtosFhU0ABvAbSn9F1SKZUs1uZx/GbyHpaOQBK0vEPLbPA+DAnVRscuZf3VsaV+ZfPSTauc=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyi0NvEz4DLgKrBqAZsWkUwSC+r9/fgqjHir+wBLTUPIQ39bMGI
	lhs33DC7pQdtR3rnDxv7h1AfPqIgmgXN9C6rJ2BcvsYPlBqzZRPefAFWf/AGCwxlzbiL4vpUfXf
	4m9giypSN7grhYzmNSX+Vb5OK/s0V44BqKNs3T2Mbn79X9rqgyurHqJuYNu2NhUeGD2Wo
X-Gm-Gg: Acq92OFT+aIHRsuWb3hrQCPBYoCG1KvLCEiB47p9Ckyf20NbhpWFbngSXUwxTyxmarz
	gx+c5Cxg9Vas+fmKNH2Do9uZh9cvKVVWcPDDgar42JS1+R2EfDN9wMXFxPuLtqnw82+UdzR6gco
	js2QnX1Ls5UZMGlrVKQCjfmpRl9UF4+eqWrvpjk/xn/2NXnENXO7RjzF+gsJH8+xTy1xV+W/7fR
	gRXDfZ5XUcPcT3OFYFI/EM6ex1UrLF8M+HJ/7H6c1/UdQZmFtjl62GboPepPCZqmBrNQ2BEU6A/
	xY4VMaqWbAMwNbVl0Wf5/dSvMBiBJ98h6SX1AjTy9AKWDo7UllpcYIOotsGLn2CYT22guu25xDS
	Ji59Qu1uwwb+5buEsZPCwCqRnroa9SX+h1by40v1UkYifmXxHm5EPEYiEZHJAacdDOb2/yJ0jjv
	Ch2+v1txrHXnvbnHQ=
X-Received: by 2002:a05:690c:6202:b0:79a:6249:a046 with SMTP id 00721157ae682-7d209cd3355mr7511117b3.9.1779323835771;
        Wed, 20 May 2026 17:37:15 -0700 (PDT)
X-Received: by 2002:a05:690c:6202:b0:79a:6249:a046 with SMTP id 00721157ae682-7d209cd3355mr7510937b3.9.1779323835378;
        Wed, 20 May 2026 17:37:15 -0700 (PDT)
Received: from scottml-Latitude-7455 (107-198-5-8.lightspeed.irvnca.sbcglobal.net. [107.198.5.8])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-7cc991c98d9sm60545717b3.10.2026.05.20.17.37.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 May 2026 17:37:14 -0700 (PDT)
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
Subject: [PATCH 2/4] phy: qcom: qmp-combo: track whether the cached typec_mux mode was committed to hardware
Date: Wed, 20 May 2026 17:36:13 -0700
Message-ID: <20260521003615.1260844-3-mike.scott@oss.qualcomm.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260521003615.1260844-1-mike.scott@oss.qualcomm.com>
References: <20260521003615.1260844-1-mike.scott@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTIxMDAwMyBTYWx0ZWRfX9nU1EhecnLWB
 P3AcpKbYAEn8jaOcC/41TZpX1oCAvo9DiGNXXgJ9JkpR3CxP2v+RFfIIf1qK05oJaDzrP12wAsZ
 o2E3NSlC8gKzgcq4BlulBPpWWhgMOS1VU74VZ/RdBf0qDwmw507pSxLvD7oz7ISW295RV8UP3ob
 E7GOvX5R/6D+7H/ecuO5+2rjM1BXlEkNpMJCk12EXdL4kIxlWOPb8H+DaIf8R2X7nfoxNxypBMD
 YMka2tay+KZjOCTjIYpQKnhCZXIDccn0USAH9YRqHUdyzg+niB2AarpSnjAoGa8CTuDnG5DmI/8
 AQeJIMjoSbCuc6ZfYT7tLgHr0kIft34H6JnVE+lBkMwTOBCFRGHOKAF6LWFfPJ3RDL8765FeQ5y
 +E8VgMrLscf98gFO4fKk6dpxwwdn3Qp7WMHQNx89na8P3/eIbyvWt8i9/PhsL4RGt6cBeXCJfp/
 3HZ1HZ/sL6vuN71aZfA==
X-Authority-Analysis: v=2.4 cv=QshuG1yd c=1 sm=1 tr=0 ts=6a0e53bc cx=c_pps
 a=g1v0Z557R90hA0UpD/5Yag==:117 a=cdagev08qavQYXHyx3V8vg==:17
 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22 a=EUspDBNiAAAA:8
 a=GhrnwN_qMCjkbgjgO0kA:9 a=+jEqtf1s3R9VXZ0wqowq2kgwd+I=:19
 a=MFSWADHSvvjO3QEy5MdX:22
X-Proofpoint-GUID: uBoocSTa3BCuDnv3rp4qBG5Y79jf4WSy
X-Proofpoint-ORIG-GUID: uBoocSTa3BCuDnv3rp4qBG5Y79jf4WSy
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-20_03,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 impostorscore=0 clxscore=1011 phishscore=0 spamscore=0
 suspectscore=0 bulkscore=0 adultscore=0 priorityscore=1501 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605210003
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260520_173719_258149_1364ADB9 
X-CRM114-Status: GOOD (  23.64  )
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

qmp_combo_typec_mux_set() updates qmp->qmpphy_mode (the cached state)
unconditionally, but only reprograms hardware when qmp->init_count is
non-zero. If pmic_glink_altmode (or any other typec_mux consumer)
calls into the PHY before DWC3 has performed phy_init() -- a real
ordering observed during testing of USB-C role-switch enablement on
Snapdragon X (X1E80100) -- the cache transitions away from the
probe default QMPPHY_MODE_USB3DP but the hardware is never touched.

Subsequent calls (for example on partner detach, where TYPEC_STATE_SAFE
also resolves to QMPPHY_MODE_USB3_ONLY in the !DP-SVID branch) then
match the cached mode and the function bails out early with:

  qcom-qmp-combo-phy faXX000.phy: typec_mux_set: same qmpphy mode, bail out

leaving the lane mux in whatever configuration it powered up in. On
the Dell Latitude 7455 this manifests as the SS lanes being left in
the default state when the first altmode notification arrives during
DWC3 probe, with the function bailing out on every subsequent attach.

Track separately whether the cached mode has actually been committed
to hardware. The bail-out optimization is only safe when the cache
truly reflects the hardware:

  - qmp_combo_typec_mux_set(): bail only when the cached mode matches
    and was committed; clear the committed flag whenever the cache is
    updated, set it again after a successful reprogram inside the
    init_count-guarded block.

  - qmp_combo_com_init(): set the committed flag at the end of a
    successful init, since com_init() programs registers from the
    cached qmpphy_mode.

No behavioural change on platforms where typec_mux_set never fires
before phy_init -- committed remains true through normal operation.

Signed-off-by: Michael Scott <mike.scott@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 25 +++++++++++++++++++++--
 1 file changed, 23 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 4057583c0cfe..9b6da783ce60 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -2295,6 +2295,7 @@ struct qmp_combo {
 	struct mutex phy_mutex;
 	int init_count;
 	enum qmpphy_mode qmpphy_mode;
+	bool qmpphy_mode_committed;
 
 	struct phy *usb_phy;
 	enum phy_mode phy_mode;
@@ -3747,6 +3748,9 @@ static int qmp_combo_com_init(struct qmp_combo *qmp, bool force)
 	qphy_setbits(qmp->pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
 			SW_PWRDN);
 
+	/* com_init() just programmed registers from qmp->qmpphy_mode. */
+	qmp->qmpphy_mode_committed = true;
+
 	return 0;
 
 err_assert_reset:
@@ -4507,9 +4511,22 @@ static int qmp_combo_typec_mux_set(struct typec_mux_dev *mux, struct typec_mux_s
 		new_mode = QMPPHY_MODE_USB3_ONLY;
 	}
 
+	/*
+	 * Fast-path bail only when the cached mode is also known to be
+	 * committed to hardware. The cache may be ahead of the hardware
+	 * if a typec_mux_set arrived while the PHY had not yet been
+	 * initialised (init_count == 0); in that case the cache update
+	 * below was the only thing that ran, and we still need to drive
+	 * the registers when the PHY does come up.
+	 */
 	if (new_mode == qmp->qmpphy_mode) {
-		dev_dbg(qmp->dev, "typec_mux_set: same qmpphy mode, bail out\n");
-		return 0;
+		if (qmp->qmpphy_mode_committed) {
+			dev_dbg(qmp->dev,
+				"typec_mux_set: same qmpphy mode (committed), bail out\n");
+			return 0;
+		}
+		dev_dbg(qmp->dev,
+			"typec_mux_set: same qmpphy mode but uncommitted; reprogramming\n");
 	}
 
 	if (qmp->qmpphy_mode != QMPPHY_MODE_USB3_ONLY && qmp->dp_powered_on) {
@@ -4521,6 +4538,7 @@ static int qmp_combo_typec_mux_set(struct typec_mux_dev *mux, struct typec_mux_s
 		qmp->qmpphy_mode, new_mode);
 
 	qmp->qmpphy_mode = new_mode;
+	qmp->qmpphy_mode_committed = false;
 
 	if (qmp->init_count) {
 		if (qmp->usb_init_count)
@@ -4549,6 +4567,9 @@ static int qmp_combo_typec_mux_set(struct typec_mux_dev *mux, struct typec_mux_s
 			if (qmp->dp_init_count)
 				cfg->dp_aux_init(qmp);
 		}
+
+		/* Reprogram complete; cache now reflects hardware. */
+		qmp->qmpphy_mode_committed = true;
 	}
 
 	return 0;
-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
