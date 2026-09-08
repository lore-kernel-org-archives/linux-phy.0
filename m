Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3DBEAC79F99
	for <linux-phy@archiver.kernel.org>; Tue,  8 Sep 2026 14:01:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f6UVbi1MvCMxhc4IaFseoQPGbxVGuJJz5y0NqZ7irqI=; b=hWWnoYNliNGojB
	Y3Yusc+zAV7p8zOQYPOW8PNs85ItRugtz9nyb4IGabfSC+6lgSTFND+mf/M2T7L6ASXSe92WvQRTQ
	6RgMKP1yzmsk6nYPSdNdOYO35wcuiDdbl6/0HIudRQuppvflf5LrCqE/bZ5ccJEqdW470rMUZJiw/
	aqroMLV3tBWCD6/3I9oVF4CDWHb3EsjAwZnsgK+bJrVN46eBKWWCdEpPe1aBgoVCU1brrTbhAvCOq
	Q98O4pZcxcBgConIzdj+EvTSGNX1xFnU6JlW5hh3fXJndsbVW0PhMAWO5hs6ZBdCbI/1UDzjGvh+K
	yoddfXw6EflugDqfUt4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3wOa-00000009DeG-3wzZ;
	Tue, 08 Sep 2026 14:01:56 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3wOY-00000009DdJ-28BE
	for linux-phy@lists.infradead.org;
	Tue, 08 Sep 2026 14:01:55 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 688D1m1K2412014
	for <linux-phy@lists.infradead.org>; Tue, 8 Sep 2026 14:01:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	fA41h5uR4IMC3qdX7AxnasOu7m3aDGKFcMXfiNuqz0o=; b=W6skT7K5ap/sXw63
	QWCm5jD3bG2vYrta8fM3FdbsFZh9J1E6MjJwa5axSLZRFqlMv0e+8mjzZ7DwZnsa
	ZX8yzsN1sk2InPFn+Qb/SjC/oDX+YV9q4vKLW7tsYtCqbGPJyAXnW3FUzac7icjp
	uyBdXBxYll2difb4GCUhiL6ZsZPtlbo5TEHCGzkCSyEST+VNuHQdalfeC5r95KFe
	8wORlGXJJTYqinITBrmC6+HJQI1YL+IeXqXc81d0DKYOh1X+Q6cTU/MgjD+IZvP0
	TGRCZHqURIWtbdYNk5tXn5lOAqHmp8lqgyo+zTVAadXva1qGGGYzwdr4gUkofbGg
	NSFUug==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gjjvug969-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 08 Sep 2026 14:01:53 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-398d0010cfaso8942831a91.3
        for <linux-phy@lists.infradead.org>; Tue, 08 Sep 2026 07:01:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788876112; x=1789480912; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=fA41h5uR4IMC3qdX7AxnasOu7m3aDGKFcMXfiNuqz0o=;
        b=MLWC/SW3XsC5fai4BJSMT9sMQtM0Qbit301/vgi3NDBRJgcNONgYRGSGKxtZkwSESV
         dya96/Kx7fJIo/A3JgAfqNvv7SX6Py8mRmqXwWmYqV+dvlnIX20XIqj5h9xIrFk8V+Lo
         qsFNkQUQeMofok+zuRBKV7KOGixFfDbTMysFeEo54ggzJ69IIf+JzQ1oCZSbPk+czanT
         1BJgeA1WhJHgxVuYfGyM0CpGcfVsY/kRSzqgpzfgM3RZA6tIPs8GXL/uhyp/2j6K6i4i
         F3E76IRxgpzHMdrn0IpGnbC8gq30yastUQCx/Vi/5BoIpAnZ6TxjxXtOzzlUd5c2Edxq
         +ZVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788876112; x=1789480912;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=fA41h5uR4IMC3qdX7AxnasOu7m3aDGKFcMXfiNuqz0o=;
        b=OB/4kGSIIWBCl2GQYzxyNZtZlePseIzxLg1hweddH8kXTkp5CJejWXHmyHnQOPDlwT
         2baXgCUvtiXdK0pSqLpXY+jhU8sfMM4G+1FcLa6mvryM2t0h/RZ+tVm06o91QeenDwJT
         2mQaKN7Af6myTPREZDNwVuCHMceNzwsKA/frg3OB+AhAaW1Z0W7mewUySnZvy7jK6pLH
         x4yUqyzRYIv9rN8pZ0YlGC7l5G36l2ghR+GKvAfTAFuHaXezhREXNY9m7X0Anna1l+ew
         bVRvF+nMb2JL0EIjmUp6YEJi+/zu3sb5/f5yp4bKv9viLjQ0ERLgodfD7LgS71ZhEVaX
         Wv0g==
