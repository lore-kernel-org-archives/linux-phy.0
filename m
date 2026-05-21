Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5B57CD4F54
	for <linux-phy@archiver.kernel.org>; Thu, 21 May 2026 01:10:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZECg0f4XIetlB0BertyNq1mBdDngTto2nZ3er4QyI9U=; b=tdFjbah85GXfub
	ADPZ1EV0GMbnjD/lUYp1qT82IQYu2FmWp4UTvAoSmO4TnPKKd8iGdiaZuLbgfjqbIe6nNKvpXxJPN
	Gq+WWo8mwX4igF1OFDu7/WpgNgbS5LQn10iaLlh86H4tMk8Dq+8X+QkqzxbuxTfGZ3l6NlU/C5YVG
	kRrtOCKmOabjDsQtZAPBl2iwSP+fgK+I7FustR7gCxXE11kAQVHv8FtrfjaTkOsSRub23OtisZ43m
	5Z56Fk8SGbW/kJq6l6LW+kHLfK8WMb+FJt2LpIAHAllpPVX3VOMK9IcB5HD76zuTcxlf2AMa8rNTn
	T4rZKhp7X9AJAJ8I5nDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPrvF-00000006LLK-2QfN;
	Thu, 21 May 2026 01:10:01 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPrvC-00000006LJe-225P
	for linux-phy@lists.infradead.org;
	Thu, 21 May 2026 01:09:59 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64L0wTg3748564
	for <linux-phy@lists.infradead.org>; Thu, 21 May 2026 01:09:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=RAFhQHBj3Lj
	iJryw0ojmCoWQ4BfJtI8S4Cf5s+zUFFQ=; b=AeTJ0U3lg2EM6QPLXxU6coHV1f4
	ecTy3rgtK9Ufuw3WIyRN2h9RxTGviqISV83pGohZJOgSdKohtUGKqlCwDfiRqOCO
	/I/8e9JjxyhKzTUtDYdGhees7Oj+g8RzaYrYkfpk5f+c/luRyjCqtVgnA0tcDdzE
	Ln4F7zwrFjFP9TypYSVp6LFZGvUnEaRCRP2qfyk2pd/I/ig5H23hOwG/lp2OCNUp
	oQlz/nfC9KLaGnS+pfrZgVZxEY9dmLVvLdjuG3J2X7QCexvRrMf4bJEd2euCyLvR
	/R3fxd9Hg6QK4IkSidR5DjqidFiQwT8sYzW73ooL2/k9vIXrmseAf3Nx5Ew==
