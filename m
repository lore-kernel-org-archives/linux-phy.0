Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09F64ECD983
	for <linux-phy@archiver.kernel.org>; Thu,  5 Feb 2026 16:03:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jgm8TQsuF270pZpipjhQgQvR1uwHJ2EAKLqFryv6T+o=; b=DlQPaQB+ToJKxA
	KswMcnUUZWLtzLsyaLwhTsPRW2Dml1f1APRyxGfElGyHYXB5fZN3X2xz4IN91gbwrHBJWK7xXTU6+
	EShHAbQw06CpOfptufRe2MuOJ0YqoTn348D42nIvWkV/P1DNC7cLNM0TRxPjxKA6AGqBA9Wv/E+EP
	EAEDI7G+hZma9YN3vjSBUIg3IhF/j6MtOAhoN5nmAH8KW1CfPagsNZacLrN4ooobJ3veiZwPwhUWz
	oY3ro0R2spG17eKaaE3Axp/RUfj7HbyZFflZdV+5o8jaFTWrOuMi1gWELaROasJhIg/UkD3wMxoON
	wklFyE6iVp3e4NaFRFhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vo1ot-0000000ACf6-32zZ;
	Thu, 05 Feb 2026 16:03:03 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vo1or-0000000ACcw-0cyV
	for linux-phy@lists.infradead.org;
	Thu, 05 Feb 2026 16:03:02 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 615EI49k890430
	for <linux-phy@lists.infradead.org>; Thu, 5 Feb 2026 16:03:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=CxaQpH5pk0V
	/At1CTX8+G8U6Yi1ecHRuD74lqofbC5E=; b=hHYZetbXiuMusNQDdJKlAve5Mv5
	gxMQJhYuAhKqiqZIxwBCyKgNXjiGji6EYaMYR/7ym2ikgwCrQBJglRI+5BAkEuOt
	TOl0B/3HKciynLT8uMq9DiJMofKWpMv913Zo+SMExaK9FqQKwV+4/nYc6zRqjXkf
	mebo7AR6tyPtEhdTzkil9wTeCWcZgamXeoEcME9v4KGwyysoHYjc+VWi1hkcuVIc
	iYzKsZNofr+Hvuo5UekC5aUdVzkWrppTAoIeO1Llzlki8TtUinLBQQrR23HXq3M2
	PIgpP4RH3nHkDS6zVfHeaKgRlCIe8wHnWAnja9e9TSEC3rI+kfh4gNRFOCA==