X-Forwarded-Encrypted: i=1; AKwUvBwf5zStllu4uGvgKD4sR1V0INuo7OSjXriCpCtTQ7vLxwgLaczmxZBNQw6Mqgc7CJUOTO+p6vMfBRE=@lists.infradead.org
X-Gm-Message-State: AFuF++mHfmLmWVs4NWwJkM6pLKqrPyBkHMn5v/IvYl53Mnoe4MEPRiO7
	x6SO8wkalnSHKeJrjGgRKjJINODR8QgUhJkjC9QITish7xrMCTxPxYBJcVAh+6Yr9jiKwQCFqHI
	diWoLqD+Vd1ZZGYjGznpNGpc1xwro2QbmC7z8LMIkI2WOXEJFEIzWtMVKjxeUZNjvaRzC
X-Gm-Gg: AYBFou33dsXtmz7RlI09gDPgZ+6WsOs6P5vIcu9bBKG0rYFpcNayQXcYy29WRZd5g+3
	5LneUoRnP4W8SfSSnS0tgGm6QJVfD6GuJgGt6+0vAwWmmjNnclZmQNimrSRegbtrg9x0xS0eSpB
	1DjeQS7HuTSLbS4qESDRmkizyw/UjykzhWilvX1/PPYPWD+yKcU69/5ysPAkJYw93tgrpgS0mV8
	MJWhdZUS2IVhtR2ziEfeq6PKbYAN1xJLXZgr1LRfC+dqnDvYce+EpEG1qt6lCnRvm1DM/CetyUl
	ZkWGMX2Z98xWDc7Z+GfYCyAd13uoXnfskBr+PE8z/aRIFkv22xlvOr1MThkyJUpquplP+SC+w13
	AqhC7y3PwHGCWPCXOQxDET48KwWg=
X-Received: by 2002:a17:90b:2687:b0:395:4290:46e0 with SMTP id 98e67ed59e1d1-39b2609f768mr49672954a91.5.1788876112047;
        Tue, 08 Sep 2026 07:01:52 -0700 (PDT)
X-Received: by 2002:a17:90b:2687:b0:395:4290:46e0 with SMTP id 98e67ed59e1d1-39b2609f768mr49672801a91.5.1788876111233;
        Tue, 08 Sep 2026 07:01:51 -0700 (PDT)
Received: from hu-naala-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3339af25062sm57506667eec.16.2026.09.08.07.01.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Sep 2026 07:01:50 -0700 (PDT)
From: Nabige Aala <nabige.aala@oss.qualcomm.com>
Date: Tue, 08 Sep 2026 19:31:02 +0530
Subject: [PATCH v4 9/9] phy: qualcomm: qmp-combo: Fix error propagation in
 qmp_combo_dp_power_on()
MIME-Version: 1.0
Message-Id: <20260908-glymur-phy-v3-v4-9-ff22e5150538@oss.qualcomm.com>
References: <20260908-glymur-phy-v3-v4-0-ff22e5150538@oss.qualcomm.com>
In-Reply-To: <20260908-glymur-phy-v3-v4-0-ff22e5150538@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>,
        Nabige Aala <nabige.aala@oss.qualcomm.com>
X-Mailer: b4 0.16-dev-d5d98
X-Developer-Signature: v=1; a=ed25519-sha256; t=1788876071; l=1577;
 i=nabige.aala@oss.qualcomm.com; s=20260520; h=from:subject:message-id;
 bh=+W/VJmY/w0HJ6vMFhBO//YD0odQ6tMzQHwNFCFAKC3w=;
 b=Qg5AE0TCNknurbJSvtaEURuTubSChdXOV0gEsrmJNfxzxW8mB+xtNlJApI8ubBM90QoeZ8dfr
 EZaWbAZaeWlALGKz4wIfLGGU35VJfwnqcyq/ZHf7Hjr2oQXjaM1pSUV