Received: from mail-yw1-f198.google.com (mail-yw1-f198.google.com [209.85.128.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e9fb6j1mv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 21 May 2026 01:09:57 +0000 (GMT)
Received: by mail-yw1-f198.google.com with SMTP id 00721157ae682-7cff695e4a3so53528467b3.1
        for <linux-phy@lists.infradead.org>; Wed, 20 May 2026 18:09:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779325797; x=1779930597; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RAFhQHBj3LjiJryw0ojmCoWQ4BfJtI8S4Cf5s+zUFFQ=;
        b=ilxXGDuvAfj+vDpJokd0M8bJ+D0Ni3BqmaTFY4GT6xucP9SMvBTeRiFw5dBOoWmBjY
         qXKjjAUI+mJWOH5pCA3OKQZTkmYgndcGUuih/993upQHNUbXRTWcfGFBhX+0hHtHxB8f
         BG5RAxIlw1n9mJznqcM7pe3gJGHXy4789WJroMnn5zSd4evwdL0kgCuuX0itx5wXssSb
         JZ2vV1SuYs/50oxqsTcuc/WRpZiQE86ulFslwKseXGNigGklKu3Gnr2NL7290mvcG5yx
         D3pLL614q/5u5OVRNEH4Oe47brtfhijMuzJds/a2NpCAwUlCotGg6u2Pcgd8vqciGsm9
         +79A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779325797; x=1779930597;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=RAFhQHBj3LjiJryw0ojmCoWQ4BfJtI8S4Cf5s+zUFFQ=;
        b=oEFHTT3nTL5KH72CsgslJBGsX74WD/wyeIbNmMjhjWmzEO1vSIPke00mYlo1s+eTb6
         l+QNkX2DxS4HIBW8j1NcvvkamOFQ9ERLFbQDvc/1ZnW4Gq3mvg9M4MX9ic4h00HUv1Z7
         2gYosxeVrgimRFC3ZWEopUFLQylFyWJgmNJPcQ/g+cDZAad867Y4qXBMh445mGAv1WTS
         GaJ9Cyz0i/ptLOMvaDYGNXJibkvcusTgqFybrgpxbZvVnUqhPH0AJ8qJrTXhFlDllbW8
         dqaXorsx1plP7wPYcPvtxsvEr6nvImGOoGo5DKWN95fXwLHaf8mj5CRhFMBTpqmDFcqp
         zedw==
X-Forwarded-Encrypted: i=1; AFNElJ8ykU6oouMOwYoqTAfnWTw1dWcD/m/l9Rg45rv4iuWJl7XijgvIDPaiM7Mo0xg8vUI5jL17JqBQp3M=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz4HI9nYNFawp5KJEMVvEN7clPVbHFN6JVM/8QyjoQEvud7h/0/
	6hZZCiRqpf3qY4lJ8duJ0YFC7+mbxGjGeD3KubhEfkpExY3C9uAXEDNV1+7Yo1mUK1nLfBc7rGS
	fRpYzmRpYnDGrXYhoXrCuRZqFTQh4uKtUlfK+S8Xf+lwd5XNf7ke29VaqEQvq3ml7wGoI
X-Gm-Gg: Acq92OHsfXYodf715FI8xVCql7DM6JDQP44t055/aeE4pmTdlY/sXkcYHw7g/ujFh4L
	nZ3r5iz9wI345frmeFZrOT05piAU8I86ruitL7hjhlJpeOw3fXGPDNaejQk6y6cUSnuZCMzmm8Q
	pmXLATdXCvc+Ra8fs3HvBYPR4ebbQCG0Sagu+TiPwhofw18HZOGAiRMuEmVIkwEVV90ku73XCkc
	lCzlHLyH4jXfpzF8wTpOcXNSDYxdmAohimxOVKpeVnHdHYgquU/Cc+ID/MZS9IV1pY+ixdDnA5V
	D2glpoCgBTUFXpGFFL6cI4m4ZP7XnKo6piuo48152ba6wlIf58cTKpKc+BEEzXcZgiXrzXtgqoj
	YdFEJLFhb3+rAXyEfJp33wZmEZfScPui9ABa+01xTndvEdPpg+iskFEVMFF8cmgxQF0fZP8jUDV
	HyQJFLFXxf0vJ8Kdw=
X-Received: by 2002:a05:690c:498b:b0:7cf:e22b:fc49 with SMTP id 00721157ae682-7d20c047039mr8476467b3.31.1779325797074;
        Wed, 20 May 2026 18:09:57 -0700 (PDT)
X-Received: by 2002:a05:690c:498b:b0:7cf:e22b:fc49 with SMTP id 00721157ae682-7d20c047039mr8476247b3.31.1779325796610;
        Wed, 20 May 2026 18:09:56 -0700 (PDT)
Received: from scottml-Latitude-7455 (107-198-5-8.lightspeed.irvnca.sbcglobal.net. [107.198.5.8])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-7cc991c98d9sm60851307b3.10.2026.05.20.18.09.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 May 2026 18:09:56 -0700 (PDT)
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
Subject: [PATCH v2 2/4] phy: qcom: qmp-combo: track whether the cached typec_mux mode was committed to hardware
Date: Wed, 20 May 2026 18:09:33 -0700
Message-ID: <20260521010935.1333494-3-mike.scott@oss.qualcomm.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260521010935.1333494-1-mike.scott@oss.qualcomm.com>
References: <20260521010935.1333494-1-mike.scott@oss.qualcomm.com>
MIME-Version: 1.0
X-Authority-Analysis: v=2.4 cv=do/rzVg4 c=1 sm=1 tr=0 ts=6a0e5b65 cx=c_pps
 a=g1v0Z557R90hA0UpD/5Yag==:117 a=cdagev08qavQYXHyx3V8vg==:17
 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22 a=EUspDBNiAAAA:8
 a=GhrnwN_qMCjkbgjgO0kA:9 a=+jEqtf1s3R9VXZ0wqowq2kgwd+I=:19
 a=MFSWADHSvvjO3QEy5MdX:22
X-Proofpoint-ORIG-GUID: wmXzzSoMo6d6Ng-RRJ2A-mA9-BydMo3X
X-Proofpoint-GUID: wmXzzSoMo6d6Ng-RRJ2A-mA9-BydMo3X
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTIxMDAwOCBTYWx0ZWRfXyorldbvaUTPZ
 6sRtBOBbeSPYD87vESaDGD8zsve/JgYqagiBB3eg0ZXFextCbYDvZk8w+Xvr9BjjyWgs7n+WeUK
 OJVnubUurlhusdYs83FEINklrAD2DXgs5CfHQGioLS8zMPKhOo9DyIzFLVYtLkMe1GJ355WrxXo
 zgCMgd9jW//Qzy5BANv8yKXn7wuXywSh3FNmDErxBjxWyQ7BiJ65D9BGXW/K2LG5EHJyZ/6o2HU
 RCkuWKyAAGW5tFomuRYk4tiDORysQUh162M+hjP9dSzmNv8jaXJdH6TI8kSurKFLJ/yQeakbhOw
 U32TSBV2cxW8TSpL0bOTC6b7PHEOqLUjNHQVG99BTDNFMhpzvvI4bc1HPfx+fYMh7f5zNWxCoqM
 g3wsYLGRVNzH5OZu3+OChG2XqM99rDvERC/UY2BuH+LJLHcIVEoFauTB/yK9JOk+I136tbIcOdZ
 /3jVyD97TuxIlD7hIlQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-20_03,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 lowpriorityscore=0 bulkscore=0 suspectscore=0 clxscore=1015
 spamscore=0 malwarescore=0 phishscore=0 priorityscore=1501 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605210008
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260520_180958_541564_1E4AB0E6 
X-CRM114-Status: GOOD (  23.71  )
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
index 0db200292642..e28bc1cc7a78 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -2295,6 +2295,7 @@ struct qmp_combo {
 	struct mutex phy_mutex;
 	int init_count;
 	enum qmpphy_mode qmpphy_mode;
+	bool qmpphy_mode_committed;
 
 	struct phy *usb_phy;
 	enum phy_mode phy_mode;
@@ -3754,6 +3755,9 @@ static int qmp_combo_com_init(struct qmp_combo *qmp, bool force)
 	qphy_setbits(qmp->pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
 			SW_PWRDN);
 
+	/* com_init() just programmed registers from qmp->qmpphy_mode. */
+	qmp->qmpphy_mode_committed = true;
+
 	return 0;
 
 err_disable_clocks:
@@ -4509,9 +4513,22 @@ static int qmp_combo_typec_mux_set(struct typec_mux_dev *mux, struct typec_mux_s
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
@@ -4523,6 +4540,7 @@ static int qmp_combo_typec_mux_set(struct typec_mux_dev *mux, struct typec_mux_s
 		qmp->qmpphy_mode, new_mode);
 
 	qmp->qmpphy_mode = new_mode;
+	qmp->qmpphy_mode_committed = false;
 
 	if (qmp->init_count) {
 		if (qmp->usb_init_count)
@@ -4551,6 +4569,9 @@ static int qmp_combo_typec_mux_set(struct typec_mux_dev *mux, struct typec_mux_s
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