Received: from mail-oa1-f72.google.com (mail-oa1-f72.google.com [209.85.160.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c4prx9mek-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 05 Feb 2026 16:03:00 +0000 (GMT)
Received: by mail-oa1-f72.google.com with SMTP id 586e51a60fabf-4088136faccso2806867fac.2
        for <linux-phy@lists.infradead.org>; Thu, 05 Feb 2026 08:03:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770307380; x=1770912180; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CxaQpH5pk0V/At1CTX8+G8U6Yi1ecHRuD74lqofbC5E=;
        b=hEnBegCgX4fv9ZbDwqkNwVIVi2Ki72OgFCZO33obtj6esQvgiSGGkHrZv6/3Vgy7r3
         i6BlocpiB+yam6zNrlDX7jYj53/uVzI9O9newXLwbWCTjetFAnEoIDVSTrBmEMzwTD2s
         TbLVj74LqbCwVEjS2PORDBcYCwl8Y1VoTgvgViGoMYhB2vZxsuw/pD/nNTteeHX+h0oY
         N/eMhixCZvVGGytodbBNnNLR0ACymVAYHh7VGoOYF/gdBxLP05o9FkP1OlKG7xIGdcFp
         bC31kktY21S8GR75QquNDtD5V+3tIZiANSpsHN8byqGLC1ANBMWCmpExuTTGuCpm/8ex
         IVXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770307380; x=1770912180;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=CxaQpH5pk0V/At1CTX8+G8U6Yi1ecHRuD74lqofbC5E=;
        b=O/9Pre7hJxeE1Sh7wQooynqy085zZ4Jk/siEZm8qD6ZilR1CgvV5SyfrqZ5XYgyzEJ
         nY/LUhSul0tCmkHXuKkPwdFvYpZPif3P20T9JyeOEcidBAvGUXdl/1qZhA2olDGjfwlG
         DGAUQ6TcG1KjzbKyCO5WtxQjeJfsY0b5Zh5syIh5M10feD6cjuRirlTLLn8Imf8gUEuJ
         n4+bB+4bkIr0hNzIEe5JTdY0pGs618ycHggB12rFe1e365r/0OnDsTCrluPbjNeih4mi
         Oi2Zvv31gMzYBULRKGRDoypGupk2oXNLlN4pTHu7gnp0UPi5XNPtPuZWj0epDhzlm4/L
         zk9Q==
X-Forwarded-Encrypted: i=1; AJvYcCWXvgaLi4uk32YZ/zHWbQAEKHWyHV4NxA/u2EZ08NFIkLnq9zalwOtKTQ08lQ7Gbg5f7HiqXiGRqT0=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywf3ZjA09VDb7a1MvjxXNn9Du5PoBQTiwez+b3R0YHtLFFgFrNd
	ooFFNdaj/pGs8gwqrvQ06n9KCA4HQ14h5gxLzpeaIZZOsifsc6ssGZRHntG3tRPOMQe3b1JbTnC
	py12i03WDdmy7xDvzALKNCzPq86KcUox4MC6LsgRFi0dtkdEV6JbYJqzp5j2J/YaJCLTt
X-Gm-Gg: AZuq6aJ97J8/16yDmjdt7KJoQFI1dK5eju3aKesrHgPZpeYwm2T8kYQyEUdTQzoAMKN
	LhZKNPvmVGUc5OFWFKLy3fAB7NTcyCeX4ZVOXNfS9dwdYPW4pd45NcD6wVdbly1M+f2Y3WwN2ih
	3SLbDB97Oy7ELkA6s/5F709I8ZeRengMJvKRuRHZd+zmz22M4ujZ5+5GufZCd+mrPMsIDAQ/LYU
	l/KjOjp6r5wDVk2QqZCtn814cO6XhWG8cGUOJFnhs4oZ54V5tq6l44eutn7uNQ8/fOa1FD0E2ra
	JubY5BV4Qw4yEgkgZJqzCLhcti8rdFs96KawJW0S7ucOpHSobhq/ghWoUh8A19EUlBD/2dmhp7J
	974T5r9XNS6xPnjBzmr74TJ+8InIwpnajbZsZpQBnEx4a8iQMrWGW3c0WIMnuSSZjG8bXs4c0k9
	Dk
X-Received: by 2002:a05:6820:4dfa:b0:65d:62d:b6be with SMTP id 006d021491bc7-66a201b13ffmr2967485eaf.7.1770307379885;
        Thu, 05 Feb 2026 08:02:59 -0800 (PST)
X-Received: by 2002:a05:6820:4dfa:b0:65d:62d:b6be with SMTP id 006d021491bc7-66a201b13ffmr2967465eaf.7.1770307379377;
        Thu, 05 Feb 2026 08:02:59 -0800 (PST)
Received: from QCOM-eG0v1AUPpu.qualcomm.com ([2a01:e0a:82c:5f0:103a:9c65:ad2d:82fc])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-436180640e5sm13770002f8f.40.2026.02.05.08.02.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Feb 2026 08:02:58 -0800 (PST)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
To: vkoul@kernel.org, kishon@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        dmitry.baryshkov@oss.qualcomm.com, neil.armstrong@linaro.org,
        konrad.dybcio@oss.qualcomm.com,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
Subject: [PATCH v3 4/5] phy: qcom: qmp-usb-legacy: Prevent unnecessary PM runtime suspend at boot
Date: Thu,  5 Feb 2026 17:02:39 +0100
Message-Id: <20260205160240.748371-5-loic.poulain@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260205160240.748371-1-loic.poulain@oss.qualcomm.com>
References: <20260205160240.748371-1-loic.poulain@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-GUID: fcMgAm4sZEOMX1VhMAaCcgpVOiSrK7WF
X-Proofpoint-ORIG-GUID: fcMgAm4sZEOMX1VhMAaCcgpVOiSrK7WF
X-Authority-Analysis: v=2.4 cv=eLkeTXp1 c=1 sm=1 tr=0 ts=6984bf34 cx=c_pps
 a=Z3eh007fzM5o9awBa1HkYQ==:117 a=xqWC_Br6kY4A:10 a=HzLeVaNsDn8A:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=FmOiMsbJW-36OGxlXE4A:9 a=eBU8X_Hb5SQ8N-bgNfv4:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA1MDEyMCBTYWx0ZWRfX5GhTLf8ogqqR
 9h9C2nWkkeGMKZx2hHO689PpXcsTrrBMQ0WA6NQizEZ8usApZjWvEsU+HRiSyEDTWzWwKD5GDq1
 r6TXhWQrMxRlp8F5VfTuj8IbkhlRNJjBTtwcvAvUjC4ga3W5QD3NTDvj+0YhankAdIwFqH2gNom
 gHrSEaHav3HvA72uccxM6DIXulBYPK150EcnGghHqsmX5EdV3hTM/qmc+b9YHROrfVOhNnUbAMi
 4diXFSa4JHwdBhHTp64n0sjlGU2b+H7rD1hAetk9g2LjjscP4CGOSA+wRlyUJsi5LMY/NP6UCrl
 9wG+tKQ9Io8VQWlpKP+1ORc+AIacB813h478ntqLZhSh0QQD7S/vHsKfBmoRPBoIhlbfhlaqK/6
 bYo/JNhqyikNzwIXvRl1W5T36BJvmkkZwjLo5E2eixLpV8cKQavvdjF3cazvPFNl952dJKnZMWM
 MGncJnnFQqLLURMlzLQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-05_03,2026-02-05_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1015 bulkscore=0 suspectscore=0 adultscore=0
 priorityscore=1501 spamscore=0 malwarescore=0 phishscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602050120
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260205_080301_214490_241D4D6E 
X-CRM114-Status: GOOD (  15.95  )
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

There is a small window where the device can suspend after
pm_runtime_enable() and before pm_runtime_forbid(), causing an
unnecessary suspend/resume cycle while the PHY is not yet registered.

Move pm_runtime_forbid() before pm_runtime_enable() to eliminate
this race.

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usb-legacy.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb-legacy.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb-legacy.c
index 258e0e966a02..73439d223f1d 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb-legacy.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb-legacy.c
@@ -1284,15 +1284,15 @@ static int qmp_usb_legacy_probe(struct platform_device *pdev)
 	if (ret)
 		goto err_node_put;
 
+	/*
+	 * Enable runtime PM support, but forbid it by default.
+	 * Users can allow it again via the power/control attribute in sysfs.
+	 */
 	pm_runtime_set_active(dev);
+	pm_runtime_forbid(dev);
 	ret = devm_pm_runtime_enable(dev);
 	if (ret)
 		goto err_node_put;
-	/*
-	 * Prevent runtime pm from being ON by default. Users can enable
-	 * it using power/control in sysfs.
-	 */
-	pm_runtime_forbid(dev);
 
 	ret = phy_pipe_clk_register(qmp, np);
 	if (ret)
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