X-Developer-Key: i=nabige.aala@oss.qualcomm.com; a=ed25519;
 pk=PYHJom8sPos1IGkrbCCsWiE7XTBQrQZd9jzAo051tgw=
X-Proofpoint-GUID: 3AF8UYPzTbFUt4Fr5oALgwZZRr1GVNE7
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTA4MDE1MSBTYWx0ZWRfX7+HBI5W3yf4O
 sb7gAmw/QnXvEs3t08sEoTiTrEUtnEBEvLVGMIKPxnKHZTothq+pqHtdPzE/2RfxM+puhynb9MO
 Twx36ZPD5N0ncdklsBOCE0MiYmFlvzbJCc4lumwQnu9KAXzNR4XKebNvIB9CxqGTiEa3ju0+b/2
 q6oOBQ0FBA/FEzvLa4yVOYvyaaccBJQDg/Xe+y9CZuCEoi01Kdi4Zk1ocScL2lDudAVj8yXv4Om
 WPUo4xwJHzOwaHxxNPXpAXe1goqX5Y9n0/1QwJDljEefbgLOKam7rQgCgxmAzUGiWMmHyDPiEsp
 tFSdNowrGC8HPiV3kRwrIaBz31gMZaA8pIMGisPwY2ABmlro5IBM3rP7QgNndnNIuhCwvxE5uUC
 Pjm9p54ryaV+blartrZrMs9BVIdg2QYGMYJNhRWmQGVJ7PSXs79vQAsm8UW/y61mcTaN1S1P+K1
 XXYYsKaeMxs6c3lZ/zA==
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTA4MDE1MSBTYWx0ZWRfX2HjFLNKDvV9o
 mxnct1bfF69xHhFlzmV062JTnzo1Tc/GljCPlrqpdz1A9HxPQDamHyEJNftomaLbBKSWL9lxvUz
 g0x+FLNnzDPN2mJxCfHOndpeZfKsj+c=
X-Proofpoint-ORIG-GUID: 3AF8UYPzTbFUt4Fr5oALgwZZRr1GVNE7
X-Authority-Analysis: v=2.4 cv=X8hi7mTe c=1 sm=1 tr=0 ts=6aa01551 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=X8Wa9jmQWlBxTcu95m0A:9 a=QEXdDO2ut3YA:10
 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-08_02,2026-09-08_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 spamscore=0 clxscore=1015 priorityscore=1501
 suspectscore=0 impostorscore=0 phishscore=0 malwarescore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2609080151
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260908_070154_668972_9A399242 
X-CRM114-Status: GOOD (  15.01  )
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

The configure_dp_phy() callback can return an error (e.g. -ETIMEDOUT on
PLL lock failure), but qmp_combo_dp_power_on() was ignoring the return
value and always returning 0.

Capture the return value, skip setting dp_powered_on on failure, and
propagate the error to the caller.

Signed-off-by: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
Signed-off-by: Mahadevan P <mahadevan.p@oss.qualcomm.com>
Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index bb1c5df52d09..d77fe94b312c 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -4316,6 +4316,7 @@ static int qmp_combo_dp_power_on(struct phy *phy)
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
 	void __iomem *tx = qmp->dp_tx;
 	void __iomem *tx2 = qmp->dp_tx2;
+	int ret = 0;
 
 	mutex_lock(&qmp->phy_mutex);
 
@@ -4328,13 +4329,17 @@ static int qmp_combo_dp_power_on(struct phy *phy)
 	cfg->configure_dp_tx(qmp);
 
 	/* Configure link rate, swing, etc. */
-	cfg->configure_dp_phy(qmp);
+	ret = cfg->configure_dp_phy(qmp);
+	if (ret) {
+		dev_err(qmp->dev, "DP PHY configuration failed: %d\n", ret);
+		goto out_unlock;
+	}
 
 	qmp->dp_powered_on = true;
 
+out_unlock:
 	mutex_unlock(&qmp->phy_mutex);
-
-	return 0;
+	return ret;
 }
 
 static int qmp_combo_dp_power_off(struct phy *phy)

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
